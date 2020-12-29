// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _FFT054_HH_
#define _FFT054_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "FFT_fsub_32ns_32nbkb.h"
#include "FFT_fadd_32ns_32ncud.h"
#include "FFT_fmul_32ns_32ndEe.h"
#include "FFT053_W_M_real65.h"
#include "FFT053_W_M_imag61.h"

namespace ap_rtl {

struct FFT054 : public sc_module {
    // Port declarations 35
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > data_OUT2_M_imag_address0;
    sc_out< sc_logic > data_OUT2_M_imag_ce0;
    sc_out< sc_logic > data_OUT2_M_imag_we0;
    sc_out< sc_lv<32> > data_OUT2_M_imag_d0;
    sc_out< sc_lv<5> > data_OUT2_M_imag_address1;
    sc_out< sc_logic > data_OUT2_M_imag_ce1;
    sc_out< sc_logic > data_OUT2_M_imag_we1;
    sc_out< sc_lv<32> > data_OUT2_M_imag_d1;
    sc_out< sc_lv<5> > data_OUT2_M_real_address0;
    sc_out< sc_logic > data_OUT2_M_real_ce0;
    sc_out< sc_logic > data_OUT2_M_real_we0;
    sc_out< sc_lv<32> > data_OUT2_M_real_d0;
    sc_out< sc_lv<5> > data_OUT2_M_real_address1;
    sc_out< sc_logic > data_OUT2_M_real_ce1;
    sc_out< sc_logic > data_OUT2_M_real_we1;
    sc_out< sc_lv<32> > data_OUT2_M_real_d1;
    sc_out< sc_lv<5> > data_OUT1_M_real_address0;
    sc_out< sc_logic > data_OUT1_M_real_ce0;
    sc_in< sc_lv<32> > data_OUT1_M_real_q0;
    sc_out< sc_lv<5> > data_OUT1_M_real_address1;
    sc_out< sc_logic > data_OUT1_M_real_ce1;
    sc_in< sc_lv<32> > data_OUT1_M_real_q1;
    sc_out< sc_lv<5> > data_OUT1_M_imag_address0;
    sc_out< sc_logic > data_OUT1_M_imag_ce0;
    sc_in< sc_lv<32> > data_OUT1_M_imag_q0;
    sc_out< sc_lv<5> > data_OUT1_M_imag_address1;
    sc_out< sc_logic > data_OUT1_M_imag_ce1;
    sc_in< sc_lv<32> > data_OUT1_M_imag_q1;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    FFT054(sc_module_name name);
    SC_HAS_PROCESS(FFT054);

    ~FFT054();

    sc_trace_file* mVcdFile;

