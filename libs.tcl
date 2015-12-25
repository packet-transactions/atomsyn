#=========================================================================
# TCL Script File for DC Compiler Library Setup
#-------------------------------------------------------------------------

# The following commands setup the standard cell libraries

set target_library       "$SYNTH_LIB"
set link_library         "* $SYNTH_LIB"

# The search path needs to point to the verilog source directory

set search_path [concat $DESIGN_RTL_DIR $search_path ]
