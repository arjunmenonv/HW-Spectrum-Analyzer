
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set mag_OUT_group [add_wave_group mag_OUT(axis) -into $coutputgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/mag_OUT_TREADY -into $mag_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/mag_OUT_TVALID -into $mag_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/mag_OUT_TDATA -into $mag_OUT_group -radix hex
set data_OUT_group [add_wave_group data_OUT(axis) -into $coutputgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/data_OUT_TREADY -into $data_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/data_OUT_TVALID -into $data_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/data_OUT_TDATA -into $data_OUT_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set data_IN_group [add_wave_group data_IN(axis) -into $cinputgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/data_IN_TREADY -into $data_IN_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/data_IN_TVALID -into $data_IN_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/data_IN_TDATA -into $data_IN_group -radix hex
set win_mode_group [add_wave_group win_mode(axi_slave) -into $cinputgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BRESP -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BREADY -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_BVALID -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RRESP -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RDATA -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RREADY -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_RVALID -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARREADY -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARVALID -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_ARADDR -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WSTRB -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WDATA -into $win_mode_group -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WREADY -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_WVALID -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWREADY -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWVALID -into $win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AESL_inst_FFT/s_axi_AXILiteS_AWADDR -into $win_mode_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_start -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_done -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_ready -into $blocksiggroup
add_wave /apatb_FFT_top/AESL_inst_FFT/ap_idle -into $blocksiggroup
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
add_wave /apatb_FFT_top/LENGTH_data_IN -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_win_mode -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_data_OUT -into $tb_portdepth_group -radix hex
add_wave /apatb_FFT_top/LENGTH_mag_OUT -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_mag_OUT_group [add_wave_group mag_OUT(axis) -into $tbcoutputgroup]
add_wave /apatb_FFT_top/mag_OUT_TREADY -into $tb_mag_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/mag_OUT_TVALID -into $tb_mag_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/mag_OUT_TDATA -into $tb_mag_OUT_group -radix hex
set tb_data_OUT_group [add_wave_group data_OUT(axis) -into $tbcoutputgroup]
add_wave /apatb_FFT_top/data_OUT_TREADY -into $tb_data_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/data_OUT_TVALID -into $tb_data_OUT_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/data_OUT_TDATA -into $tb_data_OUT_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_data_IN_group [add_wave_group data_IN(axis) -into $tbcinputgroup]
add_wave /apatb_FFT_top/data_IN_TREADY -into $tb_data_IN_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/data_IN_TVALID -into $tb_data_IN_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/data_IN_TDATA -into $tb_data_IN_group -radix hex
set tb_win_mode_group [add_wave_group win_mode(axi_slave) -into $tbcinputgroup]
add_wave /apatb_FFT_top/AXILiteS_BRESP -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_BREADY -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_BVALID -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_RRESP -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_RDATA -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_RREADY -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_RVALID -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARREADY -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARVALID -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_ARADDR -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WSTRB -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WDATA -into $tb_win_mode_group -radix hex
add_wave /apatb_FFT_top/AXILiteS_WREADY -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_WVALID -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWREADY -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWVALID -into $tb_win_mode_group -color #ffff00 -radix hex
add_wave /apatb_FFT_top/AXILiteS_AWADDR -into $tb_win_mode_group -radix hex
save_wave_config FFT.wcfg
run all
quit

