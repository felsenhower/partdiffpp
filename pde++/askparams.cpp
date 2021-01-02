#define _POSIX_C_SOURCE 200809L

#include "partdiff.h"

using argument_parser = partdiff::askparams::argument_parser;

using options = partdiff::askparams::options;
using calculation_method = partdiff::askparams::options::calculation_method;
using interference_function =
    partdiff::askparams::options::interference_function;
using termination_condition =
    partdiff::askparams::options::termination_condition;

using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;

void argument_parser::usage() const {
  std::cout << "Usage: " << this->app_name;
  for (std::size_t i = 0;
       i <= static_cast<std::size_t>(argument_index::termination); i++) {
    std::cout << " [" << this->argument_descriptions[i].name << "]";
  }
  std::cout << " ["
            << this->argument_descriptions[static_cast<std::size_t>(
                                               argument_index::term_precision)]
                   .name
            << "/"
            << this->argument_descriptions[static_cast<std::size_t>(
                                               argument_index::term_iteration)]
                   .name
            << "]" << std::endl;
  std::cout << std::endl;
  for (std::size_t i = 0;
       i <= static_cast<std::size_t>(argument_index::termination); i++) {
    std::stringstream ss;
    ss << "  - " << std::setw(11) << std::setfill(' ') << std::left
       << (this->argument_descriptions[i].name + ":");
    std::cout << ss.str()
              << this->argument_descriptions[i].description_for_usage
              << std::endl;
  }
  std::stringstream ss;
  ss << "  - " << std::setw(11) << std::setfill(' ') << std::left
     << (this->argument_descriptions[static_cast<std::size_t>(
                                         argument_index::term_precision)]
             .name +
         "/" +
         this->argument_descriptions[static_cast<std::size_t>(
                                         argument_index::term_iteration)]
             .name +
         ":");
  std::cout << ss.str() << "depending on term:" << std::endl
            << "                 precision:  "
            << scientific_double(partdiff::min_precision, 0) << " .. "
            << scientific_double(partdiff::max_precision, 0) << std::endl
            << "                 iterations:    1 .. "
            << partdiff::max_iteration << std::endl
            << std::endl
            << "Example: " << app_name << " 1 2 100 1 2 100 " << std::endl;
}

template <class T>
void argument_parser::add_argument_description(
    std::string name, T *target, std::string description_for_usage,
    std::string description_for_interactive, std::function<bool()> check) {
  argument_description arg_desc;
  arg_desc.name = name;
  arg_desc.target = target;
  arg_desc.read_from_string = [target = arg_desc.target,
                               check](const std::string &input) {
    T *casted_ptr = std::any_cast<T *>(target);
    bool valid_input = get_from_string(casted_ptr, input);
    valid_input &= check();
    return valid_input;
  };
  arg_desc.description_for_usage = description_for_usage;
  arg_desc.description_for_interactive = description_for_interactive;
  this->argument_descriptions.push_back(arg_desc);
}

options argument_parser::get_options() { return this->parsed_options; }

void argument_parser::fill_argument_descriptions() {
  auto number = &(this->parsed_options.number);
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
  auto method = &(this->parsed_options.method);
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
  auto interlines = &(this->parsed_options.interlines);
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
  auto inf_func = &(this->parsed_options.inf_func);
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
  auto termination = &(this->parsed_options.termination);
  this->add_argument_description(
      "term", termination,
      []() {
        std::stringstream ss;
        ss << "termination condition ( 1.. 2)" << std::endl
           << "                 "
           << to_underlying(termination_condition::precision)
           << ": sufficient precision" << std::endl
           << "                 "
           << to_underlying(termination_condition::iterations)
           << ": number of iterations";
        return ss.str();
      }(),
      []() {
        std::stringstream ss;
        ss << "Select termination:" << std::endl
           << " " << to_underlying(termination_condition::precision)
           << ": sufficient precision." << std::endl
           << " " << to_underlying(termination_condition::iterations)
           << ": number of iterations." << std::endl
           << "termination> ";
        return ss.str();
      }(),
      [termination] {
        return (*termination == termination_condition::precision ||
                *termination == termination_condition::iterations);
      });
  auto term_precision = &(this->parsed_options.term_precision);
  this->add_argument_description(
      "prec", term_precision, "< invalid >",
      []() {
        std::stringstream ss;
        ss << "Select precision:" << std::endl
           << "  Range: " << scientific_double(partdiff::min_precision, 0)
           << " .. " << scientific_double(partdiff::max_precision, 0) << "."
           << std::endl
           << "precision> ";
        return ss.str();
      }(),
      [term_precision] {
        return (*term_precision >= partdiff::max_precision &&
                *term_precision <= partdiff::min_precision);
      });
  auto term_iteration = &(this->parsed_options.term_iteration);
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

void argument_parser::askParam(std::size_t index) {
  bool valid_input = false;
  do {
    std::cout << std::endl
              << argument_descriptions[index].description_for_interactive
              << std::flush;
    std::string input;
    getline(std::cin, input);
    valid_input = argument_descriptions[index].read_from_string(input);
  } while (!valid_input);
}

void argument_parser::parseParam(std::size_t index, std::string &input) {
  if (!argument_descriptions[index].read_from_string(input)) {
    this->usage();
    exit(EXIT_FAILURE);
  }
}

void argument_parser::askParams() {
  if (this->args.size() < 1) {
    for (std::size_t i = 0;
         i <= static_cast<std::size_t>(argument_index::termination); i++) {
      askParam(i);
    }
    if (this->parsed_options.termination == termination_condition::precision) {
      askParam(static_cast<std::size_t>(argument_index::term_precision));
      this->parsed_options.term_iteration = partdiff::max_iteration;
    } else {
      askParam(static_cast<std::size_t>(argument_index::term_iteration));
      this->parsed_options.term_precision = 0.0;
    }
  } else if (this->args.size() < 6 || this->args[0] == "-h" ||
             this->args[0] == "-?") {
    usage();
    exit(EXIT_SUCCESS);
  } else {
    for (std::size_t i = 0;
         i <= static_cast<std::size_t>(argument_index::termination); i++) {
      parseParam(i, args[i]);
    }
    if (this->parsed_options.termination == termination_condition::precision) {
      parseParam(static_cast<std::size_t>(argument_index::term_precision),
                 args[5]);
      this->parsed_options.term_iteration = partdiff::max_iteration;
    } else {
      parseParam(static_cast<std::size_t>(argument_index::term_iteration),
                 args[5]);
      this->parsed_options.term_precision = 0.0;
    }
  }
}

argument_parser::argument_parser(const int argc, char const *argv[])
    : app_name(argv[0]), args(argv + 1, argv + argc) {
  this->fill_argument_descriptions();
  this->askParams();
}
