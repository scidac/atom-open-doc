#!/bin/bash

# there are 5 header lines, that we skip
for ((i=1; $i<9; i=$i+1)); do echo -n "cgyro_32_t$i"; head -86 ../raw_data/cgyro/nl03c_32/t$i/out.cgyro.timing|tail -1 | sed 's/     /,/g'|sed 's/    /,/g' |sed 's/,[ ]*/,/g'; done
for ((i=1; $i<9; i=$i+1)); do echo -n "cgyro_64_t$i"; head -86 ../raw_data/cgyro/nl03c_64/t$i/out.cgyro.timing|tail -1 | sed 's/     /,/g'|sed 's/    /,/g' |sed 's/,[ ]*/,/g'; done

