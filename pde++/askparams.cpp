#include "partdiff.h"

using argument_parser = partdiff::askparams::argument_parser;
using options = partdiff::askparams::options;
using calculation_method = options::calculation_method;
using interference_function = options::interference_function;
using termination_condition = options::termination_condition;
using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;

argument_parser::argument_parser(const int argc, char const *argv[]) : app_name(argv[0]), args(argv + 1, argv + argc) {
  this->fill_argument_descriptions();
  this->askParams();
}

options argument_parser::get_options() { return this->parsed_options; }

template <typename T> bool argument_parser::argument_description::get_from_string(T *target, const std::string &input) {
  return from_string<T>::get(target, input);
}

argument_parser::argument_description argument_parser::get_description(std::size_t index) const {
  return this->argument_descriptions[index];
}

argument_parser::argument_description argument_parser::get_description(argument_index index) const {
  return this->get_description(to_underlying(index));
}

std::string get_name(std::string input) {
  return partdiff::build_string({"  - ", std::setw(11), std::setfill(' '), std::left, input + ":"});
}

void argument_parser::usage() const {
  std::cout << "Usage: " << this->app_name;
  for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
    std::cout << " [" << get_description(i).name << "]";
  }
  std::cout << " [" << this->get_description(argument_index::term_accuracy).name << "/"
            << this->get_description(argument_index::term_iteration).name << "]" << std::endl;
  std::cout << std::endl;
  for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
    std::cout << get_name(this->get_description(i).name) << this->get_description(i).description_for_usage << std::endl;
  }
  std::cout << get_name((this->get_description(argument_index::term_accuracy).name + "/" +
                         this->get_description(argument_index::term_iteration).name))
            << "depending on term:" << std::endl
            << (partdiff::legacy_mode ? "                 precision:  " : "                 accuracy: ")
            << scientific_double(partdiff::min_accuracy, 0) << " .. " << scientific_double(partdiff::max_accuracy, 0)
            << std::endl
            << "                 iterations:    1 .. " << partdiff::max_iteration << std::endl
            << std::endl
            << "Example: " << app_name << " 1 2 100 1 2 100 " << std::endl;
}

void argument_parser::askParams() {
  if (this->args.size() < 1) {
    for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
      askParam(i);
    }
    if (this->parsed_options.termination == termination_condition::accuracy) {
      askParam(argument_index::term_accuracy);
      this->parsed_options.term_iteration = partdiff::max_iteration;
    } else {
      askParam(argument_index::term_iteration);
      this->parsed_options.term_accuracy = 0.0;
    }
  } else if (this->args.size() < 6 || this->args[0] == "-h" || this->args[0] == "-?") {
    usage();
    exit(EXIT_SUCCESS);
  } else {
    for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
      parseParam(i, args[i]);
    }
    if (this->parsed_options.termination == termination_condition::accuracy) {
      parseParam(argument_index::term_accuracy, args[5]);
      this->parsed_options.term_iteration = partdiff::max_iteration;
    } else {
      parseParam(argument_index::term_iteration, args[5]);
      this->parsed_options.term_accuracy = 0.0;
    }
  }
}

void argument_parser::parseParam(argument_index index, std::string &input) {
  this->parseParam(to_underlying(index), input);
}

void argument_parser::parseParam(std::size_t index, std::string &input) {
  if (!this->get_description(index).read_from_string(input)) {
    this->usage();
    exit(EXIT_FAILURE);
  }
}

void argument_parser::askParam(argument_index index) { this->askParam(to_underlying(index)); }

void argument_parser::askParam(std::size_t index) {
  bool valid_input = false;
  do {
    std::cout << std::endl << this->get_description(index).description_for_interactive << std::flush;
    std::string input;
    getline(std::cin, input);
    valid_input = this->get_description(index).read_from_string(input);
  } while (!valid_input);
}

