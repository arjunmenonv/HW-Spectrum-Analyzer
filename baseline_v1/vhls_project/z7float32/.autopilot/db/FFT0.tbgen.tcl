set moduleName FFT0
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
set C_modelName {FFT0}
set C_modelType { void 0 }
set C_modelArgList {
	{ FFT_stage int 6 regular  }
	{ pass_check int 6 regular  }
	{ index_shift int 4 regular  }
	{ pass_shift int 4 regular  }
	{ data_IN_M_real float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ data_IN_M_imag float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ data_OUT_M_real float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ data_OUT_M_imag float 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "FFT_stage", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "pass_check", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "index_shift", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "pass_shift", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_OUT_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ FFT_stage sc_in sc_lv 6 signal 0 } 
	{ pass_check sc_in sc_lv 6 signal 1 } 
	{ index_shift sc_in sc_lv 4 signal 2 } 
	{ pass_shift sc_in sc_lv 4 signal 3 } 
	{ data_IN_M_real_address0 sc_out sc_lv 5 signal 4 } 
	{ data_IN_M_real_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_IN_M_real_q0 sc_in sc_lv 32 signal 4 } 
	{ data_IN_M_imag_address0 sc_out sc_lv 5 signal 5 } 
	{ data_IN_M_imag_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_IN_M_imag_q0 sc_in sc_lv 32 signal 5 } 
	{ data_OUT_M_real_address0 sc_out sc_lv 5 signal 6 } 
	{ data_OUT_M_real_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_OUT_M_real_we0 sc_out sc_logic 1 signal 6 } 
	{ data_OUT_M_real_d0 sc_out sc_lv 32 signal 6 } 
	{ data_OUT_M_imag_address0 sc_out sc_lv 5 signal 7 } 
	{ data_OUT_M_imag_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_OUT_M_imag_we0 sc_out sc_logic 1 signal 7 } 
	{ data_OUT_M_imag_d0 sc_out sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "FFT_stage", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "FFT_stage", "role": "default" }} , 
 	{ "name": "pass_check", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pass_check", "role": "default" }} , 
 	{ "name": "index_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "index_shift", "role": "default" }} , 
 	{ "name": "pass_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pass_shift", "role": "default" }} , 
 	{ "name": "data_IN_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "address0" }} , 
 	{ "name": "data_IN_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "ce0" }} , 
 	{ "name": "data_IN_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "q0" }} , 
 	{ "name": "data_IN_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "address0" }} , 
 	{ "name": "data_IN_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "ce0" }} , 
 	{ "name": "data_IN_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "q0" }} , 
 	{ "name": "data_OUT_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "address0" }} , 
 	{ "name": "data_OUT_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "we0" }} , 
 	{ "name": "data_OUT_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "d0" }} , 
 	{ "name": "data_OUT_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUT_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "we0" }} , 
 	{ "name": "data_OUT_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "FFT0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "FFT_stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_check", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT_M_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32nbkb_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_faddfsub_32nscud_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT0 {
		FFT_stage {Type I LastRead 0 FirstWrite -1}
		pass_check {Type I LastRead 0 FirstWrite -1}
		index_shift {Type I LastRead 0 FirstWrite -1}
		pass_shift {Type I LastRead 0 FirstWrite -1}
		data_IN_M_real {Type I LastRead 11 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 11 FirstWrite -1}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 18}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 18}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "305", "Max" : "305"}
	, {"Name" : "Interval", "Min" : "305", "Max" : "305"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	FFT_stage { ap_none {  { FFT_stage in_data 0 6 } } }
	pass_check { ap_none {  { pass_check in_data 0 6 } } }
	index_shift { ap_none {  { index_shift in_data 0 4 } } }
	pass_shift { ap_none {  { pass_shift in_data 0 4 } } }
	data_IN_M_real { ap_memory {  { data_IN_M_real_address0 mem_address 1 5 }  { data_IN_M_real_ce0 mem_ce 1 1 }  { data_IN_M_real_q0 mem_dout 0 32 } } }
	data_IN_M_imag { ap_memory {  { data_IN_M_imag_address0 mem_address 1 5 }  { data_IN_M_imag_ce0 mem_ce 1 1 }  { data_IN_M_imag_q0 mem_dout 0 32 } } }
	data_OUT_M_real { ap_memory {  { data_OUT_M_real_address0 mem_address 1 5 }  { data_OUT_M_real_ce0 mem_ce 1 1 }  { data_OUT_M_real_we0 mem_we 1 1 }  { data_OUT_M_real_d0 mem_din 1 32 } } }
	data_OUT_M_imag { ap_memory {  { data_OUT_M_imag_address0 mem_address 1 5 }  { data_OUT_M_imag_ce0 mem_ce 1 1 }  { data_OUT_M_imag_we0 mem_we 1 1 }  { data_OUT_M_imag_d0 mem_din 1 32 } } }
}
