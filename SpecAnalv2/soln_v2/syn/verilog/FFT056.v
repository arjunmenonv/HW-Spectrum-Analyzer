// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FFT056 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_OUT4_M_imag_address0,
        data_OUT4_M_imag_ce0,
        data_OUT4_M_imag_we0,
        data_OUT4_M_imag_d0,
        data_OUT4_M_imag_address1,
        data_OUT4_M_imag_ce1,
        data_OUT4_M_imag_we1,
        data_OUT4_M_imag_d1,
        data_OUT4_M_real_address0,
        data_OUT4_M_real_ce0,
        data_OUT4_M_real_we0,
        data_OUT4_M_real_d0,
        data_OUT4_M_real_address1,
        data_OUT4_M_real_ce1,
        data_OUT4_M_real_we1,
        data_OUT4_M_real_d1,
        data_OUT3_M_real_address0,
        data_OUT3_M_real_ce0,
        data_OUT3_M_real_q0,
        data_OUT3_M_real_address1,
        data_OUT3_M_real_ce1,
        data_OUT3_M_real_q1,
        data_OUT3_M_imag_address0,
        data_OUT3_M_imag_ce0,
        data_OUT3_M_imag_q0,
        data_OUT3_M_imag_address1,
        data_OUT3_M_imag_ce1,
        data_OUT3_M_imag_q1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state19 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [4:0] data_OUT4_M_imag_address0;
