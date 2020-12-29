// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_codeRepl113_pr_HH_
#define _Block_codeRepl113_pr_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Block_codeRepl113_pr : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > data_IN_M_real_address0;
    sc_out< sc_logic > data_IN_M_real_ce0;
    sc_in< sc_lv<32> > data_IN_M_real_q0;
    sc_out< sc_lv<5> > data_IN_M_imag_address0;
    sc_out< sc_logic > data_IN_M_imag_ce0;
    sc_in< sc_lv<32> > data_IN_M_imag_q0;
    sc_out< sc_lv<5> > xin_M_imag_address0;
    sc_out< sc_logic > xin_M_imag_ce0;
    sc_out< sc_logic > xin_M_imag_we0;
    sc_out< sc_lv<32> > xin_M_imag_d0;
    sc_out< sc_lv<5> > xin_M_real_address0;
    sc_out< sc_logic > xin_M_real_ce0;
    sc_out< sc_logic > xin_M_real_we0;
    sc_out< sc_lv<32> > xin_M_real_d0;


    // Module declarations
    Block_codeRepl113_pr(sc_module_name name);
    SC_HAS_PROCESS(Block_codeRepl113_pr);

    ~Block_codeRepl113_pr();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<33> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<33> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<33> ap_ST_fsm_state1;
    static const sc_lv<33> ap_ST_fsm_state2;
    static const sc_lv<33> ap_ST_fsm_state3;
    static const sc_lv<33> ap_ST_fsm_state4;
    static const sc_lv<33> ap_ST_fsm_state5;
    static const sc_lv<33> ap_ST_fsm_state6;
    static const sc_lv<33> ap_ST_fsm_state7;
    static const sc_lv<33> ap_ST_fsm_state8;
    static const sc_lv<33> ap_ST_fsm_state9;
    static const sc_lv<33> ap_ST_fsm_state10;
    static const sc_lv<33> ap_ST_fsm_state11;
    static const sc_lv<33> ap_ST_fsm_state12;
    static const sc_lv<33> ap_ST_fsm_state13;
    static const sc_lv<33> ap_ST_fsm_state14;
    static const sc_lv<33> ap_ST_fsm_state15;
    static const sc_lv<33> ap_ST_fsm_state16;
    static const sc_lv<33> ap_ST_fsm_state17;
    static const sc_lv<33> ap_ST_fsm_state18;
    static const sc_lv<33> ap_ST_fsm_state19;
    static const sc_lv<33> ap_ST_fsm_state20;
    static const sc_lv<33> ap_ST_fsm_state21;
    static const sc_lv<33> ap_ST_fsm_state22;
    static const sc_lv<33> ap_ST_fsm_state23;
    static const sc_lv<33> ap_ST_fsm_state24;
    static const sc_lv<33> ap_ST_fsm_state25;
    static const sc_lv<33> ap_ST_fsm_state26;
    static const sc_lv<33> ap_ST_fsm_state27;
    static const sc_lv<33> ap_ST_fsm_state28;
    static const sc_lv<33> ap_ST_fsm_state29;
    static const sc_lv<33> ap_ST_fsm_state30;
    static const sc_lv<33> ap_ST_fsm_state31;
    static const sc_lv<33> ap_ST_fsm_state32;
    static const sc_lv<33> ap_ST_fsm_state33;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<64> ap_const_lv64_19;
    static const sc_lv<64> ap_const_lv64_1A;
    static const sc_lv<64> ap_const_lv64_1B;
    static const sc_lv<64> ap_const_lv64_1C;
    static const sc_lv<64> ap_const_lv64_1D;
    static const sc_lv<64> ap_const_lv64_1E;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_IN_M_imag_address0();
    void thread_data_IN_M_imag_ce0();
    void thread_data_IN_M_real_address0();
    void thread_data_IN_M_real_ce0();
    void thread_xin_M_imag_address0();
    void thread_xin_M_imag_ce0();
    void thread_xin_M_imag_d0();
    void thread_xin_M_imag_we0();
    void thread_xin_M_real_address0();
    void thread_xin_M_real_ce0();
    void thread_xin_M_real_d0();
    void thread_xin_M_real_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
