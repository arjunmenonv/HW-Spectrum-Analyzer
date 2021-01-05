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
win_mode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 384
	offset_end 391
}
data_OUT_M_real { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 512
	offset_end 639
}
data_OUT_M_imag { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 640
	offset_end 767
}
mag_OUT { 
	dir O
	width 32
	depth 32
	mode ap_memory
	offset 768
	offset_end 895
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


