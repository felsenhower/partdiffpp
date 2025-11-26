#pragma once

#include <chrono>

namespace partdiff {

  struct calculation_results {
    using time_point = std::chrono::time_point<std::chrono::high_resolution_clock>;
    int m;
    uint64_t stat_iteration;
    double stat_accuracy;
    time_point start_time;
    time_point end_time;
  };

} // namespace partdiff
