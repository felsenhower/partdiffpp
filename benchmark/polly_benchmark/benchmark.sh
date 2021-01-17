#!/usr/bin/env bash

# load_spack
# spack load llvm+clang+polly

cd ../../

for i in {1..10} ; do
  for method in '1' '2' ; do
    for t in 'pde,gcc,POLLY=FALSE' 'pde,clang,POLLY=FALSE' 'pde,clang,POLLY=TRUE' 'pde++,g++,POLLY=FALSE' 'pde++,clang++,POLLY=FALSE' 'pde++,clang++,POLLY=TRUE' ; do
      p="$(echo "$t" | cut -d',' -f1)"
      CC="$(echo "$t" | cut -d',' -f2)"
      polly="$(echo "$t" | cut -d',' -f3)"
      make -C "$p" clean >/dev/null
      make -C "$p" CC="$CC" CXX="$CC" "$polly" | grep -- '-c -o partdiff.o'
      pde_cmd="$p"'/partdiff 1 '"$method"' 1024 2 2 60'
      echo -n "i = $i" "$pde_cmd"': '
      (/usr/bin/time -f '%U' $pde_cmd >/dev/null) 2>&1
    done
  done
done
