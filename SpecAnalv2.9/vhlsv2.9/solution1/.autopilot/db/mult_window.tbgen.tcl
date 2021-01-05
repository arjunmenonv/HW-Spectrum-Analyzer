set moduleName mult_window
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
set C_modelName {mult_window}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN_M_real float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ data_IN_M_imag float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ win_mode int 8 regular  }
	{ prod_IN_M_real_2 float 32 regular {array 32 { 0 0 } 0 1 }  }
	{ prod_IN_M_imag_2 float 32 regular {array 32 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "win_mode", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "prod_IN_M_real_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_IN_M_imag_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_IN_M_real_address0 sc_out sc_lv 5 signal 0 } 
	{ data_IN_M_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_IN_M_real_q0 sc_in sc_lv 32 signal 0 } 
	{ data_IN_M_real_address1 sc_out sc_lv 5 signal 0 } 
	{ data_IN_M_real_ce1 sc_out sc_logic 1 signal 0 } 
	{ data_IN_M_real_q1 sc_in sc_lv 32 signal 0 } 
	{ data_IN_M_imag_address0 sc_out sc_lv 5 signal 1 } 
	{ data_IN_M_imag_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_IN_M_imag_q0 sc_in sc_lv 32 signal 1 } 
	{ data_IN_M_imag_address1 sc_out sc_lv 5 signal 1 } 
	{ data_IN_M_imag_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_IN_M_imag_q1 sc_in sc_lv 32 signal 1 } 
	{ win_mode sc_in sc_lv 8 signal 2 } 
	{ prod_IN_M_real_2_address0 sc_out sc_lv 5 signal 3 } 
	{ prod_IN_M_real_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ prod_IN_M_real_2_we0 sc_out sc_logic 1 signal 3 } 
	{ prod_IN_M_real_2_d0 sc_out sc_lv 32 signal 3 } 
	{ prod_IN_M_real_2_address1 sc_out sc_lv 5 signal 3 } 
	{ prod_IN_M_real_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ prod_IN_M_real_2_we1 sc_out sc_logic 1 signal 3 } 
	{ prod_IN_M_real_2_d1 sc_out sc_lv 32 signal 3 } 
	{ prod_IN_M_imag_2_address0 sc_out sc_lv 5 signal 4 } 
	{ prod_IN_M_imag_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ prod_IN_M_imag_2_we0 sc_out sc_logic 1 signal 4 } 
	{ prod_IN_M_imag_2_d0 sc_out sc_lv 32 signal 4 } 
	{ prod_IN_M_imag_2_address1 sc_out sc_lv 5 signal 4 } 
	{ prod_IN_M_imag_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ prod_IN_M_imag_2_we1 sc_out sc_logic 1 signal 4 } 
	{ prod_IN_M_imag_2_d1 sc_out sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_IN_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "address0" }} , 
 	{ "name": "data_IN_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "ce0" }} , 
 	{ "name": "data_IN_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "q0" }} , 
 	{ "name": "data_IN_M_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "address1" }} , 
 	{ "name": "data_IN_M_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "ce1" }} , 
 	{ "name": "data_IN_M_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "q1" }} , 
 	{ "name": "data_IN_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "address0" }} , 
 	{ "name": "data_IN_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "ce0" }} , 
 	{ "name": "data_IN_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "q0" }} , 
 	{ "name": "data_IN_M_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "address1" }} , 
 	{ "name": "data_IN_M_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "ce1" }} , 
 	{ "name": "data_IN_M_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "q1" }} , 
 	{ "name": "win_mode", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "win_mode", "role": "default" }} , 
 	{ "name": "prod_IN_M_real_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "address0" }} , 
 	{ "name": "prod_IN_M_real_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "ce0" }} , 
 	{ "name": "prod_IN_M_real_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "we0" }} , 
 	{ "name": "prod_IN_M_real_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "d0" }} , 
 	{ "name": "prod_IN_M_real_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "address1" }} , 
 	{ "name": "prod_IN_M_real_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "ce1" }} , 
 	{ "name": "prod_IN_M_real_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "we1" }} , 
 	{ "name": "prod_IN_M_real_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_IN_M_real_2", "role": "d1" }} , 
 	{ "name": "prod_IN_M_imag_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "address0" }} , 
 	{ "name": "prod_IN_M_imag_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "ce0" }} , 
 	{ "name": "prod_IN_M_imag_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "we0" }} , 
 	{ "name": "prod_IN_M_imag_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "d0" }} , 
 	{ "name": "prod_IN_M_imag_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "address1" }} , 
 	{ "name": "prod_IN_M_imag_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "ce1" }} , 
 	{ "name": "prod_IN_M_imag_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "we1" }} , 
 	{ "name": "prod_IN_M_imag_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_IN_M_imag_2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "mult_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "prod_IN_M_real_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "prod_IN_M_imag_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Blackman32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hamm32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hann32", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Blackman32_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Hamm32_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Hann32_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.window_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32ncud_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fsub_32ns_32ncud_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fadd_32ns_32ndEe_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_fmul_32ns_32neOg_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mult_window {
		data_IN_M_real {Type I LastRead 4 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 4 FirstWrite -1}
		win_mode {Type I LastRead 0 FirstWrite -1}
		prod_IN_M_real_2 {Type O LastRead -1 FirstWrite 14}
		prod_IN_M_imag_2 {Type O LastRead -1 FirstWrite 14}
		Blackman32 {Type I LastRead -1 FirstWrite -1}
		Hamm32 {Type I LastRead -1 FirstWrite -1}
		Hann32 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46", "Max" : "46"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	data_IN_M_real { ap_memory {  { data_IN_M_real_address0 mem_address 1 5 }  { data_IN_M_real_ce0 mem_ce 1 1 }  { data_IN_M_real_q0 mem_dout 0 32 }  { data_IN_M_real_address1 MemPortADDR2 1 5 }  { data_IN_M_real_ce1 MemPortCE2 1 1 }  { data_IN_M_real_q1 MemPortDOUT2 0 32 } } }
	data_IN_M_imag { ap_memory {  { data_IN_M_imag_address0 mem_address 1 5 }  { data_IN_M_imag_ce0 mem_ce 1 1 }  { data_IN_M_imag_q0 mem_dout 0 32 }  { data_IN_M_imag_address1 MemPortADDR2 1 5 }  { data_IN_M_imag_ce1 MemPortCE2 1 1 }  { data_IN_M_imag_q1 MemPortDOUT2 0 32 } } }
	win_mode { ap_none {  { win_mode in_data 0 8 } } }
	prod_IN_M_real_2 { ap_memory {  { prod_IN_M_real_2_address0 mem_address 1 5 }  { prod_IN_M_real_2_ce0 mem_ce 1 1 }  { prod_IN_M_real_2_we0 mem_we 1 1 }  { prod_IN_M_real_2_d0 mem_din 1 32 }  { prod_IN_M_real_2_address1 MemPortADDR2 1 5 }  { prod_IN_M_real_2_ce1 MemPortCE2 1 1 }  { prod_IN_M_real_2_we1 MemPortWE2 1 1 }  { prod_IN_M_real_2_d1 MemPortDIN2 1 32 } } }
	prod_IN_M_imag_2 { ap_memory {  { prod_IN_M_imag_2_address0 mem_address 1 5 }  { prod_IN_M_imag_2_ce0 mem_ce 1 1 }  { prod_IN_M_imag_2_we0 mem_we 1 1 }  { prod_IN_M_imag_2_d0 mem_din 1 32 }  { prod_IN_M_imag_2_address1 MemPortADDR2 1 5 }  { prod_IN_M_imag_2_ce1 MemPortCE2 1 1 }  { prod_IN_M_imag_2_we1 MemPortWE2 1 1 }  { prod_IN_M_imag_2_d1 MemPortDIN2 1 32 } } }
}
