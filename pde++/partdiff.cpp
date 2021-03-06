#include <cmath>
#include <numbers>

#include "partdiff.h"

namespace partdiff {

  using argument_parser = askparams::argument_parser;
  using calculation_options = askparams::calculation_options;
  using calculation_method = calculation_options::calculation_method;
  using interference_function = calculation_options::interference_function;
  using termination_condition = calculation_options::termination_condition;
  using tensor = calculation_arguments::tensor;

  static constexpr double pi = std::numbers::pi;
  static constexpr double two_pi_square = (2 * pi * pi);

  inline tensor::tensor(std::size_t num_matrices, std::size_t num_rows, std::size_t num_cols)
    : num_matrices(num_matrices),
      num_rows(num_rows),
      num_cols(num_cols) {
    auto size = num_matrices * num_rows * num_cols;
    try {
      data = new double[size];
    } catch (std::bad_alloc &) {
      auto size_bytes = size * sizeof(double);
      if (partdiff::legacy_mode) {
        std::cout << "Speicherprobleme! (" << size_bytes << " Bytes angefordert)" << std::endl;
      } else {
        std::cout << "Memory failure! (Requested" << size_bytes << " bytes)" << std::endl;
      }
      exit(EXIT_FAILURE);
    }
  }

  inline tensor::tensor(const tensor &other)
    : num_matrices(other.num_matrices),
      num_rows(other.num_rows),
      num_cols(other.num_cols),
      data(other.data) {}

  inline tensor::tensor(tensor &&other) noexcept
    : num_matrices(other.num_matrices),
      num_rows(other.num_rows),
      num_cols(other.num_cols),
      data(std::exchange(other.data, nullptr)) {}

  inline tensor &tensor::operator=(const tensor &other) {
    return *this = tensor(other);
  }

  inline tensor &tensor::operator=(tensor &&other) noexcept // move assignment
  {
    std::swap(data, other.data);
    num_matrices = other.num_matrices;
    num_cols = other.num_cols;
    num_rows = other.num_rows;
    return *this;
  }

  inline tensor::~tensor() {
    if (data) {
      delete[] data;
      data = nullptr;
    }
  }

  inline double &tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

  inline double tensor::operator()(std::size_t matrix, std::size_t row, std::size_t col) const {
    return data[(num_cols * num_rows * matrix) + (num_cols * row) + (col)];
  }