output   data_OUT4_M_imag_ce0;
output   data_OUT4_M_imag_we0;
output  [31:0] data_OUT4_M_imag_d0;
output  [4:0] data_OUT4_M_imag_address1;
output   data_OUT4_M_imag_ce1;
output   data_OUT4_M_imag_we1;
output  [31:0] data_OUT4_M_imag_d1;
output  [4:0] data_OUT4_M_real_address0;
output   data_OUT4_M_real_ce0;
output   data_OUT4_M_real_we0;
output  [31:0] data_OUT4_M_real_d0;
output  [4:0] data_OUT4_M_real_address1;
output   data_OUT4_M_real_ce1;
output   data_OUT4_M_real_we1;
output  [31:0] data_OUT4_M_real_d1;
output  [4:0] data_OUT3_M_real_address0;
output   data_OUT3_M_real_ce0;
input  [31:0] data_OUT3_M_real_q0;
output  [4:0] data_OUT3_M_real_address1;
output   data_OUT3_M_real_ce1;
input  [31:0] data_OUT3_M_real_q1;
output  [4:0] data_OUT3_M_imag_address0;
output   data_OUT3_M_imag_ce0;
input  [31:0] data_OUT3_M_imag_q0;
output  [4:0] data_OUT3_M_imag_address1;
output   data_OUT3_M_imag_ce1;
input  [31:0] data_OUT3_M_imag_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_OUT4_M_imag_ce0;
reg data_OUT4_M_imag_we0;
reg data_OUT4_M_imag_ce1;
reg data_OUT4_M_imag_we1;
reg data_OUT4_M_real_ce0;
reg data_OUT4_M_real_we0;
reg data_OUT4_M_real_ce1;
reg data_OUT4_M_real_we1;
reg data_OUT3_M_real_ce0;
reg data_OUT3_M_real_ce1;
reg data_OUT3_M_imag_ce0;
reg data_OUT3_M_imag_ce1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [3:0] W_M_real62_address0;
reg    W_M_real62_ce0;
wire   [31:0] W_M_real62_q0;
wire   [3:0] W_M_imag58_address0;
reg    W_M_imag58_ce0;
wire   [31:0] W_M_imag58_q0;
reg   [31:0] butterfly_span_0_i_reg_174;
reg   [31:0] butterfly_pass_0_i_reg_185;
reg   [4:0] i_0_i_reg_196;
wire   [0:0] icmp_ln53_fu_247_p2;
reg   [0:0] icmp_ln53_reg_348;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_state14_pp0_stage0_iter12;
wire    ap_block_state15_pp0_stage0_iter13;
wire    ap_block_state16_pp0_stage0_iter14;
wire    ap_block_state17_pp0_stage0_iter15;
wire    ap_block_state18_pp0_stage0_iter16;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln53_reg_348_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter5_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter6_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter7_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter8_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter9_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter10_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter11_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter12_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter13_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter14_reg;
reg   [0:0] icmp_ln53_reg_348_pp0_iter15_reg;
wire   [4:0] i_fu_253_p2;
reg    ap_enable_reg_pp0_iter0;
wire  signed [31:0] Ulimit_fu_271_p2;
reg  signed [31:0] Ulimit_reg_357;
reg  signed [31:0] Ulimit_reg_357_pp0_iter1_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter2_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter3_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter4_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter5_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter6_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter7_reg;
reg  signed [31:0] Ulimit_reg_357_pp0_iter8_reg;
wire  signed [63:0] sext_ln58_2_fu_289_p1;
reg  signed [63:0] sext_ln58_2_reg_372;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter1_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter2_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter3_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter4_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter5_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter6_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter7_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter8_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter9_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter10_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter11_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter12_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter13_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter14_reg;
reg  signed [63:0] sext_ln58_2_reg_372_pp0_iter15_reg;
wire   [31:0] select_ln61_fu_327_p3;
wire   [31:0] butterfly_pass_4_fu_335_p3;
reg   [31:0] p_r_M_real_reg_398;
reg   [31:0] p_r_M_imag_reg_404;
reg   [31:0] p_t_real_reg_410;
reg    ap_enable_reg_pp0_iter1;
reg   [31:0] p_t_imag_reg_416;
wire   [31:0] grp_fu_231_p2;
reg   [31:0] tmp_i_i_i_reg_422;
wire   [31:0] grp_fu_235_p2;
reg   [31:0] tmp_3_i_i_i_reg_427;
wire   [31:0] grp_fu_239_p2;
reg   [31:0] tmp_5_i_i_i_reg_432;
wire   [31:0] grp_fu_243_p2;
reg   [31:0] tmp_6_i_i_i_reg_437;
wire  signed [63:0] sext_ln59_fu_343_p1;
reg  signed [63:0] sext_ln59_reg_442;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter10_reg;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter11_reg;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter12_reg;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter13_reg;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter14_reg;
reg  signed [63:0] sext_ln59_reg_442_pp0_iter15_reg;
wire   [31:0] grp_fu_207_p2;
reg   [31:0] Product_M_real_reg_458;
wire   [31:0] grp_fu_211_p2;
reg   [31:0] Product_M_imag_reg_464;
reg   [31:0] p_r_M_real_2_reg_470;
reg    ap_enable_reg_pp0_iter10;
reg   [31:0] p_r_M_imag_2_reg_476;
wire   [31:0] grp_fu_215_p2;
reg   [31:0] complex_M_real_writ_reg_482;
wire   [31:0] grp_fu_219_p2;
reg   [31:0] complex_M_imag_writ_reg_487;
wire   [31:0] grp_fu_223_p2;
reg   [31:0] complex_M_real_writ_2_reg_492;
wire   [31:0] grp_fu_227_p2;
reg   [31:0] complex_M_imag_writ_2_reg_497;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
wire  signed [63:0] sext_ln58_fu_283_p1;
wire    ap_block_pp0_stage0;
wire   [31:0] shl_ln56_fu_265_p2;
wire   [31:0] index_fu_259_p2;
wire   [31:0] Llimit_fu_277_p2;
wire   [0:0] icmp_ln63_fu_307_p2;
wire   [31:0] butterfly_pass_fu_313_p2;
wire   [0:0] icmp_ln61_fu_295_p2;
wire   [31:0] butterfly_span_fu_301_p2;
wire   [31:0] butterfly_pass_3_fu_319_p3;
wire    ap_CS_fsm_state19;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
end

FFT053_W_M_real65 #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
W_M_real62_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_M_real62_address0),
    .ce0(W_M_real62_ce0),
    .q0(W_M_real62_q0)
);

FFT053_W_M_imag61 #(
    .DataWidth( 32 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
W_M_imag58_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(W_M_imag58_address0),
    .ce0(W_M_imag58_ce0),
    .q0(W_M_imag58_q0)
);

FFT_fsub_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fsub_32ns_32nbkb_U57(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_i_i_i_reg_422),
    .din1(tmp_3_i_i_i_reg_427),
    .ce(1'b1),
    .dout(grp_fu_207_p2)
);

FFT_fadd_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fadd_32ns_32ncud_U58(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_5_i_i_i_reg_432),
    .din1(tmp_6_i_i_i_reg_437),
    .ce(1'b1),
    .dout(grp_fu_211_p2)
);

FFT_fsub_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fsub_32ns_32nbkb_U59(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_real_2_reg_470),
    .din1(Product_M_real_reg_458),
    .ce(1'b1),
    .dout(grp_fu_215_p2)
);

