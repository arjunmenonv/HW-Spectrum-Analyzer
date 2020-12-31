############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project PerfCtr
set_top counter
add_files vhls_src/ctr.cpp
open_solution "ctr_v3"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./PerfCtr/ctr_v3/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -description "Performance Counter Module: To track number of elapsed clock cycles during the peripheral's active state" -version "3.0" -display_name "perfctr_v3"
