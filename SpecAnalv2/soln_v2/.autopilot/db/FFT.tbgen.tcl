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
	{ data_IN_M_real float 32 regular {axi_slave 0}  }
	{ data_IN_M_imag float 32 regular {axi_slave 0}  }
	{ data_OUT_M_real float 32 regular {axi_slave 1}  }
	{ data_OUT_M_imag float 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN_M_real", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "data_IN_M_imag", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":383}} , 
 	{ "Name" : "data_OUT_M_real", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":384}, "offset_end" : {"out":511}} , 
 	{ "Name" : "data_OUT_M_imag", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":512}, "offset_end" : {"out":639}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"FFT","role":"start","value":"0","valid_bit":"0"},{"name":"FFT","role":"continue","value":"0","valid_bit":"4"},{"name":"FFT","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_IN_M_real","role":"data","value":"128"},{"name":"data_IN_M_imag","role":"data","value":"256"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"FFT","role":"start","value":"0","valid_bit":"0"},{"name":"FFT","role":"done","value":"0","valid_bit":"1"},{"name":"FFT","role":"idle","value":"0","valid_bit":"2"},{"name":"FFT","role":"ready","value":"0","valid_bit":"3"},{"name":"FFT","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_OUT_M_real","role":"data","value":"384"},{"name":"data_OUT_M_imag","role":"data","value":"512"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "18", "31", "44", "57", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "271", "EstimateLatencyMax" : "271",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_codeRepl113_pr_U0"}],
		"OutputProcess" : [
			{"ID" : "70", "Name" : "Block_codeRepl11320_U0"}],
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_codeRepl113_pr_U0", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_codeRepl113_pr_U0", "Port" : "data_IN_M_imag"}]},
			{"Name" : "data_OUT_M_real", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "Block_codeRepl11320_U0", "Port" : "data_OUT_M_real"}]},
			{"Name" : "data_OUT_M_imag", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "Block_codeRepl11320_U0", "Port" : "data_OUT_M_imag"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_codeRepl113_pr_U0", "Port" : "xin_M_imag"},
					{"ID" : "3", "SubInstance" : "bitreverse_U0", "Port" : "xin_M_imag"}]},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "Block_codeRepl113_pr_U0", "Port" : "xin_M_real"},
					{"ID" : "3", "SubInstance" : "bitreverse_U0", "Port" : "xin_M_real"}]},
			{"Name" : "rev_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "bitreverse_U0", "Port" : "rev_32"}]},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "data_IN_M_real"},
					{"ID" : "3", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_real"}]},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "data_IN_M_imag"},
					{"ID" : "3", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_imag"}]},
			{"Name" : "W_M_real65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "W_M_real65"}]},
			{"Name" : "W_M_imag61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "W_M_imag61"}]},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "data_OUT1_M_imag"},
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "data_OUT1_M_imag"}]},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "FFT053_U0", "Port" : "data_OUT1_M_real"},
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "data_OUT1_M_real"}]},
			{"Name" : "W_M_real64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "W_M_real64"}]},
			{"Name" : "W_M_imag60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "W_M_imag60"}]},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "data_OUT2_M_imag"},
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "data_OUT2_M_imag"}]},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "FFT054_U0", "Port" : "data_OUT2_M_real"},
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "data_OUT2_M_real"}]},
			{"Name" : "W_M_real63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "W_M_real63"}]},
			{"Name" : "W_M_imag59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "W_M_imag59"}]},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "data_OUT3_M_imag"},
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "data_OUT3_M_imag"}]},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "FFT055_U0", "Port" : "data_OUT3_M_real"},
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "data_OUT3_M_real"}]},
			{"Name" : "W_M_real62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "W_M_real62"}]},
			{"Name" : "W_M_imag58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "W_M_imag58"}]},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "data_OUT4_M_imag"},
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "data_OUT4_M_imag"}]},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "data_OUT4_M_real"},
					{"ID" : "44", "SubInstance" : "FFT056_U0", "Port" : "data_OUT4_M_real"}]},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "W_M_real"}]},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "W_M_imag"}]},
			{"Name" : "xout_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "xout_M_real"},
					{"ID" : "70", "SubInstance" : "Block_codeRepl11320_U0", "Port" : "xout_M_real"}]},
			{"Name" : "xout_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "FFT057_U0", "Port" : "xout_M_imag"},
					{"ID" : "70", "SubInstance" : "Block_codeRepl11320_U0", "Port" : "xout_M_imag"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl113_pr_U0", "Parent" : "0",
		"CDFG" : "Block_codeRepl113_pr",
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
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "71"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "72"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitreverse_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "bitreverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rev_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "72"},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "73"},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "71"},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "74"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bitreverse_U0.rev_32_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT053_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "FFT053",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "73"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "74"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "75"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "76"},
			{"Name" : "W_M_real65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag61", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.W_M_real65_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.W_M_imag61_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fsub_32ns_32nbkb_U10", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fadd_32ns_32ncud_U11", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fsub_32ns_32nbkb_U12", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fsub_32ns_32nbkb_U13", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fadd_32ns_32ncud_U14", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fadd_32ns_32ncud_U15", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fmul_32ns_32ndEe_U16", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fmul_32ns_32ndEe_U17", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fmul_32ns_32ndEe_U18", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT053_U0.FFT_fmul_32ns_32ndEe_U19", "Parent" : "5"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT054_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "FFT054",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "77"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "31", "DependentChan" : "78"},
			{"Name" : "W_M_real64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "76"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "75"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.W_M_real64_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.W_M_imag60_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fsub_32ns_32nbkb_U29", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fadd_32ns_32ncud_U30", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fsub_32ns_32nbkb_U31", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fsub_32ns_32nbkb_U32", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fadd_32ns_32ncud_U33", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fadd_32ns_32ncud_U34", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fmul_32ns_32ndEe_U35", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fmul_32ns_32ndEe_U36", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fmul_32ns_32ndEe_U37", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT054_U0.FFT_fmul_32ns_32ndEe_U38", "Parent" : "18"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT055_U0", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "FFT055",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "79"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "44", "DependentChan" : "80"},
			{"Name" : "W_M_real63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "78"},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "77"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.W_M_real63_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.W_M_imag59_U", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fsub_32ns_32nbkb_U43", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fadd_32ns_32ncud_U44", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fsub_32ns_32nbkb_U45", "Parent" : "31"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fsub_32ns_32nbkb_U46", "Parent" : "31"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fadd_32ns_32ncud_U47", "Parent" : "31"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fadd_32ns_32ncud_U48", "Parent" : "31"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fmul_32ns_32ndEe_U49", "Parent" : "31"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fmul_32ns_32ndEe_U50", "Parent" : "31"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fmul_32ns_32ndEe_U51", "Parent" : "31"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT055_U0.FFT_fmul_32ns_32ndEe_U52", "Parent" : "31"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT056_U0", "Parent" : "0", "Child" : ["45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "FFT056",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "81"},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "82"},
			{"Name" : "W_M_real62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "80"},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "31", "DependentChan" : "79"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.W_M_real62_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.W_M_imag58_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fsub_32ns_32nbkb_U57", "Parent" : "44"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fadd_32ns_32ncud_U58", "Parent" : "44"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fsub_32ns_32nbkb_U59", "Parent" : "44"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fsub_32ns_32nbkb_U60", "Parent" : "44"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fadd_32ns_32ncud_U61", "Parent" : "44"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fadd_32ns_32ncud_U62", "Parent" : "44"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fmul_32ns_32ndEe_U63", "Parent" : "44"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fmul_32ns_32ndEe_U64", "Parent" : "44"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fmul_32ns_32ndEe_U65", "Parent" : "44"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT056_U0.FFT_fmul_32ns_32ndEe_U66", "Parent" : "44"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT057_U0", "Parent" : "0", "Child" : ["58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "FFT057",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "82"},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "44", "DependentChan" : "81"},
			{"Name" : "xout_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "83"},
			{"Name" : "xout_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "84"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.W_M_real_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.W_M_imag_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fsub_32ns_32nbkb_U71", "Parent" : "57"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fadd_32ns_32ncud_U72", "Parent" : "57"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fsub_32ns_32nbkb_U73", "Parent" : "57"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fsub_32ns_32nbkb_U74", "Parent" : "57"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fadd_32ns_32ncud_U75", "Parent" : "57"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fadd_32ns_32ncud_U76", "Parent" : "57"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fmul_32ns_32ndEe_U77", "Parent" : "57"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fmul_32ns_32ndEe_U78", "Parent" : "57"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fmul_32ns_32ndEe_U79", "Parent" : "57"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT057_U0.FFT_fmul_32ns_32ndEe_U80", "Parent" : "57"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl11320_U0", "Parent" : "0",
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
			{"Name" : "xout_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "84"},
			{"Name" : "xout_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "83"}]},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_imag_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_real_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_real_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_imag_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_imag_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_real_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_imag_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_real_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_imag_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_real_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_imag_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_real_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_M_real_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_M_imag_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		data_IN_M_real {Type I LastRead 31 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 31 FirstWrite -1}
		data_OUT_M_real {Type O LastRead -1 FirstWrite 1}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 1}
		xin_M_imag {Type IO LastRead -1 FirstWrite -1}
		xin_M_real {Type IO LastRead -1 FirstWrite -1}
		rev_32 {Type I LastRead -1 FirstWrite -1}
		data_OUT0_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_imag {Type IO LastRead -1 FirstWrite -1}
		W_M_real65 {Type I LastRead -1 FirstWrite -1}
		W_M_imag61 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real64 {Type I LastRead -1 FirstWrite -1}
		W_M_imag60 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real63 {Type I LastRead -1 FirstWrite -1}
		W_M_imag59 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real62 {Type I LastRead -1 FirstWrite -1}
		W_M_imag58 {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		xout_M_real {Type IO LastRead -1 FirstWrite -1}
		xout_M_imag {Type IO LastRead -1 FirstWrite -1}}
	Block_codeRepl113_pr {
		data_IN_M_real {Type I LastRead 31 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 31 FirstWrite -1}
		xin_M_imag {Type O LastRead -1 FirstWrite 1}
		xin_M_real {Type O LastRead -1 FirstWrite 1}}
	bitreverse {
		rev_32 {Type I LastRead -1 FirstWrite -1}
		xin_M_real {Type I LastRead 2 FirstWrite -1}
		data_OUT0_M_real {Type O LastRead -1 FirstWrite 3}
		xin_M_imag {Type I LastRead 2 FirstWrite -1}
		data_OUT0_M_imag {Type O LastRead -1 FirstWrite 3}}
	FFT053 {
		data_IN_M_real {Type I LastRead 10 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT1_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real65 {Type I LastRead -1 FirstWrite -1}
		W_M_imag61 {Type I LastRead -1 FirstWrite -1}}
	FFT054 {
		data_OUT2_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT2_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real64 {Type I LastRead -1 FirstWrite -1}
		W_M_imag60 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT055 {
		data_OUT3_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT3_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real63 {Type I LastRead -1 FirstWrite -1}
		W_M_imag59 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT2_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT056 {
		data_OUT4_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT4_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real62 {Type I LastRead -1 FirstWrite -1}
		W_M_imag58 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT3_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT057 {
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT4_M_imag {Type I LastRead 10 FirstWrite -1}
		xout_M_real {Type O LastRead -1 FirstWrite 17}
		xout_M_imag {Type O LastRead -1 FirstWrite 17}}
	Block_codeRepl11320_s {
		data_OUT_M_real {Type O LastRead -1 FirstWrite 1}
		data_OUT_M_imag {Type O LastRead -1 FirstWrite 1}
		xout_M_imag {Type I LastRead 31 FirstWrite -1}
		xout_M_real {Type I LastRead 31 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "271", "Max" : "271"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
