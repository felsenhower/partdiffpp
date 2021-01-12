# partdiff++

This is a C++ port of partdiff, a program for calculation of partial
differential equations that was originally written in C.

---
**Disclaimer:**
partdiff++ uses C++20 features (at the moment just `std::numbers`).
Therefore, to build it, you need a compiler that supports C++20.
I tested it with `g++ 10.2.0`.

We are currently also relying on the [{fmt} library](https://github.com/fmtlib/fmt) which implements the [C++20 std::format library](https://en.cppreference.com/w/cpp/utility/format) which is sadly not supported by compilers at the time of writing.
Running `make` will automatically both clone and build `{fmt}` (there is no need to manually update the git submodule), this will take a moment.
I will try to switch to `std::format` as soon as it becomes available.

---

partdiff++ is a bit faster than partdiff.
E.g., for 1 thread, Gauß-Seidel, 1024 interlines, f(x,y) ≠ 0, and 60 iterations (`./partdiff 1 1 1024 2 2 60`),
partdiff++ is consistently about 4 % faster than partdiff (over 10 runs). More benchmarks will follow. 🙂

The original partdiff was written by Prof. Dr. Thomas Ludwig and
Andreas C. Schmidt and is also available here:

* https://wr.informatik.uni-hamburg.de/teaching/wintersemester_2020_2021/hochleistungsrechnen
* https://parcio.ovgu.de/Teaching/Winter+2020_2021/Parallele+Programmierung.html

The comments have been removed for now, but will return at some point.

Identifier names have not been changed where possible.

To my knowledge, the functionality is exactly the same:
As you can check with `make test`, the output is exactly the same as from the
original program for all tested inputs.

See https://github.com/mblesel/rust_partdiff for a Rust implementation. 🙂
