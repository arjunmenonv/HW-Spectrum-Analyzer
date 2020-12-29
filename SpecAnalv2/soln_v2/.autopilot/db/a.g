#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv2/soln_v2/.autopilot/db/a.g.bc ${1+"$@"}
