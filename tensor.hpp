#pragma once

#include <cstddef>
#include <utility>

namespace partdiff {

  class tensor {
    public:
    tensor() {};
    tensor(std::size_t num_matrices, std::size_t num_rows, std::size_t num_cols);
    tensor(const tensor &other);
    tensor(tensor &&other) noexcept;
    tensor &operator=(const tensor &other);
    tensor &operator=(tensor &&other) noexcept;
    ~tensor();
    double &operator[](std::size_t matrix, std::size_t row, std::size_t col);
    double operator[](std::size_t matrix, std::size_t row, std::size_t col) const;

    private:
    std::size_t num_matrices, num_rows, num_cols;
    double *data = nullptr;
  };

} // namespace partdiff
