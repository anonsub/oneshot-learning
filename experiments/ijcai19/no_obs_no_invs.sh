#!/bin/bash
declare -a arr=("blocks" "driverlog" "ferry" "floortile" "grid" "gripper" "hanoi" "npuzzle" "parking" "transport" "zenotravel")

ulimit -t 1000
rm results_no_no.txt

LANG=en_US

touch results_no_no.txt

for d in "${arr[@]}"
do
   # echo $d
   ../../src/experimenter_FAMA.py ../../benchmarks/ijcai19/$d/ 0 0 80 -t ten-observation -avg 10 >> results_no_no.txt
done