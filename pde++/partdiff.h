/****************************************************************************/
/****************************************************************************/
/**                                                                        **/
/**  	      	   TU Muenchen - Institut fuer Informatik                  **/
/**                                                                        **/
/** Copyright: Prof. Dr. Thomas Ludwig                                     **/
/**            Thomas A. Zochler, Andreas C. Schmidt                       **/
/**                                                                        **/
/** File:      partdiff.h                                                  **/
/**                                                                        **/
/****************************************************************************/
/****************************************************************************/

#pragma once

/* *********************************** */
/* Include some standard header files. */
/* *********************************** */
#include <ios>
#include <numbers>
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
  uint64_t number;           /* Number of threads */
  uint64_t interlines;       /* matrix size = interlines*8+9 */
  calculation_method method; /* Gauss Seidel or Jacobi method of iteration */
  interference_function inf_func;    /* inference function */
  termination_condidion termination; /* termination condition */
  uint64_t term_iteration;           /* terminate if iteration number reached */
  double term_precision;             /* terminate if precision reached */
  options(const int, const std::string &, const std::vector<std::string> &);

private:
  int argc;
  std::string name;
  std::vector<std::string> args;
  void askParams();
  bool check_number() const;
  bool check_method() const;
  bool check_interlines() const;
  bool check_inf_func() const;
  bool check_termination() const;
  bool check_term_precision() const;
  bool check_term_iteration() const;
  void usage() const;
};

} // namespace askparams

struct calculation_arguments {
  uint64_t N;            /* number of spaces between lines (lines=N+1)     */
  uint64_t num_matrices; /* number of matrices                             */
  double h;              /* length of a space between two lines            */
  double ***Matrix;      /* index matrix used for addressing M             */
  double *M;             /* two matrices with real values                  */
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
  uint64_t stat_iteration; /* number of current iteration                    */
  double stat_precision;   /* actual precision of all slaves in iteration    */
  calculation_results();
};

} // namespace partdiff

static std::ios_base::fmtflags cout_default_flags(std::cout.flags());

template <typename T, typename U = std::underlying_type_t<T>>
U to_underlying(T v) {
  return static_cast<U>(v);
}

template <typename T> bool get_enum_from_string(T *target, std::string input) {
  std::underlying_type_t<T> n;
  bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
  *target = static_cast<T>(n);
  return valid_input;
}

template <typename T>
bool get_non_enum_from_string(T *target, std::string input) {
  T n;
  bool valid_input = static_cast<bool>(std::istringstream(input) >> n);
  *target = n;
  return valid_input;
}

template <typename T, class Enable = void>
struct get_from_string_helper_struct {
  bool get(T *target, std::string input) {
    return get_non_enum_from_string(target, input);
  }
};

template <typename T>
struct get_from_string_helper_struct<
    T, typename std::enable_if<std::is_enum<T>::value>::type> {
  bool get(T *target, std::string input) {
    return get_enum_from_string(target, input);
  }
};

template <typename T> bool get_from_string(T *target, std::string input) {
  return get_from_string_helper_struct<T>().get(target, input);
}
