# partdiff++

This is a C++ port of partdiff, a program for calculation of partial
differential equations that was originally written in C.

partdiff++ is a bit faster than partdiff.
E.g., for 1 thread, Gauß-Seidel, 1024 interlines, f(x,y) ≠ 0, and 60 iterations (`./partdiff 1 1 1024 2 2 60`),
partdiff++ is consistently about 1.25 % faster than partdiff (over 10 runs). More benchmarks will follow. 🙂

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
