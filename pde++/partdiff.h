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
#include <cmath>
#include <ios>
#include <vector>

namespace partdiff {

/* ************* */
/* Some defines. */
/* ************* */
#ifndef PI
#define PI 3.141592653589793
#endif
#define TWO_PI_SQUARE (2 * PI * PI)
#define MAX_INTERLINES 10240
#define MAX_ITERATION 200000
#define MAX_THREADS 1024
#define METH_GAUSS_SEIDEL 1
#define METH_JACOBI 2
#define FUNC_F0 1
#define FUNC_FPISIN 2
#define TERM_PREC 1
#define TERM_ITER 2

struct options {
  uint64_t number;         /* Number of threads                              */
  uint64_t method;         /* Gauss Seidel or Jacobi method of iteration     */
  uint64_t interlines;     /* matrix size = interlines*8+9                   */
  uint64_t inf_func;       /* inference function                             */
  uint64_t termination;    /* termination condition                          */
  uint64_t term_iteration; /* terminate if iteration number reached          */
  double term_precision;   /* terminate if precision reached                 */
  options(const int, const std::string &, const std::vector<std::string> &);

private:
  const void askParams(const int, const std::string &,
                       const std::vector<std::string> &);
  const bool check_number();
  const bool check_method();
  const bool check_interlines();
  const bool check_inf_func();
  const bool check_termination();
  const bool check_term_precision();
  const bool check_term_iteration();
};

struct calculation_arguments {
  uint64_t N;            /* number of spaces between lines (lines=N+1)     */
  uint64_t num_matrices; /* number of matrices                             */
  double h;              /* length of a space between two lines            */
  double ***Matrix;      /* index matrix used for addressing M             */
  double *M;             /* two matrices with real values                  */
  calculation_arguments(const options &);
  ~calculation_arguments();

private:
  const void allocateMatrices();
  const void initMatrices(const options &);
  const void freeMatrices();
};

struct calculation_results {
  uint64_t m;
  uint64_t stat_iteration; /* number of current iteration                    */
  double stat_precision;   /* actual precision of all slaves in iteration    */
  calculation_results(const options &);
};

static std::ios_base::fmtflags cout_default_flags(std::cout.flags());

} // namespace partdiff
