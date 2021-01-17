#!/usr/bin/env gnuplot

set term pdf;
set termopt enhanced

in_file="bench_data.txt"

set xlabel "Iterations"
set ylabel "Runtime / s"

set key left top

set xrange [1 : 1025]
set xtics (1,64,128,256,512,1024)
set output "Runtimes [1,1024].pdf"
set pointsize 1
set bars 2
plot "bench_data.txt" using 1:2:3:4 with errorbars pointtype 7 pointsize 0.3 lt rgb "#FF0000" title "pde", \
     "bench_data.txt" using 1:2 with lines lt rgb "#FF0000" notitle, \
     "bench_data.txt" using 1:6:7:8 with errorbars pointtype 7 pointsize 0.3 lt rgb "#0000FF" title "pde++", \
     "bench_data.txt" using 1:6 with lines lt rgb "#0000FF" notitle;

set xrange [1 : 65]
set xtics (1,2,4,8,16,32,64)
set output "Runtimes [1,64].pdf"
plot "bench_data.txt" using 1:2:3:4 with errorbars pointtype 7 pointsize 0.3 lt rgb "#FF0000" title "pde", \
  "bench_data.txt" using 1:2 with lines lt rgb "#FF0000" notitle, \
  "bench_data.txt" using 1:6:7:8 with errorbars pointtype 7 pointsize 0.3 lt rgb "#0000FF" title "pde++", \
  "bench_data.txt" using 1:6 with lines lt rgb "#0000FF" notitle;


f(x) = a*x + b
fit f(x) "bench_data.txt" u 1:2 via a, b
g(x) = c*x + d
fit g(x) "bench_data.txt" u 1:6 via c, d
set xrange [0 : 9]
set xtics (1,2,4,8)
set output "Runtimes [1,8].pdf"
plot f(x) with lines lt rgb "#FFAAAA" title "pde (linear fit)", \
     "bench_data.txt" using 1:2:3:4 with errorbars pointtype 7 pointsize 0.3 lt rgb "#FF0000" title "pde", \
     g(x) with lines lt rgb "#AAAAFF" title "pde++ (linear fit)", \
     "bench_data.txt" using 1:6:7:8 with errorbars pointtype 7 pointsize 0.3 lt rgb "#0000FF" title "pde++";
