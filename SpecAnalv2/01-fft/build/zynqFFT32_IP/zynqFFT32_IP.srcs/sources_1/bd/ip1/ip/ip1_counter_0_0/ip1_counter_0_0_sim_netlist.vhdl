-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Dec 25 15:23:57 2020
-- Host        : arjun-Lenovo-ubuntu18 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/teach-fpga/01-fft/build/zynqFFT32_IP/zynqFFT32_IP.srcs/sources_1/bd/ip1/ip/ip1_counter_0_0/ip1_counter_0_0_sim_netlist.vhdl
-- Design      : ip1_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ip1_counter_0_0_counter_AXILiteS_s_axi is
  port (
    ap_start : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ip1_counter_0_0_counter_AXILiteS_s_axi : entity is "counter_AXILiteS_s_axi";
end ip1_counter_0_0_counter_AXILiteS_s_axi;

architecture STRUCTURE of ip1_counter_0_0_counter_AXILiteS_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal add_ln6_fu_22_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_idle : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_ap_idle : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_ap_return_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \int_ap_return_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_ap_return_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \int_ap_return_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \int_ap_return_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_2_n_0 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[0]_i_2_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_axilites_bvalid\ : STD_LOGIC;
  signal \^s_axi_axilites_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_int_ap_return_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of int_ap_done_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \int_ap_return_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \int_isr[0]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_isr[1]_i_2\ : label is "soft_lutpair2";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  ap_start <= \^ap_start\;
  s_axi_AXILiteS_BVALID <= \^s_axi_axilites_bvalid\;
  s_axi_AXILiteS_RVALID <= \^s_axi_axilites_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FBB"
    )
        port map (
      I0 => s_axi_AXILiteS_RREADY,
      I1 => \^s_axi_axilites_rvalid\,
      I2 => s_axi_AXILiteS_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => s_axi_AXILiteS_RREADY,
      I1 => s_axi_AXILiteS_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => \^s_axi_axilites_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_axilites_rvalid\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF444747"
    )
        port map (
      I0 => s_axi_AXILiteS_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_AXILiteS_BREADY,
      I4 => \^s_axi_axilites_bvalid\,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_AXILiteS_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_AXILiteS_WVALID,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_AXILiteS_WVALID,
      I2 => \^s_axi_axilites_bvalid\,
      I3 => s_axi_AXILiteS_BREADY,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_axilites_bvalid\,
      R => ap_rst_n_inv
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFCCC8"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(4),
      I1 => \^ap_start\,
      I2 => s_axi_AXILiteS_ARADDR(1),
      I3 => int_ap_done_i_2_n_0,
      I4 => int_ap_done,
      O => int_ap_done_i_1_n_0
    );
int_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(0),
      I1 => s_axi_AXILiteS_ARADDR(3),
      I2 => s_axi_AXILiteS_ARADDR(2),
      I3 => s_axi_AXILiteS_ARVALID,
      I4 => \^fsm_onehot_rstate_reg[1]_0\,
      I5 => \^ap_start\,
      O => int_ap_done_i_2_n_0
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => int_ap_done,
      R => ap_rst_n_inv
    );
int_ap_idle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_start\,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => int_ap_idle,
      R => ap_rst_n_inv
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^ap_start\,
      Q => int_ap_ready,
      R => ap_rst_n_inv
    );
\int_ap_return[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\(0),
      O => add_ln6_fu_22_p2(0)
    );
\int_ap_return_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(0),
      Q => int_ap_return(0),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(10),
      Q => int_ap_return(10),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(11),
      Q => int_ap_return(11),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(12),
      Q => int_ap_return(12),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[8]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[12]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[12]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[12]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(12 downto 9),
      S(3 downto 0) => \out\(12 downto 9)
    );
\int_ap_return_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(13),
      Q => int_ap_return(13),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(14),
      Q => int_ap_return(14),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(15),
      Q => int_ap_return(15),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(16),
      Q => int_ap_return(16),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[12]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[16]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[16]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[16]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(16 downto 13),
      S(3 downto 0) => \out\(16 downto 13)
    );
\int_ap_return_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(17),
      Q => int_ap_return(17),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(18),
      Q => int_ap_return(18),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(19),
      Q => int_ap_return(19),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(1),
      Q => int_ap_return(1),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(20),
      Q => int_ap_return(20),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[16]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[20]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[20]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[20]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(20 downto 17),
      S(3 downto 0) => \out\(20 downto 17)
    );
