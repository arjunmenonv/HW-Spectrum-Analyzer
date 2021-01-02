// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "data_IN"
#define AUTOTB_TVIN_data_IN  "../tv/cdatafile/c.FFT.autotvin_data_IN.dat"
// wrapc file define: "win_mode"
#define AUTOTB_TVIN_win_mode  "../tv/cdatafile/c.FFT.autotvin_win_mode.dat"
// wrapc file define: "data_OUT"
#define AUTOTB_TVOUT_data_OUT  "../tv/cdatafile/c.FFT.autotvout_data_OUT.dat"
#define AUTOTB_TVIN_data_OUT  "../tv/cdatafile/c.FFT.autotvin_data_OUT.dat"
// wrapc file define: "mag_OUT"
#define AUTOTB_TVOUT_mag_OUT  "../tv/cdatafile/c.FFT.autotvout_mag_OUT.dat"
#define AUTOTB_TVIN_mag_OUT  "../tv/cdatafile/c.FFT.autotvin_mag_OUT.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_OUT"
#define AUTOTB_TVOUT_PC_data_OUT  "../tv/rtldatafile/rtl.FFT.autotvout_data_OUT.dat"
// tvout file define: "mag_OUT"
#define AUTOTB_TVOUT_PC_mag_OUT  "../tv/rtldatafile/rtl.FFT.autotvout_mag_OUT.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_IN_depth = 0;
			win_mode_depth = 0;
			data_OUT_depth = 0;
			mag_OUT_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{data_IN " << data_IN_depth << "}\n";
			total_list << "{win_mode " << win_mode_depth << "}\n";
			total_list << "{data_OUT " << data_OUT_depth << "}\n";
			total_list << "{mag_OUT " << mag_OUT_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_IN_depth;
		int win_mode_depth;
		int data_OUT_depth;
		int mag_OUT_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void FFT (
std::complex<float > data_IN[32],
char win_mode,
std::complex<float > data_OUT[32],
float mag_OUT[32]);

