set moduleName FFT
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FFT}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN_M_real float 32 regular {axi_s 0 volatile  { data_IN_M_real Data } }  }
	{ data_IN_M_imag float 32 regular {axi_s 0 volatile  { data_IN_M_imag Data } }  }
	{ win_mode int 8 regular {axi_slave 0}  }
	{ data_OUT_M_real float 32 regular {axi_s 1 volatile  { data_OUT_M_real Data } }  }
	{ data_OUT_M_imag float 32 regular {axi_s 1 volatile  { data_OUT_M_imag Data } }  }
	{ mag_OUT float 32 regular {axi_s 1 volatile  { mag_OUT Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN_M_real", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "win_mode", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "win_mode","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "data_OUT_M_real", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "mag_OUT", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mag_OUT","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_IN_M_real_TDATA sc_in sc_lv 32 signal 0 } 
	{ data_IN_M_imag_TDATA sc_in sc_lv 32 signal 1 } 
	{ data_OUT_M_real_TDATA sc_out sc_lv 32 signal 3 } 
	{ data_OUT_M_imag_TDATA sc_out sc_lv 32 signal 4 } 
	{ mag_OUT_TDATA sc_out sc_lv 32 signal 5 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ data_IN_M_real_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_IN_M_real_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_IN_M_imag_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_IN_M_imag_TREADY sc_out sc_logic 1 inacc 1 } 
	{ mag_OUT_TVALID sc_out sc_logic 1 outvld 5 } 
	{ mag_OUT_TREADY sc_in sc_logic 1 outacc 5 } 
	{ data_OUT_M_real_TVALID sc_out sc_logic 1 outvld 3 } 
	{ data_OUT_M_real_TREADY sc_in sc_logic 1 outacc 3 } 
	{ data_OUT_M_imag_TVALID sc_out sc_logic 1 outvld 4 } 
	{ data_OUT_M_imag_TREADY sc_in sc_logic 1 outacc 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"win_mode","role":"data","value":"16"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_IN_M_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_real", "role": "TDATA" }} , 
 	{ "name": "data_IN_M_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN_M_imag", "role": "TDATA" }} , 
 	{ "name": "data_OUT_M_real_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_real", "role": "TDATA" }} , 
 	{ "name": "data_OUT_M_imag_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT_M_imag", "role": "TDATA" }} , 
 	{ "name": "mag_OUT_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mag_OUT", "role": "TDATA" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "data_IN_M_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN_M_real", "role": "TVALID" }} , 
 	{ "name": "data_IN_M_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN_M_real", "role": "TREADY" }} , 
 	{ "name": "data_IN_M_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN_M_imag", "role": "TVALID" }} , 
 	{ "name": "data_IN_M_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN_M_imag", "role": "TREADY" }} , 
 	{ "name": "mag_OUT_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mag_OUT", "role": "TVALID" }} , 
 	{ "name": "mag_OUT_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mag_OUT", "role": "TREADY" }} , 
 	{ "name": "data_OUT_M_real_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT_M_real", "role": "TVALID" }} , 
 	{ "name": "data_OUT_M_real_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT_M_real", "role": "TREADY" }} , 
 	{ "name": "data_OUT_M_imag_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT_M_imag", "role": "TVALID" }} , 
 	{ "name": "data_OUT_M_imag_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT_M_imag", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "23", "25", "38", "51", "64", "77", "90", "103", "116", "129", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2502", "EstimateLatencyMax" : "2502",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "FFT_entry3_U0", "ReadyCount" : "FFT_entry3_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "Block_codeRepl116_pr_U0", "ReadyCount" : "Block_codeRepl116_pr_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "129", "Name" : "Block_codeRepl11627_U0"}],
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Block_codeRepl116_pr_U0", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_IN_M_imag", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Block_codeRepl116_pr_U0", "Port" : "data_IN_M_imag"}]},
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_OUT_M_real", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "data_OUT_M_real"}]},
			{"Name" : "data_OUT_M_imag", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "data_OUT_M_imag"}]},
			{"Name" : "mag_OUT", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "mag_OUT"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "xin_M_imag"},
					{"ID" : "3", "SubInstance" : "Block_codeRepl116_pr_U0", "Port" : "xin_M_imag"}]},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "xin_M_real"},
					{"ID" : "3", "SubInstance" : "Block_codeRepl116_pr_U0", "Port" : "xin_M_real"}]},
			{"Name" : "Blackman256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "Blackman256"}]},
			{"Name" : "Hamm256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "Hamm256"}]},
			{"Name" : "Hann256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "Hann256"}]},
			{"Name" : "win_IN_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "win_IN_M_real"},
					{"ID" : "23", "SubInstance" : "bitreverse_U0", "Port" : "win_IN_M_real"}]},
			{"Name" : "win_IN_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "mult_window_U0", "Port" : "win_IN_M_imag"},
					{"ID" : "23", "SubInstance" : "bitreverse_U0", "Port" : "win_IN_M_imag"}]},
			{"Name" : "rev_256", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "bitreverse_U0", "Port" : "rev_256"}]},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "data_IN_M_real"},
					{"ID" : "23", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_real"}]},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "data_IN_M_imag"},
					{"ID" : "23", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_imag"}]},
			{"Name" : "W_M_real142", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "W_M_real142"}]},
			{"Name" : "W_M_imag135", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "W_M_imag135"}]},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT1_M_imag"},
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT1_M_imag"}]},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT1_M_real"},
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT1_M_real"}]},
			{"Name" : "W_M_real141", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "W_M_real141"}]},
			{"Name" : "W_M_imag134", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "W_M_imag134"}]},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT2_M_imag"},
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "data_OUT2_M_imag"}]},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT2_M_real"},
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "data_OUT2_M_real"}]},
			{"Name" : "W_M_real140", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "W_M_real140"}]},
			{"Name" : "W_M_imag133", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "W_M_imag133"}]},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "data_OUT3_M_imag"},
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "data_OUT3_M_imag"}]},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "data_OUT3_M_real"},
					{"ID" : "51", "SubInstance" : "FFT0123_U0", "Port" : "data_OUT3_M_real"}]},
			{"Name" : "W_M_real139", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "W_M_real139"}]},
			{"Name" : "W_M_imag132", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "W_M_imag132"}]},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "data_OUT4_M_imag"},
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "data_OUT4_M_imag"}]},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "data_OUT4_M_real"},
					{"ID" : "64", "SubInstance" : "FFT0124_U0", "Port" : "data_OUT4_M_real"}]},
			{"Name" : "W_M_real138", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "W_M_real138"}]},
			{"Name" : "W_M_imag131", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "W_M_imag131"}]},
			{"Name" : "data_OUT5_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "data_OUT5_M_imag"},
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "data_OUT5_M_imag"}]},
			{"Name" : "data_OUT5_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "data_OUT5_M_real"},
					{"ID" : "77", "SubInstance" : "FFT0125_U0", "Port" : "data_OUT5_M_real"}]},
			{"Name" : "W_M_real137", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "W_M_real137"}]},
			{"Name" : "W_M_imag130", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "W_M_imag130"}]},
			{"Name" : "data_OUT6_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "data_OUT6_M_imag"},
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "data_OUT6_M_imag"}]},
			{"Name" : "data_OUT6_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "data_OUT6_M_real"},
					{"ID" : "90", "SubInstance" : "FFT0126_U0", "Port" : "data_OUT6_M_real"}]},
			{"Name" : "W_M_real136", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "W_M_real136"}]},
			{"Name" : "W_M_imag129", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "W_M_imag129"}]},
			{"Name" : "data_OUT7_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "data_OUT7_M_imag"},
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "data_OUT7_M_imag"}]},
			{"Name" : "data_OUT7_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "103", "SubInstance" : "FFT0127_U0", "Port" : "data_OUT7_M_real"},
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "data_OUT7_M_real"}]},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "W_M_real"}]},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "W_M_imag"}]},
			{"Name" : "data_OUT_FFT_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "data_OUT_FFT_M_real"},
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "data_OUT_FFT_M_real"}]},
			{"Name" : "data_OUT_FFT_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "FFT0128_U0", "Port" : "data_OUT_FFT_M_imag"},
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "data_OUT_FFT_M_imag"}]},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "Block_codeRepl11627_U0", "Port" : "xout_mag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_entry3_U0", "Parent" : "0",
		"CDFG" : "FFT_entry3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "win_mode_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "win_mode_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl116_pr_U0", "Parent" : "0", "Child" : ["4", "5"],
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
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "140"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "141"},
			{"Name" : "win_mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "win_mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "win_mode_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "win_mode_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl116_pr_U0.regslice_both_data_IN_M_real_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl116_pr_U0.regslice_both_data_IN_M_imag_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mult_window_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "mult_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "270", "EstimateLatencyMax" : "270",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "win_mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "win_mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Blackman256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hamm256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hann256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "141"},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "140"},
			{"Name" : "win_IN_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "142"},
			{"Name" : "win_IN_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "143"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Blackman256_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Hamm256_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Hann256_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.window_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fsub_32ns_32ncud_U10", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fadd_32ns_32ndEe_U11", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fsub_32ns_32ncud_U12", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fadd_32ns_32ndEe_U13", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U14", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U15", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U16", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U17", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U18", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U19", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U20", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U21", "Parent" : "6"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitreverse_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "bitreverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "win_IN_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "143"},
			{"Name" : "win_IN_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "142"},
			{"Name" : "rev_256", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "144"},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "145"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bitreverse_U0.rev_256_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0", "Parent" : "0", "Child" : ["26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "FFT0121",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "144"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "145"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "146"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "147"},
			{"Name" : "W_M_real142", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag135", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.W_M_real142_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.W_M_imag135_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U39", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U40", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U41", "Parent" : "25"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U42", "Parent" : "25"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U43", "Parent" : "25"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U44", "Parent" : "25"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U45", "Parent" : "25"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U46", "Parent" : "25"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U47", "Parent" : "25"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U48", "Parent" : "25"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "FFT0122",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "148"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "149"},
			{"Name" : "W_M_real141", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag134", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "147"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "25", "DependentChan" : "146"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.W_M_real141_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.W_M_imag134_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U55", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U56", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U57", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U58", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U59", "Parent" : "38"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U60", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U61", "Parent" : "38"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U62", "Parent" : "38"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U63", "Parent" : "38"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U64", "Parent" : "38"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "FFT0123",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "150"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "151"},
			{"Name" : "W_M_real140", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag133", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "149"},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "148"}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.W_M_real140_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.W_M_imag133_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fsub_32ns_32ncud_U69", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fadd_32ns_32ndEe_U70", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fsub_32ns_32ncud_U71", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fsub_32ns_32ncud_U72", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fadd_32ns_32ndEe_U73", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fadd_32ns_32ndEe_U74", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fmul_32ns_32neOg_U75", "Parent" : "51"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fmul_32ns_32neOg_U76", "Parent" : "51"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fmul_32ns_32neOg_U77", "Parent" : "51"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0123_U0.FFT_fmul_32ns_32neOg_U78", "Parent" : "51"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0", "Parent" : "0", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "FFT0124",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "152"},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "153"},
			{"Name" : "W_M_real139", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag132", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "151"},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "150"}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.W_M_real139_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.W_M_imag132_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fsub_32ns_32ncud_U83", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fadd_32ns_32ndEe_U84", "Parent" : "64"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fsub_32ns_32ncud_U85", "Parent" : "64"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fsub_32ns_32ncud_U86", "Parent" : "64"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fadd_32ns_32ndEe_U87", "Parent" : "64"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fadd_32ns_32ndEe_U88", "Parent" : "64"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fmul_32ns_32neOg_U89", "Parent" : "64"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fmul_32ns_32neOg_U90", "Parent" : "64"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fmul_32ns_32neOg_U91", "Parent" : "64"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0124_U0.FFT_fmul_32ns_32neOg_U92", "Parent" : "64"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0", "Parent" : "0", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "FFT0125",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT5_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "154"},
			{"Name" : "data_OUT5_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "155"},
			{"Name" : "W_M_real138", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag131", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "153"},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "152"}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.W_M_real138_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.W_M_imag131_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fsub_32ns_32ncud_U97", "Parent" : "77"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fadd_32ns_32ndEe_U98", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fsub_32ns_32ncud_U99", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fsub_32ns_32ncud_U100", "Parent" : "77"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fadd_32ns_32ndEe_U101", "Parent" : "77"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fadd_32ns_32ndEe_U102", "Parent" : "77"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fmul_32ns_32neOg_U103", "Parent" : "77"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fmul_32ns_32neOg_U104", "Parent" : "77"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fmul_32ns_32neOg_U105", "Parent" : "77"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0125_U0.FFT_fmul_32ns_32neOg_U106", "Parent" : "77"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0", "Parent" : "0", "Child" : ["91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "FFT0126",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT6_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "156"},
			{"Name" : "data_OUT6_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "103", "DependentChan" : "157"},
			{"Name" : "W_M_real137", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag130", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT5_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "155"},
			{"Name" : "data_OUT5_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "154"}]},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.W_M_real137_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.W_M_imag130_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fsub_32ns_32ncud_U111", "Parent" : "90"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fadd_32ns_32ndEe_U112", "Parent" : "90"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fsub_32ns_32ncud_U113", "Parent" : "90"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fsub_32ns_32ncud_U114", "Parent" : "90"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fadd_32ns_32ndEe_U115", "Parent" : "90"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fadd_32ns_32ndEe_U116", "Parent" : "90"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fmul_32ns_32neOg_U117", "Parent" : "90"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fmul_32ns_32neOg_U118", "Parent" : "90"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fmul_32ns_32neOg_U119", "Parent" : "90"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0126_U0.FFT_fmul_32ns_32neOg_U120", "Parent" : "90"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0", "Parent" : "0", "Child" : ["104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115"],
		"CDFG" : "FFT0127",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT7_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "158"},
			{"Name" : "data_OUT7_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "159"},
			{"Name" : "W_M_real136", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag129", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT6_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "157"},
			{"Name" : "data_OUT6_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "156"}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.W_M_real136_U", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.W_M_imag129_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fsub_32ns_32ncud_U125", "Parent" : "103"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fadd_32ns_32ndEe_U126", "Parent" : "103"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fsub_32ns_32ncud_U127", "Parent" : "103"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fsub_32ns_32ncud_U128", "Parent" : "103"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fadd_32ns_32ndEe_U129", "Parent" : "103"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fadd_32ns_32ndEe_U130", "Parent" : "103"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fmul_32ns_32neOg_U131", "Parent" : "103"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fmul_32ns_32neOg_U132", "Parent" : "103"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fmul_32ns_32neOg_U133", "Parent" : "103"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0127_U0.FFT_fmul_32ns_32neOg_U134", "Parent" : "103"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0", "Parent" : "0", "Child" : ["117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "FFT0128",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT7_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "159"},
			{"Name" : "data_OUT7_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "103", "DependentChan" : "158"},
			{"Name" : "data_OUT_FFT_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "160"},
			{"Name" : "data_OUT_FFT_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "129", "DependentChan" : "161"}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.W_M_real_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.W_M_imag_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fsub_32ns_32ncud_U139", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fadd_32ns_32ndEe_U140", "Parent" : "116"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fsub_32ns_32ncud_U141", "Parent" : "116"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fsub_32ns_32ncud_U142", "Parent" : "116"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fadd_32ns_32ndEe_U143", "Parent" : "116"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fadd_32ns_32ndEe_U144", "Parent" : "116"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fmul_32ns_32neOg_U145", "Parent" : "116"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fmul_32ns_32neOg_U146", "Parent" : "116"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fmul_32ns_32neOg_U147", "Parent" : "116"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0128_U0.FFT_fmul_32ns_32neOg_U148", "Parent" : "116"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0", "Parent" : "0", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "Block_codeRepl11627_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "546", "EstimateLatencyMax" : "546",
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
			{"Name" : "data_OUT_FFT_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "161"},
			{"Name" : "data_OUT_FFT_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "160"},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.xout_mag_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_fadd_32ns_32ndEe_U153", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_fmul_32ns_32neOg_U154", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_fmul_32ns_32neOg_U155", "Parent" : "129"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_fmul_32ns_32neOg_U156", "Parent" : "129"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_fmul_32ns_32neOg_U157", "Parent" : "129"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.FFT_flog_32ns_32ng8j_U158", "Parent" : "129"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.regslice_both_mag_OUT_U", "Parent" : "129"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.regslice_both_data_OUT_M_real_U", "Parent" : "129"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11627_U0.regslice_both_data_OUT_M_imag_U", "Parent" : "129"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_imag_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_real_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_IN_M_real_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_IN_M_imag_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_real_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_imag_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_imag_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_real_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_imag_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_real_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_imag_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_real_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_imag_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_real_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT5_M_imag_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT5_M_real_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT6_M_imag_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT6_M_real_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT7_M_imag_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT7_M_real_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT_FFT_M_real_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT_FFT_M_imag_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_mode_c1_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_mode_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		data_IN_M_real {Type I LastRead 255 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 255 FirstWrite -1}
		win_mode {Type I LastRead 0 FirstWrite -1}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 3}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 3}
		mag_OUT {Type O LastRead -1 FirstWrite 3}
		xin_M_imag {Type IO LastRead -1 FirstWrite -1}
		xin_M_real {Type IO LastRead -1 FirstWrite -1}
		Blackman256 {Type I LastRead -1 FirstWrite -1}
		Hamm256 {Type I LastRead -1 FirstWrite -1}
		Hann256 {Type I LastRead -1 FirstWrite -1}
		win_IN_M_real {Type IO LastRead -1 FirstWrite -1}
		win_IN_M_imag {Type IO LastRead -1 FirstWrite -1}
		rev_256 {Type I LastRead -1 FirstWrite -1}
		data_OUT0_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_imag {Type IO LastRead -1 FirstWrite -1}
		W_M_real142 {Type I LastRead -1 FirstWrite -1}
		W_M_imag135 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real141 {Type I LastRead -1 FirstWrite -1}
		W_M_imag134 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real140 {Type I LastRead -1 FirstWrite -1}
		W_M_imag133 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real139 {Type I LastRead -1 FirstWrite -1}
		W_M_imag132 {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real138 {Type I LastRead -1 FirstWrite -1}
		W_M_imag131 {Type I LastRead -1 FirstWrite -1}
		data_OUT5_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT5_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real137 {Type I LastRead -1 FirstWrite -1}
		W_M_imag130 {Type I LastRead -1 FirstWrite -1}
		data_OUT6_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT6_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real136 {Type I LastRead -1 FirstWrite -1}
		W_M_imag129 {Type I LastRead -1 FirstWrite -1}
		data_OUT7_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT7_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUT_FFT_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT_FFT_M_imag {Type IO LastRead -1 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}
	FFT_entry3 {
		win_mode {Type I LastRead 0 FirstWrite -1}
		win_mode_out {Type O LastRead -1 FirstWrite 0}}
	Block_codeRepl116_pr {
		data_IN_M_real {Type I LastRead 255 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 255 FirstWrite -1}
		xin_M_imag {Type O LastRead -1 FirstWrite 0}
		xin_M_real {Type O LastRead -1 FirstWrite 0}
		win_mode {Type I LastRead 0 FirstWrite -1}
		win_mode_out {Type O LastRead -1 FirstWrite 0}}
	mult_window {
		win_mode {Type I LastRead 0 FirstWrite -1}
		Blackman256 {Type I LastRead -1 FirstWrite -1}
		Hamm256 {Type I LastRead -1 FirstWrite -1}
		Hann256 {Type I LastRead -1 FirstWrite -1}
		xin_M_real {Type I LastRead 4 FirstWrite -1}
		xin_M_imag {Type I LastRead 4 FirstWrite -1}
		win_IN_M_real {Type O LastRead -1 FirstWrite 14}
		win_IN_M_imag {Type O LastRead -1 FirstWrite 14}}
	bitreverse {
		win_IN_M_imag {Type I LastRead 2 FirstWrite -1}
		win_IN_M_real {Type I LastRead 2 FirstWrite -1}
		rev_256 {Type I LastRead -1 FirstWrite -1}
		data_OUT0_M_real {Type O LastRead -1 FirstWrite 3}
		data_OUT0_M_imag {Type O LastRead -1 FirstWrite 3}}
	FFT0121 {
		data_IN_M_real {Type I LastRead 10 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT1_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real142 {Type I LastRead -1 FirstWrite -1}
		W_M_imag135 {Type I LastRead -1 FirstWrite -1}}
	FFT0122 {
		data_OUT2_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT2_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real141 {Type I LastRead -1 FirstWrite -1}
		W_M_imag134 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0123 {
		data_OUT3_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT3_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real140 {Type I LastRead -1 FirstWrite -1}
		W_M_imag133 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT2_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0124 {
		data_OUT4_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT4_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real139 {Type I LastRead -1 FirstWrite -1}
		W_M_imag132 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT3_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0125 {
		data_OUT5_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT5_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real138 {Type I LastRead -1 FirstWrite -1}
		W_M_imag131 {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT4_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0126 {
		data_OUT6_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT6_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real137 {Type I LastRead -1 FirstWrite -1}
		W_M_imag130 {Type I LastRead -1 FirstWrite -1}
		data_OUT5_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT5_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0127 {
		data_OUT7_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT7_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real136 {Type I LastRead -1 FirstWrite -1}
		W_M_imag129 {Type I LastRead -1 FirstWrite -1}
		data_OUT6_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT6_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0128 {
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUT7_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT7_M_imag {Type I LastRead 10 FirstWrite -1}
		data_OUT_FFT_M_real {Type O LastRead -1 FirstWrite 17}
		data_OUT_FFT_M_imag {Type O LastRead -1 FirstWrite 17}}
	Block_codeRepl11627_s {
		mag_OUT {Type O LastRead -1 FirstWrite 3}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 3}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 3}
		data_OUT_FFT_M_imag {Type I LastRead 257 FirstWrite -1}
		data_OUT_FFT_M_real {Type I LastRead 257 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2502", "Max" : "2502"}
	, {"Name" : "Interval", "Min" : "547", "Max" : "547"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_IN_M_real { axis {  { data_IN_M_real_TDATA in_data 0 32 }  { data_IN_M_real_TVALID in_vld 0 1 }  { data_IN_M_real_TREADY in_acc 1 1 } } }
	data_IN_M_imag { axis {  { data_IN_M_imag_TDATA in_data 0 32 }  { data_IN_M_imag_TVALID in_vld 0 1 }  { data_IN_M_imag_TREADY in_acc 1 1 } } }
	data_OUT_M_real { axis {  { data_OUT_M_real_TDATA out_data 1 32 }  { data_OUT_M_real_TVALID out_vld 1 1 }  { data_OUT_M_real_TREADY out_acc 0 1 } } }
	data_OUT_M_imag { axis {  { data_OUT_M_imag_TDATA out_data 1 32 }  { data_OUT_M_imag_TVALID out_vld 1 1 }  { data_OUT_M_imag_TREADY out_acc 0 1 } } }
	mag_OUT { axis {  { mag_OUT_TDATA out_data 1 32 }  { mag_OUT_TVALID out_vld 1 1 }  { mag_OUT_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
