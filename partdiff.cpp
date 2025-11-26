#include "tensor.hpp"
#include <cmath>
#include <numbers>

#include "partdiff.h"

namespace partdiff {

  using argument_parser = askparams::argument_parser;
  using calculation_options = askparams::calculation_options;
  using calculation_method = calculation_options::calculation_method;
  using perturbation_function = calculation_options::perturbation_function;
  using termination_condition = calculation_options::termination_condition;

  static constexpr double pi = std::numbers::pi;
  static constexpr double two_pi_square = (2 * pi * pi);

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

    if (options.pert_func == perturbation_function::fpisin) {
      pih = pi * h;
      fpisin = 0.25 * two_pi_square * h * h;
    }

    double maxresiduum = 0.0;

    while (term_iteration > 0) {

      maxresiduum = 0.0;

      for (int i = 1; i < N; i++) {
        double fpisin_i = 0.0;

        if (options.pert_func == perturbation_function::fpisin) {
          fpisin_i = fpisin * std::sin(pih * (double)i);
        }

        for (int j = 1; j < N; j++) {
          double star = 0.25 * (arguments.matrices(m2, i - 1, j) + arguments.matrices(m2, i, j - 1) +
                                arguments.matrices(m2, i, j + 1) + arguments.matrices(m2, i + 1, j));

          if (options.pert_func == perturbation_function::fpisin) {
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
    const std::string_view calculation_method_display =
        options.method == calculation_method::gauss_seidel ? "Gauß-Seidel" : "Jacobi";
    const std::string_view perturbation_function_display =
        options.pert_func == perturbation_function::f0 ? "f(x,y) = 0" : "f(x,y) = 2 * pi^2 * sin(pi * x) * sin(pi * y)";
    const std::string_view termination_display =
        options.termination == termination_condition::accuracy ? "Required accuracy" : "Number of iterations";

    std::println("Calculation time:       {:0.6f} s", time);
    std::println("Memory usage:           {:0.6f} MiB", memory_consumption);
    std::println("Calculation method:     {:s}", calculation_method_display);
    std::println("Interlines:             {:d}", options.interlines);
    std::println("Perturbation function:  {:s}", perturbation_function_display);
    std::println("Termination:            {:s}", termination_display);
    std::println("Number of iterations:   {:d}", results.stat_iteration);
    std::println("Residuum:               {:e}", results.stat_accuracy);
  }

  static void display_matrix(const calculation_arguments &arguments, const calculation_results &results,
                             const calculation_options &options) {
    std::println("");
    std::println("Matrix:");

    for (int y = 0; y < 9; y++) {
      for (int x = 0; x < 9; x++) {
        std::print(" {:.4f}",
                   arguments.matrices(results.m, y * (options.interlines + 1), x * (options.interlines + 1)));
      }
      std::println("");
    }
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
