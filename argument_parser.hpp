#include "calculation_options.hpp"
#include <any>
#include <functional>
#include <optional>
#include <string>
#include <vector>

template <typename T>
struct bounds {
  T lower;
  T upper;
  bool contains(T x) const {
    return (x >= lower && x <= upper);
  }
};

namespace std {

  template <typename T, typename Char>
    requires std::formattable<T, Char>
  struct formatter<bounds<T>, Char> {
    std::formatter<T, Char> underlying_;

    constexpr auto parse(std::basic_format_parse_context<Char> &ctx) {
      return underlying_.parse(ctx);
    }

    template <typename FormatContext>
    auto format(const bounds<T> &b, FormatContext &ctx) const {
      auto out = ctx.out();
      out = underlying_.format(b.lower, ctx);
      for (const char &c : std::string(" .. ")) {
        *out++ = Char(c);
      }
      out = underlying_.format(b.upper, ctx);
      return out;
    }
  };

} // namespace std

namespace partdiff {

  class argument_parser {
    public:
    argument_parser(const int argc, char const *argv[]);
    calculation_options get_options();

    private:
    struct argument_description {
      std::any target;
      std::string name;
      std::optional<std::string> description_for_usage;
      std::function<bool(const std::string &input)> read_from_string = [](auto) { return false; };
    };

    enum class argument_index : std::size_t {
      number = 0,
      method = 1,
      interlines = 2,
      pert_func = 3,
      termination = 4,
      term_dummy = 5,
      term_accuracy = 6,
      term_iteration = 7
    };

    calculation_options options;
    std::string app_name;
    std::vector<std::string> args;
    std::vector<argument_description> argument_descriptions;
    argument_description get_description(std::size_t index) const;
    argument_description get_description(argument_index index) const;
    void usage() const;
    void ask_params();
    void parse_param(std::size_t index, std::string &input);
    void parse_param(argument_index index, std::string &input);
    void ask_param(std::size_t index);
    void ask_param(argument_index index);
    void fill_argument_descriptions();
    template <class T>
    void add_argument_description(std::string name, T *target, std::optional<std::string> description_for_usage,
                                  bounds<T> target_bounds);
    void add_argument_description(std::string name, std::optional<std::string> description_for_usage);
  };

} // namespace partdiff
