set moduleName Block_codeRepl11624_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block_codeRepl11624_}
set C_modelType { void 0 }
set C_modelArgList {
	{ mag_OUT float 32 regular {axi_s 1 volatile  { mag_OUT Data } }  }
	{ data_OUT_M_real float 32 regular {axi_s 1 volatile  { data_OUT_M_real Data } }  }
	{ data_OUT_M_imag float 32 regular {axi_s 1 volatile  { data_OUT_M_imag Data } }  }
	{ data_OUTfft_M_imag float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ data_OUTfft_M_real float 32 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mag_OUT", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT_M_real", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUTfft_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_OUTfft_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mag_OUT_TDATA sc_out sc_lv 32 signal 0 } 
	{ mag_OUT_TVALID sc_out sc_logic 1 outvld 0 } 
	{ mag_OUT_TREADY sc_in sc_logic 1 outacc 0 } 
	{ data_OUT_M_real_TDATA sc_out sc_lv 32 signal 1 } 
	{ data_OUT_M_real_TVALID sc_out sc_logic 1 outvld 1 } 
	{ data_OUT_M_real_TREADY sc_in sc_logic 1 outacc 1 } 
	{ data_OUT_M_imag_TDATA sc_out sc_lv 32 signal 2 } 
	{ data_OUT_M_imag_TVALID sc_out sc_logic 1 outvld 2 } 
	{ data_OUT_M_imag_TREADY sc_in sc_logic 1 outacc 2 } 
	{ data_OUTfft_M_imag_address0 sc_out sc_lv 5 signal 3 } 
	{ data_OUTfft_M_imag_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_OUTfft_M_imag_q0 sc_in sc_lv 32 signal 3 } 
	{ data_OUTfft_M_real_address0 sc_out sc_lv 5 signal 4 } 
	{ data_OUTfft_M_real_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_OUTfft_M_real_q0 sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mag_OUT_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mag_OUT", "role": "TDATA" }} , 
 	{ "name": "mag_OUT_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mag_OUT", "role": "TVALID" }} , 
 	{ "name": "mag_OUT_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mag_OUT", "role": "TREADY" }} , 
 	{ "name": "data_OUT_M_real_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "TDATA" }} , 
 	{ "name": "data_OUT_M_real_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT_M_real", "role": "TVALID" }} , 
 	{ "name": "data_OUT_M_real_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT_M_real", "role": "TREADY" }} , 
 	{ "name": "data_OUT_M_imag_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "TDATA" }} , 
 	{ "name": "data_OUT_M_imag_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT_M_imag", "role": "TVALID" }} , 
 	{ "name": "data_OUT_M_imag_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT_M_imag", "role": "TREADY" }} , 
 	{ "name": "data_OUTfft_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUTfft_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUTfft_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUTfft_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUTfft_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUTfft_M_imag", "role": "q0" }} , 
 	{ "name": "data_OUTfft_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUTfft_M_real", "role": "address0" }} , 
 	{ "name": "data_OUTfft_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUTfft_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUTfft_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUTfft_M_real", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "Block_codeRepl11624_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mag_OUT", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mag_OUT_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_OUT_M_real", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_OUT_M_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_OUT_M_imag", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_OUT_M_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_OUTfft_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_OUTfft_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_mag_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U110", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U111", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U112", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U113", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U114", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_flog_32ns_32ng8j_U115", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_mag_OUT_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_OUT_M_real_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_OUT_M_imag_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_codeRepl11624_s {
		mag_OUT {Type O LastRead -1 FirstWrite 3}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 3}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 3}
		data_OUTfft_M_imag {Type I LastRead 33 FirstWrite -1}
		data_OUTfft_M_real {Type I LastRead 33 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "98", "Max" : "98"}
	, {"Name" : "Interval", "Min" : "98", "Max" : "98"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mag_OUT { axis {  { mag_OUT_TDATA out_data 1 32 }  { mag_OUT_TVALID out_vld 1 1 }  { mag_OUT_TREADY out_acc 0 1 } } }
	data_OUT_M_real { axis {  { data_OUT_M_real_TDATA out_data 1 32 }  { data_OUT_M_real_TVALID out_vld 1 1 }  { data_OUT_M_real_TREADY out_acc 0 1 } } }
	data_OUT_M_imag { axis {  { data_OUT_M_imag_TDATA out_data 1 32 }  { data_OUT_M_imag_TVALID out_vld 1 1 }  { data_OUT_M_imag_TREADY out_acc 0 1 } } }
	data_OUTfft_M_imag { ap_memory {  { data_OUTfft_M_imag_address0 mem_address 1 5 }  { data_OUTfft_M_imag_ce0 mem_ce 1 1 }  { data_OUTfft_M_imag_q0 mem_dout 0 32 } } }
	data_OUTfft_M_real { ap_memory {  { data_OUTfft_M_real_address0 mem_address 1 5 }  { data_OUTfft_M_real_ce0 mem_ce 1 1 }  { data_OUTfft_M_real_q0 mem_dout 0 32 } } }
}
