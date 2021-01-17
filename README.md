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

The following three benchmark plots show `partdiff` and `partdiff++` competing
with 1 thread, Gauß-Seidel, 1024 interlines, f(x,y) ≠ 0, and `$n` iterations
(`./partdiff 1 1 1024 2 2 $n`) over 10 repeated runs.

`partdiff` was compiled with `gcc -std=c11 -Wall -Wextra -Wpedantic -O3 -flto -march=native`
and `partdiff++` was compiled with `g++ -std=c++20 -Wall -Werror -Wextra -Wpedantic -O3 -flto -march=native`.

For 1024 iterations, `partdiff`'s runtime is `(772.77 ± 4.16) s`
and `partdiff++`' runtime is `(715.90 ± 0.82) s`,
which makes `partdiff++` `(7.36 ± 0.5) %` faster.

This is probably to a large part because of the custom Matrix / Tensor
implementation that uses an overloaded `operator()` for element access, so we
can save a bit of pointer arithmetic and do the index computation directly.

However,
for a single iteration, `partdiff`'s runtime is `(0.89 ± 0.01) s`
and `partdiff++`' runtime is `(0.79 ± 0.01) s`,
which makes `partdiff++` `(11.24 ± 1.5) %` faster.

One can also see in Figure 3, where the best-fit line has been included, that
the runtime projected onto 0 iterations is also smaller for `partdiff++`.

This means, that `partdiff++`' startup time is also smaller which is a bit
surprising, considering that I did not care for performance in the startup
code at all and used many sophisticated but expensive techniques. However,
I am using the `{fmt}` library for printing which claims to be faster than `printf`.
Maybe a bit of modern C++ compiler magic is involved as well.

#### Figure 1: [1,1024] iterations

[![pde vs pde++, 1:1024 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C1024].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C1024].pdf)

#### Figure 2: [1,64] iterations

[![pde vs pde++, 1:64 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C64].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C64].pdf)

#### Figure 3: [1,8] iterations with best-fit line

[![pde vs pde++, 1:8 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C8].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C8].pdf)

## Coding Style

This is not just a minimal port that makes `partdiff` work with a C++ compiler.
`partdiff++` is written in modern C++20 and uses no C headers.

I tried to keep most identifier names intact, but I converted all identifiers to
the standard `snake_case` of the standard library and changed a few details.

The comments have been removed for now, but will return at some point.
