// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      FFT
`define AUTOTB_DUT_INST AESL_inst_FFT
`define AUTOTB_TOP      apatb_FFT_top
`define AUTOTB_LAT_RESULT_FILE "FFT.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "FFT.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_FFT_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_data_IN_M_real 1
`define AESL_DEPTH_data_IN_M_imag 1
`define AESL_DEPTH_win_mode 1
`define AESL_DEPTH_data_OUT_M_real 1
`define AESL_DEPTH_data_OUT_M_imag 1
`define AESL_DEPTH_mag_OUT 1
`define AUTOTB_TVIN_data_IN_M_real  "../tv/cdatafile/c.FFT.autotvin_data_IN_M_real.dat"
`define AUTOTB_TVIN_data_IN_M_imag  "../tv/cdatafile/c.FFT.autotvin_data_IN_M_imag.dat"
`define AUTOTB_TVIN_win_mode  "../tv/cdatafile/c.FFT.autotvin_win_mode.dat"
`define AUTOTB_TVIN_data_OUT_M_real  "../tv/cdatafile/c.FFT.autotvin_data_OUT_M_real.dat"
`define AUTOTB_TVIN_data_OUT_M_imag  "../tv/cdatafile/c.FFT.autotvin_data_OUT_M_imag.dat"
`define AUTOTB_TVIN_mag_OUT  "../tv/cdatafile/c.FFT.autotvin_mag_OUT.dat"
`define AUTOTB_TVIN_data_IN_M_real_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_data_IN_M_real.dat"
`define AUTOTB_TVIN_data_IN_M_imag_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_data_IN_M_imag.dat"
`define AUTOTB_TVIN_win_mode_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_win_mode.dat"
`define AUTOTB_TVIN_data_OUT_M_real_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_data_OUT_M_real.dat"
`define AUTOTB_TVIN_data_OUT_M_imag_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_data_OUT_M_imag.dat"
`define AUTOTB_TVIN_mag_OUT_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvin_mag_OUT.dat"
`define AUTOTB_TVOUT_data_OUT_M_real  "../tv/cdatafile/c.FFT.autotvout_data_OUT_M_real.dat"
`define AUTOTB_TVOUT_data_OUT_M_imag  "../tv/cdatafile/c.FFT.autotvout_data_OUT_M_imag.dat"
`define AUTOTB_TVOUT_mag_OUT  "../tv/cdatafile/c.FFT.autotvout_mag_OUT.dat"
`define AUTOTB_TVOUT_data_OUT_M_real_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvout_data_OUT_M_real.dat"
`define AUTOTB_TVOUT_data_OUT_M_imag_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvout_data_OUT_M_imag.dat"
`define AUTOTB_TVOUT_mag_OUT_out_wrapc  "../tv/rtldatafile/rtl.FFT.autotvout_mag_OUT.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 365;
parameter LENGTH_data_IN_M_real = 32;
parameter LENGTH_data_IN_M_imag = 32;
parameter LENGTH_win_mode = 1;
parameter LENGTH_data_OUT_M_real = 32;
parameter LENGTH_data_OUT_M_imag = 32;
parameter LENGTH_mag_OUT = 32;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [4 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire [31 : 0] data_IN_M_real_TDATA;
wire [31 : 0] data_IN_M_imag_TDATA;
wire [31 : 0] data_OUT_M_real_TDATA;
wire [31 : 0] data_OUT_M_imag_TDATA;
wire [31 : 0] mag_OUT_TDATA;
wire ap_start;
wire  data_IN_M_real_TVALID;
wire  data_IN_M_real_TREADY;
wire  data_IN_M_imag_TVALID;
wire  data_IN_M_imag_TREADY;
wire  mag_OUT_TVALID;
wire  mag_OUT_TREADY;
wire  data_OUT_M_real_TVALID;
wire  data_OUT_M_real_TREADY;
wire  data_OUT_M_imag_TVALID;
wire  data_OUT_M_imag_TREADY;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AXILiteS_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
    .s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
    .s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
    .s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
    .s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
    .s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
    .s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
    .s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .data_IN_M_real_TDATA(data_IN_M_real_TDATA),
    .data_IN_M_imag_TDATA(data_IN_M_imag_TDATA),
    .data_OUT_M_real_TDATA(data_OUT_M_real_TDATA),
    .data_OUT_M_imag_TDATA(data_OUT_M_imag_TDATA),
    .mag_OUT_TDATA(mag_OUT_TDATA),
    .ap_start(ap_start),
    .data_IN_M_real_TVALID(data_IN_M_real_TVALID),
    .data_IN_M_real_TREADY(data_IN_M_real_TREADY),
    .data_IN_M_imag_TVALID(data_IN_M_imag_TVALID),
    .data_IN_M_imag_TREADY(data_IN_M_imag_TREADY),
    .mag_OUT_TVALID(mag_OUT_TVALID),
    .mag_OUT_TREADY(mag_OUT_TREADY),
    .data_OUT_M_real_TVALID(data_OUT_M_real_TVALID),
    .data_OUT_M_real_TREADY(data_OUT_M_real_TREADY),
    .data_OUT_M_imag_TVALID(data_OUT_M_imag_TVALID),
    .data_OUT_M_imag_TREADY(data_OUT_M_imag_TREADY),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_slave_start | AESL_slave_start_lock;
assign AESL_start = start;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & AXILiteS_write_data_finish;
  assign AESL_slave_write_start_finish = AESL_slave_write_start_in;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_slave_done =  1 ;
  assign AESL_done = (ap_done_lock | ap_done) & AESL_slave_done & slave_done_status;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_start_lock <= 0;
    end
    else begin
        if (AESL_ready == 1) begin
            AESL_slave_start_lock <= 0;
        end
        else if (AESL_slave_start == 1) begin
            AESL_slave_start_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        ap_done_lock <= 0;
    end
    else begin
        if (AESL_done == 1) begin
            ap_done_lock <= 0;
        end
        else if (ap_done == 1) begin
            ap_done_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_done == 1 ) begin
        slave_done_status <= 1;
    end
