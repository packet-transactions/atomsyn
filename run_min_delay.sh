#! /bin/bash
if [$# -ne 2];
  then echo "Usage: run_min_delay.sh synth_lib result_folder"
  exit
fi

time python min_delay.py $1 raw.v         > $2/raw.txt
time python min_delay.py $1 pred_raw.v    > $2/pred_raw.txt
time python min_delay.py $1 if_else_raw.v > $2/if_else_raw.txt
time python min_delay.py $1 sub.v         > $2/sub.txt
time python min_delay.py $1 nested_ifs.v  > $2/nested_ifs.txt
time python min_delay.py $1 pair.v        > $2/pair.txt
