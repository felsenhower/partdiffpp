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

enum ARG_INDEX {
  NUMBER = 0,
  METHOD = 1,
  INTERLINES = 2,
  INF_FUNC = 3,
  TERMINATION = 4,
  TERM_PRECISION = 5,
  TERM_ITERATION = 6
};

// enum _ARG_INDEX {
//   _NUMBER = 0,
//   _METHOD = 1,
//   _INTERLINES = 2,
//   _INF_FUNC = 3,
//   _TERMINATION = 4,
//   _TERM_PREC_OR_ITER = 5
// };

template <class T>
void options::set_target(partdiff::askparams::argument_description &arg_desc,
                         T *target) {
  arg_desc.target = target;
  arg_desc.getter_function = [](std::any &a, const std::string &input) {
    T *temp_ptr = std::any_cast<T *>(a);
    bool valid_input = get_from_string(temp_ptr, input);
    return valid_input;
  };
}

template <class T>
partdiff::askparams::argument_description
options::make_argument_description(T *target, std::string description,
                                   std::function<bool()> check_function) {
  partdiff::askparams::argument_description arg_desc;
  options::set_target(arg_desc, target);
  arg_desc.description = description;
  arg_desc.check_function = check_function;
  return arg_desc;
}

void options::askParam(int index) {
  bool valid_input = false;
  do {
    std::cout << vec[index].description << std::flush;
    std::string input;
    getline(std::cin, input);
    valid_input = vec[index].getter_function(vec[index].target, input);
    valid_input &= vec[index].check_function();
  } while (!valid_input);
}

void options::parseParam(int index, std::string &input) {
  bool valid_input = vec[index].getter_function(vec[index].target, input);
  valid_input &= vec[index].check_function();
  if (!valid_input) {
    this->usage();
    exit(EXIT_FAILURE);
  }
}

void options::fill_vec() {
  vec.push_back(this->make_argument_description(
      &(this->number),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select number of threads:" << std::endl
           << "Number> ";
        return ss.str();
      }(),
      [number = &(this->number)] {
        return (*number >= 1 && *number <= partdiff::max_threads);
      }));
  vec.push_back(this->make_argument_description(
      &(this->method),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select calculation method:" << std::endl
           << "  " << to_underlying(calculation_method::gauss_seidel)
           << ": Gauß-Seidel." << std::endl
           << "  " << to_underlying(calculation_method::jacobi) << ": Jacobi."
           << std::endl
           << "method> ";
        return ss.str();
      }(),
      [method = &(this->method)] {
        return (*method == calculation_method::gauss_seidel ||
                *method == calculation_method::jacobi);
      }));
  vec.push_back(this->make_argument_description(
      &(this->interlines),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Matrixsize = Interlines*8+9" << std::endl
           << "Interlines> ";
        return ss.str();
      }(),
      [interlines = &(this->interlines)] {
        return (*interlines <= partdiff::max_interlines);
      }));
  vec.push_back(this->make_argument_description(
      &(this->inf_func),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select interference function:" << std::endl
           << " " << to_underlying(interference_function::f0) << ": f(x,y)=0."
           << std::endl
           << " " << to_underlying(interference_function::fpisin)
           << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl
           << "interference function> ";
        return ss.str();
      }(),
      [inf_func = &(this->inf_func)] {
        return (*inf_func == interference_function::f0 ||
                *inf_func == interference_function::fpisin);
      }));
  vec.push_back(this->make_argument_description(
      &(this->termination),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select termination:" << std::endl
           << " " << to_underlying(termination_condidion::precision)
           << ": sufficient precision." << std::endl
           << " " << to_underlying(termination_condidion::iterations)
           << ": number of iterations." << std::endl
           << "termination> ";
        return ss.str();
      }(),
      [termination = &(this->termination)] {
        return (*termination == termination_condidion::precision ||
                *termination == termination_condidion::iterations);
      }));
  vec.push_back(this->make_argument_description(
      &(this->term_precision),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select precision:" << std::endl
           << "  Range: 1e-4 .. 1e-20." << std::endl
           << "precision> ";
        return ss.str();
      }(),
      [term_precision = &(this->term_precision)] {
        return (*term_precision >= 1e-20 && *term_precision <= 1e-4);
      }));
  vec.push_back(this->make_argument_description(
      &(this->term_iteration),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select number of iterations:" << std::endl
           << "  Range: 1 .. " << partdiff::max_iteration << "." << std::endl
           << "Iterations> ";
        return ss.str();
      }(),
      [term_iteration = &(this->term_iteration)] {
        return (*term_iteration >= 1 &&
                *term_iteration <= partdiff::max_iteration);
      }));
}

void options::askParams() {
  if (this->argc < 2) {
    for (int i = 0; i <= TERMINATION; i++) {
      askParam(i);
    }
    if (this->termination == termination_condidion::precision) {
      askParam(TERM_PRECISION);
      this->term_iteration = partdiff::max_iteration;
    } else {
      askParam(TERM_ITERATION);
      this->term_precision = 0.0;
    }
  } else if (this->argc < 7 || this->args[0] == "-h" || this->args[0] == "-?") {
    usage();
    exit(EXIT_SUCCESS);
  } else {
    for (int i = 0; i <= TERMINATION; i++) {
      parseParam(i, args[i]);
    }
    if (this->termination == termination_condidion::precision) {
      parseParam(TERM_PRECISION, args[5]);
      this->term_iteration = partdiff::max_iteration;
    } else {
      parseParam(TERM_ITERATION, args[5]);
      this->term_precision = 0.0;
    }
  }
}

options::options(const int argc, const std::string &name,
                 const std::vector<std::string> &args)
    : argc(argc), name(name), args(args) {
  this->fill_vec();
  this->askParams();
}
