#pragma once

#include "enums.hpp"
#include <cstdint>

namespace partdiff {

  struct calculation_options {
    uint64_t number;
    uint64_t interlines;
    calculation_method method;
    perturbation_function pert_func;
    termination_condition termination;
    std::string acc_iter;
    uint64_t term_iteration;
    double term_accuracy;
  };

} // namespace partdiff
