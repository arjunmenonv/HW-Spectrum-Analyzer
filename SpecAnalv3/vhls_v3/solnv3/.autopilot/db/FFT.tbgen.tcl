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
	{ data_IN int 64 regular {axi_s 0 volatile  { data_IN Data } }  }
	{ win_mode int 8 regular {axi_slave 0}  }
	{ data_OUT int 64 regular {axi_s 1 volatile  { data_OUT Data } }  }
	{ mag_OUT float 32 regular {axi_s 1 volatile  { mag_OUT Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_IN._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "data_IN._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "win_mode", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "win_mode","cData": "char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "data_OUT", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_OUT._M_real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "data_OUT._M_imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "mag_OUT", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mag_OUT","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
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
	{ data_IN_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_OUT_TDATA sc_out sc_lv 64 signal 2 } 
	{ mag_OUT_TDATA sc_out sc_lv 32 signal 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ data_IN_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_IN_TREADY sc_out sc_logic 1 inacc 0 } 
	{ mag_OUT_TVALID sc_out sc_logic 1 outvld 3 } 
	{ mag_OUT_TREADY sc_in sc_logic 1 outacc 3 } 
	{ data_OUT_TVALID sc_out sc_logic 1 outvld 2 } 
	{ data_OUT_TREADY sc_in sc_logic 1 outacc 2 } 
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
 	{ "name": "data_IN_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_IN", "role": "TDATA" }} , 
 	{ "name": "data_OUT_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_OUT", "role": "TDATA" }} , 
 	{ "name": "mag_OUT_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mag_OUT", "role": "TDATA" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "data_IN_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN", "role": "TVALID" }} , 
 	{ "name": "data_IN_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN", "role": "TREADY" }} , 
 	{ "name": "mag_OUT_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mag_OUT", "role": "TVALID" }} , 
 	{ "name": "mag_OUT_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mag_OUT", "role": "TREADY" }} , 
 	{ "name": "data_OUT_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT", "role": "TVALID" }} , 
 	{ "name": "data_OUT_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "22", "23", "36", "49", "62", "75", "88", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "365", "EstimateLatencyMax" : "365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "FFT_entry3_U0", "ReadyCount" : "FFT_entry3_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "Block_codeRepl124_pr_U0", "ReadyCount" : "Block_codeRepl124_pr_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "88", "Name" : "Block_codeRepl12432_U0"}],
		"Port" : [
			{"Name" : "data_IN", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "Block_codeRepl124_pr_U0", "Port" : "data_IN"}]},
			{"Name" : "win_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_OUT", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "Block_codeRepl12432_U0", "Port" : "data_OUT"}]},
			{"Name" : "mag_OUT", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "Block_codeRepl12432_U0", "Port" : "mag_OUT"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "xin_M_imag"},
					{"ID" : "3", "SubInstance" : "Block_codeRepl124_pr_U0", "Port" : "xin_M_imag"}]},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "xin_M_real"},
					{"ID" : "3", "SubInstance" : "Block_codeRepl124_pr_U0", "Port" : "xin_M_real"}]},
			{"Name" : "Blackman32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "Blackman32"}]},
			{"Name" : "Hamm32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "Hamm32"}]},
			{"Name" : "Hann32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "Hann32"}]},
			{"Name" : "prod_IN_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "prod_IN_M_real"},
					{"ID" : "22", "SubInstance" : "bitreverse_U0", "Port" : "prod_IN_M_real"}]},
			{"Name" : "prod_IN_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "mult_window_U0", "Port" : "prod_IN_M_imag"},
					{"ID" : "22", "SubInstance" : "bitreverse_U0", "Port" : "prod_IN_M_imag"}]},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_real"},
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "data_IN_M_real"}]},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "bitreverse_U0", "Port" : "data_OUT0_M_imag"},
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "data_IN_M_imag"}]},
			{"Name" : "W_M_real130", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "W_M_real130"}]},
			{"Name" : "W_M_imag126", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "W_M_imag126"}]},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "data_OUT1_M_imag"},
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "data_OUT1_M_imag"}]},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "data_OUT1_M_real"},
					{"ID" : "23", "SubInstance" : "FFT0118_U0", "Port" : "data_OUT1_M_real"}]},
			{"Name" : "W_M_real129", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "W_M_real129"}]},
			{"Name" : "W_M_imag125", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "W_M_imag125"}]},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "data_OUT2_M_imag"},
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "data_OUT2_M_imag"}]},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "FFT0119_U0", "Port" : "data_OUT2_M_real"},
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "data_OUT2_M_real"}]},
			{"Name" : "W_M_real128", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "W_M_real128"}]},
			{"Name" : "W_M_imag124", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "W_M_imag124"}]},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "data_OUT3_M_imag"},
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT3_M_imag"}]},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "FFT0120_U0", "Port" : "data_OUT3_M_real"},
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT3_M_real"}]},
			{"Name" : "W_M_real127", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "W_M_real127"}]},
			{"Name" : "W_M_imag123", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "W_M_imag123"}]},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT4_M_imag"},
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT4_M_imag"}]},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "data_OUT4_M_real"},
					{"ID" : "62", "SubInstance" : "FFT0121_U0", "Port" : "data_OUT4_M_real"}]},
			{"Name" : "W_M_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "W_M_real"}]},
			{"Name" : "W_M_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "W_M_imag"}]},
			{"Name" : "data_OUTfft_M_real", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "data_OUTfft_M_real"},
					{"ID" : "88", "SubInstance" : "Block_codeRepl12432_U0", "Port" : "data_OUTfft_M_real"}]},
			{"Name" : "data_OUTfft_M_imag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "FFT0122_U0", "Port" : "data_OUTfft_M_imag"},
					{"ID" : "88", "SubInstance" : "Block_codeRepl12432_U0", "Port" : "data_OUTfft_M_imag"}]},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "Block_codeRepl12432_U0", "Port" : "xout_mag"}]}]},
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
			{"Name" : "win_mode_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "win_mode_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl124_pr_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "Block_codeRepl124_pr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_IN", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_IN_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "98"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "99"},
			{"Name" : "win_mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "win_mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "win_mode_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "win_mode_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl124_pr_U0.regslice_both_data_IN_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mult_window_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "mult_window",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "win_mode", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "win_mode_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Blackman32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hamm32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Hann32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "99"},
			{"Name" : "xin_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "98"},
			{"Name" : "prod_IN_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "100"},
			{"Name" : "prod_IN_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "101"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Blackman32_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Hamm32_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.Hann32_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.window_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fsub_32ns_32ncud_U9", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fadd_32ns_32ndEe_U10", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fsub_32ns_32ncud_U11", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fadd_32ns_32ndEe_U12", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U13", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U14", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U15", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U16", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U17", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U18", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U19", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mult_window_U0.FFT_fmul_32ns_32neOg_U20", "Parent" : "5"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitreverse_U0", "Parent" : "0",
		"CDFG" : "bitreverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod_IN_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "101"},
			{"Name" : "prod_IN_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "100"},
			{"Name" : "data_OUT0_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "102"},
			{"Name" : "data_OUT0_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "103"}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "FFT0118",
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
			{"Name" : "data_IN_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "102"},
			{"Name" : "data_IN_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "103"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "104"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "105"},
			{"Name" : "W_M_real130", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag126", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.W_M_real130_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.W_M_imag126_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fsub_32ns_32ncud_U37", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fadd_32ns_32ndEe_U38", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fsub_32ns_32ncud_U39", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fsub_32ns_32ncud_U40", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fadd_32ns_32ndEe_U41", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fadd_32ns_32ndEe_U42", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fmul_32ns_32neOg_U43", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fmul_32ns_32neOg_U44", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fmul_32ns_32neOg_U45", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0118_U0.FFT_fmul_32ns_32neOg_U46", "Parent" : "23"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0", "Parent" : "0", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "FFT0119",
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
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "106"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "49", "DependentChan" : "107"},
			{"Name" : "W_M_real129", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT1_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "105"},
			{"Name" : "data_OUT1_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "104"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.W_M_real129_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.W_M_imag125_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fsub_32ns_32ncud_U53", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fadd_32ns_32ndEe_U54", "Parent" : "36"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fsub_32ns_32ncud_U55", "Parent" : "36"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fsub_32ns_32ncud_U56", "Parent" : "36"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fadd_32ns_32ndEe_U57", "Parent" : "36"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fadd_32ns_32ndEe_U58", "Parent" : "36"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fmul_32ns_32neOg_U59", "Parent" : "36"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fmul_32ns_32neOg_U60", "Parent" : "36"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fmul_32ns_32neOg_U61", "Parent" : "36"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0119_U0.FFT_fmul_32ns_32neOg_U62", "Parent" : "36"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61"],
		"CDFG" : "FFT0120",
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
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "108"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "109"},
			{"Name" : "W_M_real128", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag124", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT2_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "107"},
			{"Name" : "data_OUT2_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "106"}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.W_M_real128_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.W_M_imag124_U", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fsub_32ns_32ncud_U67", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fadd_32ns_32ndEe_U68", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fsub_32ns_32ncud_U69", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fsub_32ns_32ncud_U70", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fadd_32ns_32ndEe_U71", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fadd_32ns_32ndEe_U72", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fmul_32ns_32neOg_U73", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fmul_32ns_32neOg_U74", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fmul_32ns_32neOg_U75", "Parent" : "49"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0120_U0.FFT_fmul_32ns_32neOg_U76", "Parent" : "49"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0", "Parent" : "0", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "FFT0121",
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
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "110"},
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "111"},
			{"Name" : "W_M_real127", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag123", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT3_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "109"},
			{"Name" : "data_OUT3_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "49", "DependentChan" : "108"}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.W_M_real127_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.W_M_imag123_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U81", "Parent" : "62"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U82", "Parent" : "62"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U83", "Parent" : "62"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fsub_32ns_32ncud_U84", "Parent" : "62"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U85", "Parent" : "62"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fadd_32ns_32ndEe_U86", "Parent" : "62"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U87", "Parent" : "62"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U88", "Parent" : "62"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U89", "Parent" : "62"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0121_U0.FFT_fmul_32ns_32neOg_U90", "Parent" : "62"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0", "Parent" : "0", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87"],
		"CDFG" : "FFT0122",
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
			{"Name" : "data_OUT4_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "111"},
			{"Name" : "data_OUT4_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "110"},
			{"Name" : "data_OUTfft_M_real", "Type" : "Memory", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "112"},
			{"Name" : "data_OUTfft_M_imag", "Type" : "Memory", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "113"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.W_M_real_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.W_M_imag_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U95", "Parent" : "75"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U96", "Parent" : "75"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U97", "Parent" : "75"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fsub_32ns_32ncud_U98", "Parent" : "75"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U99", "Parent" : "75"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fadd_32ns_32ndEe_U100", "Parent" : "75"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U101", "Parent" : "75"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U102", "Parent" : "75"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U103", "Parent" : "75"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.FFT0122_U0.FFT_fmul_32ns_32neOg_U104", "Parent" : "75"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0", "Parent" : "0", "Child" : ["89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "Block_codeRepl12432_s",
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
			{"Name" : "data_OUT", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_OUT_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_OUTfft_M_imag", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "113"},
			{"Name" : "data_OUTfft_M_real", "Type" : "Memory", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "112"},
			{"Name" : "xout_mag", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.xout_mag_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_fadd_32ns_32ndEe_U109", "Parent" : "88"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_fmul_32ns_32neOg_U110", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_fmul_32ns_32neOg_U111", "Parent" : "88"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_fmul_32ns_32neOg_U112", "Parent" : "88"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_fmul_32ns_32neOg_U113", "Parent" : "88"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.FFT_flog_32ns_32ng8j_U114", "Parent" : "88"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.regslice_both_mag_OUT_U", "Parent" : "88"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl12432_U0.regslice_both_data_OUT_U", "Parent" : "88"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_imag_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_real_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prod_IN_M_real_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.prod_IN_M_imag_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_real_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_imag_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_imag_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_real_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_imag_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_real_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_imag_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_real_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_imag_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_real_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUTfft_M_real_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUTfft_M_imag_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_mode_c1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win_mode_c_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		data_IN {Type I LastRead 31 FirstWrite -1}
		win_mode {Type I LastRead 0 FirstWrite -1}
		data_OUT {Type O LastRead -1 FirstWrite 3}
		mag_OUT {Type O LastRead -1 FirstWrite 3}
		xin_M_imag {Type IO LastRead -1 FirstWrite -1}
		xin_M_real {Type IO LastRead -1 FirstWrite -1}
		Blackman32 {Type I LastRead -1 FirstWrite -1}
		Hamm32 {Type I LastRead -1 FirstWrite -1}
		Hann32 {Type I LastRead -1 FirstWrite -1}
		prod_IN_M_real {Type IO LastRead -1 FirstWrite -1}
		prod_IN_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_imag {Type IO LastRead -1 FirstWrite -1}
		W_M_real130 {Type I LastRead -1 FirstWrite -1}
		W_M_imag126 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real129 {Type I LastRead -1 FirstWrite -1}
		W_M_imag125 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real128 {Type I LastRead -1 FirstWrite -1}
		W_M_imag124 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real127 {Type I LastRead -1 FirstWrite -1}
		W_M_imag123 {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_imag {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type IO LastRead -1 FirstWrite -1}
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUTfft_M_real {Type IO LastRead -1 FirstWrite -1}
		data_OUTfft_M_imag {Type IO LastRead -1 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}
	FFT_entry3 {
		win_mode {Type I LastRead 0 FirstWrite -1}
		win_mode_out {Type O LastRead -1 FirstWrite 0}}
	Block_codeRepl124_pr {
		data_IN {Type I LastRead 31 FirstWrite -1}
		xin_M_imag {Type O LastRead -1 FirstWrite 0}
		xin_M_real {Type O LastRead -1 FirstWrite 0}
		win_mode {Type I LastRead 0 FirstWrite -1}
		win_mode_out {Type O LastRead -1 FirstWrite 0}}
	mult_window {
		win_mode {Type I LastRead 0 FirstWrite -1}
		Blackman32 {Type I LastRead -1 FirstWrite -1}
		Hamm32 {Type I LastRead -1 FirstWrite -1}
		Hann32 {Type I LastRead -1 FirstWrite -1}
		xin_M_real {Type I LastRead 4 FirstWrite -1}
		xin_M_imag {Type I LastRead 4 FirstWrite -1}
		prod_IN_M_real {Type O LastRead -1 FirstWrite 14}
		prod_IN_M_imag {Type O LastRead -1 FirstWrite 14}}
	bitreverse {
		prod_IN_M_imag {Type I LastRead 16 FirstWrite -1}
		prod_IN_M_real {Type I LastRead 16 FirstWrite -1}
		data_OUT0_M_real {Type O LastRead -1 FirstWrite 1}
		data_OUT0_M_imag {Type O LastRead -1 FirstWrite 1}}
	FFT0118 {
		data_IN_M_real {Type I LastRead 10 FirstWrite -1}
		data_IN_M_imag {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT1_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real130 {Type I LastRead -1 FirstWrite -1}
		W_M_imag126 {Type I LastRead -1 FirstWrite -1}}
	FFT0119 {
		data_OUT2_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT2_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real129 {Type I LastRead -1 FirstWrite -1}
		W_M_imag125 {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT1_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0120 {
		data_OUT3_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT3_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real128 {Type I LastRead -1 FirstWrite -1}
		W_M_imag124 {Type I LastRead -1 FirstWrite -1}
		data_OUT2_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT2_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0121 {
		data_OUT4_M_imag {Type O LastRead -1 FirstWrite 17}
		data_OUT4_M_real {Type O LastRead -1 FirstWrite 17}
		W_M_real127 {Type I LastRead -1 FirstWrite -1}
		W_M_imag123 {Type I LastRead -1 FirstWrite -1}
		data_OUT3_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT3_M_imag {Type I LastRead 10 FirstWrite -1}}
	FFT0122 {
		W_M_real {Type I LastRead -1 FirstWrite -1}
		W_M_imag {Type I LastRead -1 FirstWrite -1}
		data_OUT4_M_real {Type I LastRead 10 FirstWrite -1}
		data_OUT4_M_imag {Type I LastRead 10 FirstWrite -1}
		data_OUTfft_M_real {Type O LastRead -1 FirstWrite 17}
		data_OUTfft_M_imag {Type O LastRead -1 FirstWrite 17}}
	Block_codeRepl12432_s {
		mag_OUT {Type O LastRead -1 FirstWrite 3}
		data_OUT {Type O LastRead -1 FirstWrite 3}
		data_OUTfft_M_imag {Type I LastRead 33 FirstWrite -1}
		data_OUTfft_M_real {Type I LastRead 33 FirstWrite -1}
		xout_mag {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "365", "Max" : "365"}
	, {"Name" : "Interval", "Min" : "99", "Max" : "99"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_IN { axis {  { data_IN_TDATA in_data 0 64 }  { data_IN_TVALID in_vld 0 1 }  { data_IN_TREADY in_acc 1 1 } } }
	data_OUT { axis {  { data_OUT_TDATA out_data 1 64 }  { data_OUT_TVALID out_vld 1 1 }  { data_OUT_TREADY out_acc 0 1 } } }
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
