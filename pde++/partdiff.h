#pragma once

#include <any>
#include <functional>
#include <iomanip>
#include <ios>
#include <iostream>
#include <numbers>
#include <sstream>
#include <vector>

namespace partdiff {

static constexpr uint64_t max_interlines = 10240;
static constexpr uint64_t max_iteration = 200000;
static constexpr uint64_t max_threads = 1024;
static constexpr double min_precision = 1e-4;
static constexpr double max_precision = 1e-20;

template <typename T, typename U = std::underlying_type_t<T>>
U to_underlying(T v) {
  return static_cast<U>(v);
}

const std::string scientific_double(double val, int precision);

const uint8_t *allocateMemory(const std::size_t size);

namespace askparams {

struct options {
  enum class calculation_method : uint64_t { gauss_seidel = 1, jacobi = 2 };
  enum class interference_function : uint64_t { f0 = 1, fpisin = 2 };
  enum class termination_condition : uint64_t { precision = 1, iterations = 2 };
  uint64_t number;
  uint64_t interlines;
  calculation_method method;
  interference_function inf_func;
  termination_condition termination;
  uint64_t term_iteration;
  double term_precision;
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
    std::function<bool(const std::string &input)> read_from_string = [](auto) {
      return false;
    };

    template <typename T>
    static bool get_from_string(T *target, const std::string &input);

  private:
    template <typename T, class Enable = void> struct from_string {
      static bool get(T *target, const std::string &input) {
        T n;
        bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
        *target = n;
        return valid_input;
      }
    };

    template <typename T>
    struct from_string<T,
                       typename std::enable_if<std::is_enum<T>::value>::type> {
      static bool get(T *target, const std::string &input) {
        std::underlying_type_t<T> n;
        bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
        *target = static_cast<T>(n);
        return valid_input;
      }
    };
  };

  enum class argument_index : std::size_t {
    number = 0,
    method = 1,
    interlines = 2,
    inf_func = 3,
    termination = 4,
    term_precision = 5,
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
  void add_argument_description(std::string name, T *target,
                                std::string description_for_usage,
                                std::string description_for_interactive,
                                std::function<bool()> check);
};

} // namespace askparams

struct calculation_arguments {
  uint64_t N;
  uint64_t num_matrices;
  double h;
  double ***Matrix;
  double *M;
  calculation_arguments(const askparams::options &);
  ~calculation_arguments();

private:
  askparams::options::interference_function inf_func;
  void allocateMatrices();
  void initMatrices();
  void freeMatrices();
};

struct calculation_results {
  uint64_t m;
  uint64_t stat_iteration;
  double stat_precision;
  timeval start_time;
  timeval end_time;
  calculation_results();
};

} // namespace partdiff
