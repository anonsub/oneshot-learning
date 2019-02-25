#!/bin/bash
declare -a arr=("blocks" "driverlog" "ferry" "floortile" "grid" "gripper" "hanoi" "npuzzle" "parking" "transport" "zenotravel")

ulimit -t 1000
rm no_invariants*
rm invariants*

LANG=en_US

touch no_invariants.0.0.100
touch invariants.0.0.100

for d in "${arr[@]}"
do
../../src/experimenter_FAMA.py ../../benchmarks/ijcai19/$d/ 0 0 100 -t ten-observation -avg 10 >> no_invariants.0.0.100

../../src/experimenter_FAMA.py -i ../../benchmarks/ijcai19/$d/ 0 0 100 -t ten-observation -avg 10 >> invariants.0.0.100
done

for j in {100..100..20}
do
touch no_invariants.0.$j.100
touch invariants.0.$j.100

#echo $j

for d in "${arr[@]}"
do
   ../../src/experimenter_FAMA.py -f ../../benchmarks/ijcai19/$d/ 0 $j 100 -t ten-observation -avg 10 >> no_invariants.0.$j.100

   ../../src/experimenter_FAMA.py -f -i ../../benchmarks/ijcai19/$d/ 0 $j 100 -t ten-observation -avg 10 >> invariants.0.$j.100
done

done
