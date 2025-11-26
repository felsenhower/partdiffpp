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

  } // namespace askparams

} // namespace partdiff
