#pragma once

#include <any>
#include <chrono>
#include <format>
#include <functional>
#include <iomanip>
#include <iostream>
#include <print>
#include <sstream>
#include <vector>

namespace partdiff {

#ifdef LEGACY
  static constexpr bool legacy_mode = true;
#else
  static constexpr bool legacy_mode = false;
#endif

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
      enum class interference_function : uint64_t { f0 = 1, fpisin = 2 };
      enum class termination_condition : uint64_t { accuracy = 1, iterations = 2 };
      uint64_t number;
      uint64_t interlines;
      calculation_method method;
      interference_function inf_func;
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
        std::string description_for_usage;
        std::string description_for_interactive;
        std::function<bool(const std::string &input)> read_from_string = [](auto) { return false; };
      };

      enum class argument_index : std::size_t {
        number = 0,
        method = 1,
        interlines = 2,
        inf_func = 3,
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
      void add_argument_description(std::string name, T *target, std::string description_for_usage,
                                    std::string description_for_interactive, std::function<bool()> check);
      void add_argument_description(std::string name, std::string description_for_usage,
                                    std::string description_for_interactive);
    };

  } // namespace askparams

  struct calculation_arguments {

    class tensor {
      public:
      tensor() {};
      tensor(std::size_t num_matrices, std::size_t num_rows, std::size_t num_cols);
      tensor(const tensor &other);
      tensor(tensor &&other) noexcept;
      tensor &operator=(const tensor &other);
      tensor &operator=(tensor &&other) noexcept;
      ~tensor();
      double &operator()(std::size_t matrix, std::size_t row, std::size_t col);
      double operator()(std::size_t matrix, std::size_t row, std::size_t col) const;

      private:
      std::size_t num_matrices, num_rows, num_cols;
      double *data = nullptr;
    };

    uint64_t N;
    uint64_t num_matrices;
    double h;
    tensor matrices;
    calculation_arguments(const askparams::calculation_options &);

    private:
    askparams::calculation_options::interference_function inf_func;
    void init_matrices();
  };

  struct calculation_results {
    using time_point = std::chrono::time_point<std::chrono::high_resolution_clock>;
    uint64_t m;
    uint64_t stat_iteration;
    double stat_accuracy;
    time_point start_time;
    time_point end_time;
    calculation_results();
  };

} // namespace partdiff
