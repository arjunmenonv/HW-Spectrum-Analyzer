############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SpecAnalv2
set_top FFT
add_files teach-fpga/01-fft/vhls/fixed/fft.cpp
add_files -tb teach-fpga/01-fft/build/out_cpp.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb teach-fpga/01-fft/build/out_1.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb teach-fpga/01-fft/build/inp_cpp.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb teach-fpga/01-fft/build/inp_1.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb teach-fpga/01-fft/vhls/fixed/fft_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "soln_v2"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {FFT32 float AXILITE pipelined} -display_name FFT32_v2.1 -format ip_catalog -rtl verilog -version 2.1
#source "./SpecAnalv2/soln_v2/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -description "FFT32 float AXILITE pipelined" -version "2.1" -display_name "FFT32_v2.1"
