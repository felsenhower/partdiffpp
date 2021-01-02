#define _POSIX_C_SOURCE 200809L

#include "partdiff.h"

namespace partdiff {

  const std::string scientific_double(double val, int precision) {
    std::stringstream ss;
    ss << std::scientific << std::setprecision(precision) << val;
    std::string temp = ss.str();
    int epos = temp.find("e");
    std::string mantissa_str = temp.substr(0, epos);
    std::string exponent_str = temp.substr(epos + 1, temp.length() - epos - 1);
    int exponent = stoi(exponent_str);
    return mantissa_str + "e" + std::to_string(exponent);
  }

  const uint8_t *allocateMemory(const std::size_t size) {
    try {
      return new uint8_t[size];
    } catch (std::bad_alloc &) {
      std::cout << "Speicherprobleme! " << size << " Bytes angefordert"
                << std::endl;
      exit(EXIT_FAILURE);
    }
  }

}
