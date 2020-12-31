############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft32
set_top FFT
add_files fft32/fft.cpp
add_files -tb fft32/fft_tb.cpp
add_files -tb fft32/inp_cpp.txt
add_files -tb fft32/out_cpp.txt
open_solution "solution1"
set_part {xc7a35tcpg236-1} -tool vivado
create_clock -period 10 -name default
#source "./fft32/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
