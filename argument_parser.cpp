#include "argument_parser.hpp"
#include "calculation_options.hpp"
#include "enums.hpp"
#include <format>
#include <print>
#include <sstream>
#include <utility>

namespace partdiff {

  template <typename T, typename U = std::underlying_type_t<T>>
  U to_underlying(T v) {
    return static_cast<U>(v);
  }

  argument_parser::argument_parser(const std::optional<std::string> app_name, const std::optional<std::string> epilog)
    : app_name(app_name),
      epilog(epilog) {}

  void argument_parser::usage() const {
    const auto get_name = [](const std::string &input) { return std::format("  - {:11}", input + ":"); };
    const std::size_t num_args = this->argument_descriptions.size();
    std::print("Usage: {}", this->app_name.value_or("<app>"));
    for (std::size_t i = 0; i < num_args; i++) {
      std::print(" [{}]", argument_descriptions[i].name);
    }
    std::println("");
    std::println("");
    for (std::size_t i = 0; i < num_args; i++) {
      const std::string description = this->argument_descriptions[i].description.value_or("<invalid>");
      std::println("{}{}", get_name(this->argument_descriptions[i].name), description);
    }
    if (epilog.has_value()) {
      std::println("");
      std::println("{}", epilog.value());
    }
  }

  bool argument_parser::parse_args(const std::vector<std::string> args) {
    const std::size_t num_args_expected = this->argument_descriptions.size();
    const std::size_t num_args_given = args.size();
    if (num_args_given < num_args_expected) {
      return false;
    }
    for (std::size_t i = 0; i < num_args_expected; i++) {
      if (!parse_arg(i, args[i])) {
        return false;
      }
    }
    return true;
  }

  bool argument_parser::parse_arg(const std::size_t index, const std::string &input) {
    return this->argument_descriptions[index].read_from_string(input);
  }

} // namespace partdiff
