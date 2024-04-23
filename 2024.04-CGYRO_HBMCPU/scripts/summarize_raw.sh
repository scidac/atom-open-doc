#!/bin/bash
export LC_ALL=C
echo "#Input, nodes, System, config, TOTAL, str, nl, field, shear, coll, str_mem, str_comm, nl_mem, nl_comm, field_com, coll_mem, coll_comm, io" 
fs=`cd raw_results && ls */*/*/out.cgyro.timing`
for f in $fs; do
  ntail=3

  # check that we have enough lines
  let ntailp=1+${ntail}
  n=`cd raw_results && cat $f |grep -A ${ntail} "str " |wc -l`; 
  if [[ "$n" != "$ntailp" ]]; then continue; fi

  l=`cd raw_results && cat $f |grep -A ${ntail} "str " |tail -1`; 
  echo $f $l | \
    awk '{split($1,a,"/"); split(a[3],b,"_"); print a[2] " " b[2] " " a[1] " " b[1] "_" b[3] " \t" $15 " \t" $2 " \t" $5 " \t" $8 " \t" $10 " \t" $11 " \t" $3 " \t" $4 " \t" $6 " \t" $7 " \t" $9 " \t" $12 " \t" $13 " \t" $14}'
done | \
  sort -k 1,1 -k 5n,5 -k 2nr,2 -k 3,3 | \
  awk '{printf("%s, %i, %s, %s, %.1f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f\n",$1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19)}'
