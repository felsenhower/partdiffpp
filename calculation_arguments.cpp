#include <utility>

#include "partdiff.h"

namespace partdiff {

  using argument_parser = askparams::argument_parser;
  using calculation_options = askparams::calculation_options;
  using calculation_method = calculation_options::calculation_method;
  using perturbation_function = calculation_options::perturbation_function;
  using termination_condition = calculation_options::termination_condition;
  using tensor = calculation_arguments::tensor;

  tensor::tensor(std::size_t num_matrices, std::size_t num_rows, std::size_t num_cols)
    : num_matrices(num_matrices),
      num_rows(num_rows),
      num_cols(num_cols) {
    auto size = num_matrices * num_rows * num_cols;
    try {
      data = new double[size];
    } catch (std::bad_alloc &) {
      auto size_bytes = size * sizeof(double);
      std::println("Memory failure! (Requested {} bytes)", size_bytes);
      exit(EXIT_FAILURE);
    }
  }

  tensor::tensor(const tensor &other)
    : num_matrices(other.num_matrices),
      num_rows(other.num_rows),
      num_cols(other.num_cols),
      data(other.data) {}

  tensor::tensor(tensor &&other) noexcept
    : num_matrices(other.num_matrices),
      num_rows(other.num_rows),
      num_cols(other.num_cols),
      data(std::exchange(other.data, nullptr)) {}

  tensor &tensor::operator=(const tensor &other) {
    return *this = tensor(other);
  }

  tensor &tensor::operator=(tensor &&other) noexcept // move assignment
  {
    std::swap(data, other.data);
    num_matrices = other.num_matrices;
    num_cols = other.num_cols;
    num_rows = other.num_rows;
    return *this;
  }

  tensor::~tensor() {
    if (data) {
      delete[] data;
      data = nullptr;
    }
  }

  double &tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

  double tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) const {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

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
          this->matrices(g, i, j) = 0.0;
        }
      }
    }
    if (this->pert_func == perturbation_function::f0) {
      for (uint64_t g = 0; g < this->num_matrices; g++) {
        for (uint64_t i = 0; i <= N; i++) {
          this->matrices(g, i, 0) = 1.0 - (h * i);
          this->matrices(g, i, N) = h * i;
          this->matrices(g, 0, i) = 1.0 - (h * i);
          this->matrices(g, N, i) = h * i;
        }
        this->matrices(g, N, 0) = 0.0;
        this->matrices(g, 0, N) = 0.0;
      }
    }
  }

} // namespace partdiff
