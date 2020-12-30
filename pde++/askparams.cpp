/****************************************************************************/
/****************************************************************************/
/**                                                                        **/
/**                 TU München - Institut für Informatik                   **/
/**                                                                        **/
/** Copyright: Dr. Thomas Ludwig                                           **/
/**            Thomas A. Zochler                                           **/
/**                                                                        **/
/** File:      askparams.c                                                 **/
/**                                                                        **/
/****************************************************************************/
/****************************************************************************/

/****************************************************************************/
/** Beschreibung der Funktion askParams():                                 **/
/**                                                                        **/
/** Die Funktion askParams liest sechs Parameter (Erkl"arung siehe unten)  **/
/** entweder von der Standardeingabe oder von Kommandozeilenoptionen ein.  **/
/**                                                                        **/
/** Ziel dieser Funktion ist es, die Eingabe der Parameter sowohl inter-   **/
/** aktiv als auch als Kommandozeilenparameter zu erm"oglichen.            **/
/**                                                                        **/
/** F"ur die Parameter argc und argv k"onnen direkt die vom System         **/
/** gelieferten Variablen der Funktion main verwendet werden.              **/
/**                                                                        **/
/** Beispiel:                                                              **/
/**                                                                        **/
/** int main (int argc, char **argv)                                       **/
/** {                                                                      **/
/**   ...                                                                  **/
/**   askParams(..., argc, argv);                                          **/
/**   ...                                                                  **/
/** }                                                                      **/
/**                                                                        **/
/** Dabei wird argv[0] ignoriert und weiter eingegebene Parameter der      **/
/** Reihe nach verwendet.                                                  **/
/**                                                                        **/
/** Falls bei Aufruf von askParams() argc < 2 "ubergeben wird, werden      **/
/** die Parameter statt dessen von der Standardeingabe gelesen.            **/
/****************************************************************************/
/** int *method;                                                           **/
/**         Bezeichnet das bei der L"osung der Poissongleichung zu         **/
/**         verwendende Verfahren (Gauß-Seidel oder Jacobi).               **/
/** Werte:  METH_GAUSS_SEIDEL  oder METH_JACOBI (definierte Konstanten)    **/
/****************************************************************************/
/** int *interlines:                                                       **/
/**         Gibt die Zwischenzeilen zwischen den auszugebenden             **/
/**         neun Zeilen an. Die Gesamtanzahl der Zeilen ergibt sich als    **/
/**         lines = 8 * (*interlines) + 9. Diese Art der Berechnung der    **/
/**         Problemgr"o"se (auf dem Aufgabenblatt mit N bezeichnet)        **/
/**         wird benutzt, um mittels der Ausgaberoutine displayMatrix()    **/
/**         immer eine "ubersichtliche Ausgabe zu erhalten.                **/
/** Werte:  0 < *interlines                                                **/
/****************************************************************************/
/** int *func:                                                             **/
/**         Bezeichnet die St"orfunktion (I oder II) und damit auch        **/
/**         die Randbedingungen.                                           **/
/** Werte:  FUNC_F0: f(x,y)=0, 0<x<1, 0<y<1                                **/
/**         FUNC_FPISIN: f(x,y)=2pi^2*sin(pi*x)sin(pi*y), 0<x<1, 0<y<1     **/
/****************************************************************************/
/** int *termination:                                                      **/
/**         Gibt die Art der Abbruchbedingung an.                          **/
/** Werte:  TERM_PREC: Abbruchbedingung ist die Genauigkeit der bereits    **/
/**                 berechneten N"aherung. Diese soll unter die            **/
/**                 Grenze term_precision kommen.                          **/
/**         TERM_ITER: Abbruchbedingung ist die Anzahl der Iterationen.    **/
/**                 Diese soll gr"o"ser als term_iteration sein.           **/
/****************************************************************************/
/** double *term_precision:                                                **/
/** int t*erm_iteration:                                                   **/
/**         Es wird jeweils nur einer der beiden Parameter f"ur die        **/
/**         Abbruchbedingung eingelesen.                                   **/
/****************************************************************************/

