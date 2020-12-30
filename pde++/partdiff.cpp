/****************************************************************************/
/****************************************************************************/
/**                                                                        **/
/**                 TU München - Institut für Informatik                   **/
/**                                                                        **/
/** Copyright: Prof. Dr. Thomas Ludwig                                     **/
/**            Andreas C. Schmidt                                          **/
/**                                                                        **/
/** File:      partdiff.c                                                  **/
/**                                                                        **/
/** Purpose:   Partial differential equation solver for Gauß-Seidel and    **/
/**            Jacobi method.                                              **/
/**                                                                        **/
/****************************************************************************/
/****************************************************************************/

/* ************************************************************************ */
/* Include standard header file.                                            */
/* ************************************************************************ */
#define _POSIX_C_SOURCE 200809L

#include <cinttypes>
#include <iomanip>
#include <iostream>
#include <sys/time.h>

#include "partdiff.h"

struct calculation_arguments {
  uint64_t N;            /* number of spaces between lines (lines=N+1)     */
  uint64_t num_matrices; /* number of matrices                             */
  double h;              /* length of a space between two lines            */
  double ***Matrix;      /* index matrix used for addressing M             */
  double *M;             /* two matrices with real values                  */
};

struct calculation_results {
  uint64_t m;
  uint64_t stat_iteration; /* number of current iteration                    */
  double stat_precision;   /* actual precision of all slaves in iteration    */
};

/* ************************************************************************ */
/* Global variables                                                         */
/* ************************************************************************ */

/* time measurement variables */
struct timeval start_time = {}; /* time when program started                      */
struct timeval comp_time = {};  /* time when calculation completed                */

/* ************************************************************************ */
/* initVariables: Initializes some global variables                         */
/* ************************************************************************ */
static void initVariables(struct calculation_arguments *arguments,
                          struct calculation_results *results,
                          struct options const *options) {
  arguments->N = (options->interlines * 8) + 9 - 1;
  arguments->num_matrices = (options->method == METH_JACOBI) ? 2 : 1;
  arguments->h = 1.0 / arguments->N;

  results->m = 0;
  results->stat_iteration = 0;
  results->stat_precision = 0;
}

/* ************************************************************************ */
/* freeMatrices: frees memory for matrices                                  */
/* ************************************************************************ */
static void freeMatrices(struct calculation_arguments *arguments) {
  for (uint64_t i = 0; i < arguments->num_matrices; i++) {
    delete[] arguments->Matrix[i];
  }
  delete[] arguments->Matrix;
  delete[] arguments->M;
}

/* ************************************************************************ */
/* allocateMemory ()                                                        */
/* allocates memory and quits if there was a memory allocation problem      */
/* ************************************************************************ */
static uint8_t *allocateMemory(std::size_t size) {
  try {
    return new uint8_t[size];
  } catch (std::bad_alloc e) {
    std::cout << "Speicherprobleme! " << size << " Bytes angefordert"
              << std::endl;
    exit(EXIT_FAILURE);
  }
}

/* ************************************************************************ */
/* allocateMatrices: allocates memory for matrices                          */
/* ************************************************************************ */
static void allocateMatrices(struct calculation_arguments *arguments) {
  uint64_t const N = arguments->N;

  arguments->M = (double *)allocateMemory(arguments->num_matrices * (N + 1) *
                                          (N + 1) * sizeof(double));
  arguments->Matrix =
      (double ***)allocateMemory(arguments->num_matrices * sizeof(double **));

  for (uint64_t i = 0; i < arguments->num_matrices; i++) {
    arguments->Matrix[i] =
        (double **)allocateMemory((N + 1) * sizeof(double *));

    for (uint64_t j = 0; j <= N; j++) {
      arguments->Matrix[i][j] =
          arguments->M + (i * (N + 1) * (N + 1)) + (j * (N + 1));
    }
  }
}

/* ************************************************************************ */
/* initMatrices: Initialize matrix/matrices and some global variables       */
/* ************************************************************************ */
static void initMatrices(struct calculation_arguments *arguments,
                         struct options const *options) {
  uint64_t const N = arguments->N;
  double const h = arguments->h;
  double ***Matrix = arguments->Matrix;

  /* initialize matrix/matrices with zeros */
  for (uint64_t g = 0; g < arguments->num_matrices; g++) {
    for (uint64_t i = 0; i <= N; i++) {
      for (uint64_t j = 0; j <= N; j++) {
        Matrix[g][i][j] = 0.0;
      }
    }
  }

  /* initialize borders, depending on function (function 2: nothing to do) */
  if (options->inf_func == FUNC_F0) {
    for (uint64_t g = 0; g < arguments->num_matrices; g++) {
      for (uint64_t i = 0; i <= N; i++) {
        Matrix[g][i][0] = 1.0 - (h * i);
        Matrix[g][i][N] = h * i;
        Matrix[g][0][i] = 1.0 - (h * i);
        Matrix[g][N][i] = h * i;
      }

      Matrix[g][N][0] = 0.0;
      Matrix[g][0][N] = 0.0;
    }
  }
}

