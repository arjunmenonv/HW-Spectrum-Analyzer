#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/teach-fpga/01-fft/build/FFT32float/z7float32/.autopilot/db/a.g.bc ${1+"$@"}
