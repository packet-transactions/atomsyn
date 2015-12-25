#=========================================================================
# TCL Script File for DC Compiler Library Setup
#-------------------------------------------------------------------------

# The following commands setup the standard cell libraries

set target_library       "$env(SYNTH_LIB)"
set link_library         "* $env(SYNTH_LIB)"