#define _POSIX_C_SOURCE 200809L

#include <cinttypes>
#include <cstring>
#include <iostream>

#include "partdiff.h"

static void usage(const char *name) {
  std::cout << "Usage: " << name
            << " [num] [method] [lines] [func] [term] [prec/iter]" << std::endl;
  std::cout << std::endl;
  std::cout << "  - num:       number of threads (1 .. "
            << (unsigned long)MAX_THREADS << ")" << std::endl;
  std::cout << "  - method:    calculation method (1 .. 2)" << std::endl;
  std::cout << "                 " << (unsigned short)METH_GAUSS_SEIDEL
            << ": Gauß-Seidel" << std::endl;
  std::cout << "                 " << (unsigned short)METH_JACOBI << ": Jacobi"
            << std::endl;
  std::cout << "  - lines:     number of interlines (0 .. "
            << (unsigned long)MAX_INTERLINES << ")" << std::endl;
  std::cout << "                 matrixsize = (interlines * 8) + 9"
            << std::endl;
  std::cout << "  - func:      interference function (1 .. 2)" << std::endl;
  std::cout << "                 " << (unsigned short)FUNC_F0 << ": f(x,y) = 0"
            << std::endl;
  std::cout << "                 " << (unsigned short)FUNC_FPISIN
            << ": f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)" << std::endl;
  std::cout << "  - term:      termination condition ( 1.. 2)" << std::endl;
  std::cout << "                 " << (unsigned short)TERM_PREC
            << ": sufficient precision" << std::endl;
  std::cout << "                 " << (unsigned short)TERM_ITER
            << ": number of iterations" << std::endl;
  std::cout << "  - prec/iter: depending on term:" << std::endl;
  std::cout << "                 precision:  1e-4 .. 1e-20" << std::endl;
  std::cout << "                 iterations:    1 .. " << MAX_ITERATION
            << std::endl;
  std::cout << std::endl;
  std::cout << "Example: " << name << " 1 2 100 1 2 100 " << std::endl;
}

static int check_number(struct options *options) {
  return (options->number >= 1 && options->number <= MAX_THREADS);
}

static int check_method(struct options *options) {
  return (options->method == METH_GAUSS_SEIDEL ||
          options->method == METH_JACOBI);
}

static int check_interlines(struct options *options) {
  return (options->interlines <= MAX_INTERLINES);
}

static int check_inf_func(struct options *options) {
  return (options->inf_func == FUNC_F0 || options->inf_func == FUNC_FPISIN);
}

static int check_termination(struct options *options) {
  return (options->termination == TERM_PREC ||
          options->termination == TERM_ITER);
}

static int check_term_precision(struct options *options) {
  return (options->term_precision >= 1e-20 && options->term_precision <= 1e-4);
}

static int check_term_iteration(struct options *options) {
  return (options->term_iteration >= 1 &&
          options->term_iteration <= MAX_ITERATION);
}