void AESL_WRAP_FFT (
std::complex<float > data_IN[32],
char win_mode,
std::complex<float > data_OUT[32],
float mag_OUT[32])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "data_OUT"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT, AESL_token); // data

			sc_bv<64> *data_OUT_pc_buffer = new sc_bv<64>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					data_OUT_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_OUT))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_OUT
				{
					// bitslice(31, 0)
					// {
						// celement: data_OUT._M_real(31, 0)
						// {
							sc_lv<32>* data_OUT__M_real_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }
					// bitslice(63, 32)
					// {
						// celement: data_OUT._M_imag(31, 0)
						// {
							sc_lv<32>* data_OUT__M_imag_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_OUT._M_real(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									data_OUT__M_real_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(data_OUT_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
						// celement: data_OUT._M_imag(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									data_OUT__M_imag_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(data_OUT_pc_buffer[hls_map_index].range(63, 32));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
    float wrap_real_data_OUT__M_real;
						// celement: data_OUT._M_real(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_OUT[i_0].real()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_OUT[0]
								// output_left_conversion : *(int*)&wrap_real_data_OUT__M_real
								// output_type_conversion : (data_OUT__M_real_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									wrap_real_data_OUT__M_real = data_OUT[i_0].real();
									*(int*)&wrap_real_data_OUT__M_real = (data_OUT__M_real_lv0_0_31_1[hls_map_index]).to_uint64();
									data_OUT[i_0].real(wrap_real_data_OUT__M_real);
									hls_map_index++;
								}
							}
						}
					}
					// bitslice(63, 32)
					{
						int hls_map_index = 0;
    float wrap_imag_data_OUT__M_imag;
						// celement: data_OUT._M_imag(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : data_OUT[i_0].imag()
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : data_OUT[0]
								// output_left_conversion : *(int*)&wrap_imag_data_OUT__M_imag
								// output_type_conversion : (data_OUT__M_imag_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									wrap_imag_data_OUT__M_imag = data_OUT[i_0].imag();
									*(int*)&wrap_imag_data_OUT__M_imag = (data_OUT__M_imag_lv0_0_31_1[hls_map_index]).to_uint64();
									data_OUT[i_0].imag(wrap_imag_data_OUT__M_imag);
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] data_OUT_pc_buffer;
		}

		// output port post check: "mag_OUT"
		aesl_fh.read(AUTOTB_TVOUT_PC_mag_OUT, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_mag_OUT, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_mag_OUT, AESL_token); // data

			sc_bv<32> *mag_OUT_pc_buffer = new sc_bv<32>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'mag_OUT', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'mag_OUT', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					mag_OUT_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_mag_OUT, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_mag_OUT))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: mag_OUT
				{
					// bitslice(31, 0)
					// {
						// celement: mag_OUT(31, 0)
						// {
							sc_lv<32>* mag_OUT_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: mag_OUT(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(mag_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									mag_OUT_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(mag_OUT_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: mag_OUT(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : mag_OUT[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : mag_OUT[0]
								// output_left_conversion : *(int*)&mag_OUT[i_0]
								// output_type_conversion : (mag_OUT_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(mag_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&mag_OUT[i_0] = (mag_OUT_lv0_0_31_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] mag_OUT_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_IN"
		char* tvin_data_IN = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_IN);

		// "win_mode"
		char* tvin_win_mode = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_win_mode);

		// "data_OUT"
		char* tvin_data_OUT = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_OUT);
		char* tvout_data_OUT = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_OUT);

		// "mag_OUT"
		char* tvin_mag_OUT = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mag_OUT);
		char* tvout_mag_OUT = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_mag_OUT);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_IN, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_IN, tvin_data_IN);

		sc_bv<64>* data_IN_tvin_wrapc_buffer = new sc_bv<64>[32];

		// RTL Name: data_IN
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_data_IN__M_real;
				// celement: data_IN._M_real(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_IN[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_IN[0]
						// regulate_c_name       : data_IN__M_real
						// input_type_conversion : *(int*)&wrap_real_data_IN__M_real
						if (&(data_IN[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_IN__M_real_tmp_mem;
                                 	       wrap_real_data_IN__M_real = data_IN[i_0].real();
							data_IN__M_real_tmp_mem = *(int*)&wrap_real_data_IN__M_real;
							data_IN_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_IN__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_data_IN__M_imag;
				// celement: data_IN._M_imag(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_IN[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_IN[0]
						// regulate_c_name       : data_IN__M_imag
						// input_type_conversion : *(int*)&wrap_imag_data_IN__M_imag
						if (&(data_IN[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_IN__M_imag_tmp_mem;
                                 	       wrap_imag_data_IN__M_imag = data_IN[i_0].imag();
							data_IN__M_imag_tmp_mem = *(int*)&wrap_imag_data_IN__M_imag;
							data_IN_tvin_wrapc_buffer[hls_map_index].range(63, 32) = data_IN__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_data_IN, "%s\n", (data_IN_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_IN, tvin_data_IN);
		}

		tcl_file.set_num(32, &tcl_file.data_IN_depth);
		sprintf(tvin_data_IN, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_IN, tvin_data_IN);

		// release memory allocation
		delete [] data_IN_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_win_mode, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_win_mode, tvin_win_mode);

		sc_bv<8> win_mode_tvin_wrapc_buffer;

		// RTL Name: win_mode
		{
			// bitslice(7, 0)
			{
				// celement: win_mode(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : win_mode
						// sub_1st_elem          : 
						// ori_name_1st_elem     : win_mode
						// regulate_c_name       : win_mode
						// input_type_conversion : win_mode
						if (&(win_mode) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> win_mode_tmp_mem;
							win_mode_tmp_mem = win_mode;
							win_mode_tvin_wrapc_buffer.range(7, 0) = win_mode_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_win_mode, "%s\n", (win_mode_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_win_mode, tvin_win_mode);
		}

		tcl_file.set_num(1, &tcl_file.win_mode_depth);
		sprintf(tvin_win_mode, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_win_mode, tvin_win_mode);

		// [[transaction]]
		sprintf(tvin_data_OUT, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_OUT, tvin_data_OUT);

		sc_bv<64>* data_OUT_tvin_wrapc_buffer = new sc_bv<64>[32];

		// RTL Name: data_OUT
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_data_OUT__M_real;
				// celement: data_OUT._M_real(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_OUT[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_OUT[0]
						// regulate_c_name       : data_OUT__M_real
						// input_type_conversion : *(int*)&wrap_real_data_OUT__M_real
						if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_OUT__M_real_tmp_mem;
                                 	       wrap_real_data_OUT__M_real = data_OUT[i_0].real();
							data_OUT__M_real_tmp_mem = *(int*)&wrap_real_data_OUT__M_real;
							data_OUT_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_OUT__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_data_OUT__M_imag;
				// celement: data_OUT._M_imag(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_OUT[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_OUT[0]
						// regulate_c_name       : data_OUT__M_imag
						// input_type_conversion : *(int*)&wrap_imag_data_OUT__M_imag
						if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_OUT__M_imag_tmp_mem;
                                 	       wrap_imag_data_OUT__M_imag = data_OUT[i_0].imag();
							data_OUT__M_imag_tmp_mem = *(int*)&wrap_imag_data_OUT__M_imag;
							data_OUT_tvin_wrapc_buffer[hls_map_index].range(63, 32) = data_OUT__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_data_OUT, "%s\n", (data_OUT_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_OUT, tvin_data_OUT);
		}

		tcl_file.set_num(32, &tcl_file.data_OUT_depth);
		sprintf(tvin_data_OUT, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_OUT, tvin_data_OUT);

		// release memory allocation
		delete [] data_OUT_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_mag_OUT, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mag_OUT, tvin_mag_OUT);

		sc_bv<32>* mag_OUT_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: mag_OUT
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: mag_OUT(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : mag_OUT[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : mag_OUT[0]
						// regulate_c_name       : mag_OUT
						// input_type_conversion : *(int*)&mag_OUT[i_0]
						if (&(mag_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> mag_OUT_tmp_mem;
							mag_OUT_tmp_mem = *(int*)&mag_OUT[i_0];
							mag_OUT_tvin_wrapc_buffer[hls_map_index].range(31, 0) = mag_OUT_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_mag_OUT, "%s\n", (mag_OUT_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mag_OUT, tvin_mag_OUT);
		}

		tcl_file.set_num(32, &tcl_file.mag_OUT_depth);
		sprintf(tvin_mag_OUT, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mag_OUT, tvin_mag_OUT);

		// release memory allocation
		delete [] mag_OUT_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		FFT(data_IN, win_mode, data_OUT, mag_OUT);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_OUT, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_OUT, tvout_data_OUT);

		sc_bv<64>* data_OUT_tvout_wrapc_buffer = new sc_bv<64>[32];

		// RTL Name: data_OUT
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
    float wrap_real_data_OUT__M_real;
				// celement: data_OUT._M_real(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_OUT[i_0].real()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_OUT[0]
						// regulate_c_name       : data_OUT__M_real
						// input_type_conversion : *(int*)&wrap_real_data_OUT__M_real
						if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_OUT__M_real_tmp_mem;
                                 	       wrap_real_data_OUT__M_real = data_OUT[i_0].real();
							data_OUT__M_real_tmp_mem = *(int*)&wrap_real_data_OUT__M_real;
							data_OUT_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_OUT__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 32)
			{
				int hls_map_index = 0;
    float wrap_imag_data_OUT__M_imag;
				// celement: data_OUT._M_imag(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data_OUT[i_0].imag()
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data_OUT[0]
						// regulate_c_name       : data_OUT__M_imag
						// input_type_conversion : *(int*)&wrap_imag_data_OUT__M_imag
						if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> data_OUT__M_imag_tmp_mem;
                                 	       wrap_imag_data_OUT__M_imag = data_OUT[i_0].imag();
							data_OUT__M_imag_tmp_mem = *(int*)&wrap_imag_data_OUT__M_imag;
							data_OUT_tvout_wrapc_buffer[hls_map_index].range(63, 32) = data_OUT__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_data_OUT, "%s\n", (data_OUT_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_OUT, tvout_data_OUT);
		}

		tcl_file.set_num(32, &tcl_file.data_OUT_depth);
		sprintf(tvout_data_OUT, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_OUT, tvout_data_OUT);

		// release memory allocation
		delete [] data_OUT_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_mag_OUT, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_mag_OUT, tvout_mag_OUT);

		sc_bv<32>* mag_OUT_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: mag_OUT
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: mag_OUT(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : mag_OUT[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : mag_OUT[0]
						// regulate_c_name       : mag_OUT
						// input_type_conversion : *(int*)&mag_OUT[i_0]
						if (&(mag_OUT[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> mag_OUT_tmp_mem;
							mag_OUT_tmp_mem = *(int*)&mag_OUT[i_0];
							mag_OUT_tvout_wrapc_buffer[hls_map_index].range(31, 0) = mag_OUT_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_mag_OUT, "%s\n", (mag_OUT_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_mag_OUT, tvout_mag_OUT);
		}

		tcl_file.set_num(32, &tcl_file.mag_OUT_depth);
		sprintf(tvout_mag_OUT, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_mag_OUT, tvout_mag_OUT);

		// release memory allocation
		delete [] mag_OUT_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_IN"
		delete [] tvin_data_IN;
		// release memory allocation: "win_mode"
		delete [] tvin_win_mode;
		// release memory allocation: "data_OUT"
		delete [] tvout_data_OUT;
		delete [] tvin_data_OUT;
		// release memory allocation: "mag_OUT"
		delete [] tvout_mag_OUT;
		delete [] tvin_mag_OUT;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

