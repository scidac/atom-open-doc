#!/bin/bash
export LC_ALL=C
echo "#Input, nodes, System, FFT (NL), Custom - compute bound, Custom - memory bound, Comm. and IO, Total"

# The title is the only one without a 1
grep 1 raw_results/summarize.csv | \
	awk -F ", " '{printf("%s, %i, %s, %.2f, %.2f, %.2f, %.2f, %.1f\n",$1,$2,$3,$7,$6+$8+$9,$10+$11+$13+$16,$12+$14+$15+$17+$18,$5)}'