\int_ap_return_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(21),
      Q => int_ap_return(21),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(22),
      Q => int_ap_return(22),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(23),
      Q => int_ap_return(23),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(24),
      Q => int_ap_return(24),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[20]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[24]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[24]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[24]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(24 downto 21),
      S(3 downto 0) => \out\(24 downto 21)
    );
\int_ap_return_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(25),
      Q => int_ap_return(25),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(26),
      Q => int_ap_return(26),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(27),
      Q => int_ap_return(27),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(28),
      Q => int_ap_return(28),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[24]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[28]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[28]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[28]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(28 downto 25),
      S(3 downto 0) => \out\(28 downto 25)
    );
\int_ap_return_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(29),
      Q => int_ap_return(29),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(2),
      Q => int_ap_return(2),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(30),
      Q => int_ap_return(30),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(31),
      Q => int_ap_return(31),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_int_ap_return_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_ap_return_reg[31]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_int_ap_return_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => add_ln6_fu_22_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \out\(31 downto 29)
    );
\int_ap_return_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(3),
      Q => int_ap_return(3),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(4),
      Q => int_ap_return(4),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_ap_return_reg[4]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[4]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[4]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[4]_i_1_n_3\,
      CYINIT => \out\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(4 downto 1),
      S(3 downto 0) => \out\(4 downto 1)
    );
\int_ap_return_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(5),
      Q => int_ap_return(5),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(6),
      Q => int_ap_return(6),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(7),
      Q => int_ap_return(7),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(8),
      Q => int_ap_return(8),
      R => ap_rst_n_inv
    );
\int_ap_return_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_ap_return_reg[4]_i_1_n_0\,
      CO(3) => \int_ap_return_reg[8]_i_1_n_0\,
      CO(2) => \int_ap_return_reg[8]_i_1_n_1\,
      CO(1) => \int_ap_return_reg[8]_i_1_n_2\,
      CO(0) => \int_ap_return_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => add_ln6_fu_22_p2(8 downto 5),
      S(3 downto 0) => \out\(8 downto 5)
    );
\int_ap_return_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ap_start\,
      D => add_ln6_fu_22_p2(9),
      Q => int_ap_return(9),
      R => ap_rst_n_inv
    );
int_ap_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
        port map (
      I0 => int_auto_restart,
      I1 => \^ap_start\,
      I2 => s_axi_AXILiteS_WDATA(0),
      I3 => s_axi_AXILiteS_WSTRB(0),
      I4 => int_ap_start_i_2_n_0,
      I5 => \waddr_reg_n_0_[2]\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => s_axi_AXILiteS_WVALID,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => \waddr_reg_n_0_[3]\,
      O => int_ap_start_i_2_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => \^ap_start\,
      R => ap_rst_n_inv
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(2),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => int_auto_restart,
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => int_auto_restart,
      R => ap_rst_n_inv
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => ap_rst_n_inv
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(1),
      I1 => s_axi_AXILiteS_WSTRB(0),
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => p_0_in,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => s_axi_AXILiteS_WVALID,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => p_0_in,
      R => ap_rst_n_inv
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_isr[0]_i_2_n_0\,
      I3 => s_axi_AXILiteS_WSTRB(0),
      I4 => int_isr7_out,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => s_axi_AXILiteS_WVALID,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => \waddr_reg_n_0_[3]\,
      O => \int_isr[0]_i_2_n_0\
    );