void askParams(struct options *options, int argc, char const *argv[]) {
  /*
  printf("============================================================\n");
  printf("Program for calculation of partial differential equations.  \n");
  printf("============================================================\n");
  printf("(c) Dr. Thomas Ludwig, TU München.\n");
  printf("    Thomas A. Zochler, TU München.\n");
  printf("    Andreas C. Schmidt, TU München.\n");
  printf("============================================================\n");
  printf("\n");
  */

  if (argc < 2) {
    /* ----------------------------------------------- */
    /* Get input: method, interlines, func, precision. */
    /* ----------------------------------------------- */
    int ret = 0;
    do {
      std::cout << std::endl;
      std::cout << "Select number of threads:" << std::endl;
      std::cout << "Number> " << std::flush;
      ret = scanf("%" SCNu64, &(options->number));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_number(options));

    do {
      std::cout << std::endl;
      std::cout << "Select calculation method:" << std::endl;
      std::cout << "  " << (unsigned short)METH_GAUSS_SEIDEL << ": Gauß-Seidel."
                << std::endl;
      std::cout << "  " << (unsigned short)METH_JACOBI << ": Jacobi."
                << std::endl;
      std::cout << "method> " << std::flush;
      ret = scanf("%" SCNu64, &(options->method));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_method(options));

    do {
      std::cout << std::endl;
      std::cout << "Matrixsize = Interlines*8+9" << std::endl;
      std::cout << "Interlines> " << std::flush;
      ret = scanf("%" SCNu64, &(options->interlines));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_interlines(options));

    do {
      std::cout << std::endl;
      std::cout << "Select interference function:" << std::endl;
      std::cout << " " << (unsigned short)FUNC_F0 << ": f(x,y)=0." << std::endl;
      std::cout << " " << (unsigned short)FUNC_FPISIN
                << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl;
      std::cout << "interference function> " << std::flush;
      ret = scanf("%" SCNu64, &(options->inf_func));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_inf_func(options));

    do {
      std::cout << std::endl;
      std::cout << "Select termination:" << std::endl;
      std::cout << " " << (unsigned short)TERM_PREC << ": sufficient precision."
                << std::endl;
      std::cout << " " << (unsigned short)TERM_ITER << ": number of iterations."
                << std::endl;
      std::cout << "termination> " << std::flush;
      ret = scanf("%" SCNu64, &(options->termination));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_termination(options));

    if (options->termination == TERM_PREC) {
      do {
        std::cout << std::endl;
        std::cout << "Select precision:" << std::endl;
        std::cout << "  Range: 1e-4 .. 1e-20." << std::endl;
        std::cout << "precision> " << std::flush;
        ret = scanf("%lf", &(options->term_precision));
        while (getchar() != '\n')
          ;
      } while (ret != 1 || !check_term_precision(options));

      options->term_iteration = MAX_ITERATION;
    } else if (options->termination == TERM_ITER) {
      do {
        std::cout << std::endl;
        std::cout << "Select number of iterations:" << std::endl;
        std::cout << "  Range: 1 .. " << (unsigned long)MAX_ITERATION << "."
                  << std::endl;
        std::cout << "Iterations> " << std::flush;
        ret = scanf("%" SCNu64, &(options->term_iteration));
        while (getchar() != '\n')
          ;
      } while (ret != 1 || !check_term_iteration(options));

      options->term_precision = 0;
    }
  } else {
    if (argc < 7 || strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "-?") == 0) {
      usage(argv[0]);
      exit(EXIT_SUCCESS);
    }

    ret = sscanf(argv[1], "%" SCNu64, &(options->number));

    if (ret != 1 || !check_number(options)) {
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(argv[2], "%" SCNu64, &(options->method));

    if (ret != 1 || !check_method(options)) {
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(argv[3], "%" SCNu64, &(options->interlines));

    if (ret != 1 || !check_interlines(options)) {
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(argv[4], "%" SCNu64, &(options->inf_func));

    if (ret != 1 || !check_inf_func(options)) {
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(argv[5], "%" SCNu64, &(options->termination));

    if (ret != 1 || !check_termination(options)) {
      usage(argv[0]);
      exit(EXIT_FAILURE);
    }

    if (options->termination == TERM_PREC) {
      ret = sscanf(argv[6], "%lf", &(options->term_precision));
      options->term_iteration = MAX_ITERATION;

      if (ret != 1 || !check_term_precision(options)) {
        usage(argv[0]);
        exit(EXIT_FAILURE);
      }
    } else {
      ret = sscanf(argv[6], "%" SCNu64, &(options->term_iteration));
      options->term_precision = 0;

      if (ret != 1 || !check_term_iteration(options)) {
        usage(argv[0]);
        exit(EXIT_FAILURE);
      }
    }
  }
}
