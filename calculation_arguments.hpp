#pragma once

#include "calculation_options.hpp"
#include "enums.hpp"
#include "tensor.hpp"

namespace partdiff {

  struct calculation_arguments {

    uint64_t N;
    uint64_t num_matrices;
    double h;
    tensor matrices;
    calculation_arguments(const calculation_options &);

    private:
    perturbation_function pert_func;
    void init_matrices();
  };

} // namespace partdiff
