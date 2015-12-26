#! /usr/bin/python

# Imports
import sys
import subprocess

# cmd line args
synth_lib = sys.argv[1]
atom_file = sys.argv[2]

# Program wrapper
# Takes a command line of program arguements,
# executes it, and prints something out whether it succeeds or fails
def program_wrapper(program, t_stdout = subprocess.PIPE, t_stderr = subprocess.PIPE):
  sp = subprocess.Popen(program, stdout = t_stdout, stderr = t_stderr, shell=True)
  out, err = sp.communicate()
  if (sp.returncode != 0):
    print " ".join(program), " failed (non-zero return code) with stdout:"
    print out
    print "stderr:"
    print err
    sys.exit(sp.returncode)
  else :
    print " ".join(program), " completed with return code of zero"
    return (out, err)

# Run Synopsys DC, using bisection search to find the min. clock
left_end    = 1
right_end   = 1000
cur_clock   = (left_end + right_end) / 2.0

while (left_end < right_end):
  cur_clock = int((left_end + right_end) / 2.0)
  arg_str =  "DESIGN_RTL=" + atom_file + " " + \
           "DESIGN_TOPLEVEL=" + atom_file.split(".")[0] + " " + \
           "SYNTH_LIB=" + synth_lib + " " + \
           "CLOCK_PERIOD=" + str(cur_clock) + " " + \
           "dc_shell -f synth.tcl"
  out, err = program_wrapper(arg_str);
  if "slack (MET)" in out:
    print "Met timing at ", cur_clock
    right_end = cur_clock - 1;
  else :
    print "Failed timing at ", cur_clock
    left_end  = cur_clock + 1;
