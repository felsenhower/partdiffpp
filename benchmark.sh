
#!/usr/bin/env bash

n=4

for i in {1..10} ; do
  for p in 'pde' 'pde++' ; do
    echo -n "$p"' '
    (/usr/bin/time -f '%U' $p/partdiff 1 1 1024 2 2 1 >/dev/null) 2>&1
   done
done | awk 'BEGIN {
  pde = 0.0;
  pdepp = 0.0;
}{
  if ($1 == "pde") {
    pde += $2;
  } else {
    pdepp += $2;
  }
  print $0
} END {
  printf("pde: total = %f, average = %f\n", pde, pde/10.0)
  printf("pde++: total = %f, average = %f\n", pdepp, pdepp/10.0)
}'