end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end






reg [31:0] ap_c_n_tvin_trans_num_data_IN_M_real;

reg data_IN_M_real_ready_reg; // for self-sync

wire data_IN_M_real_ready;
wire data_IN_M_real_done;
wire [31:0] data_IN_M_real_transaction;
wire axi_s_data_IN_M_real_TVALID;
wire axi_s_data_IN_M_real_TREADY;

AESL_axi_s_data_IN_M_real AESL_AXI_S_data_IN_M_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_IN_M_real_TDATA(data_IN_M_real_TDATA),
    .TRAN_data_IN_M_real_TVALID(axi_s_data_IN_M_real_TVALID),
    .TRAN_data_IN_M_real_TREADY(axi_s_data_IN_M_real_TREADY),
    .ready(data_IN_M_real_ready),
    .done(data_IN_M_real_done),
    .transaction(data_IN_M_real_transaction));

assign data_IN_M_real_ready = ready;
assign data_IN_M_real_done = 0;

assign data_IN_M_real_TVALID = axi_s_data_IN_M_real_TVALID;

assign axi_s_data_IN_M_real_TREADY = data_IN_M_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_data_IN_M_imag;

reg data_IN_M_imag_ready_reg; // for self-sync

wire data_IN_M_imag_ready;
wire data_IN_M_imag_done;
wire [31:0] data_IN_M_imag_transaction;
wire axi_s_data_IN_M_imag_TVALID;
wire axi_s_data_IN_M_imag_TREADY;

AESL_axi_s_data_IN_M_imag AESL_AXI_S_data_IN_M_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_IN_M_imag_TDATA(data_IN_M_imag_TDATA),
    .TRAN_data_IN_M_imag_TVALID(axi_s_data_IN_M_imag_TVALID),
    .TRAN_data_IN_M_imag_TREADY(axi_s_data_IN_M_imag_TREADY),
    .ready(data_IN_M_imag_ready),
    .done(data_IN_M_imag_done),
    .transaction(data_IN_M_imag_transaction));

assign data_IN_M_imag_ready = ready;
assign data_IN_M_imag_done = 0;

assign data_IN_M_imag_TVALID = axi_s_data_IN_M_imag_TVALID;

assign axi_s_data_IN_M_imag_TREADY = data_IN_M_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_data_OUT_M_real;

reg data_OUT_M_real_ready_reg; // for self-sync

wire data_OUT_M_real_ready;
wire data_OUT_M_real_done;
wire [31:0] data_OUT_M_real_transaction;
wire axi_s_data_OUT_M_real_TVALID;
wire axi_s_data_OUT_M_real_TREADY;