  calculation_arguments::calculation_arguments(const calculation_options &options) : inf_func(options.inf_func) {
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
    if (this->inf_func == interference_function::f0) {
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

  calculation_results::calculation_results() {
    this->m = 0;
    this->stat_iteration = 0;
    this->stat_accuracy = 0;
  }

  static void calculate(calculation_arguments &arguments, calculation_results &results,
                        const calculation_options &options) {
    results.start_time = std::chrono::high_resolution_clock::now();

    const int N = arguments.N;
    const double h = arguments.h;

    double pih = 0.0;
    double fpisin = 0.0;

    int term_iteration = options.term_iteration;

    int m1 = 0;
    int m2 = (options.method == calculation_method::jacobi) ? 1 : 0;

    if (options.inf_func == interference_function::fpisin) {
      pih = pi * h;
      fpisin = 0.25 * two_pi_square * h * h;
    }

    double maxresiduum = 0.0;

    while (term_iteration > 0) {

      maxresiduum = 0.0;

      for (int i = 1; i < N; i++) {
        double fpisin_i = 0.0;

        if (options.inf_func == interference_function::fpisin) {
          fpisin_i = fpisin * std::sin(pih * (double)i);
        }

        for (int j = 1; j < N; j++) {
          double star = 0.25 * (arguments.matrices(m2, i - 1, j) + arguments.matrices(m2, i, j - 1) +
                                arguments.matrices(m2, i, j + 1) + arguments.matrices(m2, i + 1, j));

          if (options.inf_func == interference_function::fpisin) {
            star += fpisin_i * std::sin(pih * (double)j);
          }

          if (options.termination == termination_condition::accuracy || term_iteration == 1) {
            double residuum = arguments.matrices(m2, i, j) - star;
            residuum = std::fabs(residuum);
            maxresiduum = std::max(residuum, maxresiduum);
          }

          arguments.matrices(m1, i, j) = star;
        }
      }

      results.stat_iteration++;
      results.stat_accuracy = maxresiduum;

      const int temp = m1;
      m1 = m2;
      m2 = temp;

      if (options.termination == termination_condition::accuracy) {
        if (maxresiduum < options.term_accuracy) {
          term_iteration = 0;
        }
      } else if (options.termination == termination_condition::iterations) {
        term_iteration--;
      }
    }

    results.m = m2;
    results.end_time = std::chrono::high_resolution_clock::now();
  }

  static void display_statistics(const calculation_arguments &arguments, const calculation_results &results,
                                 const calculation_options &options) {

    const int N = arguments.N;

    const double time = std::chrono::duration<double>(results.end_time - results.start_time).count();

    const double memory_consumption = (N + 1) * (N + 1) * sizeof(double) * arguments.num_matrices / 1024.0 / 1024.0;

    constexpr std::size_t padding = (partdiff::legacy_mode ? 20 : 25);

    fmt::print("{1:{0}s}{2:0.6f} s\n"
               "{3:{0}s}{4:0.6f} MiB\n"
               "{5:{0}s}{6:s}\n"
               "{7:{0}s}{8:d}\n"
               "{9:{0}s}{10:s}\n"
               "{11:{0}s}{12:s}\n"
               "{13:{0}s}{14:d}\n"
               "{15:{0}s}{16:e}\n\n",
               padding, (partdiff::legacy_mode ? "Berechnungszeit:" : "Calculation time:"), time,
               (partdiff::legacy_mode ? "Speicherbedarf:" : "Memory usage:"), memory_consumption,
               (partdiff::legacy_mode ? "Berechnungsmethode:" : "Calculation method:"),
               (options.method == calculation_method::gauss_seidel ? "Gauß-Seidel" : "Jacobi"), ("Interlines:"),
               options.interlines, (partdiff::legacy_mode ? "Stoerfunktion:" : "Interference function:"),
               (options.inf_func == interference_function::f0 ? "f(x,y) = 0" : "f(x,y) = 2pi^2*sin(pi*x)sin(pi*y)"),
               (partdiff::legacy_mode ? "Terminierung:" : "Termination condition:"),
               (options.termination == termination_condition::accuracy
                    ? (partdiff::legacy_mode ? "Hinreichende Genaugkeit" : "Sufficient accuracy")
                    : (partdiff::legacy_mode ? "Anzahl der Iterationen" : "Number of iterations")),
               (partdiff::legacy_mode ? "Anzahl Iterationen:" : "Number of iterations:"), results.stat_iteration,
               (partdiff::legacy_mode ? "Norm des Fehlers:" : "Norm of error:"), results.stat_accuracy);
  }

  static void display_matrix(const calculation_arguments &arguments, const calculation_results &results,
                             const calculation_options &options) {
    std::cout << "Matrix:" << std::endl;

    for (int y = 0; y < 9; y++) {
      for (int x = 0; x < 9; x++) {
        fmt::print(" {:.4f}",
                   arguments.matrices(results.m, y * (options.interlines + 1), x * (options.interlines + 1)));
      }
      std::cout << std::endl;
    }
    std::cout << std::flush;
  }

} // namespace partdiff

using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;
using argument_parser = partdiff::askparams::argument_parser;
using calculation_options = partdiff::askparams::calculation_options;

int main(const int argc, char const *argv[]) {
  argument_parser parser(argc, argv);
  calculation_options options = parser.get_options();
  calculation_arguments arguments(options);
  calculation_results results;

  calculate(arguments, results, options);

  display_statistics(arguments, results, options);
  display_matrix(arguments, results, options);

  return EXIT_SUCCESS;
}
