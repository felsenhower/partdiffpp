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
#include <sstream>

#include "partdiff.h"

using options = partdiff::askparams::options;
using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;

void options::usage() const {
  std::cout << "Usage: " << this->name
            << " [num] [method] [lines] [func] [term] [prec/iter]" << std::endl
            << std::endl
            << "  - num:       number of threads (1 .. "
            << partdiff::max_threads << ")" << std::endl
            << "  - method:    calculation method (1 .. 2)" << std::endl
            << "                 "
            << to_underlying(calculation_method::gauss_seidel)
            << ": Gauß-Seidel" << std::endl
            << "                 " << to_underlying(calculation_method::jacobi)
            << ": Jacobi" << std::endl
            << "  - lines:     number of interlines (0 .. "
            << partdiff::max_interlines << ")" << std::endl
            << "                 matrixsize = (interlines * 8) + 9" << std::endl
            << "  - func:      interference function (1 .. 2)" << std::endl
            << "                 " << to_underlying(interference_function::f0)
            << ": f(x,y) = 0" << std::endl
            << "                 "
            << to_underlying(interference_function::fpisin)
            << ": f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)" << std::endl
            << "  - term:      termination condition ( 1.. 2)" << std::endl
            << "                 "
            << to_underlying(termination_condidion::precision)
            << ": sufficient precision" << std::endl
            << "                 "
            << to_underlying(termination_condidion::iterations)
            << ": number of iterations" << std::endl
            << "  - prec/iter: depending on term:" << std::endl
            << "                 precision:  1e-4 .. 1e-20" << std::endl
            << "                 iterations:    1 .. "
            << partdiff::max_iteration << std::endl
            << std::endl
            << "Example: " << name << " 1 2 100 1 2 100 " << std::endl;
}

bool options::check_number() const {
  return (this->number >= 1 && this->number <= partdiff::max_threads);
}

bool options::check_method() const {
  return (this->method == calculation_method::gauss_seidel ||
          this->method == calculation_method::jacobi);
}

bool options::check_interlines() const {
  return (this->interlines <= partdiff::max_interlines);
}

bool options::check_inf_func() const {
  return (this->inf_func == interference_function::f0 ||
          this->inf_func == interference_function::fpisin);
}

bool options::check_termination() const {
  return (this->termination == termination_condidion::precision ||
          this->termination == termination_condidion::iterations);
}

bool options::check_term_precision() const {
  return (this->term_precision >= 1e-20 && this->term_precision <= 1e-4);
}

bool options::check_term_iteration() const {
  return (this->term_iteration >= 1 &&
          this->term_iteration <= partdiff::max_iteration);
}

struct argument_description {
  std::any target;
  std::function<bool()> check_function;
  std::string description;
  std::function<bool(std::any &a, const std::string &input)> getter_function;
};

template <class T> void set_target(argument_description &arg_desc, T *target) {
  arg_desc.target = target;
  arg_desc.getter_function = [](std::any &a, const std::string &input) {
    T *temp_ptr = std::any_cast<T *>(a);
    bool valid_input = get_from_string(temp_ptr, input);
    return valid_input;
  };
}

