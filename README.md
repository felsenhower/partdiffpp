# partdiff++

This is a C++ port of [`partdiff`](https://github.com/parcio/partdiff).

## Related Work

## Usage

Since `partdiff++` uses some C++20 (`std::format`, `std::numbers`) and C++23 (`std::print`, 3d-`operator[]`) features, you need a reasonably recent C++ compiler. I tested it with `g++14 14.2.0`.

```shell
$ git clone https://github.com/felsenhower/partdiffpp.git
$ cd partdiffpp
$ make
$ ./partdiff 1 2 100 1 2 100
```

## Testing

This project uses [partdiff_tester](https://github.com/parcio/partdiff_tester) via CI to ensure that the output matches the reference implementation.
It passes the correctness tests with `--strictness=4` (exact match) and with `--valgrind` (i.e. it has no memory leaks).

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
implementation that uses an overloaded `operator[]` for element access, so we
can save a bit of pointer arithmetic and do the index computation directly.

However,
for a single iteration, `partdiff`'s runtime is `(0.89 ± 0.01) s`
and `partdiff++`' runtime is `(0.79 ± 0.01) s`,
which makes `partdiff++` `(11.24 ± 1.5) %` faster.

One can also see in Figure 3, where the best-fit line has been included, that
the runtime projected onto 0 iterations is also smaller for `partdiff++`.

This means, that `partdiff++`' startup time is also smaller which is a bit
surprising, considering that I did not care for performance in the startup
code at all and used many sophisticated but expensive techniques.
However, it is claimed that the new C++ string printing (`std::print`) is faster
than `printf`.
Maybe a bit of modern C++ compiler magic is involved as well.

#### Figure 1: [1,1024] iterations

[![pde vs pde++, 1:1024 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C1024].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C1024].pdf)

#### Figure 2: [1,64] iterations

[![pde vs pde++, 1:64 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C64].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C64].pdf)

#### Figure 3: [1,8] iterations with best-fit line

[![pde vs pde++, 1:8 iterations](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C8].png)](benchmark/pde_vs_pdepp_iter/Runtimes%20[1%2C8].pdf)
