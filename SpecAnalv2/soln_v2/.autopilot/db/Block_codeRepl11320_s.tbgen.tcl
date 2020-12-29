set moduleName Block_codeRepl11320_s
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
set C_modelName {Block_codeRepl11320_}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_OUT_M_real float 32 regular {array 32 { 0 } 0 1 }  }
	{ data_OUT_M_imag float 32 regular {array 32 { 0 } 0 1 }  }
	{ xout_M_imag float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ xout_M_real float 32 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_OUT_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xout_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xout_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_OUT_M_real_address0 sc_out sc_lv 5 signal 0 } 
	{ data_OUT_M_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_OUT_M_real_we0 sc_out sc_logic 1 signal 0 } 
	{ data_OUT_M_real_d0 sc_out sc_lv 32 signal 0 } 
	{ data_OUT_M_imag_address0 sc_out sc_lv 5 signal 1 } 
	{ data_OUT_M_imag_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT_M_imag_we0 sc_out sc_logic 1 signal 1 } 
	{ data_OUT_M_imag_d0 sc_out sc_lv 32 signal 1 } 
	{ xout_M_imag_address0 sc_out sc_lv 5 signal 2 } 
	{ xout_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ xout_M_imag_q0 sc_in sc_lv 32 signal 2 } 
	{ xout_M_real_address0 sc_out sc_lv 5 signal 3 } 
	{ xout_M_real_ce0 sc_out sc_logic 1 signal 3 } 
	{ xout_M_real_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_OUT_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "address0" }} , 
 	{ "name": "data_OUT_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "we0" }} , 
 	{ "name": "data_OUT_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "d0" }} , 
 	{ "name": "data_OUT_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "address0" }} , 
 	{ "name": "data_OUT_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "we0" }} , 
 	{ "name": "data_OUT_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "d0" }} , 
 	{ "name": "xout_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_imag", "role": "address0" }} , 
 	{ "name": "xout_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_imag", "role": "ce0" }} , 
 	{ "name": "xout_M_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xout_M_imag", "role": "q0" }} , 
 	{ "name": "xout_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_real", "role": "address0" }} , 
 	{ "name": "xout_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_real", "role": "ce0" }} , 
 	{ "name": "xout_M_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xout_M_real", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_codeRepl11320_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT_M_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT_M_imag", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xout_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "xout_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"}]}]}


set ArgLastReadFirstWriteLatency {
	Block_codeRepl11320_s {
		data_OUT_M_real {Type O LastRead -1 FirstWrite 1}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 1}
		xout_M_imag {Type I LastRead 31 FirstWrite -1}
		xout_M_real {Type I LastRead 31 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_OUT_M_real { ap_memory {  { data_OUT_M_real_address0 mem_address 1 5 }  { data_OUT_M_real_ce0 mem_ce 1 1 }  { data_OUT_M_real_we0 mem_we 1 1 }  { data_OUT_M_real_d0 mem_din 1 32 } } }
	data_OUT_M_imag { ap_memory {  { data_OUT_M_imag_address0 mem_address 1 5 }  { data_OUT_M_imag_ce0 mem_ce 1 1 }  { data_OUT_M_imag_we0 mem_we 1 1 }  { data_OUT_M_imag_d0 mem_din 1 32 } } }
	xout_M_imag { ap_memory {  { xout_M_imag_address0 mem_address 1 5 }  { xout_M_imag_ce0 mem_ce 1 1 }  { xout_M_imag_q0 mem_dout 0 32 } } }
	xout_M_real { ap_memory {  { xout_M_real_address0 mem_address 1 5 }  { xout_M_real_ce0 mem_ce 1 1 }  { xout_M_real_q0 mem_dout 0 32 } } }
}
