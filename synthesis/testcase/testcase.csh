#!/bin/csh -f

##########################################################
# CREATED    : 05/25/2022 01:22:16 by r10021492 (top)
# INNOVUS  : 19.10-p002_1 (Linux)
##########################################################

# Set testDir to the testcase installation directory \
setenv testDir `which $0 | sed 's/\(.*\)\/\(.*\)/\1/'`
if (! -e $0) setenv testDir /local/users/r10021492/Documents/BuslaevMR/cadence/che/syn/testcase

# Start innovus \
innovus  -64  -overwrite  -files ${testDir}/testcase.tcl

# End csh script \
exit
