############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vhlsv4_256
set_top FFT
add_files vhls_src/fft.cpp
add_files -tb vhls_src/fft_tb.cpp
add_files -tb test_data/inp.txt
add_files -tb test_data/out_black.txt
add_files -tb test_data/out_hamm.txt
add_files -tb test_data/out_hann.txt
open_solution "soln256"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./vhlsv4_256/soln256/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "FFT256 Peripheral: Computes 256 point Radix 2 FFT of floating point complex inputs with 256 bins. Input is multiplied by a time domain window (Hamm256, Hann256, Blackman256) and its FFT is computed. Returns complex valued float output in freq domain along with magnitude in dB scale. Optimisations: PIPELINE, DATAFLOW, LOOP UNROLLING. Remarks: Uses large number of DSP slices, will have to remove dB magnitude calculation to make the design implementable" -version "4.0" -display_name "FFT256v1"
