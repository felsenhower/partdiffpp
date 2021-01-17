#!/usr/bin/env bash

for n in 1 2 4 8 16 32 64 128 256 512 1024 ; do
  echo -n "$n"' '
  for p in pde pde++ ; do
    lines="$(cat bench_data_raw.txt | grep "$p"' ' | grep 'n = '"$n"';' | awk '{print $13}')"
    mean_min_max_stddev="$(echo "$lines" | awk '
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
    ')"
    echo -n "$mean_min_max_stddev"' '
  done
  echo ;
done | tee bench_data.txt
