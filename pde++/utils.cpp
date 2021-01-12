#include "partdiff.h"

namespace partdiff {

  const std::string scientific_double(const double val, const int precision) {
    auto temp = fmt::format("{:." + std::to_string(precision) + "e}", val);
    int epos = temp.find("e");
    std::string mantissa_str = temp.substr(0, epos);
    std::string exponent_str = temp.substr(epos + 1, temp.length() - epos - 1);
    int exponent = stoi(exponent_str);
    return mantissa_str + "e" + std::to_string(exponent);
  }

  std::string build_string(const std::function<void(std::stringstream &)> input) {
    std::stringstream ss;
    input(ss);
    return ss.str();
  }

} // namespace partdiff
