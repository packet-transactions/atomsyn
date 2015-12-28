#! /bin/bash
if [ $# -ne 3 ];
  then echo "Usage: gen_min_delay.sh synth_lib result_folder design_list"
  exit
fi

for design in `cat $3`; do
  echo "Now processing $design";
  time python min_delay.py $1 ${design}.v > $2/${design}.txt
done
