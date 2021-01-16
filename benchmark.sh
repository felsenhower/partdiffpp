
#!/usr/bin/env bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
  echo "** Trapped CTRL-C"
  exit
}

date

for i in {1..10} ; do
  for n in 1 2 4 8 16 32 64 128 256 512 1024 ; do
    for p in 'pde' 'pde++' ; do
      echo -n 'i = '"$i"'; n = '"$n"'; p = '"$p"' ; t = '
      (/usr/bin/time -f '%U' $p/partdiff 1 1 1024 2 2 $n >/dev/null) 2>&1
   done
 done
done

date


#  | awk 'BEGIN {
# #   pde = 0.0;
# #   pdepp = 0.0;
# # }{
# #   if ($1 == "pde") {
# #     pde += $2;
# #   } else {
# #     pdepp += $2;
# #   }
# #   print $0
# # } END {
# #   printf("pde: total = %f, average = %f\n", pde, pde/10.0)
# #   printf("pde++: total = %f, average = %f\n", pdepp, pdepp/10.0)
# # }'
