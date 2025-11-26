#pragma once

#include <cstdint>

namespace partdiff {

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

  } // namespace askparams
} // namespace partdiff
