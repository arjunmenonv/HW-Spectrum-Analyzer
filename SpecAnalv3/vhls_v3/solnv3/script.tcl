############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project vhls_v3
set_top FFT
add_files vhls_src/fft.cpp
add_files -tb vhls_src/fft_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/inp.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_black.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_hamm.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb test_data/out_hann.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solnv3"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -description {FFT32 peripheral: Computes radix 2 FFT of floating point complex inputs with 32 bins. Input is multiplied by a time domain window (hamm32, hann32, blackman32) and its FFT is computed. Returns complex valued float output in Freq Domain along with its magnitude in dB scale. Optimisations: Pipelining, Dataflow, Loop Unrolling. AXI-stream complex valued ports are DATA_PACKed} -display_name FFT32v3.1 -format ip_catalog -rtl verilog -version 3.1
#source "./vhls_v3/solnv3/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog -description "FFT32 peripheral: Computes radix 2 FFT of floating point complex inputs with 32 bins. Input is multiplied by a time domain window (hamm32, hann32, blackman32) and its FFT is computed. Returns complex valued float output in Freq Domain along with its magnitude in dB scale. Optimisations: Pipelining, Dataflow, Loop Unrolling. AXI-stream complex valued ports are DATA_PACKed" -version "3.1" -display_name "FFT32v3.1"