\int_isr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_start\,
      I1 => \int_ier_reg_n_0_[0]\,
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(1),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \int_isr[0]_i_2_n_0\,
      I3 => s_axi_AXILiteS_WSTRB(0),
      I4 => int_isr,
      I5 => \p_1_in__0\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_start\,
      I1 => p_0_in,
      O => int_isr
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \p_1_in__0\,
      R => ap_rst_n_inv
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \p_1_in__0\,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => int_gie_reg_n_0,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080808F8080"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => int_ap_return(0),
      I2 => s_axi_AXILiteS_ARADDR(4),
      I3 => s_axi_AXILiteS_ARADDR(0),
      I4 => \rdata[0]_i_2_n_0\,
      I5 => s_axi_AXILiteS_ARADDR(1),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_ier_reg_n_0_[0]\,
      I2 => s_axi_AXILiteS_ARADDR(3),
      I3 => int_gie_reg_n_0,
      I4 => s_axi_AXILiteS_ARADDR(2),
      I5 => \^ap_start\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => int_ap_return(1),
      I2 => s_axi_AXILiteS_ARADDR(4),
      I3 => \rdata[1]_i_2_n_0\,
      I4 => s_axi_AXILiteS_ARADDR(1),
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(2),
      I1 => int_ap_done,
      I2 => s_axi_AXILiteS_ARADDR(3),
      I3 => p_0_in,
      I4 => \p_1_in__0\,
      I5 => s_axi_AXILiteS_ARADDR(0),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => int_ap_return(2),
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => \rdata[7]_i_2_n_0\,
      I3 => int_ap_idle,
      O => rdata(2)
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA2"
    )
        port map (
      I0 => \rdata[31]_i_2_n_0\,
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => s_axi_AXILiteS_ARADDR(0),
      I3 => s_axi_AXILiteS_ARADDR(2),
      I4 => s_axi_AXILiteS_ARADDR(3),
      I5 => s_axi_AXILiteS_ARADDR(1),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_AXILiteS_ARVALID,
      O => \rdata[31]_i_2_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => int_ap_return(3),
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => \rdata[7]_i_2_n_0\,
      I3 => int_ap_ready,
      O => rdata(3)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => int_ap_return(7),
      I1 => s_axi_AXILiteS_ARADDR(4),
      I2 => \rdata[7]_i_2_n_0\,
      I3 => int_auto_restart,
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(0),
      I1 => s_axi_AXILiteS_ARADDR(2),
      I2 => s_axi_AXILiteS_ARADDR(3),
      I3 => s_axi_AXILiteS_ARADDR(1),
      O => \rdata[7]_i_2_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => rdata(0),
      Q => s_axi_AXILiteS_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(10),
      Q => s_axi_AXILiteS_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(11),
      Q => s_axi_AXILiteS_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(12),
      Q => s_axi_AXILiteS_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(13),
      Q => s_axi_AXILiteS_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(14),
      Q => s_axi_AXILiteS_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(15),
      Q => s_axi_AXILiteS_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(16),
      Q => s_axi_AXILiteS_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(17),
      Q => s_axi_AXILiteS_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(18),
      Q => s_axi_AXILiteS_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(19),
      Q => s_axi_AXILiteS_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => rdata(1),
      Q => s_axi_AXILiteS_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(20),
      Q => s_axi_AXILiteS_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(21),
      Q => s_axi_AXILiteS_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(22),
      Q => s_axi_AXILiteS_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(23),
      Q => s_axi_AXILiteS_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(24),
      Q => s_axi_AXILiteS_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(25),
      Q => s_axi_AXILiteS_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(26),
      Q => s_axi_AXILiteS_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(27),
      Q => s_axi_AXILiteS_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(28),
      Q => s_axi_AXILiteS_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(29),
      Q => s_axi_AXILiteS_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => rdata(2),
      Q => s_axi_AXILiteS_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(30),
      Q => s_axi_AXILiteS_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(31),
      Q => s_axi_AXILiteS_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => rdata(3),
      Q => s_axi_AXILiteS_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(4),
      Q => s_axi_AXILiteS_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(5),
      Q => s_axi_AXILiteS_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(6),
      Q => s_axi_AXILiteS_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => rdata(7),
      Q => s_axi_AXILiteS_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(8),
      Q => s_axi_AXILiteS_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \rdata[31]_i_2_n_0\,
      D => int_ap_return(9),
      Q => s_axi_AXILiteS_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_AXILiteS_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ip1_counter_0_0_counter is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of ip1_counter_0_0_counter : entity is 5;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of ip1_counter_0_0_counter : entity is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of ip1_counter_0_0_counter : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of ip1_counter_0_0_counter : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of ip1_counter_0_0_counter : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ip1_counter_0_0_counter : entity is "counter";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of ip1_counter_0_0_counter : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of ip1_counter_0_0_counter : entity is "yes";
end ip1_counter_0_0_counter;

architecture STRUCTURE of ip1_counter_0_0_counter is
  signal \<const0>\ : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal \ctr[0]_i_2_n_0\ : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ctr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_ctr_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ctr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \ctr_reg[8]_i_1\ : label is 11;
begin
  s_axi_AXILiteS_BRESP(1) <= \<const0>\;
  s_axi_AXILiteS_BRESP(0) <= \<const0>\;
  s_axi_AXILiteS_RRESP(1) <= \<const0>\;
  s_axi_AXILiteS_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
counter_AXILiteS_s_axi_U: entity work.ip1_counter_0_0_counter_AXILiteS_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_AXILiteS_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_AXILiteS_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_AXILiteS_WREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      interrupt => interrupt,
      \out\(31 downto 0) => ctr_reg(31 downto 0),
      s_axi_AXILiteS_ARADDR(4 downto 0) => s_axi_AXILiteS_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => s_axi_AXILiteS_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => s_axi_AXILiteS_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(2) => s_axi_AXILiteS_WDATA(7),
      s_axi_AXILiteS_WDATA(1 downto 0) => s_axi_AXILiteS_WDATA(1 downto 0),
      s_axi_AXILiteS_WSTRB(0) => s_axi_AXILiteS_WSTRB(0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID
    );
\ctr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg(0),
      O => \ctr[0]_i_2_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[0]_i_1_n_7\,
      Q => ctr_reg(0),
      R => '0'
    );
