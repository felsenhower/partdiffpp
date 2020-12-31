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

#include <cmath>
#include <iomanip>
#include <iostream>
#include <sys/time.h>

#include "partdiff.h"

using options = partdiff::askparams::options;
using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;
using calc_meth = partdiff::calculation_method;
using inf_func = partdiff::interference_function;
using term_cond = partdiff::termination_condidion;

static constexpr double pi = std::numbers::pi;
static constexpr double two_pi_square = (2 * pi * pi);

/* ************************************************************************ */
/* Global variables                                                         */
/* ************************************************************************ */

/* time measurement variables */
timeval start_time = {}; /* time when program started                      */
timeval comp_time = {};  /* time when calculation completed                */

calculation_results::calculation_results() {
  this->m = 0;
  this->stat_iteration = 0;
  this->stat_precision = 0;
}

/* ************************************************************************ */
/* freeMatrices: frees memory for matrices                                  */
/* ************************************************************************ */
const void calculation_arguments::freeMatrices() {
  for (uint64_t i = 0; i < this->num_matrices; i++) {
    delete[] this->Matrix[i];
  }
  delete[] this->Matrix;
  delete[] this->M;
}

calculation_arguments::calculation_arguments(const options &options)
    : inf_func(options.inf_func) {
  this->N = (options.interlines * 8) + 9 - 1;
  this->num_matrices = (options.method == calc_meth::jacobi) ? 2 : 1;
  this->h = 1.0 / this->N;
  this->allocateMatrices();
  this->initMatrices();
}

calculation_arguments::~calculation_arguments() { this->freeMatrices(); }

/* ************************************************************************ */
/* allocateMemory ()                                                        */
/* allocates memory and quits if there was a memory allocation problem      */
/* ************************************************************************ */
const static uint8_t *allocateMemory(const std::size_t size) {
  try {
    return new uint8_t[size];
  } catch (std::bad_alloc &) {
    std::cout << "Speicherprobleme! " << size << " Bytes angefordert"
              << std::endl;
    exit(EXIT_FAILURE);
  }
}

/* ************************************************************************ */
/* allocateMatrices: allocates memory for matrices                          */
/* ************************************************************************ */
const void calculation_arguments::allocateMatrices() {
  const uint64_t N = this->N;

  this->M = (double *)allocateMemory(this->num_matrices * (N + 1) * (N + 1) *
                                     sizeof(double));
  this->Matrix =
      (double ***)allocateMemory(this->num_matrices * sizeof(double **));

  for (uint64_t i = 0; i < this->num_matrices; i++) {
    this->Matrix[i] = (double **)allocateMemory((N + 1) * sizeof(double *));

    for (uint64_t j = 0; j <= N; j++) {
      this->Matrix[i][j] = this->M + (i * (N + 1) * (N + 1)) + (j * (N + 1));
    }
  }
}

