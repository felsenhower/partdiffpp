#!/usr/bin/env bash

merged_lines="$(cat bench_data_raw.txt | while read l ; do echo "$l" | grep -q 'i =' && echo "$l" || echo -n "$l" ; done)"

awkscr='
  BEGIN {
    s = 0;
    ss = 0;
    min = 100000000000;
    max = 0;
  } {
    s += $1;
    ss += $1 * $1;
    min = $1 < min ? $1 : min;
    max = $1 > max ? $1 : max;
  } END {
    mean = s / NR;
    stddev = sqrt(ss / NR - (s / NR)**2);
    printf("%0.2f %0.2f %0.2f %0.2f\n", mean, min, max, stddev);
  }
'

(
  (
    echo -n 'pde,gcc,\nGauß-Seidel '
    echo "$merged_lines" | grep gcc | grep '1 1' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde,clang,\nPOLLY=FALSE,Gauß-Seidel '
    echo "$merged_lines" | grep 'clang ' | grep -v 'polly' | grep '1 1' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde,clang,\nPOLLY=TRUE,Gauß-Seidel '
    echo "$merged_lines" | grep 'clang ' | grep 'polly' | grep '1 1' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,g++,\nGauß-Seidel '
    echo "$merged_lines" | grep -E '^g\+\+' | grep '1 1' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,clang++,\nPOLLY=FALSE,Gauß-Seidel '
    echo "$merged_lines" | grep 'clang++ ' | grep -v 'polly' | grep '1 1' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,clang++,\nPOLLY=TRUE,Gauß-Seidel '
    echo "$merged_lines" | grep 'clang++ ' | grep 'polly' | grep '1 1' | cut -d':' -f2 | awk "$awkscr"
  ) | sort -g -k2
  (
    echo -n 'pde,gcc,\nJacobi '
    echo "$merged_lines" | grep gcc | grep '1 2' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde,clang,\nPOLLY=FALSE,Jacobi '
    echo "$merged_lines" | grep 'clang ' | grep -v 'polly' | grep '1 2' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde,clang,\nPOLLY=TRUE,Jacobi '
    echo "$merged_lines" | grep 'clang ' | grep 'polly' | grep '1 2' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,g++,\nJacobi '
    echo "$merged_lines" | grep -E '^g\+\+' | grep '1 2' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,clang++,\nPOLLY=FALSE,Jacobi '
    echo "$merged_lines" | grep 'clang++ ' | grep -v 'polly' | grep '1 2' | cut -d':' -f2 | awk "$awkscr"

    echo -n 'pde++,clang++,\nPOLLY=TRUE,Jacobi '
    echo "$merged_lines" | grep 'clang++ ' | grep 'polly' | grep '1 2' | cut -d':' -f2 | awk "$awkscr"
  ) | sort -g -k2
) | tee bench_data.txt
