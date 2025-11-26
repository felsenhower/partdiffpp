#pragma once

#include "calculation_options.hpp"

#include "partdiff.h"

namespace partdiff {

  struct calculation_arguments {

    uint64_t N;
    uint64_t num_matrices;
    double h;
    tensor matrices;
    calculation_arguments(const askparams::calculation_options &);

    private:
    askparams::calculation_options::perturbation_function pert_func;
    void init_matrices();
  };

} // namespace partdiff
