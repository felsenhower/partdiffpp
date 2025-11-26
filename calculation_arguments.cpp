#include "partdiff.h"

namespace partdiff {

  using argument_parser = askparams::argument_parser;
  using calculation_options = askparams::calculation_options;
  using calculation_method = calculation_options::calculation_method;
  using perturbation_function = calculation_options::perturbation_function;
  using termination_condition = calculation_options::termination_condition;

  calculation_arguments::calculation_arguments(const calculation_options &options) : pert_func(options.pert_func) {
    this->N = (options.interlines * 8) + 9 - 1;
    this->num_matrices = (options.method == calculation_method::jacobi) ? 2 : 1;
    this->h = 1.0 / this->N;
    this->matrices = tensor(num_matrices, N + 1, N + 1);
    this->init_matrices();
  }

  void calculation_arguments::init_matrices() {
    for (uint64_t g = 0; g < this->num_matrices; g++) {
      for (uint64_t i = 0; i <= N; i++) {
        for (uint64_t j = 0; j <= N; j++) {
          this->matrices[g, i, j] = 0.0;
        }
      }
    }
    if (this->pert_func == perturbation_function::f0) {
      for (uint64_t g = 0; g < this->num_matrices; g++) {
        for (uint64_t i = 0; i <= N; i++) {
          this->matrices[g, i, 0] = 1.0 - (h * i);
          this->matrices[g, i, N] = h * i;
          this->matrices[g, 0, i] = 1.0 - (h * i);
          this->matrices[g, N, i] = h * i;
        }
        this->matrices[g, N, 0] = 0.0;
        this->matrices[g, 0, N] = 0.0;
      }
    }
  }

} // namespace partdiff
