#=========================================================================
# TCL Script File for Synthesis using Synopsys Design Compiler
#-------------------------------------------------------------------------

#

# The makefile will generate various variables which we now read in
# and then display

# Fail-fast wrapper for dc_shell's internal / non-Tcl commands
# Because these don't respond to Tcl's catch mechanism
proc run_dc_cmd {cmd} {
  puts "Executing $cmd";
  set ret [eval $cmd];
  if {($ret == 0) || ($ret == {})} quit
  puts "Execution successful"
}

if { [catch {
  echo "================================="
  echo $env(DESIGN_RTL) "\n"
  echo $env(DESIGN_TOPLEVEL) "\n"
  echo "================================="
  
  run_dc_cmd "set_host_options -max_cores 10"
  
  # library setup
  set target_library       "$env(SYNTH_LIB)"
  set link_library         "* $env(SYNTH_LIB)"
  
  set hdlin_sverilog_std                  2009
  set hdlin_ff_always_async_set_reset     true
  set hdlin_ff_always_sync_set_reset      true
  set hdlin_auto_save_templates           true
  #set hdlin_mux_size_limit 128
  # set hdlin_check_no_latch true
  set verilogout_show_unconnected_pins    true
  set compile_fix_multiple_port_ets       true
  
  set fsm_auto_inferring true
  set fsm_enable_state_minimization true
  set fsm_export_formality_state_info true
  
  # set hdlin_check_no_latch true
  run_dc_cmd "define_name_rules nameRules -restricted \"!@#$%^&*()\\-\" -case_insensitive"
  set verilogout_show_unconnected_pins "true"
  
  sh mkdir analyzed
  run_dc_cmd "define_design_lib WORK -path analyzed"
  
  # These two commands read in your verilog source and elaborate it
 
  run_dc_cmd "analyze -f sverilog {$env(DESIGN_RTL)} -vcs \"+define+USE_STDCELL_LATCH\""
  run_dc_cmd "elaborate -lib WORK $env(DESIGN_TOPLEVEL) -update"
  #elaborate -lib WORK router -update
  
  run_dc_cmd "set_fix_multiple_port_nets -all -buffer_constants [get_designs *]"
  
  # This command will check your design for any errors
  
  run_dc_cmd "current_design $env(DESIGN_TOPLEVEL)"
  run_dc_cmd "check_design"
  
  #ungroup rtr -flatten
  #ungroup -all -flatten
  
  run_dc_cmd "link"
  run_dc_cmd "uniquify"
  run_dc_cmd "check_design"
  
  # Set constraints including the
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
  
  # set clock period [ns], jitter, pin load and so on.
  # At some point, I'll understand these intimately :)
  run_dc_cmd "create_clock -period $env(CLOCK_PERIOD) -name master_clk clk"
  run_dc_cmd "set_clock_uncertainty 0.040 -hold [all_clocks]"
  run_dc_cmd "set_clock_uncertainty 0.040 -setup [all_clocks]"
  run_dc_cmd "set_max_transition  0.040 [all_inputs]"
  run_dc_cmd "set_max_transition  0.040 [all_outputs]"
  run_dc_cmd "set_load -pin_load  0.010 [all_outputs]"
  run_dc_cmd "report_timing -loops"
  
  # This actually does the synthesis. The -effort option indicates 
  # how much time the synthesizer should spend optimizing your design to
  # gates. Setting it to high means synthesis will take longer but will
  # probably produce better results.
  
  echo "======START COMPILATION===========================\n\n\n"
  run_dc_cmd "compile_ultra"
  echo "======END COMPILATION=============================\n\n\n"
  
  run_dc_cmd "report_area"
  run_dc_cmd "report_timing -significant_digits 3"

  # Used to exit the Design Compiler
  quit
} ret ] } {
  puts "Script terminated with error message $ret"
  exit 1
}
