#include <sstream>

#include "partdiff.h"

namespace partdiff {

  const std::string scientific_double(double val, int precision) {
    std::string temp = build_string({std::scientific, std::setprecision(precision), val});
    int epos = temp.find("e");
    std::string mantissa_str = temp.substr(0, epos);
    std::string exponent_str = temp.substr(epos + 1, temp.length() - epos - 1);
    int exponent = stoi(exponent_str);
    return mantissa_str + "e" + std::to_string(exponent);
  }

  const std::string build_string(const std::initializer_list<streamable> &streamables) {
    std::stringstream ss;
    for (const streamable &s : streamables) {
      s.apply(ss);
    }
    return ss.str();
  }

} // namespace partdiff
