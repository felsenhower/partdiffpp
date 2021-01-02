#define _POSIX_C_SOURCE 200809L

#include <iostream>
#include <sstream>

#include "partdiff.h"

using argument_parser = partdiff::askparams::argument_parser;
using options = partdiff::askparams::options;
using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;

void argument_parser::usage() const {
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

template <class T>
void argument_parser::add_argument_description(
    T *target, std::string description, std::function<bool()> check_function) {
  partdiff::askparams::argument_description arg_desc;
  arg_desc.target = target;
  arg_desc.getter_function = [](std::any &a, const std::string &input) {
    T *temp_ptr = std::any_cast<T *>(a);
    bool valid_input = get_from_string(temp_ptr, input);
    return valid_input;
  };
  arg_desc.description = description;
  arg_desc.check_function = check_function;
  this->vec.push_back(arg_desc);
}

void argument_parser::fill_vec() {
  this->add_argument_description(
      &(this->_options.number),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select number of threads:" << std::endl
           << "Number> ";
        return ss.str();
      }(),
      [number = &(this->_options.number)] {
        return (*number >= 1 && *number <= partdiff::max_threads);
      });
  this->add_argument_description(
      &(this->_options.method),
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
      [method = &(this->_options.method)] {
        return (*method == calculation_method::gauss_seidel ||
                *method == calculation_method::jacobi);
      });
  this->add_argument_description(
      &(this->_options.interlines),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Matrixsize = Interlines*8+9" << std::endl
           << "Interlines> ";
        return ss.str();
      }(),
      [interlines = &(this->_options.interlines)] {
        return (*interlines <= partdiff::max_interlines);
      });
  this->add_argument_description(
      &(this->_options.inf_func),
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
      [inf_func = &(this->_options.inf_func)] {
        return (*inf_func == interference_function::f0 ||
                *inf_func == interference_function::fpisin);
      });
  this->add_argument_description(
      &(this->_options.termination),
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
      [termination = &(this->_options.termination)] {
        return (*termination == termination_condidion::precision ||
                *termination == termination_condidion::iterations);
      });
  this->add_argument_description(
      &(this->_options.term_precision),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select precision:" << std::endl
           << "  Range: 1e-4 .. 1e-20." << std::endl
           << "precision> ";
        return ss.str();
      }(),
      [term_precision = &(this->_options.term_precision)] {
        return (*term_precision >= 1e-20 && *term_precision <= 1e-4);
      });
  this->add_argument_description(
      &(this->_options.term_iteration),
      []() {
        std::stringstream ss;
        ss << std::endl
           << "Select number of iterations:" << std::endl
           << "  Range: 1 .. " << partdiff::max_iteration << "." << std::endl
           << "Iterations> ";
        return ss.str();
      }(),
      [term_iteration = &(this->_options.term_iteration)] {
        return (*term_iteration >= 1 &&
                *term_iteration <= partdiff::max_iteration);
      });
}

bool argument_parser::get_value(int index, std::string &input) {
  return vec[index].getter_function(vec[index].target, input) &&
         vec[index].check_function();
}

void argument_parser::askParam(int index) {
  bool valid_input = false;
  do {
    std::cout << vec[index].description << std::flush;
    std::string input;
    getline(std::cin, input);
    valid_input = get_value(index, input);
  } while (!valid_input);
}

void argument_parser::parseParam(int index, std::string &input) {
  if (!get_value(index, input)) {
    this->usage();
    exit(EXIT_FAILURE);
  }
}

void argument_parser::askParams() {
  if (this->args.size() < 1) {
    for (int i = 0; i <= TERMINATION; i++) {
      askParam(i);
    }
    if (this->_options.termination == termination_condidion::precision) {
      askParam(TERM_PRECISION);
      this->_options.term_iteration = partdiff::max_iteration;
    } else {
      askParam(TERM_ITERATION);
      this->_options.term_precision = 0.0;
    }
  } else if (this->args.size() < 6 || this->args[0] == "-h" ||
             this->args[0] == "-?") {
    usage();
    exit(EXIT_SUCCESS);
  } else {
    for (int i = 0; i <= TERMINATION; i++) {
      parseParam(i, args[i]);
    }
    if (this->_options.termination == termination_condidion::precision) {
      parseParam(TERM_PRECISION, args[5]);
      this->_options.term_iteration = partdiff::max_iteration;
    } else {
      parseParam(TERM_ITERATION, args[5]);
      this->_options.term_precision = 0.0;
    }
  }
}

argument_parser::argument_parser(const int argc, char const *argv[])
    : name(argv[0]), args(argv + 1, argv + argc) {
  this->fill_vec();
  this->askParams();
}
