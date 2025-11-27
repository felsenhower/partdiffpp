#include "calculation_options.hpp"
#include <any>
#include <functional>
#include <optional>
#include <string>
#include <vector>

template <typename T>
struct bounds_t {
  T lower;
  T upper;
  bool contains(T x) const {
    return (x >= lower && x <= upper);
  }
};

namespace std {

  template <typename T, typename Char>
    requires std::formattable<T, Char>
  struct formatter<bounds_t<T>, Char> {
    std::formatter<T, Char> underlying_;

    constexpr auto parse(std::basic_format_parse_context<Char> &ctx) {
      return underlying_.parse(ctx);
    }

    template <typename FormatContext>
    auto format(const bounds_t<T> &b, FormatContext &ctx) const {
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
    argument_parser(const std::optional<std::string> app_name, const std::optional<std::string> epilog);
    bool parse_args(const std::vector<std::string> args);
    bool parse_arg(const std::size_t index, const std::string &input);
    void usage() const;
    template <class T>
    void add_arg(std::string name, T &target, std::optional<bounds_t<T>> bounds,
                 std::optional<std::string> description);

    private:
    struct argument_description {
      std::any target;
      std::string name;
      std::optional<std::string> description;
      std::function<bool(const std::string &input)> read_from_string = [](auto) { return false; };
    };

    const std::optional<std::string> app_name;
    const std::optional<std::string> epilog;
    std::vector<argument_description> argument_descriptions;
  };

  template <class T>
  void argument_parser::add_arg(std::string name, T &target, std::optional<bounds_t<T>> bounds,
                                std::optional<std::string> description) {
    argument_description arg_desc;
    arg_desc.name = name;
    arg_desc.target = std::reference_wrapper<T>(target);
    arg_desc.read_from_string = [target_ref_any = arg_desc.target, bounds](const std::string &input) {
      auto &target_ref = std::any_cast<std::reference_wrapper<T>>(target_ref_any).get();
      bool valid_input = false;
      std::istringstream iss(input);
      if constexpr (std::is_enum_v<T>) {
        std::underlying_type_t<T> temp;
        valid_input = static_cast<bool>(iss >> temp);
        target_ref = static_cast<T>(temp);
      } else {
        valid_input = static_cast<bool>(iss >> target_ref);
      }
      if (bounds.has_value()) {
        valid_input &= bounds.value().contains(target_ref);
      }

      return valid_input;
    };
    arg_desc.description = description;
    this->argument_descriptions.push_back(arg_desc);
  }

} // namespace partdiff
