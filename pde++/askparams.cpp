#include "partdiff.h"

namespace partdiff {

  namespace askparams {

    using calculation_method = calculation_options::calculation_method;
    using interference_function = calculation_options::interference_function;
    using termination_condition = calculation_options::termination_condition;

    argument_parser::argument_parser(const int argc, char const *argv[])
      : app_name(argv[0]),
        args(argv + 1, argv + argc) {
      this->fill_argument_descriptions();
      this->ask_params();
    }

    calculation_options argument_parser::get_options() {
      return this->options;
    }

    argument_parser::argument_description argument_parser::get_description(std::size_t index) const {
      return this->argument_descriptions[index];
    }

    argument_parser::argument_description argument_parser::get_description(argument_index index) const {
      return this->get_description(to_underlying(index));
    }

    void argument_parser::usage() const {
      const auto get_name = [](const std::string &input) { return fmt::format("  - {:11}", input + ":"); };

      fmt::print("Usage: {}", this->app_name);
      for (std::size_t i = 0; i <= to_underlying(argument_index::term_dummy); i++) {
        fmt::print(" [{}]", get_description(i).name);
      }
      std::cout << std::endl << std::endl;
      for (std::size_t i = 0; i <= to_underlying(argument_index::term_dummy); i++) {
        fmt::print("{}{}\n", get_name(this->get_description(i).name), this->get_description(i).description_for_usage);
      }
      fmt::print("Example: {} 1 2 100 1 2 100 \n", app_name);
    }

