
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set data_IN__data_IN__data_OUT__data_OUT__return_group [add_wave_group data_IN__data_IN__data_OUT__data_OUT__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/interrupt -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BRESP -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BREADY -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BVALID -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RRESP -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RDATA -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RREADY -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RVALID -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARREADY -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARVALID -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARADDR -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WSTRB -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WDATA -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WREADY -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WVALID -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWREADY -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWVALID -into $data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWADDR -into $data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_done -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_idle -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_ready -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_FFT_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_FFT_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_FFT_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_FFT_top/LENGTH_data_IN_M_real -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_data_IN_M_imag -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_data_OUT_M_real -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_data_OUT_M_imag -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_data_IN__data_IN__data_OUT__data_OUT__return_group [add_wave_group data_IN__data_IN__data_OUT__data_OUT__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_FFT_top/AXILiteS_INTERRUPT -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_BRESP -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_BREADY -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_BVALID -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_RRESP -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_RDATA -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_RREADY -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_RVALID -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARREADY -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARVALID -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARADDR -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WSTRB -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WDATA -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WREADY -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_WVALID -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWREADY -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWVALID -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWADDR -into $tb_data_IN__data_IN__data_OUT__data_OUT__return_group -radix hex
save_wave_config FFT.wcfg
run all
quit

