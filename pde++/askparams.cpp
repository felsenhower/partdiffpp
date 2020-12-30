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
#include <iostream>

#include "partdiff.h"

using namespace partdiff;

const static void usage(const std::string &name) {
  std::cout << "Usage: " << name
            << " [num] [method] [lines] [func] [term] [prec/iter]" << std::endl
            << std::endl
            << "  - num:       number of threads (1 .. "
            << (unsigned long)MAX_THREADS << ")" << std::endl
            << "  - method:    calculation method (1 .. 2)" << std::endl
            << "                 " << (unsigned short)METH_GAUSS_SEIDEL
            << ": Gauß-Seidel" << std::endl
            << "                 " << (unsigned short)METH_JACOBI << ": Jacobi"
            << std::endl
            << "  - lines:     number of interlines (0 .. "
            << (unsigned long)MAX_INTERLINES << ")" << std::endl
            << "                 matrixsize = (interlines * 8) + 9" << std::endl
            << "  - func:      interference function (1 .. 2)" << std::endl
            << "                 " << (unsigned short)FUNC_F0 << ": f(x,y) = 0"
            << std::endl
            << "                 " << (unsigned short)FUNC_FPISIN
            << ": f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)" << std::endl
            << "  - term:      termination condition ( 1.. 2)" << std::endl
            << "                 " << (unsigned short)TERM_PREC
            << ": sufficient precision" << std::endl
            << "                 " << (unsigned short)TERM_ITER
            << ": number of iterations" << std::endl
            << "  - prec/iter: depending on term:" << std::endl
            << "                 precision:  1e-4 .. 1e-20" << std::endl
            << "                 iterations:    1 .. " << MAX_ITERATION
            << std::endl
            << std::endl
            << "Example: " << name << " 1 2 100 1 2 100 " << std::endl;
}

const static bool check_number(const options &options) {
  return (options.number >= 1 && options.number <= MAX_THREADS);
}

const static bool check_method(const options &options) {
  return (options.method == METH_GAUSS_SEIDEL || options.method == METH_JACOBI);
}

const static bool check_interlines(const options &options) {
  return (options.interlines <= MAX_INTERLINES);
}

const static bool check_inf_func(const options &options) {
  return (options.inf_func == FUNC_F0 || options.inf_func == FUNC_FPISIN);
}

const static bool check_termination(const options &options) {
  return (options.termination == TERM_PREC || options.termination == TERM_ITER);
}

const static bool check_term_precision(const options &options) {
  return (options.term_precision >= 1e-20 && options.term_precision <= 1e-4);
}

const static bool check_term_iteration(const options &options) {
  return (options.term_iteration >= 1 &&
          options.term_iteration <= MAX_ITERATION);
}

const void
partdiff::askparams::askParams(options &options, const int argc,
                               const std::string &name,
                               const std::vector<std::string> &args) {
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

  int ret = 0;
  if (argc < 2) {
    /* ----------------------------------------------- */
    /* Get input: method, interlines, func, precision. */
    /* ----------------------------------------------- */
    do {
      std::cout << std::endl
                << "Select number of threads:" << std::endl
                << "Number> " << std::flush;
      ret = scanf("%" SCNu64, &(options.number));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_number(options));

    do {
      std::cout << std::endl
                << "Select calculation method:" << std::endl
                << "  " << (unsigned short)METH_GAUSS_SEIDEL << ": Gauß-Seidel."
                << std::endl
                << "  " << (unsigned short)METH_JACOBI << ": Jacobi."
                << std::endl
                << "method> " << std::flush;
      ret = scanf("%" SCNu64, &(options.method));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_method(options));

    do {
      std::cout << std::endl
                << "Matrixsize = Interlines*8+9" << std::endl
                << "Interlines> " << std::flush;
      ret = scanf("%" SCNu64, &(options.interlines));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_interlines(options));

    do {
      std::cout << std::endl
                << "Select interference function:" << std::endl
                << " " << (unsigned short)FUNC_F0 << ": f(x,y)=0." << std::endl
                << " " << (unsigned short)FUNC_FPISIN
                << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl
                << "interference function> " << std::flush;
      ret = scanf("%" SCNu64, &(options.inf_func));
      while (getchar() != '\n')
        ;
    } while (ret != 1 || !check_inf_func(options));

    do {
      std::cout << std::endl
                << "Select termination:" << std::endl
                << " " << (unsigned short)TERM_PREC << ": sufficient precision."
                << std::endl
                << " " << (unsigned short)TERM_ITER << ": number of iterations."
                << std::endl
                << "termination> " << std::flush;
      ret = scanf("%" SCNu64, &(options.termination));
      while (getchar() != '\n') {
        /* nothing */
      };
    } while (ret != 1 || !check_termination(options));

    if (options.termination == TERM_PREC) {
      do {
        std::cout << std::endl
                  << "Select precision:" << std::endl
                  << "  Range: 1e-4 .. 1e-20." << std::endl
                  << "precision> " << std::flush;
        ret = scanf("%lf", &(options.term_precision));
        while (getchar() != '\n')
          ;
      } while (ret != 1 || !check_term_precision(options));

      options.term_iteration = MAX_ITERATION;
    } else if (options.termination == TERM_ITER) {
      do {
        std::cout << std::endl
                  << "Select number of iterations:" << std::endl
                  << "  Range: 1 .. " << (unsigned long)MAX_ITERATION << "."
                  << std::endl
                  << "Iterations> " << std::flush;
        ret = scanf("%" SCNu64, &(options.term_iteration));
        while (getchar() != '\n')
          ;
      } while (ret != 1 || !check_term_iteration(options));

      options.term_precision = 0;
    }
  } else {
    if (argc < 7 || args[0] == "-h" || args[0] == "-?") {
      usage(name);
      exit(EXIT_SUCCESS);
    }

    ret = sscanf(args[0].c_str(), "%" SCNu64, &(options.number));

    if (ret != 1 || !check_number(options)) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(args[1].c_str(), "%" SCNu64, &(options.method));

    if (ret != 1 || !check_method(options)) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(args[2].c_str(), "%" SCNu64, &(options.interlines));

    if (ret != 1 || !check_interlines(options)) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(args[3].c_str(), "%" SCNu64, &(options.inf_func));

    if (ret != 1 || !check_inf_func(options)) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    ret = sscanf(args[4].c_str(), "%" SCNu64, &(options.termination));

    if (ret != 1 || !check_termination(options)) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    if (options.termination == TERM_PREC) {
      ret = sscanf(args[5].c_str(), "%lf", &(options.term_precision));
      options.term_iteration = MAX_ITERATION;

      if (ret != 1 || !check_term_precision(options)) {
        usage(name);
        exit(EXIT_FAILURE);
      }
    } else {
      ret = sscanf(args[5].c_str(), "%" SCNu64, &(options.term_iteration));
      options.term_precision = 0;

      if (ret != 1 || !check_term_iteration(options)) {
        usage(name);
        exit(EXIT_FAILURE);
      }
    }
  }
}