    void argument_parser::ask_params() {
      if (this->args.size() < 1) {
        for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
          ask_param(i);
        }
        if (this->options.termination == termination_condition::accuracy) {
          ask_param(argument_index::term_accuracy);
          this->options.term_iteration = partdiff::max_iteration;
        } else {
          ask_param(argument_index::term_iteration);
          this->options.term_accuracy = 0.0;
        }
      } else if (this->args.size() < 6 || this->args[0] == "-h" || this->args[0] == "-?") {
        usage();
        exit(EXIT_SUCCESS);
      } else {
        for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
          parse_param(i, args[i]);
        }
        if (this->options.termination == termination_condition::accuracy) {
          parse_param(argument_index::term_accuracy, args[5]);
          this->options.term_iteration = partdiff::max_iteration;
        } else {
          parse_param(argument_index::term_iteration, args[5]);
          this->options.term_accuracy = 0.0;
        }
      }
    }

    void argument_parser::parse_param(argument_index index, std::string &input) {
      this->parse_param(to_underlying(index), input);
    }

    void argument_parser::parse_param(std::size_t index, std::string &input) {
      if (!this->get_description(index).read_from_string(input)) {
        this->usage();
        exit(EXIT_FAILURE);
      }
    }

    void argument_parser::ask_param(argument_index index) {
      this->ask_param(to_underlying(index));
    }

    void argument_parser::ask_param(std::size_t index) {
      bool valid_input = false;
      do {
        std::cout << std::endl << this->get_description(index).description_for_interactive << std::flush;
        std::string input;
        getline(std::cin, input);
        valid_input = this->get_description(index).read_from_string(input);
      } while (!valid_input);
    }

    void argument_parser::fill_argument_descriptions() {

      auto scientific_double = [](double val) {
        auto temp = fmt::format("{:.0e}", val);
        int epos = temp.find("e");
        std::string mantissa_str = temp.substr(0, epos);
        std::string exponent_str = temp.substr(epos + 1, temp.length() - epos - 1);
        int exponent = stoi(exponent_str);
        return mantissa_str + "e" + std::to_string(exponent);
      };

      constexpr int indent_width = 17;
      const std::string accuracy_text = (partdiff::legacy_mode ? "precision" : "accuracy");
      const std::string acc_text = (partdiff::legacy_mode ? "prec" : "acc");
      const std::string invalid_text = "< invalid >";

      auto number = &(this->options.number);
      this->add_argument_description("num", number, fmt::format("number of threads (1 .. {:d})", partdiff::max_threads),
                                     "Select number of threads:\n"
                                     "Number> ",
                                     [number] { return (*number >= 1 && *number <= partdiff::max_threads); });

      auto method = &(this->options.method);
      this->add_argument_description(
          "method", method,
          fmt::format("calculation method (1 .. 2)\n"
                      "{1:{0}s}{2:d}: Gauß-Seidel\n"
                      "{1:{0}s}{3:d}: Jacobi",
                      indent_width, "", to_underlying(calculation_method::gauss_seidel),
                      to_underlying(calculation_method::jacobi)),
          fmt::format("Select calculation method:\n"
                      "  {:d}: Gauß-Seidel.\n"
                      "  {:d}: Jacobi.\n"
                      "method> ",
                      to_underlying(calculation_method::gauss_seidel), to_underlying(calculation_method::jacobi)),
          [method] { return (*method == calculation_method::gauss_seidel || *method == calculation_method::jacobi); });

      auto interlines = &(this->options.interlines);
      this->add_argument_description("lines", interlines,
                                     fmt::format("number of interlines (0 .. {2:d})\n"
                                                 "{1:{0}s}matrixsize = (interlines * 8) + 9",
                                                 indent_width, "", partdiff::max_interlines),
                                     "Matrixsize = Interlines*8+9\n"
                                     "Interlines> ",
                                     [interlines] { return (*interlines <= partdiff::max_interlines); });

      auto inf_func = &(this->options.inf_func);
      this->add_argument_description(
          "func", inf_func,
          fmt::format("interference function (1 .. 2)\n"
                      "{1:{0}s}{2:d}: f(x,y) = 0\n"
                      "{1:{0}s}{3:d}: f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)",
                      indent_width, "", to_underlying(interference_function::f0),
                      to_underlying(interference_function::fpisin)),
          fmt::format("Select interference function:\n"
                      " {:d}: f(x,y)=0.\n"
                      " {:d}: f(x,y)=2pi^2*sin(pi*x)sin(pi*y).\n"
                      "interference function> ",
                      to_underlying(interference_function::f0), to_underlying(interference_function::fpisin)),
          [inf_func] {
            return (*inf_func == interference_function::f0 || *inf_func == interference_function::fpisin);
          });

      auto termination = &(this->options.termination);
      this->add_argument_description("term", termination,
                                     fmt::format("termination condition ( 1.. 2)\n"
                                                 "{1:{0}s}{2:d}: sufficient {3:s}\n"
                                                 "{1:{0}s}{4:d}: number of iterations",
                                                 indent_width, "", to_underlying(termination_condition::accuracy),
                                                 accuracy_text, to_underlying(termination_condition::iterations)),
                                     fmt::format("Select termination:\n"
                                                 " {:d}: sufficient {}.\n"
                                                 " {:d}: number of iterations.\n"
                                                 "termination> ",
                                                 to_underlying(termination_condition::accuracy), accuracy_text,
                                                 to_underlying(termination_condition::iterations)),
                                     [termination] {
                                       return (*termination == termination_condition::accuracy ||
                                               *termination == termination_condition::iterations);
                                     });

      this->add_argument_description(fmt::format("{}/iter", acc_text),
                                     fmt::format("depending on term:\n"
                                                 "{1:{0}s}{2:s}:  {3:s} .. {4:s}\n"
                                                 "{1:{0}s}iterations:    1 .. {5:d}\n",
                                                 indent_width, "", accuracy_text,
                                                 scientific_double(partdiff::min_accuracy),
                                                 scientific_double(partdiff::max_accuracy), partdiff::max_iteration),
                                     invalid_text);

      auto term_accuracy = &(this->options.term_accuracy);
      this->add_argument_description(acc_text, term_accuracy, invalid_text,
                                     fmt::format("Select {}:\n"
                                                 "  Range: {:s} .. {:s}.\n"
                                                 "{}> ",
                                                 accuracy_text, scientific_double(partdiff::min_accuracy),
                                                 scientific_double(partdiff::max_accuracy), accuracy_text),
                                     [term_accuracy] {
                                       return (*term_accuracy >= partdiff::max_accuracy &&
                                               *term_accuracy <= partdiff::min_accuracy);
                                     });

      auto term_iteration = &(this->options.term_iteration);
      this->add_argument_description(
          "iter", term_iteration, invalid_text,
          fmt::format("Select number of iterations:\n"
                      "  Range: 1 .. {:d}.\n"
                      "Iterations> ",
                      partdiff::max_iteration),
          [term_iteration] { return (*term_iteration >= 1 && *term_iteration <= partdiff::max_iteration); });
    }

    void argument_parser::add_argument_description(std::string name, std::string description_for_usage,
                                                   std::string description_for_interactive) {
      argument_description arg_desc;
      arg_desc.name = name;
      arg_desc.description_for_usage = description_for_usage;
      arg_desc.description_for_interactive = description_for_interactive;
      this->argument_descriptions.push_back(arg_desc);
    }

    template <class T>
    void argument_parser::add_argument_description(std::string name, T *target, std::string description_for_usage,
                                                   std::string description_for_interactive,
                                                   std::function<bool()> check) {
      argument_description arg_desc;
      arg_desc.name = name;
      arg_desc.target = target;
      arg_desc.read_from_string = [target = arg_desc.target, check](const std::string &input) {
        T *casted_ptr = std::any_cast<T *>(target);
        bool valid_input = false;
        std::istringstream iss(input);
        if constexpr (std::is_enum_v<T>) {
          std::underlying_type_t<T> temp;
          valid_input = static_cast<bool>(iss >> temp);
          *casted_ptr = static_cast<T>(temp);
        } else {
          valid_input = static_cast<bool>(iss >> *casted_ptr);
        }
        valid_input &= check();
        return valid_input;
      };
      arg_desc.description_for_usage = description_for_usage;
      arg_desc.description_for_interactive = description_for_interactive;
      this->argument_descriptions.push_back(arg_desc);
    }

  } // namespace askparams

} // namespace partdiff
