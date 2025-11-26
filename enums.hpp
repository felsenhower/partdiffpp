#pragma once

#include <cstdint>

namespace partdiff {
  enum class calculation_method : uint64_t { gauss_seidel = 1, jacobi = 2 };
  enum class perturbation_function : uint64_t { f0 = 1, fpisin = 2 };
  enum class termination_condition : uint64_t { accuracy = 1, iterations = 2 };

} // namespace partdiff