/* ************************************************************************ */
/* initMatrices: Initialize matrix/matrices and some global variables       */
/* ************************************************************************ */
const void calculation_arguments::initMatrices() {
  const uint64_t N = this->N;
  const double h = this->h;
  double ***Matrix = this->Matrix;

  /* initialize matrix/matrices with zeros */
  for (uint64_t g = 0; g < this->num_matrices; g++) {
    for (uint64_t i = 0; i <= N; i++) {
      for (uint64_t j = 0; j <= N; j++) {
        Matrix[g][i][j] = 0.0;
      }
    }
  }

  /* initialize borders, depending on function (function 2: nothing to do) */
  if (this->inf_func == inf_func::f0) {
    for (uint64_t g = 0; g < this->num_matrices; g++) {
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
const static void calculate(const calculation_arguments &arguments,
                            calculation_results &results,
                            const options &options) {

  const int N = arguments.N;
  const double h = arguments.h;

  double pih = 0.0;
  double fpisin = 0.0;

  int term_iteration = options.term_iteration;

  /* initialize m1 and m2 depending on algorithm */
  int m1 = 0;
  int m2 = (options.method == calc_meth::jacobi) ? 1 : 0;

  if (options.inf_func == inf_func::fpisin) {
    pih = pi * h;
    fpisin = 0.25 * two_pi_square * h * h;
  }

  double maxresiduum = 0.0;

  while (term_iteration > 0) {
    double **Matrix_Out = arguments.Matrix[m1];
    double **Matrix_In = arguments.Matrix[m2];

    maxresiduum = 0.0;

    /* over all rows */
    for (int i = 1; i < N; i++) {
      double fpisin_i = 0.0;

      if (options.inf_func == inf_func::fpisin) {
        fpisin_i = fpisin * std::sin(pih * (double)i);
      }

      /* over all columns */
      for (int j = 1; j < N; j++) {
        double star = 0.25 * (Matrix_In[i - 1][j] + Matrix_In[i][j - 1] +
                              Matrix_In[i][j + 1] + Matrix_In[i + 1][j]);

        if (options.inf_func == inf_func::fpisin) {
          star += fpisin_i * std::sin(pih * (double)j);
        }

        if (options.termination == term_cond::precision ||
            term_iteration == 1) {
          double residuum = Matrix_In[i][j] - star;
          residuum = std::fabs(residuum);
          maxresiduum = std::max(residuum, maxresiduum);
        }

        Matrix_Out[i][j] = star;
      }
    }

    results.stat_iteration++;
    results.stat_precision = maxresiduum;

    /* exchange m1 and m2 */
    const int temp = m1;
    m1 = m2;
    m2 = temp;

    /* check for stopping calculation depending on termination method */
    if (options.termination == term_cond::precision) {
      if (maxresiduum < options.term_precision) {
        term_iteration = 0;
      }
    } else if (options.termination == term_cond::iterations) {
      term_iteration--;
    }
  }

  results.m = m2;
}

/* ************************************************************************ */
/*  displayStatistics: displays some statistics about the calculation       */
/* ************************************************************************ */
const static void displayStatistics(const calculation_arguments &arguments,
                                    const calculation_results &results,
                                    const options &options) {
  const int N = arguments.N;
  const double time = (comp_time.tv_sec - start_time.tv_sec) +
                      (comp_time.tv_usec - start_time.tv_usec) * 1e-6;

  const double memory_consumption = (N + 1) * (N + 1) * sizeof(double) *
                                    arguments.num_matrices / 1024.0 / 1024.0;
  std::cout << "Berechnungszeit:    " << time << " s" << std::endl
            << "Speicherbedarf:     " << std::fixed << std::setprecision(6)
            << memory_consumption << " MiB" << std::endl
            << "Berechnungsmethode: ";
  std::cout.flags(cout_default_flags);

  if (options.method == calc_meth::gauss_seidel) {
    std::cout << "Gauß-Seidel";
  } else if (options.method == calc_meth::jacobi) {
    std::cout << "Jacobi";
  }

  std::cout << std::endl
            << "Interlines:         " << options.interlines << std::endl
            << "Stoerfunktion:      ";

  if (options.inf_func == inf_func::f0) {
    std::cout << "f(x,y) = 0";
  } else if (options.inf_func == inf_func::fpisin) {
    std::cout << "f(x,y) = 2pi^2*sin(pi*x)sin(pi*y)";
  }

  std::cout << std::endl << "Terminierung:       ";

  if (options.termination == term_cond::precision) {
    std::cout << "Hinreichende Genaugkeit";
  } else if (options.termination == term_cond::iterations) {
    std::cout << "Anzahl der Iterationen";
  }

  std::cout << std::endl
            << "Anzahl Iterationen: " << results.stat_iteration << std::endl
            << "Norm des Fehlers:   " << std::scientific
            << results.stat_precision << std::endl
            << std::endl;
  std::cout.flags(cout_default_flags);
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
const static void displayMatrix(const calculation_arguments &arguments,
                                const calculation_results &results,
                                const options &options) {
  double **Matrix = arguments.Matrix[results.m];

  const int interlines = options.interlines;

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
int main(const int argc, char const *argv[]) {

  const std::string name(argv[0]);
  const std::vector<std::string> args(argv + 1, argv + argc);

  options options(argc, name, args);
  calculation_arguments arguments(options);
  calculation_results results;

  gettimeofday(&start_time, nullptr);
  calculate(arguments, results, options);
  gettimeofday(&comp_time, nullptr);

  displayStatistics(arguments, results, options);
  displayMatrix(arguments, results, options);

  return EXIT_SUCCESS;
}