FFT_fsub_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fsub_32ns_32nbkb_U60(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_imag_2_reg_476),
    .din1(Product_M_imag_reg_464),
    .ce(1'b1),
    .dout(grp_fu_219_p2)
);

FFT_fadd_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fadd_32ns_32ncud_U61(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_real_2_reg_470),
    .din1(Product_M_real_reg_458),
    .ce(1'b1),
    .dout(grp_fu_223_p2)
);

FFT_fadd_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fadd_32ns_32ncud_U62(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_imag_2_reg_476),
    .din1(Product_M_imag_reg_464),
    .ce(1'b1),
    .dout(grp_fu_227_p2)
);

FFT_fmul_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fmul_32ns_32ndEe_U63(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_real_reg_398),
    .din1(p_t_real_reg_410),
    .ce(1'b1),
    .dout(grp_fu_231_p2)
);

FFT_fmul_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fmul_32ns_32ndEe_U64(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_imag_reg_404),
    .din1(p_t_imag_reg_416),
    .ce(1'b1),
    .dout(grp_fu_235_p2)
);

FFT_fmul_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fmul_32ns_32ndEe_U65(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_imag_reg_404),
    .din1(p_t_real_reg_410),
    .ce(1'b1),
    .dout(grp_fu_239_p2)
);

