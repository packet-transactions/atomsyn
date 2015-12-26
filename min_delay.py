#! /usr/bin/python

# Imports
import sys
import subprocess

# cmd line args
synth_lib = sys.argv[1]
atom_file = sys.argv[2]
clock_ns  = sys.argv[3]

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

# Run Synopsys DC
arg_str =  "DESIGN_RTL=" + atom_file + " " + \
           "DESIGN_TOPLEVEL=" + atom_file.split(".")[0] + " " + \
           "SYNTH_LIB=" + synth_lib + " " + \
           "CLOCK_PERIOD=" + str(clock_ns) + " " + \
           "dc_shell -f synth.tcl"
out, err = program_wrapper(arg_str);

print out
print err