AESL_axi_s_data_OUT_M_real AESL_AXI_S_data_OUT_M_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_OUT_M_real_TDATA(data_OUT_M_real_TDATA),
    .TRAN_data_OUT_M_real_TVALID(axi_s_data_OUT_M_real_TVALID),
    .TRAN_data_OUT_M_real_TREADY(axi_s_data_OUT_M_real_TREADY),
    .ready(data_OUT_M_real_ready),
    .done(data_OUT_M_real_done),
    .transaction(data_OUT_M_real_transaction));

assign data_OUT_M_real_ready = 0;
assign data_OUT_M_real_done = AESL_done;

assign axi_s_data_OUT_M_real_TVALID = data_OUT_M_real_TVALID;

reg reg_data_OUT_M_real_TREADY;
initial begin : gen_reg_data_OUT_M_real_TREADY_process
    integer proc_rand;
    reg_data_OUT_M_real_TREADY = axi_s_data_OUT_M_real_TREADY;
    while(1)
    begin
        @(axi_s_data_OUT_M_real_TREADY);
        reg_data_OUT_M_real_TREADY = axi_s_data_OUT_M_real_TREADY;
    end
end


assign data_OUT_M_real_TREADY = reg_data_OUT_M_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_data_OUT_M_imag;

reg data_OUT_M_imag_ready_reg; // for self-sync

wire data_OUT_M_imag_ready;
wire data_OUT_M_imag_done;
wire [31:0] data_OUT_M_imag_transaction;
wire axi_s_data_OUT_M_imag_TVALID;
wire axi_s_data_OUT_M_imag_TREADY;

AESL_axi_s_data_OUT_M_imag AESL_AXI_S_data_OUT_M_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_data_OUT_M_imag_TDATA(data_OUT_M_imag_TDATA),
    .TRAN_data_OUT_M_imag_TVALID(axi_s_data_OUT_M_imag_TVALID),
    .TRAN_data_OUT_M_imag_TREADY(axi_s_data_OUT_M_imag_TREADY),
    .ready(data_OUT_M_imag_ready),
    .done(data_OUT_M_imag_done),
    .transaction(data_OUT_M_imag_transaction));

assign data_OUT_M_imag_ready = 0;
assign data_OUT_M_imag_done = AESL_done;

assign axi_s_data_OUT_M_imag_TVALID = data_OUT_M_imag_TVALID;

reg reg_data_OUT_M_imag_TREADY;
initial begin : gen_reg_data_OUT_M_imag_TREADY_process
    integer proc_rand;
    reg_data_OUT_M_imag_TREADY = axi_s_data_OUT_M_imag_TREADY;
    while(1)
    begin
        @(axi_s_data_OUT_M_imag_TREADY);
        reg_data_OUT_M_imag_TREADY = axi_s_data_OUT_M_imag_TREADY;
    end
end


assign data_OUT_M_imag_TREADY = reg_data_OUT_M_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_mag_OUT;

reg mag_OUT_ready_reg; // for self-sync

wire mag_OUT_ready;
wire mag_OUT_done;
wire [31:0] mag_OUT_transaction;
wire axi_s_mag_OUT_TVALID;
wire axi_s_mag_OUT_TREADY;

AESL_axi_s_mag_OUT AESL_AXI_S_mag_OUT(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_mag_OUT_TDATA(mag_OUT_TDATA),
    .TRAN_mag_OUT_TVALID(axi_s_mag_OUT_TVALID),
    .TRAN_mag_OUT_TREADY(axi_s_mag_OUT_TREADY),
    .ready(mag_OUT_ready),
    .done(mag_OUT_done),
    .transaction(mag_OUT_transaction));

assign mag_OUT_ready = 0;
assign mag_OUT_done = AESL_done;

assign axi_s_mag_OUT_TVALID = mag_OUT_TVALID;

reg reg_mag_OUT_TREADY;
initial begin : gen_reg_mag_OUT_TREADY_process
    integer proc_rand;
    reg_mag_OUT_TREADY = axi_s_mag_OUT_TREADY;
    while(1)
    begin
        @(axi_s_mag_OUT_TREADY);
        reg_mag_OUT_TREADY = axi_s_mag_OUT_TREADY;
    end
end


