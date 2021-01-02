#pragma once

#include <any>
#include <cmath>
#include <functional>
#include <iomanip>
#include <ios>
#include <iostream>
#include <numbers>
#include <sstream>
#include <sys/time.h>
#include <vector>

namespace partdiff {

static constexpr uint64_t max_interlines = 10240;
static constexpr uint64_t max_iteration = 200000;
static constexpr uint64_t max_threads = 1024;

enum class calculation_method : uint64_t { gauss_seidel = 1, jacobi = 2 };
enum class interference_function : uint64_t { f0 = 1, fpisin = 2 };
enum class termination_condidion : uint64_t { precision = 1, iterations = 2 };

namespace askparams {

struct options {
  uint64_t number;
  uint64_t interlines;
  calculation_method method;
  interference_function inf_func;
  termination_condidion termination;
  uint64_t term_iteration;
  double term_precision;
};

class argument_parser {
public:
  argument_parser(const int argc, char const *argv[]);
  options get_options() { return this->_options; }

private:
  struct argument_description {
    std::any target;
    std::string name;
    std::string description_for_usage;
    std::string description_for_interactive;
    std::function<bool()> check_function = []() { return false; };
    std::function<bool(const std::string &input)> read_from_string = [](auto) {
      return false;
    };
  };

private:
  options _options;
  std::string app_name;
  std::vector<std::string> args;
  void askParams();
  void usage() const;
  std::vector<argument_description> vec;
  template <class T>
  void add_argument_description(std::string name, T *target,
                                std::string description_for_usage,
                                std::string description_for_interactive,
                                std::function<bool()> check_function);
  void parseParam(int index, std::string &input);
  bool get_value(int index, std::string &input);
  void askParam(int index);
  void fill_vec();
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
  interference_function inf_func;
  void allocateMatrices();
  void initMatrices();
  void freeMatrices();
};

struct calculation_results {
  uint64_t m;
  uint64_t stat_iteration;
  double stat_precision;
  calculation_results();
};

} // namespace partdiff

static std::ios_base::fmtflags cout_default_flags(std::cout.flags());

template <typename T, typename U = std::underlying_type_t<T>>
U to_underlying(T v) {
  return static_cast<U>(v);
}

template <typename T, typename U = std::underlying_type_t<T>>
bool get_enum_from_string(T *target, const std::string &input) {
  U n;
  bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
  *target = static_cast<T>(n);
  return valid_input;
}

template <typename T>
bool get_non_enum_from_string(T *target, const std::string &input) {
  T n;
  bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
  *target = n;
  return valid_input;
}

template <typename T, class Enable = void>
struct get_from_string_helper_struct {
  bool get(T *target, const std::string &input) {
    return get_non_enum_from_string(target, input);
  }
};

template <typename T>
struct get_from_string_helper_struct<
    T, typename std::enable_if<std::is_enum<T>::value>::type> {
  bool get(T *target, const std::string &input) {
    return get_enum_from_string(target, input);
  }
};

template <typename T>
bool get_from_string(T *target, const std::string &input) {
  return get_from_string_helper_struct<T>().get(target, input);
}
