# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
data_IN_M_real { 
	dir I
	width 32
	depth 32
	mode ap_memory
	offset 128
	offset_end 255
}
data_IN_M_imag { 
	dir I
	width 32
	depth 32
	mode ap_memory
	offset 256
	offset_end 383
}
data_OUT_M_real { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 384
	offset_end 511
}
data_OUT_M_imag { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 512
	offset_end 639
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