    FFT053_W_M_real65* W_M_real64_U;
    FFT053_W_M_imag61* W_M_imag60_U;
    FFT_fsub_32ns_32nbkb<1,5,32,32,32>* FFT_fsub_32ns_32nbkb_U29;
    FFT_fadd_32ns_32ncud<1,5,32,32,32>* FFT_fadd_32ns_32ncud_U30;
    FFT_fsub_32ns_32nbkb<1,5,32,32,32>* FFT_fsub_32ns_32nbkb_U31;
    FFT_fsub_32ns_32nbkb<1,5,32,32,32>* FFT_fsub_32ns_32nbkb_U32;
    FFT_fadd_32ns_32ncud<1,5,32,32,32>* FFT_fadd_32ns_32ncud_U33;
    FFT_fadd_32ns_32ncud<1,5,32,32,32>* FFT_fadd_32ns_32ncud_U34;
    FFT_fmul_32ns_32ndEe<1,4,32,32,32>* FFT_fmul_32ns_32ndEe_U35;
    FFT_fmul_32ns_32ndEe<1,4,32,32,32>* FFT_fmul_32ns_32ndEe_U36;
    FFT_fmul_32ns_32ndEe<1,4,32,32,32>* FFT_fmul_32ns_32ndEe_U37;
    FFT_fmul_32ns_32ndEe<1,4,32,32,32>* FFT_fmul_32ns_32ndEe_U38;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > W_M_real64_address0;
    sc_signal< sc_logic > W_M_real64_ce0;
    sc_signal< sc_lv<32> > W_M_real64_q0;
    sc_signal< sc_lv<4> > W_M_imag60_address0;
    sc_signal< sc_logic > W_M_imag60_ce0;
    sc_signal< sc_lv<32> > W_M_imag60_q0;
    sc_signal< sc_lv<32> > butterfly_span_0_i_reg_174;
    sc_signal< sc_lv<32> > butterfly_pass_0_i_reg_185;
    sc_signal< sc_lv<5> > i_0_i_reg_196;
    sc_signal< sc_lv<1> > icmp_ln53_fu_247_p2;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter10_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter11_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter12_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter13_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter14_reg;
    sc_signal< sc_lv<1> > icmp_ln53_reg_348_pp0_iter15_reg;
    sc_signal< sc_lv<5> > i_fu_253_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > Ulimit_fu_271_p2;
    sc_signal< sc_lv<32> > Ulimit_reg_357;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter1_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter2_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter3_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter4_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter5_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter6_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter7_reg;
    sc_signal< sc_lv<32> > Ulimit_reg_357_pp0_iter8_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_fu_289_p1;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter1_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter2_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter3_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter4_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter5_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter6_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter7_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter8_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter9_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter10_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter11_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter12_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter13_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter14_reg;
    sc_signal< sc_lv<64> > sext_ln58_4_reg_372_pp0_iter15_reg;
    sc_signal< sc_lv<32> > select_ln61_fu_327_p3;
    sc_signal< sc_lv<32> > butterfly_pass_8_fu_335_p3;
    sc_signal< sc_lv<32> > p_r_M_real_reg_398;
    sc_signal< sc_lv<32> > p_r_M_imag_reg_404;
    sc_signal< sc_lv<32> > p_t_real_reg_410;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > p_t_imag_reg_416;
    sc_signal< sc_lv<32> > grp_fu_231_p2;
    sc_signal< sc_lv<32> > tmp_i_i_i_reg_422;
    sc_signal< sc_lv<32> > grp_fu_235_p2;
    sc_signal< sc_lv<32> > tmp_3_i_i_i_reg_427;
    sc_signal< sc_lv<32> > grp_fu_239_p2;
    sc_signal< sc_lv<32> > tmp_5_i_i_i_reg_432;
    sc_signal< sc_lv<32> > grp_fu_243_p2;
    sc_signal< sc_lv<32> > tmp_6_i_i_i_reg_437;
    sc_signal< sc_lv<64> > sext_ln59_fu_343_p1;
    sc_signal< sc_lv<64> > sext_ln59_reg_442;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter10_reg;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter11_reg;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter12_reg;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter13_reg;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter14_reg;
    sc_signal< sc_lv<64> > sext_ln59_reg_442_pp0_iter15_reg;
    sc_signal< sc_lv<32> > grp_fu_207_p2;
    sc_signal< sc_lv<32> > Product_M_real_reg_458;
    sc_signal< sc_lv<32> > grp_fu_211_p2;
    sc_signal< sc_lv<32> > Product_M_imag_reg_464;
    sc_signal< sc_lv<32> > p_r_M_real_4_reg_470;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_lv<32> > p_r_M_imag_4_reg_476;
    sc_signal< sc_lv<32> > grp_fu_215_p2;
    sc_signal< sc_lv<32> > complex_M_real_writ_reg_482;
    sc_signal< sc_lv<32> > grp_fu_219_p2;
    sc_signal< sc_lv<32> > complex_M_imag_writ_reg_487;
    sc_signal< sc_lv<32> > grp_fu_223_p2;
    sc_signal< sc_lv<32> > complex_M_real_writ_4_reg_492;
    sc_signal< sc_lv<32> > grp_fu_227_p2;
    sc_signal< sc_lv<32> > complex_M_imag_writ_4_reg_497;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_lv<64> > sext_ln58_fu_283_p1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > shl_ln56_fu_265_p2;
    sc_signal< sc_lv<32> > index_fu_259_p2;
    sc_signal< sc_lv<32> > Llimit_fu_277_p2;
    sc_signal< sc_lv<1> > icmp_ln63_fu_307_p2;
    sc_signal< sc_lv<32> > butterfly_pass_fu_313_p2;
    sc_signal< sc_lv<1> > icmp_ln61_fu_295_p2;
    sc_signal< sc_lv<32> > butterfly_span_fu_301_p2;
    sc_signal< sc_lv<32> > butterfly_pass_7_fu_319_p3;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_7;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Llimit_fu_277_p2();
    void thread_Ulimit_fu_271_p2();
    void thread_W_M_imag60_address0();
    void thread_W_M_imag60_ce0();
    void thread_W_M_real64_address0();
    void thread_W_M_real64_ce0();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state19();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state17_pp0_stage0_iter15();
    void thread_ap_block_state18_pp0_stage0_iter16();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_butterfly_pass_7_fu_319_p3();
    void thread_butterfly_pass_8_fu_335_p3();
    void thread_butterfly_pass_fu_313_p2();
    void thread_butterfly_span_fu_301_p2();
    void thread_data_OUT1_M_imag_address0();
    void thread_data_OUT1_M_imag_address1();
    void thread_data_OUT1_M_imag_ce0();
    void thread_data_OUT1_M_imag_ce1();
    void thread_data_OUT1_M_real_address0();
    void thread_data_OUT1_M_real_address1();
    void thread_data_OUT1_M_real_ce0();
    void thread_data_OUT1_M_real_ce1();
    void thread_data_OUT2_M_imag_address0();
    void thread_data_OUT2_M_imag_address1();
    void thread_data_OUT2_M_imag_ce0();
    void thread_data_OUT2_M_imag_ce1();
    void thread_data_OUT2_M_imag_d0();
    void thread_data_OUT2_M_imag_d1();
    void thread_data_OUT2_M_imag_we0();
    void thread_data_OUT2_M_imag_we1();
    void thread_data_OUT2_M_real_address0();
    void thread_data_OUT2_M_real_address1();
    void thread_data_OUT2_M_real_ce0();
    void thread_data_OUT2_M_real_ce1();
    void thread_data_OUT2_M_real_d0();
    void thread_data_OUT2_M_real_d1();
    void thread_data_OUT2_M_real_we0();
    void thread_data_OUT2_M_real_we1();
    void thread_i_fu_253_p2();
    void thread_icmp_ln53_fu_247_p2();
    void thread_icmp_ln61_fu_295_p2();
    void thread_icmp_ln63_fu_307_p2();
    void thread_index_fu_259_p2();
    void thread_select_ln61_fu_327_p3();
    void thread_sext_ln58_4_fu_289_p1();
    void thread_sext_ln58_fu_283_p1();
    void thread_sext_ln59_fu_343_p1();
    void thread_shl_ln56_fu_265_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
