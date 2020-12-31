#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv4/vhlsv4_256/soln256/.autopilot/db/a.g.bc ${1+"$@"}