/* ************************************************************************ */
/* calculate: solves the equation                                           */
/* ************************************************************************ */
static void calculate(struct calculation_arguments const *arguments,
                      struct calculation_results *results,
                      struct options const *options) {

  int const N = arguments->N;
  double const h = arguments->h;

  double pih = 0.0;
  double fpisin = 0.0;

  int term_iteration = options->term_iteration;

  /* initialize m1 and m2 depending on algorithm */
  int m1 = 0;
  int m2 = (options->method == METH_JACOBI) ? 1 : 0;

  if (options->inf_func == FUNC_FPISIN) {
    pih = PI * h;
    fpisin = 0.25 * TWO_PI_SQUARE * h * h;
  }

  double maxresiduum = 0.0;

  while (term_iteration > 0) {
    double **Matrix_Out = arguments->Matrix[m1];
    double **Matrix_In = arguments->Matrix[m2];

    maxresiduum = 0.0;

    /* over all rows */
    for (int i = 1; i < N; i++) {
      double fpisin_i = 0.0;

      if (options->inf_func == FUNC_FPISIN) {
        fpisin_i = fpisin * sin(pih * (double)i);
      }

      /* over all columns */
      for (int j = 1; j < N; j++) {
        double star = 0.25 * (Matrix_In[i - 1][j] + Matrix_In[i][j - 1] +
                       Matrix_In[i][j + 1] + Matrix_In[i + 1][j]);

        if (options->inf_func == FUNC_FPISIN) {
          star += fpisin_i * sin(pih * (double)j);
        }

        if (options->termination == TERM_PREC || term_iteration == 1) {
          double residuum = Matrix_In[i][j] - star;
          residuum = (residuum < 0) ? -residuum : residuum;
          maxresiduum = (residuum < maxresiduum) ? maxresiduum : residuum;
        }

        Matrix_Out[i][j] = star;
      }
    }

    results->stat_iteration++;
    results->stat_precision = maxresiduum;

    /* exchange m1 and m2 */
    int temp = m1;
    m1 = m2;
    m2 = temp;

    /* check for stopping calculation depending on termination method */
    if (options->termination == TERM_PREC) {
      if (maxresiduum < options->term_precision) {
        term_iteration = 0;
      }
    } else if (options->termination == TERM_ITER) {
      term_iteration--;
    }
  }

  results->m = m2;
}

/* ************************************************************************ */
/*  displayStatistics: displays some statistics about the calculation       */
/* ************************************************************************ */
static void displayStatistics(struct calculation_arguments const *arguments,
                              struct calculation_results const *results,
                              struct options const *options) {
  int N = arguments->N;
  double time = (comp_time.tv_sec - start_time.tv_sec) +
                (comp_time.tv_usec - start_time.tv_usec) * 1e-6;

  std::cout << "Berechnungszeit:    " << time << " s" << std::endl;
  double memory_consumption = (N + 1) * (N + 1) * sizeof(double) *
                              arguments->num_matrices / 1024.0 / 1024.0;
  std::cout << "Speicherbedarf:     " << std::fixed << std::setprecision(6)
            << memory_consumption << " MiB" << std::endl;
  std::cout.flags(cout_default_flags);
  std::cout << "Berechnungsmethode: ";

  if (options->method == METH_GAUSS_SEIDEL) {
    std::cout << "Gauß-Seidel";
  } else if (options->method == METH_JACOBI) {
    std::cout << "Jacobi";
  }

  std::cout << std::endl;
  std::cout << "Interlines:         " << options->interlines << std::endl;
  std::cout << "Stoerfunktion:      ";

  if (options->inf_func == FUNC_F0) {
    std::cout << "f(x,y) = 0";
  } else if (options->inf_func == FUNC_FPISIN) {
    std::cout << "f(x,y) = 2pi^2*sin(pi*x)sin(pi*y)";
  }

  std::cout << std::endl;
  std::cout << "Terminierung:       ";

  if (options->termination == TERM_PREC) {
    std::cout << "Hinreichende Genaugkeit";
  } else if (options->termination == TERM_ITER) {
    std::cout << "Anzahl der Iterationen";
  }

  std::cout << std::endl;
  std::cout << "Anzahl Iterationen: " << results->stat_iteration << std::endl;
  std::cout << "Norm des Fehlers:   " << std::scientific
            << results->stat_precision << std::endl;
  std::cout.flags(cout_default_flags);
  std::cout << std::endl;
}

/****************************************************************************/
/** Beschreibung der Funktion displayMatrix:                               **/
/**                                                                        **/
/** Die Funktion displayMatrix gibt eine Matrix                            **/
/** in einer "ubersichtlichen Art und Weise auf die Standardausgabe aus.   **/
/**                                                                        **/
/** Die "Ubersichtlichkeit wird erreicht, indem nur ein Teil der Matrix    **/
/** ausgegeben wird. Aus der Matrix werden die Randzeilen/-spalten sowie   **/
/** sieben Zwischenzeilen ausgegeben.                                      **/
/****************************************************************************/
static void displayMatrix(struct calculation_arguments *arguments,
                          struct calculation_results *results,
                          struct options *options) {
  double **Matrix = arguments->Matrix[results->m];

  int const interlines = options->interlines;

  std::cout << "Matrix:" << std::endl;

  std::cout << std::fixed << std::internal << std::setprecision(4);
  for (int y = 0; y < 9; y++) {
    for (int x = 0; x < 9; x++) {
      std::cout << " " << Matrix[y * (interlines + 1)][x * (interlines + 1)];
    }
    std::cout << std::endl;
  }
  std::cout << std::flush;
  std::cout.flags(cout_default_flags);
}

/* ************************************************************************ */
/*  main                                                                    */
/* ************************************************************************ */
int main(int argc, char const *argv[]) {
  struct options options = {};
  askParams(&options, argc, argv);

  struct calculation_arguments arguments = {};
  struct calculation_results results = {};
  initVariables(&arguments, &results, &options);

  allocateMatrices(&arguments);
  initMatrices(&arguments, &options);

  gettimeofday(&start_time, nullptr);
  calculate(&arguments, &results, &options);
  gettimeofday(&comp_time, nullptr);

  displayStatistics(&arguments, &results, &options);
  displayMatrix(&arguments, &results, &options);

  freeMatrices(&arguments);

  return EXIT_SUCCESS;
}