void argument_parser::fill_argument_descriptions() {
  auto number = &(this->parsed_options.number);
  this->add_argument_description("num", number,
                                 partdiff::build_string({"number of threads (1 .. ", partdiff::max_threads, ")"}),
                                 partdiff::build_string({"Select number of threads:", std::endl, "Number> "}),
                                 [number] { return (*number >= 1 && *number <= partdiff::max_threads); });
  auto method = &(this->parsed_options.method);
  this->add_argument_description(
      "method", method,
      partdiff::build_string({"calculation method (1 .. 2)", std::endl, "                 ",
                              to_underlying(calculation_method::gauss_seidel), ": Gauß-Seidel", std::endl,
                              "                 ", to_underlying(calculation_method::jacobi), ": Jacobi"}),
      partdiff::build_string({"Select calculation method:", std::endl, "  ",
                              to_underlying(calculation_method::gauss_seidel), ": Gauß-Seidel.", std::endl, "  ",
                              to_underlying(calculation_method::jacobi), ": Jacobi.", std::endl, "method> "}),
      [method] { return (*method == calculation_method::gauss_seidel || *method == calculation_method::jacobi); });
  auto interlines = &(this->parsed_options.interlines);
  this->add_argument_description(
      "lines", interlines,
      partdiff::build_string({"number of interlines (0 .. ", partdiff::max_interlines, ")", std::endl,
                              "                 matrixsize = (interlines * 8) + 9"}),
      partdiff::build_string({"Matrixsize = Interlines*8+9", std::endl, "Interlines> "}),
      [interlines] { return (*interlines <= partdiff::max_interlines); });
  auto inf_func = &(this->parsed_options.inf_func);
  this->add_argument_description(
      "func", inf_func,
      partdiff::build_string({"interference function (1 .. 2)", std::endl, "                 ",
                              to_underlying(interference_function::f0), ": f(x,y) = 0", std::endl, "                 ",
                              to_underlying(interference_function::fpisin),
                              ": f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)"}),
      partdiff::build_string({"Select interference function:", std::endl, " ", to_underlying(interference_function::f0),
                              ": f(x,y)=0.", std::endl, " ", to_underlying(interference_function::fpisin),
                              ": f(x,y)=2pi^2*sin(pi*x)sin(pi*y).", std::endl, "interference function> "}),
      [inf_func] { return (*inf_func == interference_function::f0 || *inf_func == interference_function::fpisin); });
  auto termination = &(this->parsed_options.termination);
  this->add_argument_description(
      "term", termination,
      partdiff::build_string({"termination condition ( 1.. 2)", std::endl, "                 ",
                              to_underlying(termination_condition::accuracy),
                              (partdiff::legacy_mode ? ": sufficient precision" : ": sufficient accuracy"), std::endl,
                              "                 ", to_underlying(termination_condition::iterations),
                              ": number of iterations"}),
      partdiff::build_string({"Select termination:", std::endl, " ", to_underlying(termination_condition::accuracy),
                              (partdiff::legacy_mode ? ": sufficient precision." : ": sufficient accuracy."), std::endl,
                              " ", to_underlying(termination_condition::iterations), ": number of iterations.",
                              std::endl, "termination> "}),
      [termination] {
        return (*termination == termination_condition::accuracy || *termination == termination_condition::iterations);
      });
  auto term_accuracy = &(this->parsed_options.term_accuracy);
  this->add_argument_description(
      (partdiff::legacy_mode ? "prec" : "acc"), term_accuracy, "< invalid >",
      partdiff::build_string({(partdiff::legacy_mode ? "Select precision:" : "Select accuracy:"), std::endl,
                              "  Range: ", scientific_double(partdiff::min_accuracy, 0), " .. ",
                              scientific_double(partdiff::max_accuracy, 0), ".", std::endl,
                              (partdiff::legacy_mode ? "precision> " : "accuracy> ")}),
      [term_accuracy] {
        return (*term_accuracy >= partdiff::max_accuracy && *term_accuracy <= partdiff::min_accuracy);
      });
  auto term_iteration = &(this->parsed_options.term_iteration);
  this->add_argument_description(
      "iter", term_iteration, "< invalid >",
      partdiff::build_string({"Select number of iterations:", std::endl, "  Range: 1 .. ", partdiff::max_iteration, ".",
                              std::endl, "Iterations> "}),
      [term_iteration] { return (*term_iteration >= 1 && *term_iteration <= partdiff::max_iteration); });
}

template <class T>
void argument_parser::add_argument_description(std::string name, T *target, std::string description_for_usage,
                                               std::string description_for_interactive, std::function<bool()> check) {
  argument_description arg_desc;
  arg_desc.name = name;
  arg_desc.target = target;
  arg_desc.read_from_string = [target = arg_desc.target, check](const std::string &input) {
    T *casted_ptr = std::any_cast<T *>(target);
    bool valid_input = argument_description::get_from_string(casted_ptr, input);
    valid_input &= check();
    return valid_input;
  };
  arg_desc.description_for_usage = description_for_usage;
  arg_desc.description_for_interactive = description_for_interactive;
  this->argument_descriptions.push_back(arg_desc);
}