FFT_fmul_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
FFT_fmul_32ns_32ndEe_U66(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_r_M_real_reg_398),
    .din1(p_t_imag_reg_416),
    .ce(1'b1),
    .dout(grp_fu_243_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state19)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        butterfly_pass_0_i_reg_185 <= butterfly_pass_4_fu_335_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        butterfly_pass_0_i_reg_185 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        butterfly_span_0_i_reg_174 <= select_ln61_fu_327_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        butterfly_span_0_i_reg_174 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_i_reg_196 <= i_fu_253_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_reg_196 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Product_M_imag_reg_464 <= grp_fu_211_p2;
        Product_M_real_reg_458 <= grp_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Ulimit_reg_357 <= Ulimit_fu_271_p2;
        sext_ln58_2_reg_372 <= sext_ln58_2_fu_289_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Ulimit_reg_357_pp0_iter1_reg <= Ulimit_reg_357;
        icmp_ln53_reg_348 <= icmp_ln53_fu_247_p2;
        icmp_ln53_reg_348_pp0_iter1_reg <= icmp_ln53_reg_348;
        sext_ln58_2_reg_372_pp0_iter1_reg <= sext_ln58_2_reg_372;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        Ulimit_reg_357_pp0_iter2_reg <= Ulimit_reg_357_pp0_iter1_reg;
        Ulimit_reg_357_pp0_iter3_reg <= Ulimit_reg_357_pp0_iter2_reg;
        Ulimit_reg_357_pp0_iter4_reg <= Ulimit_reg_357_pp0_iter3_reg;
        Ulimit_reg_357_pp0_iter5_reg <= Ulimit_reg_357_pp0_iter4_reg;
        Ulimit_reg_357_pp0_iter6_reg <= Ulimit_reg_357_pp0_iter5_reg;
        Ulimit_reg_357_pp0_iter7_reg <= Ulimit_reg_357_pp0_iter6_reg;
        Ulimit_reg_357_pp0_iter8_reg <= Ulimit_reg_357_pp0_iter7_reg;
        icmp_ln53_reg_348_pp0_iter10_reg <= icmp_ln53_reg_348_pp0_iter9_reg;
        icmp_ln53_reg_348_pp0_iter11_reg <= icmp_ln53_reg_348_pp0_iter10_reg;
        icmp_ln53_reg_348_pp0_iter12_reg <= icmp_ln53_reg_348_pp0_iter11_reg;
        icmp_ln53_reg_348_pp0_iter13_reg <= icmp_ln53_reg_348_pp0_iter12_reg;
        icmp_ln53_reg_348_pp0_iter14_reg <= icmp_ln53_reg_348_pp0_iter13_reg;
        icmp_ln53_reg_348_pp0_iter15_reg <= icmp_ln53_reg_348_pp0_iter14_reg;
        icmp_ln53_reg_348_pp0_iter2_reg <= icmp_ln53_reg_348_pp0_iter1_reg;
        icmp_ln53_reg_348_pp0_iter3_reg <= icmp_ln53_reg_348_pp0_iter2_reg;
        icmp_ln53_reg_348_pp0_iter4_reg <= icmp_ln53_reg_348_pp0_iter3_reg;
        icmp_ln53_reg_348_pp0_iter5_reg <= icmp_ln53_reg_348_pp0_iter4_reg;
        icmp_ln53_reg_348_pp0_iter6_reg <= icmp_ln53_reg_348_pp0_iter5_reg;
        icmp_ln53_reg_348_pp0_iter7_reg <= icmp_ln53_reg_348_pp0_iter6_reg;
        icmp_ln53_reg_348_pp0_iter8_reg <= icmp_ln53_reg_348_pp0_iter7_reg;
        icmp_ln53_reg_348_pp0_iter9_reg <= icmp_ln53_reg_348_pp0_iter8_reg;
        sext_ln58_2_reg_372_pp0_iter10_reg <= sext_ln58_2_reg_372_pp0_iter9_reg;
        sext_ln58_2_reg_372_pp0_iter11_reg <= sext_ln58_2_reg_372_pp0_iter10_reg;
        sext_ln58_2_reg_372_pp0_iter12_reg <= sext_ln58_2_reg_372_pp0_iter11_reg;
        sext_ln58_2_reg_372_pp0_iter13_reg <= sext_ln58_2_reg_372_pp0_iter12_reg;
        sext_ln58_2_reg_372_pp0_iter14_reg <= sext_ln58_2_reg_372_pp0_iter13_reg;
        sext_ln58_2_reg_372_pp0_iter15_reg <= sext_ln58_2_reg_372_pp0_iter14_reg;
        sext_ln58_2_reg_372_pp0_iter2_reg <= sext_ln58_2_reg_372_pp0_iter1_reg;
        sext_ln58_2_reg_372_pp0_iter3_reg <= sext_ln58_2_reg_372_pp0_iter2_reg;
        sext_ln58_2_reg_372_pp0_iter4_reg <= sext_ln58_2_reg_372_pp0_iter3_reg;
        sext_ln58_2_reg_372_pp0_iter5_reg <= sext_ln58_2_reg_372_pp0_iter4_reg;
        sext_ln58_2_reg_372_pp0_iter6_reg <= sext_ln58_2_reg_372_pp0_iter5_reg;
        sext_ln58_2_reg_372_pp0_iter7_reg <= sext_ln58_2_reg_372_pp0_iter6_reg;
        sext_ln58_2_reg_372_pp0_iter8_reg <= sext_ln58_2_reg_372_pp0_iter7_reg;
        sext_ln58_2_reg_372_pp0_iter9_reg <= sext_ln58_2_reg_372_pp0_iter8_reg;
        sext_ln59_reg_442_pp0_iter10_reg <= sext_ln59_reg_442;
        sext_ln59_reg_442_pp0_iter11_reg <= sext_ln59_reg_442_pp0_iter10_reg;
        sext_ln59_reg_442_pp0_iter12_reg <= sext_ln59_reg_442_pp0_iter11_reg;
        sext_ln59_reg_442_pp0_iter13_reg <= sext_ln59_reg_442_pp0_iter12_reg;
        sext_ln59_reg_442_pp0_iter14_reg <= sext_ln59_reg_442_pp0_iter13_reg;
        sext_ln59_reg_442_pp0_iter15_reg <= sext_ln59_reg_442_pp0_iter14_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348_pp0_iter14_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        complex_M_imag_writ_2_reg_497 <= grp_fu_227_p2;
        complex_M_imag_writ_reg_487 <= grp_fu_219_p2;
        complex_M_real_writ_2_reg_492 <= grp_fu_223_p2;
        complex_M_real_writ_reg_482 <= grp_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln53_reg_348_pp0_iter9_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_r_M_imag_2_reg_476 <= data_OUT3_M_imag_q1;
        p_r_M_real_2_reg_470 <= data_OUT3_M_real_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_r_M_imag_reg_404 <= W_M_imag58_q0;
        p_r_M_real_reg_398 <= W_M_real62_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_t_imag_reg_416 <= data_OUT3_M_imag_q0;
        p_t_real_reg_410 <= data_OUT3_M_real_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348_pp0_iter8_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sext_ln59_reg_442 <= sext_ln59_fu_343_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_348_pp0_iter4_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_i_i_i_reg_427 <= grp_fu_235_p2;
        tmp_5_i_i_i_reg_432 <= grp_fu_239_p2;
        tmp_6_i_i_i_reg_437 <= grp_fu_243_p2;
        tmp_i_i_i_reg_422 <= grp_fu_231_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        W_M_imag58_ce0 = 1'b1;
    end else begin
        W_M_imag58_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        W_M_real62_ce0 = 1'b1;
    end else begin
        W_M_real62_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln53_fu_247_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT3_M_imag_ce0 = 1'b1;
    end else begin
        data_OUT3_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT3_M_imag_ce1 = 1'b1;
    end else begin
        data_OUT3_M_imag_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT3_M_real_ce0 = 1'b1;
    end else begin
        data_OUT3_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT3_M_real_ce1 = 1'b1;
    end else begin
        data_OUT3_M_real_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_imag_ce0 = 1'b1;
    end else begin
        data_OUT4_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_imag_ce1 = 1'b1;
    end else begin
        data_OUT4_M_imag_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_348_pp0_iter15_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_imag_we0 = 1'b1;
    end else begin
        data_OUT4_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_348_pp0_iter15_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_imag_we1 = 1'b1;
    end else begin
        data_OUT4_M_imag_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_real_ce0 = 1'b1;
    end else begin
        data_OUT4_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_real_ce1 = 1'b1;
    end else begin
        data_OUT4_M_real_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_348_pp0_iter15_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_real_we0 = 1'b1;
    end else begin
        data_OUT4_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln53_reg_348_pp0_iter15_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_OUT4_M_real_we1 = 1'b1;
    end else begin
        data_OUT4_M_real_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln53_fu_247_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter15 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter15 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1)) | ((icmp_ln53_fu_247_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Llimit_fu_277_p2 = ($signed(32'd8) + $signed(Ulimit_fu_271_p2));

assign Ulimit_fu_271_p2 = (butterfly_span_0_i_reg_174 + shl_ln56_fu_265_p2);

assign W_M_imag58_address0 = sext_ln58_fu_283_p1;

assign W_M_real62_address0 = sext_ln58_fu_283_p1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign butterfly_pass_3_fu_319_p3 = ((icmp_ln63_fu_307_p2[0:0] === 1'b1) ? butterfly_pass_fu_313_p2 : 32'd0);

assign butterfly_pass_4_fu_335_p3 = ((icmp_ln61_fu_295_p2[0:0] === 1'b1) ? butterfly_pass_0_i_reg_185 : butterfly_pass_3_fu_319_p3);

assign butterfly_pass_fu_313_p2 = (32'd1 + butterfly_pass_0_i_reg_185);

assign butterfly_span_fu_301_p2 = (32'd1 + butterfly_span_0_i_reg_174);

assign data_OUT3_M_imag_address0 = sext_ln58_2_fu_289_p1;

assign data_OUT3_M_imag_address1 = sext_ln59_fu_343_p1;

assign data_OUT3_M_real_address0 = sext_ln58_2_fu_289_p1;

assign data_OUT3_M_real_address1 = sext_ln59_fu_343_p1;

assign data_OUT4_M_imag_address0 = sext_ln58_2_reg_372_pp0_iter15_reg;

assign data_OUT4_M_imag_address1 = sext_ln59_reg_442_pp0_iter15_reg;

assign data_OUT4_M_imag_d0 = complex_M_imag_writ_reg_487;

assign data_OUT4_M_imag_d1 = complex_M_imag_writ_2_reg_497;

assign data_OUT4_M_real_address0 = sext_ln58_2_reg_372_pp0_iter15_reg;

assign data_OUT4_M_real_address1 = sext_ln59_reg_442_pp0_iter15_reg;

assign data_OUT4_M_real_d0 = complex_M_real_writ_reg_482;

assign data_OUT4_M_real_d1 = complex_M_real_writ_2_reg_492;

assign i_fu_253_p2 = (i_0_i_reg_196 + 5'd1);

assign icmp_ln53_fu_247_p2 = ((i_0_i_reg_196 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln61_fu_295_p2 = (($signed(butterfly_span_0_i_reg_174) < $signed(32'd7)) ? 1'b1 : 1'b0);

assign icmp_ln63_fu_307_p2 = (($signed(butterfly_pass_0_i_reg_185) < $signed(32'd1)) ? 1'b1 : 1'b0);

assign index_fu_259_p2 = butterfly_span_0_i_reg_174 << 32'd1;

assign select_ln61_fu_327_p3 = ((icmp_ln61_fu_295_p2[0:0] === 1'b1) ? butterfly_span_fu_301_p2 : 32'd0);

assign sext_ln58_2_fu_289_p1 = $signed(Llimit_fu_277_p2);

assign sext_ln58_fu_283_p1 = $signed(index_fu_259_p2);

assign sext_ln59_fu_343_p1 = Ulimit_reg_357_pp0_iter8_reg;

assign shl_ln56_fu_265_p2 = butterfly_pass_0_i_reg_185 << 32'd4;

endmodule //FFT056
