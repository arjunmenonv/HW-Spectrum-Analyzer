#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2.9/vhlsv2.9/solution1/.autopilot/db/a.g.bc ${1+"$@"}