assign mag_OUT_TREADY = reg_mag_OUT_TREADY;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_AXILiteS_write_data_finish(AXILiteS_write_data_finish),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_in (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_in (AESL_idle),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_data_IN_M_real;
reg [31:0] size_data_IN_M_real;
reg [31:0] size_data_IN_M_real_backup;
reg end_data_IN_M_imag;
reg [31:0] size_data_IN_M_imag;
reg [31:0] size_data_IN_M_imag_backup;
reg end_win_mode;
reg [31:0] size_win_mode;
reg [31:0] size_win_mode_backup;
reg end_data_OUT_M_real;
reg [31:0] size_data_OUT_M_real;
reg [31:0] size_data_OUT_M_real_backup;
reg end_data_OUT_M_imag;
reg [31:0] size_data_OUT_M_imag;
reg [31:0] size_data_OUT_M_imag_backup;
reg end_mag_OUT;
reg [31:0] size_mag_OUT;
reg [31:0] size_mag_OUT_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_data_IN_M_real
        data_IN_M_real_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_data_IN_M_real or data_IN_M_real_transaction);
            if (ap_c_n_tvin_trans_num_data_IN_M_real > data_IN_M_real_transaction) begin
                data_IN_M_real_ready_reg = 1;
            end else begin
                data_IN_M_real_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_data_IN_M_imag
        data_IN_M_imag_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_data_IN_M_imag or data_IN_M_imag_transaction);
            if (ap_c_n_tvin_trans_num_data_IN_M_imag > data_IN_M_imag_transaction) begin
                data_IN_M_imag_ready_reg = 1;
            end else begin
                data_IN_M_imag_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_data_IN_M_real "../tv/stream_size/stream_size_in_data_IN_M_real.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_IN_M_real
        integer fp_data_IN_M_real;
        reg [127:0] token_data_IN_M_real;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_IN_M_real = 0;
        end_data_IN_M_real = 0;
        wait (AESL_reset === 1);
        
        fp_data_IN_M_real = $fopen(`AUTOTB_TVIN_data_IN_M_real, "r");
        if(fp_data_IN_M_real == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_data_IN_M_real);
            $finish;
        end
        read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be [[[runtime]]]
        if (token_data_IN_M_real != "[[[runtime]]]") begin
            $display("ERROR: token_data_IN_M_real != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_data_IN_M_real = ap_c_n_tvin_trans_num_data_IN_M_real + 1;
        read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be [[transaction]] or [[[/runtime]]]
        if (token_data_IN_M_real == "[[[/runtime]]]") begin
            $fclose(fp_data_IN_M_real);
            end_data_IN_M_real = 1;
        end else begin
            end_data_IN_M_real = 0;
            read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be transaction number
            read_token(fp_data_IN_M_real, token_data_IN_M_real);
        end
        while (token_data_IN_M_real == "[[/transaction]]" && end_data_IN_M_real == 0) begin
            ap_c_n_tvin_trans_num_data_IN_M_real = ap_c_n_tvin_trans_num_data_IN_M_real + 1;
            read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_IN_M_real == "[[[/runtime]]]") begin
                $fclose(fp_data_IN_M_real);
                end_data_IN_M_real = 1;
            end else begin
                end_data_IN_M_real = 0;
                read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be transaction number
                read_token(fp_data_IN_M_real, token_data_IN_M_real);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_IN_M_real == 0) begin
                if ((data_IN_M_real_TREADY & data_IN_M_real_TVALID) == 1) begin
                    read_token(fp_data_IN_M_real, token_data_IN_M_real);
                    while (token_data_IN_M_real == "[[/transaction]]" && end_data_IN_M_real == 0) begin
                        ap_c_n_tvin_trans_num_data_IN_M_real = ap_c_n_tvin_trans_num_data_IN_M_real + 1;
                        read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be [[transaction]] or [[[/runtime]]]
                        if (token_data_IN_M_real == "[[[/runtime]]]") begin
                            $fclose(fp_data_IN_M_real);
                            end_data_IN_M_real = 1;
                        end else begin
                            end_data_IN_M_real = 0;
                            read_token(fp_data_IN_M_real, token_data_IN_M_real); // should be transaction number
                            read_token(fp_data_IN_M_real, token_data_IN_M_real);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_data_IN_M_real = ap_c_n_tvin_trans_num_data_IN_M_real + 1;
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_data_IN_M_imag "../tv/stream_size/stream_size_in_data_IN_M_imag.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_IN_M_imag
        integer fp_data_IN_M_imag;
        reg [127:0] token_data_IN_M_imag;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_IN_M_imag = 0;
        end_data_IN_M_imag = 0;
        wait (AESL_reset === 1);
        
        fp_data_IN_M_imag = $fopen(`AUTOTB_TVIN_data_IN_M_imag, "r");
        if(fp_data_IN_M_imag == 0) begin
            $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_data_IN_M_imag);
            $finish;
        end
        read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be [[[runtime]]]
        if (token_data_IN_M_imag != "[[[runtime]]]") begin
            $display("ERROR: token_data_IN_M_imag != \"[[[runtime]]]\"");
            $finish;
        end
        ap_c_n_tvin_trans_num_data_IN_M_imag = ap_c_n_tvin_trans_num_data_IN_M_imag + 1;
        read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be [[transaction]] or [[[/runtime]]]
        if (token_data_IN_M_imag == "[[[/runtime]]]") begin
            $fclose(fp_data_IN_M_imag);
            end_data_IN_M_imag = 1;
        end else begin
            end_data_IN_M_imag = 0;
            read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be transaction number
            read_token(fp_data_IN_M_imag, token_data_IN_M_imag);
        end
        while (token_data_IN_M_imag == "[[/transaction]]" && end_data_IN_M_imag == 0) begin
            ap_c_n_tvin_trans_num_data_IN_M_imag = ap_c_n_tvin_trans_num_data_IN_M_imag + 1;
            read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_IN_M_imag == "[[[/runtime]]]") begin
                $fclose(fp_data_IN_M_imag);
                end_data_IN_M_imag = 1;
            end else begin
                end_data_IN_M_imag = 0;
                read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be transaction number
                read_token(fp_data_IN_M_imag, token_data_IN_M_imag);
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_IN_M_imag == 0) begin
                if ((data_IN_M_imag_TREADY & data_IN_M_imag_TVALID) == 1) begin
                    read_token(fp_data_IN_M_imag, token_data_IN_M_imag);
                    while (token_data_IN_M_imag == "[[/transaction]]" && end_data_IN_M_imag == 0) begin
                        ap_c_n_tvin_trans_num_data_IN_M_imag = ap_c_n_tvin_trans_num_data_IN_M_imag + 1;
                        read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be [[transaction]] or [[[/runtime]]]
                        if (token_data_IN_M_imag == "[[[/runtime]]]") begin
                            $fclose(fp_data_IN_M_imag);
                            end_data_IN_M_imag = 1;
                        end else begin
                            end_data_IN_M_imag = 0;
                            read_token(fp_data_IN_M_imag, token_data_IN_M_imag); // should be transaction number
                            read_token(fp_data_IN_M_imag, token_data_IN_M_imag);
                        end
                    end
                end
            end else begin
                ap_c_n_tvin_trans_num_data_IN_M_imag = ap_c_n_tvin_trans_num_data_IN_M_imag + 1;
            end
        end
    end
    

reg dump_tvout_finish_data_OUT_M_real;

initial begin : dump_tvout_runtime_sign_data_OUT_M_real
    integer fp;
    dump_tvout_finish_data_OUT_M_real = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_OUT_M_real_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_OUT_M_real_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_OUT_M_real_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_OUT_M_real_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_OUT_M_real = 1;
end


reg dump_tvout_finish_data_OUT_M_imag;

initial begin : dump_tvout_runtime_sign_data_OUT_M_imag
    integer fp;
    dump_tvout_finish_data_OUT_M_imag = 0;
    fp = $fopen(`AUTOTB_TVOUT_data_OUT_M_imag_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_OUT_M_imag_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_data_OUT_M_imag_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_data_OUT_M_imag_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_data_OUT_M_imag = 1;
end


reg dump_tvout_finish_mag_OUT;

initial begin : dump_tvout_runtime_sign_mag_OUT
    integer fp;
    dump_tvout_finish_mag_OUT = 0;
    fp = $fopen(`AUTOTB_TVOUT_mag_OUT_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mag_OUT_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_mag_OUT_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mag_OUT_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_mag_OUT = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(AESL_reset),
    .clock(AESL_clock));


endmodule
