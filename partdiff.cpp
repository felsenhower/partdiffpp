#include "argument_parser.hpp"
#include "calculation_arguments.hpp"
#include "calculation_options.hpp"
#include "calculation_results.hpp"
#include "enums.hpp"
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

  template <typename T, typename U = std::underlying_type_t<T>>
  U to_underlying(T v) {
    return static_cast<U>(v);
  }

  static calculation_options parse_args(const int argc, char const *argv[]) {

    const std::string app_name = argv[0];
    const std::vector<std::string> args(argv + 1, argv + argc);
    argument_parser parser(app_name, std::format("Example: {} 1 2 100 1 2 100", app_name));

    constexpr int indent_width = 17;
    const std::string indent = std::format("{:{}s}", "", indent_width);

    auto display_enum = [indent]<typename T>(bounds_t<T> bounds) -> std::string {
      std::string result = "";
      auto lower = to_underlying(bounds.lower);
      auto upper = to_underlying(bounds.upper);
      for (auto i = lower; i <= upper; i++) {
        if (i != lower) {
          result += "\n";
        }
        result += std::format("{0}{1:d}: {1:s}", indent, T(i));
      }
      return result;
    };

    uint64_t number;
    static constexpr bounds_t<uint64_t> num_bounds{1, 1024};
    parser.add_arg("num", number, std::make_optional(num_bounds), std::format("number of threads ({:d})", num_bounds));

    calculation_method method;
    static constexpr bounds_t<calculation_method> method_bounds{calculation_method::gauss_seidel,
                                                                calculation_method::jacobi};
    parser.add_arg("method", method, std::make_optional(method_bounds),
                   std::format("calculation method ({:d})\n{}", method_bounds, display_enum(method_bounds)));

    uint64_t lines;
    static constexpr bounds_t<uint64_t> lines_bounds{0, 10240};
    parser.add_arg("lines", lines, std::make_optional(lines_bounds),
                   std::format("number of interlines ({1:d})\n"
                               "{0}matrixsize = (interlines * 8) + 9",
                               indent, lines_bounds));

    perturbation_function func;
    static constexpr bounds_t<perturbation_function> func_bounds{perturbation_function::f0,
                                                                 perturbation_function::fpisin};
    parser.add_arg("func", func, std::make_optional(func_bounds),
                   std::format("perturbation function ({:d})\n{}", func_bounds, display_enum(func_bounds)));

    termination_condition term;
    static constexpr bounds_t<termination_condition> term_bounds{termination_condition::accuracy,
                                                                 termination_condition::iterations};
    parser.add_arg("term", term, std::make_optional(term_bounds),
                   std::format("termination condition ({:d})\n{}", term_bounds, display_enum(term_bounds)));

    static constexpr bounds_t<double> term_accuracy_bounds{1e-20, 1e-4};
    static constexpr bounds_t<uint64_t> term_iteration_bounds{1, 200000};

    std::string acc_iter;
    parser.add_arg("acc/iter", acc_iter, std::optional<bounds_t<std::string>>{std::nullopt},
                   std::format("depending on term:\n"
                               "{0}accuracy:  {1:.0e}\n"
                               "{0}iterations:    {2:d}",
                               indent, term_accuracy_bounds, term_iteration_bounds));

    if (!parser.parse_args(args)) {
      parser.usage();
      exit(EXIT_SUCCESS);
    }

    uint64_t term_iteration;
    double term_accuracy;

    if (term == termination_condition::accuracy) {
      argument_parser accuracy_parser(std::nullopt, std::nullopt);
      accuracy_parser.add_arg("acc", term_accuracy, std::make_optional(term_accuracy_bounds), std::nullopt);
      if (!accuracy_parser.parse_arg(0, acc_iter)) {
        parser.usage();
        exit(EXIT_SUCCESS);
      }
      term_iteration = term_iteration_bounds.upper;
    } else {
      argument_parser iteration_parser(std::nullopt, std::nullopt);
      iteration_parser.add_arg("iter", term_iteration, std::make_optional(term_iteration_bounds), std::nullopt);
      if (!iteration_parser.parse_arg(0, acc_iter)) {
        parser.usage();
        exit(EXIT_SUCCESS);
      }
      term_accuracy = 0.0;
    }
    const calculation_options options{number, lines, method, func, term, term_iteration, term_accuracy};
    return options;
  }

} // namespace partdiff

using calculation_arguments = partdiff::calculation_arguments;
using calculation_results = partdiff::calculation_results;
using argument_parser = partdiff::argument_parser;
using calculation_options = partdiff::calculation_options;

int main(const int argc, char const *argv[]) {
  calculation_options options = partdiff::parse_args(argc, argv);
  calculation_arguments arguments(options);

  calculation_results results = partdiff::calculate(arguments, options);

  partdiff::display_statistics(arguments, results, options);
  partdiff::display_matrix(arguments, results, options);

  return EXIT_SUCCESS;
}
