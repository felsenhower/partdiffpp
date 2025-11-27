#include "argument_parser.hpp"
#include "calculation_options.hpp"
#include "enums.hpp"
#include <format>
#include <print>
#include <sstream>
#include <utility>

template <typename T>
struct bounds {
  T lower;
  T upper;
  bool contains(T x) const {
    return (x >= lower && x <= upper);
  }
};

namespace std {

  template <typename T, typename Char>
    requires std::formattable<T, Char>
  struct formatter<bounds<T>, Char> {
    std::formatter<T, Char> underlying_;

    constexpr auto parse(std::basic_format_parse_context<Char> &ctx) {
      return underlying_.parse(ctx);
    }

    template <typename FormatContext>
    auto format(const bounds<T> &b, FormatContext &ctx) const {
      auto out = ctx.out();
      out = underlying_.format(b.lower, ctx);
      for (const char &c : std::string(" .. ")) {
        *out++ = Char(c);
      }
      out = underlying_.format(b.upper, ctx);
      return out;
    }
  };

} // namespace std

namespace partdiff {

  template <typename T, typename U = std::underlying_type_t<T>>
  U to_underlying(T v) {
    return static_cast<U>(v);
  }

  static constexpr bounds<uint64_t> num_bounds{1, 1024};
  static constexpr bounds<calculation_method> method_bounds{calculation_method::gauss_seidel,
                                                            calculation_method::jacobi};
  static constexpr bounds<uint64_t> lines_bounds{0, 10240};
  static constexpr bounds<perturbation_function> func_bounds{perturbation_function::f0, perturbation_function::fpisin};
  static constexpr bounds<termination_condition> term_bounds{termination_condition::accuracy,
                                                             termination_condition::iterations};
  static constexpr bounds<uint64_t> iteration_bounds{1, 200000};
  static constexpr bounds<double> accuracy_bounds{1e-20, 1e-4};

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
    const auto get_name = [](const std::string &input) { return std::format("  - {:11}", input + ":"); };

    std::print("Usage: {}", this->app_name);
    for (std::size_t i = 0; i <= to_underlying(argument_index::term_dummy); i++) {
      std::print(" [{}]", get_description(i).name);
    }
    std::println("");
    std::println("");
    for (std::size_t i = 0; i <= to_underlying(argument_index::term_dummy); i++) {
      const std::string description = this->get_description(i).description_for_usage.value_or("<invalid>");
      std::println("{}{}", get_name(this->get_description(i).name), description);
    }
    std::println("Example: {} 1 2 100 1 2 100", app_name);
  }

  void argument_parser::ask_params() {
    if (this->args.size() < 6) {
      usage();
      exit(EXIT_SUCCESS);
    }
    for (std::size_t i = 0; i <= to_underlying(argument_index::termination); i++) {
      parse_param(i, args[i]);
    }
    if (this->options.termination == termination_condition::accuracy) {
      parse_param(argument_index::term_accuracy, args[5]);
      this->options.term_iteration = iteration_bounds.upper;
    } else {
      parse_param(argument_index::term_iteration, args[5]);
      this->options.term_accuracy = 0.0;
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

  void argument_parser::fill_argument_descriptions() {

    constexpr int indent_width = 17;
    const std::string indent = std::format("{:{}s}", "", indent_width);

    auto display_enum = [indent]<typename T>(bounds<T> enum_bounds) -> std::string {
      std::string result = "";
      auto lower = to_underlying(enum_bounds.lower);
      auto upper = to_underlying(enum_bounds.upper);
      for (auto i = lower; i <= upper; i++) {
        if (i != lower) {
          result += "\n";
        }
        result += std::format("{0}{1:d}: {1:s}", indent, T(i));
      }
      return result;
    };

    auto number = &(this->options.number);
    this->add_argument_description("num", number, std::format("number of threads ({:d})", num_bounds),
                                   [number] { return num_bounds.contains(*number); });

    auto method = &(this->options.method);
    this->add_argument_description(
        "method", method, std::format("calculation method ({:d})\n{}", method_bounds, display_enum(method_bounds)),
        [method] { return method_bounds.contains(*method); });

    auto interlines = &(this->options.interlines);
    this->add_argument_description("lines", interlines,
                                   std::format("number of interlines ({1:d})\n"
                                               "{0}matrixsize = (interlines * 8) + 9",
                                               indent, lines_bounds),
                                   [interlines] { return lines_bounds.contains(*interlines); });

    auto pert_func = &(this->options.pert_func);
    this->add_argument_description(
        "func", pert_func, std::format("perturbation function ({:d})\n{}", func_bounds, display_enum(func_bounds)),
        [pert_func] { return func_bounds.contains(*pert_func); });

    auto termination = &(this->options.termination);
    this->add_argument_description(
        "term", termination, std::format("termination condition ({:d})\n{}", term_bounds, display_enum(term_bounds)),
        [termination] { return term_bounds.contains(*termination); });

    this->add_argument_description("acc/iter", std::format("depending on term:\n"
                                                           "{0}accuracy:  {1:.0e}\n"
                                                           "{0}iterations:    {2:d}\n",
                                                           indent, accuracy_bounds, iteration_bounds));

    auto term_accuracy = &(this->options.term_accuracy);
    this->add_argument_description("acc", term_accuracy, std::nullopt,
                                   [term_accuracy] { return accuracy_bounds.contains(*term_accuracy); });

    auto term_iteration = &(this->options.term_iteration);
    this->add_argument_description("iter", term_iteration, std::nullopt,
                                   [term_iteration] { return iteration_bounds.contains(*term_iteration); });
  }

  void argument_parser::add_argument_description(std::string name, std::optional<std::string> description_for_usage) {
    argument_description arg_desc;
    arg_desc.name = name;
    arg_desc.description_for_usage = description_for_usage;
    this->argument_descriptions.push_back(arg_desc);
  }

  template <class T>
  void argument_parser::add_argument_description(std::string name, T *target,
                                                 std::optional<std::string> description_for_usage,
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
    this->argument_descriptions.push_back(arg_desc);
  }

} // namespace partdiff
