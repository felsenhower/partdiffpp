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

} // namespace partdiff
