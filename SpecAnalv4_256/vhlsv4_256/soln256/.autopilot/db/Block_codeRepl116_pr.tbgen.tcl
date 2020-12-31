set moduleName Block_codeRepl116_pr
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
set C_modelName {Block_codeRepl116_pr}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN_M_real float 32 regular {axi_s 0 volatile  { data_IN_M_real Data } }  }
	{ data_IN_M_imag float 32 regular {axi_s 0 volatile  { data_IN_M_imag Data } }  }
	{ xin_M_imag float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ xin_M_real float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ win_mode int 8 regular {fifo 0}  }
	{ win_mode_out int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN_M_real", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xin_M_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xin_M_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "win_mode", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "win_mode_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_IN_M_real_TDATA sc_in sc_lv 32 signal 0 } 
	{ data_IN_M_real_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_IN_M_real_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_IN_M_imag_TDATA sc_in sc_lv 32 signal 1 } 
	{ data_IN_M_imag_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_IN_M_imag_TREADY sc_out sc_logic 1 inacc 1 } 
	{ xin_M_imag_address0 sc_out sc_lv 8 signal 2 } 
	{ xin_M_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_M_imag_we0 sc_out sc_logic 1 signal 2 } 
	{ xin_M_imag_d0 sc_out sc_lv 32 signal 2 } 
	{ xin_M_real_address0 sc_out sc_lv 8 signal 3 } 
	{ xin_M_real_ce0 sc_out sc_logic 1 signal 3 } 
	{ xin_M_real_we0 sc_out sc_logic 1 signal 3 } 
	{ xin_M_real_d0 sc_out sc_lv 32 signal 3 } 
	{ win_mode_dout sc_in sc_lv 8 signal 4 } 
	{ win_mode_empty_n sc_in sc_logic 1 signal 4 } 
	{ win_mode_read sc_out sc_logic 1 signal 4 } 
	{ win_mode_out_din sc_out sc_lv 8 signal 5 } 
	{ win_mode_out_full_n sc_in sc_logic 1 signal 5 } 
	{ win_mode_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_IN_M_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "TDATA" }} , 
 	{ "name": "data_IN_M_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN_M_real", "role": "TVALID" }} , 
 	{ "name": "data_IN_M_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN_M_real", "role": "TREADY" }} , 
 	{ "name": "data_IN_M_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "TDATA" }} , 
 	{ "name": "data_IN_M_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN_M_imag", "role": "TVALID" }} , 
 	{ "name": "data_IN_M_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN_M_imag", "role": "TREADY" }} , 
 	{ "name": "xin_M_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "address0" }} , 
 	{ "name": "xin_M_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "ce0" }} , 
 	{ "name": "xin_M_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "we0" }} , 
 	{ "name": "xin_M_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin_M_imag", "role": "d0" }} , 
 	{ "name": "xin_M_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xin_M_real", "role": "address0" }} , 
 	{ "name": "xin_M_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_real", "role": "ce0" }} , 
 	{ "name": "xin_M_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_real", "role": "we0" }} , 
 	{ "name": "xin_M_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xin_M_real", "role": "d0" }} , 
 	{ "name": "win_mode_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "win_mode", "role": "dout" }} , 
 	{ "name": "win_mode_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win_mode", "role": "empty_n" }} , 
 	{ "name": "win_mode_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win_mode", "role": "read" }} , 
 	{ "name": "win_mode_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "win_mode_out", "role": "din" }} , 
 	{ "name": "win_mode_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win_mode_out", "role": "full_n" }} , 
 	{ "name": "win_mode_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win_mode_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Block_codeRepl116_pr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_IN_M_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_IN_M_imag", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_IN_M_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "win_mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "win_mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "win_mode_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "win_mode_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_IN_M_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_IN_M_imag_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_codeRepl116_pr {
		data_IN_M_real {Type I LastRead 255 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 255 FirstWrite -1}
		xin_M_imag {Type O LastRead -1 FirstWrite 0}
		xin_M_real {Type O LastRead -1 FirstWrite 0}
		win_mode {Type I LastRead 0 FirstWrite -1}
		win_mode_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "255", "Max" : "255"}
	, {"Name" : "Interval", "Min" : "255", "Max" : "255"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_IN_M_real { axis {  { data_IN_M_real_TDATA in_data 0 32 }  { data_IN_M_real_TVALID in_vld 0 1 }  { data_IN_M_real_TREADY in_acc 1 1 } } }
	data_IN_M_imag { axis {  { data_IN_M_imag_TDATA in_data 0 32 }  { data_IN_M_imag_TVALID in_vld 0 1 }  { data_IN_M_imag_TREADY in_acc 1 1 } } }
	xin_M_imag { ap_memory {  { xin_M_imag_address0 mem_address 1 8 }  { xin_M_imag_ce0 mem_ce 1 1 }  { xin_M_imag_we0 mem_we 1 1 }  { xin_M_imag_d0 mem_din 1 32 } } }
	xin_M_real { ap_memory {  { xin_M_real_address0 mem_address 1 8 }  { xin_M_real_ce0 mem_ce 1 1 }  { xin_M_real_we0 mem_we 1 1 }  { xin_M_real_d0 mem_din 1 32 } } }
	win_mode { ap_fifo {  { win_mode_dout fifo_data 0 8 }  { win_mode_empty_n fifo_status 0 1 }  { win_mode_read fifo_update 1 1 } } }
	win_mode_out { ap_fifo {  { win_mode_out_din fifo_data 1 8 }  { win_mode_out_full_n fifo_status 0 1 }  { win_mode_out_write fifo_update 1 1 } } }
}
