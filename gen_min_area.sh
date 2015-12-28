#! /bin/bash
if [ $# -ne 3 ];
  then echo "Usage: gen_min_area.sh synth_lib result_folder design_list"
  exit
fi

for design in `cat $3`; do
  echo "Now processing $design";
  time CLOCK_PERIOD=1000.0 DESIGN_RTL=${design}.v DESIGN_TOPLEVEL=$design SYNTH_LIB=$1 dc_shell -f synth.tcl > $2/${design}.rpt
done
