# partdiff++

This is a C++ port of `partdiff`, a program for calculation of partial
differential equations that was originally written in C.

## Related Work

The original `partdiff` was written by Prof. Dr. Thomas Ludwig and
Andreas C. Schmidt and is also available here:

* https://wr.informatik.uni-hamburg.de/teaching/wintersemester_2020_2021/hochleistungsrechnen
* https://parcio.ovgu.de/Teaching/Winter+2020_2021/Parallele+Programmierung.html

See https://github.com/mblesel/rust_partdiff for a Rust implementation. 🙂

## Building and Testing

`partdiff++` uses C++20 features (at the moment just `std::numbers`).
Therefore, to build it, you need a compiler that supports C++20.
I tested it with `g++ 10.2.0`.

I am currently also relying on the [{fmt} library](https://github.com/fmtlib/fmt)
which implements the [C++20 std::format library](https://en.cppreference.com/w/cpp/utility/format)
which is sadly not supported by compilers at the time of writing.
Running `make` will automatically both clone and build `{fmt}` (there is no need
to manually update the git submodule), this will take a moment.
I will try to switch to `std::format` as soon as it becomes available.

You can build and test `partdiff++` by running `make`.
This will…
* build `partdiff`
* beautify `partdiff++`' source code with `clang-format`
* build `partdiff++` in [legacy mode](#legacy-mode)
* check whether the resulting matrix of `partdiff{,++}` in `{batch,interactive}` mode is correct
* check whether the help screens of `partdiff{,++}` are identical
* check whether the outputs of `partdiff{,++}` in {batch,interactive} mode are identical (this ignores the line with the calculation time, because that can vary a lot, but you can check for yourself that the format is correct)
* check whether `partdiff++` is leak-free

## Legacy Mode

`partdiff` is mostly in English, but two methods (`displayStatistics` and `allocateMemory`)
are in German.

`partdiff++` offers a full English translation which is enabled by default, but,
to retain comparability between `partdiff`'s and `partdiff++`' output, you can also
compile `partdiff++` in legacy mode to keep the German parts among a few other details:
```bash
$ make partdiffpp
```
To compile `partdiff++` in normal mode:
```bash
$ cd pde++
$ make clean
$ make
```

## Performance

`partdiff++` is a bit faster than `partdiff`.

E.g., for 1 thread, Gauß-Seidel, 1024 interlines, f(x,y) ≠ 0, and 60 iterations (`./partdiff 1 1 1024 2 2 60`),
`partdiff++` is consistently about 4 % faster than `partdiff` (over 10 runs).
This is partly because of the custom Matrix / Tensor implementation that uses an overloaded `operator()` for element access, although before that, `partdiff++` was already a good percent faster, so a tiny bit C++ compiler magic probably also takes part.

More benchmarks will follow. 🙂

## Coding Style

This is not just a minimal port that makes `partdiff` work with a C++ compiler.
`partdiff++` is written in modern C++20 and uses no C headers.

I tried to keep most identifier names intact, but I converted all identifiers to
the standard `snake_case` of the standard library and changed a few details.

The comments have been removed for now, but will return at some point.
