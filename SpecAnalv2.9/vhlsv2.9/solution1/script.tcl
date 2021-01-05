############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vhlsv2.9
set_top FFT
add_files vhls_src/fft.cpp
add_files -tb vhls_src/fft_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/inp.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_black.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_hamm.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_hann.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {FFTfloat_axiFull: Loop Unroll, Pipeline, Dataflow; Input: Complex Valued 32-point cartesian coordinates; Outputs: Complex Valued 32-point cartesian coordinates and Magnitude spectrum in dB; Axi MM Bus} -display_name FFT32fixedpv2.9 -format ip_catalog -rtl verilog -version 2.9
#source "./vhlsv2.9/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "FFTfloat_axiLite: Loop Unroll, Pipeline, Dataflow; Input: Complex Valued 32-point cartesian coordinates; Outputs: Complex Valued 32-point cartesian coordinates and Magnitude-squared spectrum; Axi Lite Bus" -version "2.9" -display_name "FFT32floatv2.9"
