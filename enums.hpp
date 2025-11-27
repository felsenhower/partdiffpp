#pragma once

#include <array>
#include <concepts>
#include <cstdint>
#include <format>
#include <iostream>
#include <stdexcept>
#include <string_view>
#include <type_traits>
#include <utility>

namespace partdiff {
  enum class calculation_method : uint64_t { gauss_seidel = 1, jacobi = 2 };
  enum class perturbation_function : uint64_t { f0 = 1, fpisin = 2 };
  enum class termination_condition : uint64_t { accuracy = 1, iterations = 2 };

} // namespace partdiff

template <typename Enum>
struct enum_member_names;

template <>
struct enum_member_names<partdiff::calculation_method> {
  static constexpr std::array names = {
      std::pair{partdiff::calculation_method::gauss_seidel, "Gauß-Seidel"},
      std::pair{partdiff::calculation_method::jacobi, "Jacobi"},
  };
};

template <>
struct enum_member_names<partdiff::perturbation_function> {
  static constexpr std::array names = {
      std::pair{partdiff::perturbation_function::f0, "f(x,y) = 0"},
      std::pair{partdiff::perturbation_function::fpisin, "f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)"},
  };
};

template <>
struct enum_member_names<partdiff::termination_condition> {
  static constexpr std::array names = {
      std::pair{partdiff::termination_condition::accuracy, "Required accuracy"},
      std::pair{partdiff::termination_condition::iterations, "Number of iterations"},
  };
};

// Some template magic to print the above enum classes with "{:d}" and "{:s}"

template <typename Enum>
  requires std::is_enum_v<Enum> && requires { enum_member_names<Enum>::names; }
struct std::formatter<Enum> : std::formatter<std::string_view> {
  enum class mode { string, number } fmt_mode = mode::string;
  constexpr auto parse(std::format_parse_context &ctx) {
    auto it = ctx.begin();
    auto end = ctx.end();

    if (it != end) {
      if (*it == 's') {
        fmt_mode = mode::string;
        ++it;
      } else if (*it == 'd') {
        fmt_mode = mode::number;
        ++it;
      } else if (*it != '}')
        throw std::format_error("invalid format specifier for enum");
    }
    return it;
  }

  template <class FormatContext>
  auto format(Enum value, FormatContext &ctx) const {
    if (fmt_mode == mode::number) {
      return std::format_to(ctx.out(), "{}", static_cast<std::underlying_type_t<Enum>>(value));
    }
    std::string_view name = "unknown";
    for (auto &&[v, n] : enum_member_names<Enum>::names) {
      if (v == value) {
        name = n;
        break;
      }
    }
    return std::format_to(ctx.out(), "{}", name);
  }
};
