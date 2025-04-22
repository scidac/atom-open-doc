#!/bin/bash

# since all simulations in the ensemble poceed in lockstep, the timings are all the same
# just pick the the first one

# there are 5 header lines, that we skip
echo -n "xgyro_32_x4" ;head -86 ../raw_data/xgyro/nl03c_32_x4/t1/out.cgyro.timing|tail -1| sed 's/     /,/g'|sed 's/    /,/g' |sed 's/,[ ]*/,/g'
echo -n "xgyro_32_x8" ;head -86 ../raw_data/xgyro/nl03c_32_x8/t1/out.cgyro.timing|tail -1| sed 's/     /,/g'|sed 's/    /,/g' |sed 's/,[ ]*/,/g'
echo -n "xgyro_128_x8" ;head -86 ../raw_data/xgyro/nl03c_128_x8/t1/out.cgyro.timing|tail -1| sed 's/     /,/g'|sed 's/    /,/g' |sed 's/,[ ]*/,/g'

