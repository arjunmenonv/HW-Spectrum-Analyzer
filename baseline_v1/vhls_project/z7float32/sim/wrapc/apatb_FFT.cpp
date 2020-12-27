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


// wrapc file define: "data_IN_M_real"
#define AUTOTB_TVIN_data_IN_M_real  "../tv/cdatafile/c.FFT.autotvin_data_IN_M_real.dat"
// wrapc file define: "data_IN_M_imag"
#define AUTOTB_TVIN_data_IN_M_imag  "../tv/cdatafile/c.FFT.autotvin_data_IN_M_imag.dat"
// wrapc file define: "data_OUT_M_real"
#define AUTOTB_TVOUT_data_OUT_M_real  "../tv/cdatafile/c.FFT.autotvout_data_OUT_M_real.dat"
// wrapc file define: "data_OUT_M_imag"
#define AUTOTB_TVOUT_data_OUT_M_imag  "../tv/cdatafile/c.FFT.autotvout_data_OUT_M_imag.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "data_OUT_M_real"
#define AUTOTB_TVOUT_PC_data_OUT_M_real  "../tv/rtldatafile/rtl.FFT.autotvout_data_OUT_M_real.dat"
// tvout file define: "data_OUT_M_imag"
#define AUTOTB_TVOUT_PC_data_OUT_M_imag  "../tv/rtldatafile/rtl.FFT.autotvout_data_OUT_M_imag.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			data_IN_M_real_depth = 0;
			data_IN_M_imag_depth = 0;
			data_OUT_M_real_depth = 0;
			data_OUT_M_imag_depth = 0;
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
			total_list << "{data_IN_M_real " << data_IN_M_real_depth << "}\n";
			total_list << "{data_IN_M_imag " << data_IN_M_imag_depth << "}\n";
			total_list << "{data_OUT_M_real " << data_OUT_M_real_depth << "}\n";
			total_list << "{data_OUT_M_imag " << data_OUT_M_imag_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int data_IN_M_real_depth;
		int data_IN_M_imag_depth;
		int data_OUT_M_real_depth;
		int data_OUT_M_imag_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void FFT (
std::complex<float > data_IN[32],
std::complex<float > data_OUT[32]);

void AESL_WRAP_FFT (
std::complex<float > data_IN[32],
std::complex<float > data_OUT[32])
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


		// output port post check: "data_OUT_M_real"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_real, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_real, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_real, AESL_token); // data

			sc_bv<32> *data_OUT_M_real_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT_M_real', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT_M_real', possible cause: There are uninitialized variables in the C design." << endl;
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
					data_OUT_M_real_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_real, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_OUT_M_real))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_OUT_M_real
				{
					// bitslice(31, 0)
					// {
						// celement: data_OUT._M_real(31, 0)
						// {
							sc_lv<32>* data_OUT__M_real_lv0_0_31_1 = new sc_lv<32>[32];
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
									data_OUT__M_real_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(data_OUT_M_real_pc_buffer[hls_map_index].range(31, 0));
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
				}
			}

			// release memory allocation
			delete [] data_OUT_M_real_pc_buffer;
		}

		// output port post check: "data_OUT_M_imag"
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_imag, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_imag, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_imag, AESL_token); // data

			sc_bv<32> *data_OUT_M_imag_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT_M_imag', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'data_OUT_M_imag', possible cause: There are uninitialized variables in the C design." << endl;
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
					data_OUT_M_imag_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_data_OUT_M_imag, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_data_OUT_M_imag))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: data_OUT_M_imag
				{
					// bitslice(31, 0)
					// {
						// celement: data_OUT._M_imag(31, 0)
						// {
							sc_lv<32>* data_OUT__M_imag_lv0_0_31_1 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: data_OUT._M_imag(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(data_OUT[0]) != NULL) // check the null address if the c port is array or others
								{
									data_OUT__M_imag_lv0_0_31_1[hls_map_index].range(31, 0) = sc_bv<32>(data_OUT_M_imag_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
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
			delete [] data_OUT_M_imag_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "data_IN_M_real"
		char* tvin_data_IN_M_real = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_IN_M_real);

		// "data_IN_M_imag"
		char* tvin_data_IN_M_imag = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data_IN_M_imag);

		// "data_OUT_M_real"
		char* tvout_data_OUT_M_real = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_OUT_M_real);

		// "data_OUT_M_imag"
		char* tvout_data_OUT_M_imag = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_data_OUT_M_imag);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_data_IN_M_real, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_IN_M_real, tvin_data_IN_M_real);

		sc_bv<32>* data_IN_M_real_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: data_IN_M_real
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
							data_IN_M_real_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_IN__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_data_IN_M_real, "%s\n", (data_IN_M_real_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_IN_M_real, tvin_data_IN_M_real);
		}

		tcl_file.set_num(32, &tcl_file.data_IN_M_real_depth);
		sprintf(tvin_data_IN_M_real, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_IN_M_real, tvin_data_IN_M_real);

		// release memory allocation
		delete [] data_IN_M_real_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data_IN_M_imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data_IN_M_imag, tvin_data_IN_M_imag);

		sc_bv<32>* data_IN_M_imag_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: data_IN_M_imag
		{
			// bitslice(31, 0)
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
							data_IN_M_imag_tvin_wrapc_buffer[hls_map_index].range(31, 0) = data_IN__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_data_IN_M_imag, "%s\n", (data_IN_M_imag_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data_IN_M_imag, tvin_data_IN_M_imag);
		}

		tcl_file.set_num(32, &tcl_file.data_IN_M_imag_depth);
		sprintf(tvin_data_IN_M_imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data_IN_M_imag, tvin_data_IN_M_imag);

		// release memory allocation
		delete [] data_IN_M_imag_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		FFT(data_IN, data_OUT);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_data_OUT_M_real, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_real, tvout_data_OUT_M_real);

		sc_bv<32>* data_OUT_M_real_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: data_OUT_M_real
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
							data_OUT_M_real_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_OUT__M_real_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_data_OUT_M_real, "%s\n", (data_OUT_M_real_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_real, tvout_data_OUT_M_real);
		}

		tcl_file.set_num(32, &tcl_file.data_OUT_M_real_depth);
		sprintf(tvout_data_OUT_M_real, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_real, tvout_data_OUT_M_real);

		// release memory allocation
		delete [] data_OUT_M_real_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_data_OUT_M_imag, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_imag, tvout_data_OUT_M_imag);

		sc_bv<32>* data_OUT_M_imag_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: data_OUT_M_imag
		{
			// bitslice(31, 0)
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
							data_OUT_M_imag_tvout_wrapc_buffer[hls_map_index].range(31, 0) = data_OUT__M_imag_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_data_OUT_M_imag, "%s\n", (data_OUT_M_imag_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_imag, tvout_data_OUT_M_imag);
		}

		tcl_file.set_num(32, &tcl_file.data_OUT_M_imag_depth);
		sprintf(tvout_data_OUT_M_imag, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_data_OUT_M_imag, tvout_data_OUT_M_imag);

		// release memory allocation
		delete [] data_OUT_M_imag_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "data_IN_M_real"
		delete [] tvin_data_IN_M_real;
		// release memory allocation: "data_IN_M_imag"
		delete [] tvin_data_IN_M_imag;
		// release memory allocation: "data_OUT_M_real"
		delete [] tvout_data_OUT_M_real;
		// release memory allocation: "data_OUT_M_imag"
		delete [] tvout_data_OUT_M_imag;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

