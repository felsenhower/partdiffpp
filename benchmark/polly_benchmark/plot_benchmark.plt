#!/usr/bin/env gnuplot

set terminal pdf
# set term pdf;
set termopt enhanced

in_file="bench_data.txt"

# set xlabel "Iterations"
set ylabel "Runtime / s"

set key left top

set output "polly_benchmark.pdf"

set xrange [-1:12]
set yrange [0:70]

set xtics rotate by 90 right

set xtics font ", 7"
set xtics nomirror

set origin 0, -0.25
set size 1, 1.25

plot "bench_data.txt" using 0:2:xtic(1) every ::0::5 with boxes fill pattern 2 border lt -1  lt rgb "#FF0000" notitle, \
     "bench_data.txt" using ($0+6):2:xtic(1) every ::6::12 with boxes fill pattern 2 border lt -1 lt rgb "#0000FF" notitle;
