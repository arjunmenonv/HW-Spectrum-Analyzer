// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec 25 20:16:42 2020
// Host        : arjun-Lenovo-ubuntu18 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_counter_0_0_sim_netlist.v
// Design      : design_1_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "1'b1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (ap_clk,
    ap_rst_n,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [4:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [4:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_start;
  wire \ctr[0]_i_2_n_0 ;
  wire [31:0]ctr_reg;
  wire \ctr_reg[0]_i_1_n_0 ;
  wire \ctr_reg[0]_i_1_n_1 ;
  wire \ctr_reg[0]_i_1_n_2 ;
  wire \ctr_reg[0]_i_1_n_3 ;
  wire \ctr_reg[0]_i_1_n_4 ;
  wire \ctr_reg[0]_i_1_n_5 ;
  wire \ctr_reg[0]_i_1_n_6 ;
  wire \ctr_reg[0]_i_1_n_7 ;
  wire \ctr_reg[12]_i_1_n_0 ;
  wire \ctr_reg[12]_i_1_n_1 ;
  wire \ctr_reg[12]_i_1_n_2 ;
  wire \ctr_reg[12]_i_1_n_3 ;
  wire \ctr_reg[12]_i_1_n_4 ;
  wire \ctr_reg[12]_i_1_n_5 ;
  wire \ctr_reg[12]_i_1_n_6 ;
  wire \ctr_reg[12]_i_1_n_7 ;
  wire \ctr_reg[16]_i_1_n_0 ;
  wire \ctr_reg[16]_i_1_n_1 ;
  wire \ctr_reg[16]_i_1_n_2 ;
  wire \ctr_reg[16]_i_1_n_3 ;
  wire \ctr_reg[16]_i_1_n_4 ;
  wire \ctr_reg[16]_i_1_n_5 ;
  wire \ctr_reg[16]_i_1_n_6 ;
  wire \ctr_reg[16]_i_1_n_7 ;
  wire \ctr_reg[20]_i_1_n_0 ;
  wire \ctr_reg[20]_i_1_n_1 ;
  wire \ctr_reg[20]_i_1_n_2 ;
  wire \ctr_reg[20]_i_1_n_3 ;
  wire \ctr_reg[20]_i_1_n_4 ;
  wire \ctr_reg[20]_i_1_n_5 ;
  wire \ctr_reg[20]_i_1_n_6 ;
  wire \ctr_reg[20]_i_1_n_7 ;
  wire \ctr_reg[24]_i_1_n_0 ;
  wire \ctr_reg[24]_i_1_n_1 ;
  wire \ctr_reg[24]_i_1_n_2 ;
  wire \ctr_reg[24]_i_1_n_3 ;
  wire \ctr_reg[24]_i_1_n_4 ;
  wire \ctr_reg[24]_i_1_n_5 ;
  wire \ctr_reg[24]_i_1_n_6 ;
  wire \ctr_reg[24]_i_1_n_7 ;
  wire \ctr_reg[28]_i_1_n_1 ;
  wire \ctr_reg[28]_i_1_n_2 ;
  wire \ctr_reg[28]_i_1_n_3 ;
  wire \ctr_reg[28]_i_1_n_4 ;
  wire \ctr_reg[28]_i_1_n_5 ;
  wire \ctr_reg[28]_i_1_n_6 ;
  wire \ctr_reg[28]_i_1_n_7 ;
  wire \ctr_reg[4]_i_1_n_0 ;
  wire \ctr_reg[4]_i_1_n_1 ;
  wire \ctr_reg[4]_i_1_n_2 ;
  wire \ctr_reg[4]_i_1_n_3 ;
  wire \ctr_reg[4]_i_1_n_4 ;
  wire \ctr_reg[4]_i_1_n_5 ;
  wire \ctr_reg[4]_i_1_n_6 ;
  wire \ctr_reg[4]_i_1_n_7 ;
  wire \ctr_reg[8]_i_1_n_0 ;
  wire \ctr_reg[8]_i_1_n_1 ;
  wire \ctr_reg[8]_i_1_n_2 ;
  wire \ctr_reg[8]_i_1_n_3 ;
  wire \ctr_reg[8]_i_1_n_4 ;
  wire \ctr_reg[8]_i_1_n_5 ;
  wire \ctr_reg[8]_i_1_n_6 ;
  wire \ctr_reg[8]_i_1_n_7 ;
  wire interrupt;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [3:3]\NLW_ctr_reg[28]_i_1_CO_UNCONNECTED ;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_AXILiteS_s_axi counter_AXILiteS_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .interrupt(interrupt),
        .out(ctr_reg),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA({s_axi_AXILiteS_WDATA[7],s_axi_AXILiteS_WDATA[1:0]}),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB[0]),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
  LUT1 #(
    .INIT(2'h1)) 
    \ctr[0]_i_2 
       (.I0(ctr_reg[0]),
        .O(\ctr[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[0] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[0]_i_1_n_7 ),
        .Q(ctr_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ctr_reg[0]_i_1_n_0 ,\ctr_reg[0]_i_1_n_1 ,\ctr_reg[0]_i_1_n_2 ,\ctr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ctr_reg[0]_i_1_n_4 ,\ctr_reg[0]_i_1_n_5 ,\ctr_reg[0]_i_1_n_6 ,\ctr_reg[0]_i_1_n_7 }),
        .S({ctr_reg[3:1],\ctr[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[10] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[8]_i_1_n_5 ),
        .Q(ctr_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[11] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[8]_i_1_n_4 ),
        .Q(ctr_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[12] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[12]_i_1_n_7 ),
        .Q(ctr_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[12]_i_1 
       (.CI(\ctr_reg[8]_i_1_n_0 ),
        .CO({\ctr_reg[12]_i_1_n_0 ,\ctr_reg[12]_i_1_n_1 ,\ctr_reg[12]_i_1_n_2 ,\ctr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[12]_i_1_n_4 ,\ctr_reg[12]_i_1_n_5 ,\ctr_reg[12]_i_1_n_6 ,\ctr_reg[12]_i_1_n_7 }),
        .S(ctr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[13] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[12]_i_1_n_6 ),
        .Q(ctr_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[14] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[12]_i_1_n_5 ),
        .Q(ctr_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[15] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[12]_i_1_n_4 ),
        .Q(ctr_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[16] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[16]_i_1_n_7 ),
        .Q(ctr_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[16]_i_1 
       (.CI(\ctr_reg[12]_i_1_n_0 ),
        .CO({\ctr_reg[16]_i_1_n_0 ,\ctr_reg[16]_i_1_n_1 ,\ctr_reg[16]_i_1_n_2 ,\ctr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[16]_i_1_n_4 ,\ctr_reg[16]_i_1_n_5 ,\ctr_reg[16]_i_1_n_6 ,\ctr_reg[16]_i_1_n_7 }),
        .S(ctr_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[17] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[16]_i_1_n_6 ),
        .Q(ctr_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[18] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[16]_i_1_n_5 ),
        .Q(ctr_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[19] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[16]_i_1_n_4 ),
        .Q(ctr_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[1] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[0]_i_1_n_6 ),
        .Q(ctr_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[20] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[20]_i_1_n_7 ),
        .Q(ctr_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[20]_i_1 
       (.CI(\ctr_reg[16]_i_1_n_0 ),
        .CO({\ctr_reg[20]_i_1_n_0 ,\ctr_reg[20]_i_1_n_1 ,\ctr_reg[20]_i_1_n_2 ,\ctr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[20]_i_1_n_4 ,\ctr_reg[20]_i_1_n_5 ,\ctr_reg[20]_i_1_n_6 ,\ctr_reg[20]_i_1_n_7 }),
        .S(ctr_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[21] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[20]_i_1_n_6 ),
        .Q(ctr_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[22] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[20]_i_1_n_5 ),
        .Q(ctr_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[23] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[20]_i_1_n_4 ),
        .Q(ctr_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[24] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[24]_i_1_n_7 ),
        .Q(ctr_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[24]_i_1 
       (.CI(\ctr_reg[20]_i_1_n_0 ),
        .CO({\ctr_reg[24]_i_1_n_0 ,\ctr_reg[24]_i_1_n_1 ,\ctr_reg[24]_i_1_n_2 ,\ctr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[24]_i_1_n_4 ,\ctr_reg[24]_i_1_n_5 ,\ctr_reg[24]_i_1_n_6 ,\ctr_reg[24]_i_1_n_7 }),
        .S(ctr_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[25] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[24]_i_1_n_6 ),
        .Q(ctr_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[26] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[24]_i_1_n_5 ),
        .Q(ctr_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[27] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[24]_i_1_n_4 ),
        .Q(ctr_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[28] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[28]_i_1_n_7 ),
        .Q(ctr_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[28]_i_1 
       (.CI(\ctr_reg[24]_i_1_n_0 ),
        .CO({\NLW_ctr_reg[28]_i_1_CO_UNCONNECTED [3],\ctr_reg[28]_i_1_n_1 ,\ctr_reg[28]_i_1_n_2 ,\ctr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[28]_i_1_n_4 ,\ctr_reg[28]_i_1_n_5 ,\ctr_reg[28]_i_1_n_6 ,\ctr_reg[28]_i_1_n_7 }),
        .S(ctr_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[29] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[28]_i_1_n_6 ),
        .Q(ctr_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[2] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[0]_i_1_n_5 ),
        .Q(ctr_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[30] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[28]_i_1_n_5 ),
        .Q(ctr_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[31] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[28]_i_1_n_4 ),
        .Q(ctr_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[3] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[0]_i_1_n_4 ),
        .Q(ctr_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[4] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[4]_i_1_n_7 ),
        .Q(ctr_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[4]_i_1 
       (.CI(\ctr_reg[0]_i_1_n_0 ),
        .CO({\ctr_reg[4]_i_1_n_0 ,\ctr_reg[4]_i_1_n_1 ,\ctr_reg[4]_i_1_n_2 ,\ctr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[4]_i_1_n_4 ,\ctr_reg[4]_i_1_n_5 ,\ctr_reg[4]_i_1_n_6 ,\ctr_reg[4]_i_1_n_7 }),
        .S(ctr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[5] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[4]_i_1_n_6 ),
        .Q(ctr_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[6] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[4]_i_1_n_5 ),
        .Q(ctr_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[7] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[4]_i_1_n_4 ),
        .Q(ctr_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[8] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[8]_i_1_n_7 ),
        .Q(ctr_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ctr_reg[8]_i_1 
       (.CI(\ctr_reg[4]_i_1_n_0 ),
        .CO({\ctr_reg[8]_i_1_n_0 ,\ctr_reg[8]_i_1_n_1 ,\ctr_reg[8]_i_1_n_2 ,\ctr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ctr_reg[8]_i_1_n_4 ,\ctr_reg[8]_i_1_n_5 ,\ctr_reg[8]_i_1_n_6 ,\ctr_reg[8]_i_1_n_7 }),
        .S(ctr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ctr_reg[9] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(\ctr_reg[8]_i_1_n_6 ),
        .Q(ctr_reg[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_AXILiteS_s_axi
   (ap_start,
    \FSM_onehot_wstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_rstate_reg[1]_0 ,
    interrupt,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RDATA,
    ap_clk,
    out,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_RREADY,
    ap_rst_n,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_AWADDR);
  output ap_start;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output interrupt;
  output s_axi_AXILiteS_BVALID;
  output s_axi_AXILiteS_RVALID;
  output [31:0]s_axi_AXILiteS_RDATA;
  input ap_clk;
  input [31:0]out;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_WVALID;
  input [4:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  input s_axi_AXILiteS_BREADY;
  input s_axi_AXILiteS_RREADY;
  input ap_rst_n;
  input [2:0]s_axi_AXILiteS_WDATA;
  input [0:0]s_axi_AXILiteS_WSTRB;
  input [4:0]s_axi_AXILiteS_AWADDR;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [31:0]add_ln6_fu_22_p2;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire int_ap_done;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_idle;
  wire int_ap_ready;
  wire [31:0]int_ap_return;
  wire \int_ap_return_reg[12]_i_1_n_0 ;
  wire \int_ap_return_reg[12]_i_1_n_1 ;
  wire \int_ap_return_reg[12]_i_1_n_2 ;
  wire \int_ap_return_reg[12]_i_1_n_3 ;
  wire \int_ap_return_reg[16]_i_1_n_0 ;
  wire \int_ap_return_reg[16]_i_1_n_1 ;
  wire \int_ap_return_reg[16]_i_1_n_2 ;
  wire \int_ap_return_reg[16]_i_1_n_3 ;
  wire \int_ap_return_reg[20]_i_1_n_0 ;
  wire \int_ap_return_reg[20]_i_1_n_1 ;
  wire \int_ap_return_reg[20]_i_1_n_2 ;
  wire \int_ap_return_reg[20]_i_1_n_3 ;
  wire \int_ap_return_reg[24]_i_1_n_0 ;
  wire \int_ap_return_reg[24]_i_1_n_1 ;
  wire \int_ap_return_reg[24]_i_1_n_2 ;
  wire \int_ap_return_reg[24]_i_1_n_3 ;
  wire \int_ap_return_reg[28]_i_1_n_0 ;
  wire \int_ap_return_reg[28]_i_1_n_1 ;
  wire \int_ap_return_reg[28]_i_1_n_2 ;
  wire \int_ap_return_reg[28]_i_1_n_3 ;
  wire \int_ap_return_reg[31]_i_1_n_2 ;
  wire \int_ap_return_reg[31]_i_1_n_3 ;
  wire \int_ap_return_reg[4]_i_1_n_0 ;
  wire \int_ap_return_reg[4]_i_1_n_1 ;
  wire \int_ap_return_reg[4]_i_1_n_2 ;
  wire \int_ap_return_reg[4]_i_1_n_3 ;
  wire \int_ap_return_reg[8]_i_1_n_0 ;
  wire \int_ap_return_reg[8]_i_1_n_1 ;
  wire \int_ap_return_reg[8]_i_1_n_2 ;
  wire \int_ap_return_reg[8]_i_1_n_3 ;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_2_n_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[0]_i_2_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire [31:0]out;
  wire p_0_in;
  wire p_1_in__0;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [2:0]s_axi_AXILiteS_WDATA;
  wire [0:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [3:2]\NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_int_ap_return_reg[31]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8FBB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_RREADY),
        .I1(s_axi_AXILiteS_RVALID),
        .I2(s_axi_AXILiteS_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD5C0)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_RREADY),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_AXILiteS_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_RVALID),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFF444747)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_BREADY),
        .I4(s_axi_AXILiteS_BVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_AXILiteS_WVALID),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(s_axi_AXILiteS_BVALID),
        .I3(s_axi_AXILiteS_BREADY),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFCCC8)) 
    int_ap_done_i_1
       (.I0(s_axi_AXILiteS_ARADDR[4]),
        .I1(ap_start),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(int_ap_done_i_2_n_0),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    int_ap_done_i_2
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(s_axi_AXILiteS_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .I5(ap_start),
        .O(int_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    int_ap_idle_i_1
       (.I0(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(ap_rst_n_inv));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \int_ap_return[0]_i_1 
       (.I0(out[0]),
        .O(add_ln6_fu_22_p2[0]));
  FDRE \int_ap_return_reg[0] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[0]),
        .Q(int_ap_return[0]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[10] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[10]),
        .Q(int_ap_return[10]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[11] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[11]),
        .Q(int_ap_return[11]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[12] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[12]),
        .Q(int_ap_return[12]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[12]_i_1 
       (.CI(\int_ap_return_reg[8]_i_1_n_0 ),
        .CO({\int_ap_return_reg[12]_i_1_n_0 ,\int_ap_return_reg[12]_i_1_n_1 ,\int_ap_return_reg[12]_i_1_n_2 ,\int_ap_return_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[12:9]),
        .S(out[12:9]));
  FDRE \int_ap_return_reg[13] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[13]),
        .Q(int_ap_return[13]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[14] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[14]),
        .Q(int_ap_return[14]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[15] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[15]),
        .Q(int_ap_return[15]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[16] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[16]),
        .Q(int_ap_return[16]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[16]_i_1 
       (.CI(\int_ap_return_reg[12]_i_1_n_0 ),
        .CO({\int_ap_return_reg[16]_i_1_n_0 ,\int_ap_return_reg[16]_i_1_n_1 ,\int_ap_return_reg[16]_i_1_n_2 ,\int_ap_return_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[16:13]),
        .S(out[16:13]));
  FDRE \int_ap_return_reg[17] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[17]),
        .Q(int_ap_return[17]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[18] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[18]),
        .Q(int_ap_return[18]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[19] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[19]),
        .Q(int_ap_return[19]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[1] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[1]),
        .Q(int_ap_return[1]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[20] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[20]),
        .Q(int_ap_return[20]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[20]_i_1 
       (.CI(\int_ap_return_reg[16]_i_1_n_0 ),
        .CO({\int_ap_return_reg[20]_i_1_n_0 ,\int_ap_return_reg[20]_i_1_n_1 ,\int_ap_return_reg[20]_i_1_n_2 ,\int_ap_return_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[20:17]),
        .S(out[20:17]));
  FDRE \int_ap_return_reg[21] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[21]),
        .Q(int_ap_return[21]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[22] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[22]),
        .Q(int_ap_return[22]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[23] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[23]),
        .Q(int_ap_return[23]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[24] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[24]),
        .Q(int_ap_return[24]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[24]_i_1 
       (.CI(\int_ap_return_reg[20]_i_1_n_0 ),
        .CO({\int_ap_return_reg[24]_i_1_n_0 ,\int_ap_return_reg[24]_i_1_n_1 ,\int_ap_return_reg[24]_i_1_n_2 ,\int_ap_return_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[24:21]),
        .S(out[24:21]));
  FDRE \int_ap_return_reg[25] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[25]),
        .Q(int_ap_return[25]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[26] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[26]),
        .Q(int_ap_return[26]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[27] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[27]),
        .Q(int_ap_return[27]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[28] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[28]),
        .Q(int_ap_return[28]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[28]_i_1 
       (.CI(\int_ap_return_reg[24]_i_1_n_0 ),
        .CO({\int_ap_return_reg[28]_i_1_n_0 ,\int_ap_return_reg[28]_i_1_n_1 ,\int_ap_return_reg[28]_i_1_n_2 ,\int_ap_return_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[28:25]),
        .S(out[28:25]));
  FDRE \int_ap_return_reg[29] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[29]),
        .Q(int_ap_return[29]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[2] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[2]),
        .Q(int_ap_return[2]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[30] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[30]),
        .Q(int_ap_return[30]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[31] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[31]),
        .Q(int_ap_return[31]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[31]_i_1 
       (.CI(\int_ap_return_reg[28]_i_1_n_0 ),
        .CO({\NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED [3:2],\int_ap_return_reg[31]_i_1_n_2 ,\int_ap_return_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_int_ap_return_reg[31]_i_1_O_UNCONNECTED [3],add_ln6_fu_22_p2[31:29]}),
        .S({1'b0,out[31:29]}));
  FDRE \int_ap_return_reg[3] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[3]),
        .Q(int_ap_return[3]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[4] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[4]),
        .Q(int_ap_return[4]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\int_ap_return_reg[4]_i_1_n_0 ,\int_ap_return_reg[4]_i_1_n_1 ,\int_ap_return_reg[4]_i_1_n_2 ,\int_ap_return_reg[4]_i_1_n_3 }),
        .CYINIT(out[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[4:1]),
        .S(out[4:1]));
  FDRE \int_ap_return_reg[5] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[5]),
        .Q(int_ap_return[5]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[6] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[6]),
        .Q(int_ap_return[6]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[7] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[7]),
        .Q(int_ap_return[7]),
        .R(ap_rst_n_inv));
  FDRE \int_ap_return_reg[8] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[8]),
        .Q(int_ap_return[8]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_ap_return_reg[8]_i_1 
       (.CI(\int_ap_return_reg[4]_i_1_n_0 ),
        .CO({\int_ap_return_reg[8]_i_1_n_0 ,\int_ap_return_reg[8]_i_1_n_1 ,\int_ap_return_reg[8]_i_1_n_2 ,\int_ap_return_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln6_fu_22_p2[8:5]),
        .S(out[8:5]));
  FDRE \int_ap_return_reg[9] 
       (.C(ap_clk),
        .CE(ap_start),
        .D(add_ln6_fu_22_p2[9]),
        .Q(int_ap_return[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(ap_start),
        .I2(s_axi_AXILiteS_WDATA[0]),
        .I3(s_axi_AXILiteS_WSTRB),
        .I4(int_ap_start_i_2_n_0),
        .I5(\waddr_reg_n_0_[2] ),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    int_ap_start_i_2
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(int_ap_start_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    int_auto_restart_i_1
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(int_auto_restart),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(s_axi_AXILiteS_WSTRB),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \int_ier[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\waddr_reg_n_0_[0] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(s_axi_AXILiteS_WVALID),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_isr[0]_i_2_n_0 ),
        .I3(s_axi_AXILiteS_WSTRB),
        .I4(int_isr7_out),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .I5(\waddr_reg_n_0_[3] ),
        .O(\int_isr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[0]_i_3 
       (.I0(ap_start),
        .I1(\int_ier_reg_n_0_[0] ),
        .O(int_isr7_out));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_isr[0]_i_2_n_0 ),
        .I3(s_axi_AXILiteS_WSTRB),
        .I4(int_isr),
        .I5(p_1_in__0),
        .O(\int_isr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[1]_i_2 
       (.I0(ap_start),
        .I1(p_0_in),
        .O(int_isr));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in__0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(p_1_in__0),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'h80808080808F8080)) 
    \rdata[0]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(int_ap_return[0]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .I4(\rdata[0]_i_2_n_0 ),
        .I5(s_axi_AXILiteS_ARADDR[1]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_2 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(int_gie_reg_n_0),
        .I4(s_axi_AXILiteS_ARADDR[2]),
        .I5(ap_start),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80808F80)) 
    \rdata[1]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(int_ap_return[1]),
        .I2(s_axi_AXILiteS_ARADDR[4]),
        .I3(\rdata[1]_i_2_n_0 ),
        .I4(s_axi_AXILiteS_ARADDR[1]),
        .O(rdata[1]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \rdata[1]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[2]),
        .I1(int_ap_done),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(p_0_in),
        .I4(p_1_in__0),
        .I5(s_axi_AXILiteS_ARADDR[0]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \rdata[2]_i_1 
       (.I0(int_ap_return[2]),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(int_ap_idle),
        .O(rdata[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \rdata[31]_i_1 
       (.I0(\rdata[31]_i_2_n_0 ),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(s_axi_AXILiteS_ARADDR[0]),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(s_axi_AXILiteS_ARADDR[1]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_AXILiteS_ARVALID),
        .O(\rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \rdata[3]_i_1 
       (.I0(int_ap_return[3]),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(int_ap_ready),
        .O(rdata[3]));
  LUT4 #(
    .INIT(16'hB080)) 
    \rdata[7]_i_1 
       (.I0(int_ap_return[7]),
        .I1(s_axi_AXILiteS_ARADDR[4]),
        .I2(\rdata[7]_i_2_n_0 ),
        .I3(int_auto_restart),
        .O(rdata[7]));
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[7]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[2]),
        .I2(s_axi_AXILiteS_ARADDR[3]),
        .I3(s_axi_AXILiteS_ARADDR[1]),
        .O(\rdata[7]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(rdata[0]),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[10]),
        .Q(s_axi_AXILiteS_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[11]),
        .Q(s_axi_AXILiteS_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[12]),
        .Q(s_axi_AXILiteS_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[13]),
        .Q(s_axi_AXILiteS_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[14]),
        .Q(s_axi_AXILiteS_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[15]),
        .Q(s_axi_AXILiteS_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[16]),
        .Q(s_axi_AXILiteS_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[17]),
        .Q(s_axi_AXILiteS_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[18]),
        .Q(s_axi_AXILiteS_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[19]),
        .Q(s_axi_AXILiteS_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(rdata[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[20]),
        .Q(s_axi_AXILiteS_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[21]),
        .Q(s_axi_AXILiteS_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[22]),
        .Q(s_axi_AXILiteS_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[23]),
        .Q(s_axi_AXILiteS_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[24]),
        .Q(s_axi_AXILiteS_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[25]),
        .Q(s_axi_AXILiteS_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[26]),
        .Q(s_axi_AXILiteS_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[27]),
        .Q(s_axi_AXILiteS_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[28]),
        .Q(s_axi_AXILiteS_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[29]),
        .Q(s_axi_AXILiteS_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(rdata[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[30]),
        .Q(s_axi_AXILiteS_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[31]),
        .Q(s_axi_AXILiteS_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(rdata[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[4]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[5]),
        .Q(s_axi_AXILiteS_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[6]),
        .Q(s_axi_AXILiteS_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(rdata[7]),
        .Q(s_axi_AXILiteS_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[8]),
        .Q(s_axi_AXILiteS_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_2_n_0 ),
        .D(int_ap_return[9]),
        .Q(s_axi_AXILiteS_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_AXILiteS_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_counter_0_0,counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "counter,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) input [4:0]s_axi_AXILiteS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [4:0]s_axi_AXILiteS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_AXILiteS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [4:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [4:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;

  (* C_S_AXI_AXILITES_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* ap_ST_fsm_state1 = "1'b1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
