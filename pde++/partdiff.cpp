#include <cmath>
#include <numbers>

#include "partdiff.h"

namespace partdiff {

  using argument_parser = askparams::argument_parser;
  using options = askparams::options;
  using calculation_method = options::calculation_method;
  using interference_function = options::interference_function;
  using termination_condition = options::termination_condition;
  using Tensor = calculation_arguments::Tensor;

  static constexpr double pi = std::numbers::pi;
  static constexpr double two_pi_square = (2 * pi * pi);

  inline Tensor::Tensor(std::size_t num_matrices, std::size_t rows, std::size_t cols)
      : num_matrices(num_matrices), rows(rows), cols(cols) {
    if (num_matrices == 0 || rows == 0 || cols == 0) {
      throw "Tensor constructor has 0 size";
    }
    data = new double[num_matrices * rows * cols];
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

  calculation_arguments::calculation_arguments(const options &options) : inf_func(options.inf_func) {
    this->N = (options.interlines * 8) + 9 - 1;
    this->num_matrices = (options.method == calculation_method::jacobi) ? 2 : 1;
    this->h = 1.0 / this->N;
    this->matrices = new Tensor(num_matrices, N + 1, N + 1);
    this->initMatrices();
  }

  calculation_arguments::~calculation_arguments() {
    delete this->matrices;
  }

  void calculation_arguments::initMatrices() {

    for (uint64_t g = 0; g < this->num_matrices; g++) {
      for (uint64_t i = 0; i <= N; i++) {
        for (uint64_t j = 0; j <= N; j++) {
          (*matrices)(g, i, j) = 0.0;
        }
      }
    }

    if (this->inf_func == interference_function::f0) {
      for (uint64_t g = 0; g < this->num_matrices; g++) {
        for (uint64_t i = 0; i <= N; i++) {
          (*matrices)(g, i, 0) = 1.0 - (h * i);
          (*matrices)(g, i, N) = h * i;
          (*matrices)(g, 0, i) = 1.0 - (h * i);
          (*matrices)(g, N, i) = h * i;
        }

        (*matrices)(g, N, 0) = 0.0;
        (*matrices)(g, 0, N) = 0.0;
      }
    }
  }

  calculation_results::calculation_results() {
    this->m = 0;
    this->stat_iteration = 0;
    this->stat_accuracy = 0;
  }

  static void calculate(const calculation_arguments &arguments, calculation_results &results, const options &options) {
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

      Tensor *matrices = arguments.matrices;

      maxresiduum = 0.0;

      for (int i = 1; i < N; i++) {
        double fpisin_i = 0.0;

        if (options.inf_func == interference_function::fpisin) {
          fpisin_i = fpisin * std::sin(pih * (double)i);
        }

        for (int j = 1; j < N; j++) {
          double star = 0.25 * ((*matrices)(m2, i - 1, j) + (*matrices)(m2, i, j - 1) + (*matrices)(m2, i, j + 1) +
                                (*matrices)(m2, i + 1, j));

          if (options.inf_func == interference_function::fpisin) {
            star += fpisin_i * std::sin(pih * (double)j);
          }

          if (options.termination == termination_condition::accuracy || term_iteration == 1) {
            double residuum = (*matrices)(m2, i, j) - star;
            residuum = std::fabs(residuum);
            maxresiduum = std::max(residuum, maxresiduum);
          }

          (*matrices)(m1, i, j) = star;
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

  static void displayStatistics(const calculation_arguments &arguments, const calculation_results &results,
                                const options &options) {

    const auto left_pad = [](const std::string input) {
      constexpr std::size_t padding = (partdiff::legacy_mode ? 20 : 25);
      return partdiff::build_string({std::setw(padding), std::left, std::setfill(' '), input});
    };

    const int N = arguments.N;

    const double time = std::chrono::duration<double>(results.end_time - results.start_time).count();

    const double memory_consumption = (N + 1) * (N + 1) * sizeof(double) * arguments.num_matrices / 1024.0 / 1024.0;

    std::cout << left_pad(partdiff::legacy_mode ? "Berechnungszeit:" : "Calculation time:")
              << partdiff::build_string({std::fixed, std::setprecision(6), time}) << " s" << std::endl
              << left_pad(partdiff::legacy_mode ? "Speicherbedarf:" : "Memory usage:")
              << partdiff::build_string({std::fixed, std::setprecision(6), memory_consumption}) << " MiB" << std::endl;

    std::cout << left_pad(partdiff::legacy_mode ? "Berechnungsmethode:" : "Calculation method:");

    if (options.method == calculation_method::gauss_seidel) {
      std::cout << "Gauß-Seidel";
    } else if (options.method == calculation_method::jacobi) {
      std::cout << "Jacobi";
    }
    std::cout << std::endl
              << left_pad("Interlines:") << options.interlines << std::endl
              << left_pad(partdiff::legacy_mode ? "Stoerfunktion:" : "Interference function:");
    if (options.inf_func == interference_function::f0) {
      std::cout << "f(x,y) = 0";
    } else if (options.inf_func == interference_function::fpisin) {
      std::cout << "f(x,y) = 2pi^2*sin(pi*x)sin(pi*y)";
    }
    std::cout << std::endl << left_pad(partdiff::legacy_mode ? "Terminierung:" : "Termination condition:");
    if (options.termination == termination_condition::accuracy) {
      std::cout << (partdiff::legacy_mode ? "Hinreichende Genaugkeit" : "Sufficient accuracy");
    } else if (options.termination == termination_condition::iterations) {
      std::cout << (partdiff::legacy_mode ? "Anzahl der Iterationen" : "Number of iterations");
    }
    std::cout << std::endl << left_pad(partdiff::legacy_mode ? "Anzahl Iterationen:" : "Number of iterations:");
    std::cout << results.stat_iteration << std::endl
              << left_pad(partdiff::legacy_mode ? "Norm des Fehlers:" : "Norm of error:")
              << partdiff::build_string({std::scientific, results.stat_accuracy}) << std::endl
              << std::endl;
  }

  static void displayMatrix(const calculation_arguments &arguments, const calculation_results &results,
                            const options &options) {
    Tensor *matrices = arguments.matrices;
    auto m = results.m;

    const int interlines = options.interlines;

    std::cout << "Matrix:" << std::endl;

    for (int y = 0; y < 9; y++) {
      for (int x = 0; x < 9; x++) {
        std::cout << partdiff::build_string({std::fixed, std::internal, std::setprecision(4), " ",
                                             (*matrices)(m, y * (interlines + 1), x * (interlines + 1))});
      }
      std::cout << std::endl;
    }
    std::cout << std::flush;
  }

} // namespace partdiff

using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;
using argument_parser = partdiff::askparams::argument_parser;
using options = partdiff::askparams::options;

int main(const int argc, char const *argv[]) {
  argument_parser parser(argc, argv);
  options options = parser.get_options();
  calculation_arguments arguments(options);
  calculation_results results;

  calculate(arguments, results, options);

  displayStatistics(arguments, results, options);
  displayMatrix(arguments, results, options);

  return EXIT_SUCCESS;
}
