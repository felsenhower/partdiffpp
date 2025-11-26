#include "tensor.hpp"
#include <print>
#include <utility>

namespace partdiff {

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

  double &tensor::operator[](std::size_t matrix, std::size_t row, std::size_t col) {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

  double tensor::operator[](std::size_t matrix, std::size_t row, std::size_t col) const {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

} // namespace partdiff