\ctr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ctr_reg[0]_i_1_n_0\,
      CO(2) => \ctr_reg[0]_i_1_n_1\,
      CO(1) => \ctr_reg[0]_i_1_n_2\,
      CO(0) => \ctr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ctr_reg[0]_i_1_n_4\,
      O(2) => \ctr_reg[0]_i_1_n_5\,
      O(1) => \ctr_reg[0]_i_1_n_6\,
      O(0) => \ctr_reg[0]_i_1_n_7\,
      S(3 downto 1) => ctr_reg(3 downto 1),
      S(0) => \ctr[0]_i_2_n_0\
    );
\ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[8]_i_1_n_5\,
      Q => ctr_reg(10),
      R => '0'
    );
\ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[8]_i_1_n_4\,
      Q => ctr_reg(11),
      R => '0'
    );
\ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[12]_i_1_n_7\,
      Q => ctr_reg(12),
      R => '0'
    );
\ctr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[8]_i_1_n_0\,
      CO(3) => \ctr_reg[12]_i_1_n_0\,
      CO(2) => \ctr_reg[12]_i_1_n_1\,
      CO(1) => \ctr_reg[12]_i_1_n_2\,
      CO(0) => \ctr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[12]_i_1_n_4\,
      O(2) => \ctr_reg[12]_i_1_n_5\,
      O(1) => \ctr_reg[12]_i_1_n_6\,
      O(0) => \ctr_reg[12]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(15 downto 12)
    );
\ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[12]_i_1_n_6\,
      Q => ctr_reg(13),
      R => '0'
    );
\ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[12]_i_1_n_5\,
      Q => ctr_reg(14),
      R => '0'
    );
\ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[12]_i_1_n_4\,
      Q => ctr_reg(15),
      R => '0'
    );
\ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[16]_i_1_n_7\,
      Q => ctr_reg(16),
      R => '0'
    );
\ctr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[12]_i_1_n_0\,
      CO(3) => \ctr_reg[16]_i_1_n_0\,
      CO(2) => \ctr_reg[16]_i_1_n_1\,
      CO(1) => \ctr_reg[16]_i_1_n_2\,
      CO(0) => \ctr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[16]_i_1_n_4\,
      O(2) => \ctr_reg[16]_i_1_n_5\,
      O(1) => \ctr_reg[16]_i_1_n_6\,
      O(0) => \ctr_reg[16]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(19 downto 16)
    );
\ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[16]_i_1_n_6\,
      Q => ctr_reg(17),
      R => '0'
    );
\ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[16]_i_1_n_5\,
      Q => ctr_reg(18),
      R => '0'
    );
\ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[16]_i_1_n_4\,
      Q => ctr_reg(19),
      R => '0'
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[0]_i_1_n_6\,
      Q => ctr_reg(1),
      R => '0'
    );
\ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[20]_i_1_n_7\,
      Q => ctr_reg(20),
      R => '0'
    );
\ctr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[16]_i_1_n_0\,
      CO(3) => \ctr_reg[20]_i_1_n_0\,
      CO(2) => \ctr_reg[20]_i_1_n_1\,
      CO(1) => \ctr_reg[20]_i_1_n_2\,
      CO(0) => \ctr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[20]_i_1_n_4\,
      O(2) => \ctr_reg[20]_i_1_n_5\,
      O(1) => \ctr_reg[20]_i_1_n_6\,
      O(0) => \ctr_reg[20]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(23 downto 20)
    );
\ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[20]_i_1_n_6\,
      Q => ctr_reg(21),
      R => '0'
    );
\ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[20]_i_1_n_5\,
      Q => ctr_reg(22),
      R => '0'
    );
\ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[20]_i_1_n_4\,
      Q => ctr_reg(23),
      R => '0'
    );
\ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[24]_i_1_n_7\,
      Q => ctr_reg(24),
      R => '0'
    );
