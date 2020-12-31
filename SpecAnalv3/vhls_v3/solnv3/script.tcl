############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vhls_v3
set_top FFT
add_files vhls_src/fft.cpp
add_files -tb vhls_src/fft_tb.cpp
add_files -tb test_data/inp.txt
add_files -tb test_data/out_black.txt
add_files -tb test_data/out_hamm.txt
add_files -tb test_data/out_hann.txt
open_solution "solnv3"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -description {FFT32 peripheral: Computes radix 2 FFT of floating point complex inputs with 32 bins. Input is multiplied by a time domain window (hamm32, hann32, blackman32) and its FFT is computed. Returns complex valued float output in Freq Domain along with its magnitude in dB scale. Optimisations: Pipelining, Dataflow, Loop Unrolling} -display_name FFT32v3 -format ip_catalog -rtl verilog -version 3.0
#source "./vhls_v3/solnv3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "FFT32 peripheral: Computes radix 2 FFT of floating point complex inputs with 32 bins. Input is multiplied by a time domain window (hamm32, hann32, blackman32) and its FFT is computed. Returns complex valued float output in Freq Domain along with its magnitude in dB scale. Optimisations: Pipelining, Dataflow, Loop Unrolling" -version "3.0" -display_name "FFT32v3"
