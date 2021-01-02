#define _POSIX_C_SOURCE 200809L

#include "partdiff.h"

using argument_parser = partdiff::askparams::argument_parser;
using options = partdiff::askparams::options;
using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;

enum ARG_INDEX {
  NUMBER = 0,
  METHOD = 1,
  INTERLINES = 2,
  INF_FUNC = 3,
  TERMINATION = 4,
  TERM_PRECISION = 5,
  TERM_ITERATION = 6
};

void argument_parser::usage() const {
  std::cout << "Usage: " << this->app_name;
  for (int i = 0; i <= TERMINATION; i++) {
    std::cout << " [" << this->vec[i].name << "]";
  }
  std::cout << " [" << this->vec[TERM_PRECISION].name << "/"
            << this->vec[TERM_ITERATION].name << "]" << std::endl;
  std::cout << std::endl;
  for (int i = 0; i <= TERMINATION; i++) {
    std::cout << "  - " << std::setw(11) << std::setfill(' ') << std::left
              << (this->vec[i].name + ":");
    std::cout.flags(cout_default_flags);
    std::cout << this->vec[i].description_for_usage << std::endl;
  }
  std::cout << "  - " << std::setw(11) << std::setfill(' ') << std::left
            << (this->vec[TERM_PRECISION].name + "/" +
                this->vec[TERM_ITERATION].name + ":");
  std::cout.flags(cout_default_flags);
  std::cout << "depending on term:" << std::endl
            << "                 precision:  1e-4 .. 1e-20" << std::endl
            << "                 iterations:    1 .. "
            << partdiff::max_iteration << std::endl
            << std::endl
            << "Example: " << app_name << " 1 2 100 1 2 100 " << std::endl;
}

template <class T>
void argument_parser::add_argument_description(
    std::string name, T *target, std::string description_for_usage,
    std::string description_for_interactive,
    std::function<bool()> check_function) {
  argument_description arg_desc;
  arg_desc.name = name;
  arg_desc.target = target;
  arg_desc.read_from_string = [target =
                                   arg_desc.target](const std::string &input) {
    T *casted_ptr = std::any_cast<T *>(target);
    bool valid_input = get_from_string(casted_ptr, input);
    return valid_input;
  };
  arg_desc.description_for_usage = description_for_usage;
  arg_desc.description_for_interactive = description_for_interactive;
  arg_desc.check_function = check_function;
  this->vec.push_back(arg_desc);
}

void argument_parser::fill_vec() {
  auto number = &(this->_options.number);
  this->add_argument_description(
      "num", number,

      []() {
        std::stringstream ss;
        ss << "number of threads (1 .. " << partdiff::max_threads << ")";
        return ss.str();
      }(),

      []() {
        std::stringstream ss;
        ss << "Select number of threads:" << std::endl << "Number> ";
        return ss.str();
      }(),
      [number] { return (*number >= 1 && *number <= partdiff::max_threads); });
  auto method = &(this->_options.method);
  this->add_argument_description(
      "method", method,
      []() {
        std::stringstream ss;
        ss << "calculation method (1 .. 2)" << std::endl
           << "                 "
           << to_underlying(calculation_method::gauss_seidel) << ": Gauß-Seidel"
           << std::endl
           << "                 " << to_underlying(calculation_method::jacobi)
           << ": Jacobi";
        return ss.str();
      }(),
      []() {
        std::stringstream ss;
        ss << "Select calculation method:" << std::endl
           << "  " << to_underlying(calculation_method::gauss_seidel)
           << ": Gauß-Seidel." << std::endl
           << "  " << to_underlying(calculation_method::jacobi) << ": Jacobi."
           << std::endl
           << "method> ";
        return ss.str();
      }(),
      [method] {
        return (*method == calculation_method::gauss_seidel ||
                *method == calculation_method::jacobi);
      });
  auto interlines = &(this->_options.interlines);
  this->add_argument_description(
      "lines", interlines,
      []() {
        std::stringstream ss;
        ss << "number of interlines (0 .. " << partdiff::max_interlines << ")"
           << std::endl
           << "                 matrixsize = (interlines * 8) + 9";
        return ss.str();
      }(),
      []() {
        std::stringstream ss;
        ss << "Matrixsize = Interlines*8+9" << std::endl << "Interlines> ";
        return ss.str();
      }(),
      [interlines] { return (*interlines <= partdiff::max_interlines); });
  auto inf_func = &(this->_options.inf_func);
  this->add_argument_description(
      "func", inf_func,
      []() {
        std::stringstream ss;
        ss << "interference function (1 .. 2)" << std::endl
           << "                 " << to_underlying(interference_function::f0)
           << ": f(x,y) = 0" << std::endl
           << "                 "
           << to_underlying(interference_function::fpisin)
           << ": f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)";
        return ss.str();
      }(),
      []() {
        std::stringstream ss;
        ss << "Select interference function:" << std::endl
           << " " << to_underlying(interference_function::f0) << ": f(x,y)=0."
           << std::endl
           << " " << to_underlying(interference_function::fpisin)
           << ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y)." << std::endl
           << "interference function> ";
        return ss.str();
      }(),
      [inf_func] {
        return (*inf_func == interference_function::f0 ||
                *inf_func == interference_function::fpisin);
      });
  auto termination = &(this->_options.termination);
  this->add_argument_description(
      "term", termination,
      []() {
        std::stringstream ss;
        ss << "termination condition ( 1.. 2)" << std::endl
           << "                 "
           << to_underlying(termination_condidion::precision)
           << ": sufficient precision" << std::endl
           << "                 "
           << to_underlying(termination_condidion::iterations)
           << ": number of iterations";
        return ss.str();
      }(),
      []() {
        std::stringstream ss;
        ss << "Select termination:" << std::endl
           << " " << to_underlying(termination_condidion::precision)
           << ": sufficient precision." << std::endl
           << " " << to_underlying(termination_condidion::iterations)
           << ": number of iterations." << std::endl
           << "termination> ";
        return ss.str();
      }(),
      [termination] {
        return (*termination == termination_condidion::precision ||
                *termination == termination_condidion::iterations);
      });
  auto term_precision = &(this->_options.term_precision);
  this->add_argument_description(
      "prec", term_precision, "< invalid >",
      []() {
        std::stringstream ss;
        ss << "Select precision:" << std::endl
           << "  Range: 1e-4 .. 1e-20." << std::endl
           << "precision> ";
        return ss.str();
      }(),
      [term_precision] {
        return (*term_precision >= 1e-20 && *term_precision <= 1e-4);
      });
  auto term_iteration = &(this->_options.term_iteration);
  this->add_argument_description(
      "iter", term_iteration, "< invalid >",
      []() {
        std::stringstream ss;
        ss << "Select number of iterations:" << std::endl
           << "  Range: 1 .. " << partdiff::max_iteration << "." << std::endl
           << "Iterations> ";
        return ss.str();
      }(),
      [term_iteration] {
        return (*term_iteration >= 1 &&
                *term_iteration <= partdiff::max_iteration);
      });
}

bool argument_parser::get_value(int index, std::string &input) {
  return vec[index].read_from_string(input) && vec[index].check_function();
}

void argument_parser::askParam(int index) {
  bool valid_input = false;
  do {
    std::cout << std::endl
              << vec[index].description_for_interactive << std::flush;
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
    : app_name(argv[0]), args(argv + 1, argv + argc) {
  this->fill_vec();
  this->askParams();
}
