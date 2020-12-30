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

const bool options::check_number() {
  return (this->number >= 1 && this->number <= MAX_THREADS);
}

const bool options::check_method() {
  return (this->method == METH_GAUSS_SEIDEL || this->method == METH_JACOBI);
}

const bool options::check_interlines() {
  return (this->interlines <= MAX_INTERLINES);
}

const bool options::check_inf_func() {
  return (this->inf_func == FUNC_F0 || this->inf_func == FUNC_FPISIN);
}

const bool options::check_termination() {
  return (this->termination == TERM_PREC || this->termination == TERM_ITER);
}

const bool options::check_term_precision() {
  return (this->term_precision >= 1e-20 && this->term_precision <= 1e-4);
}

const bool options::check_term_iteration() {
  return (this->term_iteration >= 1 && this->term_iteration <= MAX_ITERATION);
}

const void options::askParams(const int argc, const std::string &name,
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

  bool valid_input = false;
  if (argc < 2) {
    /* ----------------------------------------------- */
    /* Get input: method, interlines, func, precision. */
    /* ----------------------------------------------- */

    do {
      std::cout << std::endl
                << "Select number of threads:" << std::endl
                << "Number> " << std::flush;
      try {
        std::string input;
        getline(std::cin, input);
        this->number = std::stol(input);
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
    } while (!valid_input || !this->check_number());

    do {
      std::cout << std::endl
                << "Select calculation method:" << std::endl
                << "  " << (unsigned short)METH_GAUSS_SEIDEL << ": Gauß-Seidel."
                << std::endl
                << "  " << (unsigned short)METH_JACOBI << ": Jacobi."
                << std::endl
                << "method> " << std::flush;
      try {
        std::string input;
        getline(std::cin, input);
        this->method = std::stol(input);
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
    } while (!valid_input || !this->check_method());

    do {
      std::cout << std::endl
                << "Matrixsize = Interlines*8+9" << std::endl
                << "Interlines> " << std::flush;
      try {
        std::string input;
        getline(std::cin, input);
        this->interlines = std::stol(input);
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
    } while (!valid_input || !this->check_interlines());

    do {
      std::cout << std::endl
                << "Select interference function:" << std::endl
                << " " << (unsigned short)FUNC_F0 << ": f(x,y)=0." << std::endl
                << " " << (unsigned short)FUNC_FPISIN
                << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl
                << "interference function> " << std::flush;
      try {
        std::string input;
        getline(std::cin, input);
        this->inf_func = std::stol(input);
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
    } while (!valid_input || !this->check_inf_func());

    do {
      std::cout << std::endl
                << "Select termination:" << std::endl
                << " " << (unsigned short)TERM_PREC << ": sufficient precision."
                << std::endl
                << " " << (unsigned short)TERM_ITER << ": number of iterations."
                << std::endl
                << "termination> " << std::flush;
      try {
        std::string input;
        getline(std::cin, input);
        this->termination = std::stol(input);
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
    } while (!valid_input || !this->check_termination());

    if (this->termination == TERM_PREC) {
      do {
        std::cout << std::endl
                  << "Select precision:" << std::endl
                  << "  Range: 1e-4 .. 1e-20." << std::endl
                  << "precision> " << std::flush;
        try {
          std::string input;
          getline(std::cin, input);
          this->term_precision = std::stod(input);
          valid_input = true;
        } catch (std::logic_error &) {
          valid_input = false;
        }
      } while (!valid_input || !this->check_term_precision());

      this->term_iteration = MAX_ITERATION;
    } else if (this->termination == TERM_ITER) {
      do {
        std::cout << std::endl
                  << "Select number of iterations:" << std::endl
                  << "  Range: 1 .. " << (unsigned long)MAX_ITERATION << "."
                  << std::endl
                  << "Iterations> " << std::flush;
        try {
          std::string input;
          getline(std::cin, input);
          this->term_iteration = std::stol(input);
          valid_input = true;
        } catch (std::logic_error &) {
          valid_input = false;
        }
      } while (!valid_input || !this->check_term_iteration());

      this->term_precision = 0;
    }
  } else {
    if (argc < 7 || args[0] == "-h" || args[0] == "-?") {
      usage(name);
      exit(EXIT_SUCCESS);
    }

    try {
      this->number = std::stol(args[0]);
      valid_input = true;
    } catch (std::logic_error &) {
      valid_input = false;
    }
    if (!valid_input || !this->check_number()) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    try {
      this->method = std::stol(args[1]);
      valid_input = true;
    } catch (std::logic_error &) {
      valid_input = false;
    }
    if (!valid_input || !this->check_method()) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    try {
      this->interlines = std::stol(args[2]);
      valid_input = true;
    } catch (std::logic_error &) {
      valid_input = false;
    }
    if (!valid_input || !this->check_interlines()) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    try {
      this->inf_func = std::stol(args[3]);
      valid_input = true;
    } catch (std::logic_error &) {
      valid_input = false;
    }
    if (!valid_input || !this->check_inf_func()) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    try {
      this->termination = std::stol(args[4]);
      valid_input = true;
    } catch (std::logic_error &) {
      valid_input = false;
    }
    if (!valid_input || !this->check_termination()) {
      usage(name);
      exit(EXIT_FAILURE);
    }

    if (this->termination == TERM_PREC) {

      try {
        this->term_precision = std::stod(args[5]);
        this->term_iteration = MAX_ITERATION;
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
      if (!valid_input || !this->check_term_precision()) {
        usage(name);
        exit(EXIT_FAILURE);
      }

    } else {

      try {
        this->term_iteration = std::stol(args[5]);
        this->term_precision = 0;
        valid_input = true;
      } catch (std::logic_error &) {
        valid_input = false;
      }
      if (!valid_input || !this->check_term_iteration()) {
        usage(name);
        exit(EXIT_FAILURE);
      }
    }
  }
}

options::options(const int argc, const std::string &name,
                 const std::vector<std::string> &args) {
  this->askParams(argc, name, args);
}
