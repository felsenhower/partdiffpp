#pragma once

#include <any>
#include <chrono>
#include <functional>
#include <iomanip>
#include <iostream>
#include <vector>

#include "matrix.h"

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

  const std::string scientific_double(double val, int precision);

  const uint8_t *allocateMemory(const std::size_t size);

  struct streamable {
    std::function<void(std::ostream &)> apply = {};
    using iomanip = std::ostream &(*)(std::ostream &);
    streamable(iomanip x) {
      this->apply = [x](auto &ss) { ss << *x; };
    }
    template <typename T>
    streamable(const T &x) {
      this->apply = [x](auto &ss) { ss << x; };
    }
  };

  const std::string build_string(const std::initializer_list<streamable> &streamables);

  namespace askparams {

    struct options {
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
      options get_options();

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
        term_accuracy = 5,
        term_iteration = 6
      };

      options parsed_options;
      std::string app_name;
      std::vector<std::string> args;
      std::vector<argument_description> argument_descriptions;
      argument_description get_description(std::size_t index) const;
      argument_description get_description(argument_index index) const;
      void usage() const;
      void askParams();
      void parseParam(std::size_t index, std::string &input);
      void parseParam(argument_index index, std::string &input);
      void askParam(std::size_t index);
      void askParam(argument_index index);
      void fill_argument_descriptions();
      template <class T>
      void add_argument_description(std::string name, T *target, std::string description_for_usage,
                                    std::string description_for_interactive, std::function<bool()> check);
    };

  } // namespace askparams

  struct calculation_arguments {
    uint64_t N;
    uint64_t num_matrices;
    double h;
    Tensor *Matrix = nullptr;
    calculation_arguments(const askparams::options &);
    ~calculation_arguments();

    private:
    askparams::options::interference_function inf_func;
    void initMatrices();
  };

  struct calculation_results {
    using timepoint = std::chrono::time_point<std::chrono::high_resolution_clock>;
    uint64_t m;
    uint64_t stat_iteration;
    double stat_accuracy;
    timepoint start_time;
    timepoint end_time;
    calculation_results();
  };

} // namespace partdiff
