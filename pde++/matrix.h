#pragma once

class Tensor {
  public:
  Tensor(std::size_t matrices, std::size_t rows, std::size_t cols);
  ~Tensor();
  double &operator()(std::size_t matrix, std::size_t row, std::size_t col);
  double operator()(std::size_t matrix, std::size_t row, std::size_t col) const;

  private:
  std::size_t matrices, rows, cols;
  double *data = nullptr;
};

inline Tensor::Tensor(std::size_t matrices, std::size_t rows, std::size_t cols)
    : matrices(matrices), rows(rows), cols(cols) {
  if (matrices == 0 || rows == 0 || cols == 0) {
    throw "Tensor constructor has 0 size";
  }
  data = new double[matrices * rows * cols];
}

inline Tensor::~Tensor() {
  delete[] data;
}

inline double &Tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) {
  return data[(cols * rows * matrix) + (cols * row) + (col)];
}

inline double Tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) const {
  return data[(cols * rows * matrix) + (cols * row) + (col)];
}
