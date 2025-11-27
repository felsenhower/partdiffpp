#include "argument_parser.hpp"
#include "calculation_arguments.hpp"
#include "calculation_options.hpp"
#include "calculation_results.hpp"
#include <cmath>
#include <format>
#include <print>

namespace partdiff {

  static constexpr double pi = std::numbers::pi;
  static constexpr double two_pi_square = (2 * pi * pi);

  static calculation_results calculate(calculation_arguments &arguments, const calculation_options &options) {

    const auto now = std::chrono::high_resolution_clock::now;

    const auto start_time = now();

    uint64_t stat_iteration = 0;
    double stat_accuracy = 0.0;

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
          double star = 0.25 * (arguments.matrices[m2, i - 1, j] + arguments.matrices[m2, i, j - 1] +
                                arguments.matrices[m2, i, j + 1] + arguments.matrices[m2, i + 1, j]);

          if (options.pert_func == perturbation_function::fpisin) {
            star += fpisin_i * std::sin(pih * (double)j);
          }

          if (options.termination == termination_condition::accuracy || term_iteration == 1) {
            double residuum = arguments.matrices[m2, i, j] - star;
            residuum = std::fabs(residuum);
            maxresiduum = std::max(residuum, maxresiduum);
          }

          arguments.matrices[m1, i, j] = star;
        }
      }

      stat_iteration++;
      stat_accuracy = maxresiduum;

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

    const auto end_time = now();

    calculation_results results = {m2, stat_iteration, stat_accuracy, start_time, end_time};
    return results;
  }

  static void display_statistics(const calculation_arguments &arguments, const calculation_results &results,
                                 const calculation_options &options) {

    const int N = arguments.N;
    const double time = std::chrono::duration<double>(results.end_time - results.start_time).count();
    const double memory_consumption = (N + 1) * (N + 1) * sizeof(double) * arguments.num_matrices / 1024.0 / 1024.0;

    std::println("Calculation time:       {:0.6f} s", time);
    std::println("Memory usage:           {:0.6f} MiB", memory_consumption);
    std::println("Calculation method:     {:s}", options.method);
    std::println("Interlines:             {:d}", options.interlines);
    std::println("Perturbation function:  {:s}", options.pert_func);
    std::println("Termination:            {:s}", options.termination);
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
                   arguments.matrices[results.m, y * (options.interlines + 1), x * (options.interlines + 1)]);
      }
      std::println("");
    }
  }

} // namespace partdiff

using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;
using argument_parser = partdiff::argument_parser;
using calculation_options = partdiff::calculation_options;

int main(const int argc, char const *argv[]) {
  argument_parser parser(argc, argv);
  calculation_options options = parser.get_options();
  calculation_arguments arguments(options);

  calculation_results results = calculate(arguments, options);

  display_statistics(arguments, results, options);
  display_matrix(arguments, results, options);

  return EXIT_SUCCESS;
}
