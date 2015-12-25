#=========================================================================
# Constraints file
#-------------------------------------------------------------------------
#
# This file contains various constraints for your chip including the
# target clock period, fanout, transition time and any
# input/output delay constraints.

run_dc_cmd "
  set_units \
      -capacitance                        pF \
      -time                               ns
"


echo "======Start Set Clock Period======\n"
set clock_period    $env(CLOCK_PERIOD)
echo "======End Set Clock Period======\n"

# set clock period [ns]
run_dc_cmd "
  create_clock \
      -period                             $env(CLOCK_PERIOD) \
      -name                               master_clk \
      clk
"

# set clock jitter [%]
run_dc_cmd "
  set_clock_uncertainty                   0.040 \
      -hold \
      [all_clocks]
"

run_dc_cmd "
  set_clock_uncertainty                   0.040 \
      -setup \
      [all_clocks]
"

# set input and output delay [ns]
# set_input_delay                         0.50 \
#     -clock                              master_clk \
#     ${input_pins}

# Set suitable driving cell
# set_driving_cell \
#     -lib_cell                           \
#     [all_inputs]

run_dc_cmd "
  set_max_transition                      0.040 \
      [all_inputs]
"

run_dc_cmd "
  set_max_transition                      0.040 \
      [all_outputs]
"

run_dc_cmd "
  set_load \
      -pin_load                           0.010 \
      [all_outputs]
"
