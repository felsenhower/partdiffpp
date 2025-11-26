#pragma once

#include "tensor.hpp"
#include <any>
#include <chrono>
#include <format>
#include <functional>
#include <iomanip>
#include <iostream>
#include <optional>
#include <print>
#include <sstream>
#include <vector>

namespace partdiff {

  static constexpr uint64_t max_interlines = 10240;
  static constexpr uint64_t max_iteration = 200000;
  static constexpr uint64_t max_threads = 1024;
  static constexpr double min_accuracy = 1e-4;
  static constexpr double max_accuracy = 1e-20;

  template <typename T, typename U = std::underlying_type_t<T>>
  U to_underlying(T v) {
    return static_cast<U>(v);
  }

  namespace askparams {

    struct calculation_options {
      enum class calculation_method : uint64_t { gauss_seidel = 1, jacobi = 2 };
      enum class perturbation_function : uint64_t { f0 = 1, fpisin = 2 };
      enum class termination_condition : uint64_t { accuracy = 1, iterations = 2 };
      uint64_t number;
      uint64_t interlines;
      calculation_method method;
      perturbation_function pert_func;
      termination_condition termination;
      uint64_t term_iteration;
      double term_accuracy;
    };

    class argument_parser {
      public:
      argument_parser(const int argc, char const *argv[]);
      calculation_options get_options();

      private:
      struct argument_description {
        std::any target;
        std::string name;
        std::optional<std::string> description_for_usage;
        std::function<bool(const std::string &input)> read_from_string = [](auto) { return false; };
      };

      enum class argument_index : std::size_t {
        number = 0,
        method = 1,
        interlines = 2,
        pert_func = 3,
        termination = 4,
        term_dummy = 5,
        term_accuracy = 6,
        term_iteration = 7
      };

      calculation_options options;
      std::string app_name;
      std::vector<std::string> args;
      std::vector<argument_description> argument_descriptions;
      argument_description get_description(std::size_t index) const;
      argument_description get_description(argument_index index) const;
      void usage() const;
      void ask_params();
      void parse_param(std::size_t index, std::string &input);
      void parse_param(argument_index index, std::string &input);
      void ask_param(std::size_t index);
      void ask_param(argument_index index);
      void fill_argument_descriptions();
      template <class T>
      void add_argument_description(std::string name, T *target, std::optional<std::string> description_for_usage,
                                    std::function<bool()> check);
      void add_argument_description(std::string name, std::optional<std::string> description_for_usage);
    };

  } // namespace askparams

  struct calculation_arguments {

    uint64_t N;
    uint64_t num_matrices;
    double h;
    tensor matrices;
    calculation_arguments(const askparams::calculation_options &);

    private:
    askparams::calculation_options::perturbation_function pert_func;
    void init_matrices();
  };

} // namespace partdiff