\ctr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[20]_i_1_n_0\,
      CO(3) => \ctr_reg[24]_i_1_n_0\,
      CO(2) => \ctr_reg[24]_i_1_n_1\,
      CO(1) => \ctr_reg[24]_i_1_n_2\,
      CO(0) => \ctr_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[24]_i_1_n_4\,
      O(2) => \ctr_reg[24]_i_1_n_5\,
      O(1) => \ctr_reg[24]_i_1_n_6\,
      O(0) => \ctr_reg[24]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(27 downto 24)
    );
\ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[24]_i_1_n_6\,
      Q => ctr_reg(25),
      R => '0'
    );
\ctr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[24]_i_1_n_5\,
      Q => ctr_reg(26),
      R => '0'
    );
\ctr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[24]_i_1_n_4\,
      Q => ctr_reg(27),
      R => '0'
    );
\ctr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[28]_i_1_n_7\,
      Q => ctr_reg(28),
      R => '0'
    );
\ctr_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[24]_i_1_n_0\,
      CO(3) => \NLW_ctr_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ctr_reg[28]_i_1_n_1\,
      CO(1) => \ctr_reg[28]_i_1_n_2\,
      CO(0) => \ctr_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[28]_i_1_n_4\,
      O(2) => \ctr_reg[28]_i_1_n_5\,
      O(1) => \ctr_reg[28]_i_1_n_6\,
      O(0) => \ctr_reg[28]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(31 downto 28)
    );
\ctr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[28]_i_1_n_6\,
      Q => ctr_reg(29),
      R => '0'
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[0]_i_1_n_5\,
      Q => ctr_reg(2),
      R => '0'
    );
\ctr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[28]_i_1_n_5\,
      Q => ctr_reg(30),
      R => '0'
    );
\ctr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[28]_i_1_n_4\,
      Q => ctr_reg(31),
      R => '0'
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[0]_i_1_n_4\,
      Q => ctr_reg(3),
      R => '0'
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[4]_i_1_n_7\,
      Q => ctr_reg(4),
      R => '0'
    );
\ctr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[0]_i_1_n_0\,
      CO(3) => \ctr_reg[4]_i_1_n_0\,
      CO(2) => \ctr_reg[4]_i_1_n_1\,
      CO(1) => \ctr_reg[4]_i_1_n_2\,
      CO(0) => \ctr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[4]_i_1_n_4\,
      O(2) => \ctr_reg[4]_i_1_n_5\,
      O(1) => \ctr_reg[4]_i_1_n_6\,
      O(0) => \ctr_reg[4]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(7 downto 4)
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[4]_i_1_n_6\,
      Q => ctr_reg(5),
      R => '0'
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[4]_i_1_n_5\,
      Q => ctr_reg(6),
      R => '0'
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[4]_i_1_n_4\,
      Q => ctr_reg(7),
      R => '0'
    );
\ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[8]_i_1_n_7\,
      Q => ctr_reg(8),
      R => '0'
    );
\ctr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ctr_reg[4]_i_1_n_0\,
      CO(3) => \ctr_reg[8]_i_1_n_0\,
      CO(2) => \ctr_reg[8]_i_1_n_1\,
      CO(1) => \ctr_reg[8]_i_1_n_2\,
      CO(0) => \ctr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ctr_reg[8]_i_1_n_4\,
      O(2) => \ctr_reg[8]_i_1_n_5\,
      O(1) => \ctr_reg[8]_i_1_n_6\,
      O(0) => \ctr_reg[8]_i_1_n_7\,
      S(3 downto 0) => ctr_reg(11 downto 8)
    );
\ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_start,
      D => \ctr_reg[8]_i_1_n_6\,
      Q => ctr_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ip1_counter_0_0 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ip1_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ip1_counter_0_0 : entity is "ip1_counter_0_0,counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ip1_counter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ip1_counter_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ip1_counter_0_0 : entity is "counter,Vivado 2020.1";
  attribute hls_module : string;
  attribute hls_module of ip1_counter_0_0 : entity is "yes";
end ip1_counter_0_0;

architecture STRUCTURE of ip1_counter_0_0 is
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ip1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_AXILiteS_RREADY : signal is "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ip1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB";
begin
inst: entity work.ip1_counter_0_0_counter
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_AXILiteS_ARADDR(4 downto 0) => s_axi_AXILiteS_ARADDR(4 downto 0),
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(4 downto 0) => s_axi_AXILiteS_AWADDR(4 downto 0),
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => s_axi_AXILiteS_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => s_axi_AXILiteS_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => s_axi_AXILiteS_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => s_axi_AXILiteS_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => s_axi_AXILiteS_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID
    );
end STRUCTURE;