void options::askParams() {

  std::vector<argument_description> vec;

  argument_description arg_desc;
  set_target(arg_desc, &(this->number));
  std::stringstream ss;
  ss << std::endl << "Select number of threads:" << std::endl << "Number> ";
  arg_desc.description = ss.str();
  arg_desc.check_function = [number = &(this->number)] {
    return (*number >= 1 && *number <= partdiff::max_threads);
  };
  vec.push_back(arg_desc);

  argument_description arg_desc2;
  set_target(arg_desc2, &(this->method));
  std::stringstream ss2;
  ss2 << std::endl
      << "Select calculation method:" << std::endl
      << "  " << to_underlying(calculation_method::gauss_seidel)
      << ": Gauß-Seidel." << std::endl
      << "  " << to_underlying(calculation_method::jacobi) << ": Jacobi."
      << std::endl
      << "method> ";
  arg_desc2.description = ss2.str();
  arg_desc2.check_function = [method = &(this->method)] {
    return (*method == calculation_method::gauss_seidel ||
            *method == calculation_method::jacobi);
  };
  vec.push_back(arg_desc2);

  bool valid_input = false;
  if (this->argc < 2) {

    for (int i = 0; i <= 1; i++) {
      do {
        std::cout << vec[i].description << std::flush;
        std::string input;
        getline(std::cin, input);
        valid_input = vec[i].getter_function(vec[i].target, input);
        valid_input &= vec[i].check_function();
      } while (!valid_input);
    }

    do {
      std::cout << std::endl
                << "Matrixsize = Interlines*8+9" << std::endl
                << "Interlines> " << std::flush;
      std::string input;
      getline(std::cin, input);
      valid_input = get_from_string(&(this->interlines), input);
      valid_input &= this->check_interlines();
    } while (!valid_input);

    do {
      std::cout << std::endl
                << "Select interference function:" << std::endl
                << " " << to_underlying(interference_function::f0)
                << ": f(x,y)=0." << std::endl
                << " " << to_underlying(interference_function::fpisin)
                << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl
                << "interference function> " << std::flush;
      std::string input;
      getline(std::cin, input);
      valid_input = get_from_string(&(this->inf_func), input);
      valid_input &= this->check_inf_func();
    } while (!valid_input);

    do {
      std::cout << std::endl
                << "Select termination:" << std::endl
                << " " << to_underlying(termination_condidion::precision)
                << ": sufficient precision." << std::endl
                << " " << to_underlying(termination_condidion::iterations)
                << ": number of iterations." << std::endl
                << "termination> " << std::flush;
      std::string input;
      getline(std::cin, input);
      valid_input = get_from_string(&(this->termination), input);
      valid_input &= this->check_termination();
    } while (!valid_input);

    if (this->termination == termination_condidion::precision) {
      do {
        std::cout << std::endl
                  << "Select precision:" << std::endl
                  << "  Range: 1e-4 .. 1e-20." << std::endl
                  << "precision> " << std::flush;
        std::string input;
        getline(std::cin, input);
        valid_input = get_from_string(&(this->term_precision), input);
        valid_input &= this->check_term_precision();
      } while (!valid_input);

      this->term_iteration = partdiff::max_iteration;
    } else if (this->termination == termination_condidion::iterations) {
      do {
        std::cout << std::endl
                  << "Select number of iterations:" << std::endl
                  << "  Range: 1 .. " << partdiff::max_iteration << "."
                  << std::endl
                  << "Iterations> " << std::flush;
        std::string input;
        getline(std::cin, input);
        valid_input = get_from_string(&(this->term_iteration), input);
        valid_input &= this->check_term_iteration();
      } while (!valid_input);

      this->term_precision = 0;
    }
  } else {
    if (this->argc < 7 || this->args[0] == "-h" || this->args[0] == "-?") {
      usage();
      exit(EXIT_SUCCESS);
    }

    std::string input;

    input = args[0];
    valid_input = get_from_string(&(this->number), input);
    valid_input &= this->check_number();
    if (!valid_input) {
      usage();
      exit(EXIT_FAILURE);
    }

    input = args[1];
    valid_input = get_from_string(&(this->method), input);
    valid_input &= this->check_method();
    if (!valid_input) {
      usage();
      exit(EXIT_FAILURE);
    }

    input = args[2];
    valid_input = get_from_string(&(this->interlines), input);
    valid_input &= this->check_interlines();
    if (!valid_input) {
      usage();
      exit(EXIT_FAILURE);
    }

    input = args[3];
    valid_input = get_from_string(&(this->inf_func), input);
    valid_input &= this->check_inf_func();
    if (!valid_input) {
      usage();
      exit(EXIT_FAILURE);
    }

    input = args[4];
    valid_input = get_from_string(&(this->termination), input);
    valid_input &= this->check_termination();
    if (!valid_input) {
      usage();
      exit(EXIT_FAILURE);
    }

    if (this->termination == termination_condidion::precision) {

      input = args[5];
      valid_input = get_from_string(&(this->term_precision), input);
      valid_input &= this->check_term_precision();
      this->term_iteration = partdiff::max_iteration;
      if (!valid_input) {
        usage();
        exit(EXIT_FAILURE);
      }

    } else {

      input = args[5];
      valid_input = get_from_string(&(this->term_iteration), input);
      valid_input &= this->check_term_iteration();
      this->term_precision = 0;
      if (!valid_input) {
        usage();
        exit(EXIT_FAILURE);
      }
    }
  }
}

options::options(const int argc, const std::string &name,
                 const std::vector<std::string> &args)
    : argc(argc), name(name), args(args) {
  this->askParams();
}
