// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_AXILiteS (
    clk,
    reset,
    TRAN_s_axi_AXILiteS_AWADDR,
    TRAN_s_axi_AXILiteS_AWVALID,
    TRAN_s_axi_AXILiteS_AWREADY,
    TRAN_s_axi_AXILiteS_WVALID,
    TRAN_s_axi_AXILiteS_WREADY,
    TRAN_s_axi_AXILiteS_WDATA,
    TRAN_s_axi_AXILiteS_WSTRB,
    TRAN_s_axi_AXILiteS_ARADDR,
    TRAN_s_axi_AXILiteS_ARVALID,
    TRAN_s_axi_AXILiteS_ARREADY,
    TRAN_s_axi_AXILiteS_RVALID,
    TRAN_s_axi_AXILiteS_RREADY,
    TRAN_s_axi_AXILiteS_RDATA,
    TRAN_s_axi_AXILiteS_RRESP,
    TRAN_s_axi_AXILiteS_BVALID,
    TRAN_s_axi_AXILiteS_BREADY,
    TRAN_s_axi_AXILiteS_BRESP,
    TRAN_AXILiteS_write_data_finish,
    TRAN_AXILiteS_read_data_finish,
    TRAN_AXILiteS_start_in,
    TRAN_AXILiteS_idle_out,
    TRAN_AXILiteS_ready_out,
    TRAN_AXILiteS_ready_in,
    TRAN_AXILiteS_done_out,
    TRAN_AXILiteS_write_start_in   ,
    TRAN_AXILiteS_write_start_finish,
    TRAN_AXILiteS_interrupt,
    TRAN_AXILiteS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_data_IN_M_real "./c.FFT.autotvin_data_IN_M_real.dat"
`define TV_IN_data_IN_M_imag "./c.FFT.autotvin_data_IN_M_imag.dat"
`define TV_IN_win_mode "./c.FFT.autotvin_win_mode.dat"
`define TV_OUT_data_OUT_M_real "./rtl.FFT.autotvout_data_OUT_M_real.dat"
`define TV_OUT_data_OUT_M_imag "./rtl.FFT.autotvout_data_OUT_M_imag.dat"
`define TV_OUT_mag_OUT "./rtl.FFT.autotvout_mag_OUT.dat"
parameter ADDR_WIDTH = 10;
parameter DATA_WIDTH = 32;
parameter data_IN_M_real_DEPTH = 32;
reg [31 : 0] data_IN_M_real_OPERATE_DEPTH = 0;
parameter data_IN_M_real_c_bitwidth = 32;
parameter data_IN_M_imag_DEPTH = 32;
reg [31 : 0] data_IN_M_imag_OPERATE_DEPTH = 0;
parameter data_IN_M_imag_c_bitwidth = 32;
parameter win_mode_DEPTH = 1;
reg [31 : 0] win_mode_OPERATE_DEPTH = 0;
parameter win_mode_c_bitwidth = 8;
parameter data_OUT_M_real_DEPTH = 32;
reg [31 : 0] data_OUT_M_real_OPERATE_DEPTH = 0;
parameter data_OUT_M_real_c_bitwidth = 32;
parameter data_OUT_M_imag_DEPTH = 32;
reg [31 : 0] data_OUT_M_imag_OPERATE_DEPTH = 0;
parameter data_OUT_M_imag_c_bitwidth = 32;
parameter mag_OUT_DEPTH = 32;
reg [31 : 0] mag_OUT_OPERATE_DEPTH = 0;
parameter mag_OUT_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter FFT_continue_addr = 0;
parameter FFT_auto_start_addr = 0;
parameter data_IN_M_real_data_in_addr = 128;
parameter data_IN_M_imag_data_in_addr = 256;
parameter win_mode_data_in_addr = 384;
parameter data_OUT_M_real_data_out_addr = 512;
parameter data_OUT_M_imag_data_out_addr = 640;
parameter mag_OUT_data_out_addr = 768;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_AWADDR;
output  TRAN_s_axi_AXILiteS_AWVALID;
input  TRAN_s_axi_AXILiteS_AWREADY;
output  TRAN_s_axi_AXILiteS_WVALID;
input  TRAN_s_axi_AXILiteS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_AXILiteS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_ARADDR;
output  TRAN_s_axi_AXILiteS_ARVALID;
input  TRAN_s_axi_AXILiteS_ARREADY;
input  TRAN_s_axi_AXILiteS_RVALID;
output  TRAN_s_axi_AXILiteS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_RRESP;
input  TRAN_s_axi_AXILiteS_BVALID;
output  TRAN_s_axi_AXILiteS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_BRESP;
output TRAN_AXILiteS_write_data_finish;
output TRAN_AXILiteS_read_data_finish;
input     clk;
input     reset;
input     TRAN_AXILiteS_start_in;
output    TRAN_AXILiteS_done_out;
output    TRAN_AXILiteS_ready_out;
input     TRAN_AXILiteS_ready_in;
output    TRAN_AXILiteS_idle_out;
input  TRAN_AXILiteS_write_start_in   ;
output TRAN_AXILiteS_write_start_finish;
input     TRAN_AXILiteS_interrupt;
input     TRAN_AXILiteS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_data_IN_M_real [data_IN_M_real_DEPTH - 1 : 0];
reg data_IN_M_real_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_data_IN_M_imag [data_IN_M_imag_DEPTH - 1 : 0];
reg data_IN_M_imag_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_win_mode [win_mode_DEPTH - 1 : 0];
reg win_mode_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_data_OUT_M_real [data_OUT_M_real_DEPTH - 1 : 0];
reg data_OUT_M_real_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_data_OUT_M_imag [data_OUT_M_imag_DEPTH - 1 : 0];
reg data_OUT_M_imag_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_mag_OUT [mag_OUT_DEPTH - 1 : 0];
reg mag_OUT_read_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
//write data_IN_M_real reg
reg [31 : 0] write_data_IN_M_real_count = 0;
reg write_data_IN_M_real_run_flag = 0;
reg write_one_data_IN_M_real_data_done = 0;
//write data_IN_M_imag reg
reg [31 : 0] write_data_IN_M_imag_count = 0;
reg write_data_IN_M_imag_run_flag = 0;
reg write_one_data_IN_M_imag_data_done = 0;
//write win_mode reg
reg [31 : 0] write_win_mode_count = 0;
reg write_win_mode_run_flag = 0;
reg write_one_win_mode_data_done = 0;
//read data_OUT_M_real reg
reg [31 : 0] read_data_OUT_M_real_count = 0;
reg read_data_OUT_M_real_run_flag = 0;
reg read_one_data_OUT_M_real_data_done = 0;
//read data_OUT_M_imag reg
reg [31 : 0] read_data_OUT_M_imag_count = 0;
reg read_data_OUT_M_imag_run_flag = 0;
reg read_one_data_OUT_M_imag_data_done = 0;
//read mag_OUT reg
reg [31 : 0] read_mag_OUT_count = 0;
reg read_mag_OUT_run_flag = 0;
reg read_one_mag_OUT_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_AXILiteS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_AXILiteS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_AXILiteS_WVALID = WVALID_reg;
assign TRAN_s_axi_AXILiteS_WDATA = WDATA_reg;
assign TRAN_s_axi_AXILiteS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_AXILiteS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_AXILiteS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_AXILiteS_RREADY = RREADY_reg;
assign TRAN_s_axi_AXILiteS_BREADY = BREADY_reg;
assign TRAN_AXILiteS_write_start_finish = AESL_write_start_finish;
assign TRAN_AXILiteS_done_out = AESL_done_index_reg;
assign TRAN_AXILiteS_ready_out = AESL_ready_out_index_reg;
assign TRAN_AXILiteS_idle_out = AESL_idle_index_reg;
assign TRAN_AXILiteS_read_data_finish = 1 & data_OUT_M_real_read_data_finish & data_OUT_M_imag_read_data_finish & mag_OUT_read_data_finish;
assign TRAN_AXILiteS_write_data_finish = 1 & data_IN_M_real_write_data_finish & data_IN_M_imag_write_data_finish & win_mode_write_data_finish;
always @(TRAN_AXILiteS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_AXILiteS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_AXILiteS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_AXILiteS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_AXILiteS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        data_IN_M_real_write_data_finish <= 0;
        write_data_IN_M_real_run_flag <= 0; 
        write_data_IN_M_real_count = 0;
        count_operate_depth_by_bitwidth_and_depth (data_IN_M_real_c_bitwidth, data_IN_M_real_DEPTH, data_IN_M_real_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            data_IN_M_real_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_data_IN_M_real_run_flag <= 1; 
            write_data_IN_M_real_count = 0;
        end
        if (write_one_data_IN_M_real_data_done === 1) begin
            write_data_IN_M_real_count = write_data_IN_M_real_count + 1;
            if (write_data_IN_M_real_count == data_IN_M_real_OPERATE_DEPTH) begin
                write_data_IN_M_real_run_flag <= 0; 
                data_IN_M_real_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_data_IN_M_real
    integer write_data_IN_M_real_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] data_IN_M_real_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = data_IN_M_real_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_data_IN_M_real_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write data_IN_M_real data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (data_IN_M_real_c_bitwidth < 32) begin
                        data_IN_M_real_data_tmp_reg = mem_data_IN_M_real[write_data_IN_M_real_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < data_IN_M_real_c_bitwidth) begin
                                data_IN_M_real_data_tmp_reg[j] = mem_data_IN_M_real[write_data_IN_M_real_count][i*32 + j];
                            end
                            else begin
                                data_IN_M_real_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (data_IN_M_real_data_in_addr + write_data_IN_M_real_count * four_byte_num * 4 + i * 4, data_IN_M_real_data_tmp_reg, write_data_IN_M_real_resp);
                end
                process_busy = 0;
                write_one_data_IN_M_real_data_done <= 1;
                @(posedge clk);
                write_one_data_IN_M_real_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        data_IN_M_imag_write_data_finish <= 0;
        write_data_IN_M_imag_run_flag <= 0; 
        write_data_IN_M_imag_count = 0;
        count_operate_depth_by_bitwidth_and_depth (data_IN_M_imag_c_bitwidth, data_IN_M_imag_DEPTH, data_IN_M_imag_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            data_IN_M_imag_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_data_IN_M_imag_run_flag <= 1; 
            write_data_IN_M_imag_count = 0;
        end
        if (write_one_data_IN_M_imag_data_done === 1) begin
            write_data_IN_M_imag_count = write_data_IN_M_imag_count + 1;
            if (write_data_IN_M_imag_count == data_IN_M_imag_OPERATE_DEPTH) begin
                write_data_IN_M_imag_run_flag <= 0; 
                data_IN_M_imag_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_data_IN_M_imag
    integer write_data_IN_M_imag_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] data_IN_M_imag_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = data_IN_M_imag_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_data_IN_M_imag_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write data_IN_M_imag data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (data_IN_M_imag_c_bitwidth < 32) begin
                        data_IN_M_imag_data_tmp_reg = mem_data_IN_M_imag[write_data_IN_M_imag_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < data_IN_M_imag_c_bitwidth) begin
                                data_IN_M_imag_data_tmp_reg[j] = mem_data_IN_M_imag[write_data_IN_M_imag_count][i*32 + j];
                            end
                            else begin
                                data_IN_M_imag_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (data_IN_M_imag_data_in_addr + write_data_IN_M_imag_count * four_byte_num * 4 + i * 4, data_IN_M_imag_data_tmp_reg, write_data_IN_M_imag_resp);
                end
                process_busy = 0;
                write_one_data_IN_M_imag_data_done <= 1;
                @(posedge clk);
                write_one_data_IN_M_imag_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        win_mode_write_data_finish <= 0;
        write_win_mode_run_flag <= 0; 
        write_win_mode_count = 0;
        count_operate_depth_by_bitwidth_and_depth (win_mode_c_bitwidth, win_mode_DEPTH, win_mode_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            win_mode_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_win_mode_run_flag <= 1; 
            write_win_mode_count = 0;
        end
        if (write_one_win_mode_data_done === 1) begin
            write_win_mode_count = write_win_mode_count + 1;
            if (write_win_mode_count == win_mode_OPERATE_DEPTH) begin
                write_win_mode_run_flag <= 0; 
                win_mode_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_win_mode
    integer write_win_mode_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] win_mode_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = win_mode_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_win_mode_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write win_mode data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (win_mode_c_bitwidth < 32) begin
                        win_mode_data_tmp_reg = mem_win_mode[write_win_mode_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < win_mode_c_bitwidth) begin
                                win_mode_data_tmp_reg[j] = mem_win_mode[write_win_mode_count][i*32 + j];
                            end
                            else begin
                                win_mode_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (win_mode_data_in_addr + write_win_mode_count * four_byte_num * 4 + i * 4, win_mode_data_tmp_reg, write_win_mode_resp);
                end
                process_busy = 0;
                write_one_win_mode_data_done <= 1;
                @(posedge clk);
                write_one_win_mode_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 2) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_AXILiteS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 4;
    while (1) begin
        process_4_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_4_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        data_OUT_M_real_read_data_finish <= 0;
        read_data_OUT_M_real_run_flag <= 0; 
        read_data_OUT_M_real_count = 0;
        count_operate_depth_by_bitwidth_and_depth (data_OUT_M_real_c_bitwidth, data_OUT_M_real_DEPTH, data_OUT_M_real_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_data_OUT_M_real_run_flag = 1; 
        end
        if (TRAN_AXILiteS_transaction_done_in === 1) begin
            data_OUT_M_real_read_data_finish <= 0;
            read_data_OUT_M_real_count = 0; 
        end
        if (read_one_data_OUT_M_real_data_done === 1) begin
            read_data_OUT_M_real_count = read_data_OUT_M_real_count + 1;
            if (read_data_OUT_M_real_count == data_OUT_M_real_OPERATE_DEPTH) begin
                read_data_OUT_M_real_run_flag <= 0; 
                data_OUT_M_real_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_data_OUT_M_real
    integer read_data_OUT_M_real_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = data_OUT_M_real_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_data_OUT_M_real_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read data_OUT_M_real data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (data_OUT_M_real_data_out_addr + read_data_OUT_M_real_count * four_byte_num * 4 + i * 4, RDATA_reg, read_data_OUT_M_real_resp);
                        if (data_OUT_M_real_c_bitwidth < 32) begin
                            mem_data_OUT_M_real[read_data_OUT_M_real_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < data_OUT_M_real_c_bitwidth) begin
                                    mem_data_OUT_M_real[read_data_OUT_M_real_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_data_OUT_M_real_data_done <= 1;
                    @(posedge clk);
                    read_one_data_OUT_M_real_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        data_OUT_M_imag_read_data_finish <= 0;
        read_data_OUT_M_imag_run_flag <= 0; 
        read_data_OUT_M_imag_count = 0;
        count_operate_depth_by_bitwidth_and_depth (data_OUT_M_imag_c_bitwidth, data_OUT_M_imag_DEPTH, data_OUT_M_imag_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_data_OUT_M_imag_run_flag = 1; 
        end
        if (TRAN_AXILiteS_transaction_done_in === 1) begin
            data_OUT_M_imag_read_data_finish <= 0;
            read_data_OUT_M_imag_count = 0; 
        end
        if (read_one_data_OUT_M_imag_data_done === 1) begin
            read_data_OUT_M_imag_count = read_data_OUT_M_imag_count + 1;
            if (read_data_OUT_M_imag_count == data_OUT_M_imag_OPERATE_DEPTH) begin
                read_data_OUT_M_imag_run_flag <= 0; 
                data_OUT_M_imag_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_data_OUT_M_imag
    integer read_data_OUT_M_imag_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = data_OUT_M_imag_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_data_OUT_M_imag_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read data_OUT_M_imag data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (data_OUT_M_imag_data_out_addr + read_data_OUT_M_imag_count * four_byte_num * 4 + i * 4, RDATA_reg, read_data_OUT_M_imag_resp);
                        if (data_OUT_M_imag_c_bitwidth < 32) begin
                            mem_data_OUT_M_imag[read_data_OUT_M_imag_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < data_OUT_M_imag_c_bitwidth) begin
                                    mem_data_OUT_M_imag[read_data_OUT_M_imag_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_data_OUT_M_imag_data_done <= 1;
                    @(posedge clk);
                    read_one_data_OUT_M_imag_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        mag_OUT_read_data_finish <= 0;
        read_mag_OUT_run_flag <= 0; 
        read_mag_OUT_count = 0;
        count_operate_depth_by_bitwidth_and_depth (mag_OUT_c_bitwidth, mag_OUT_DEPTH, mag_OUT_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_mag_OUT_run_flag = 1; 
        end
        if (TRAN_AXILiteS_transaction_done_in === 1) begin
            mag_OUT_read_data_finish <= 0;
            read_mag_OUT_count = 0; 
        end
        if (read_one_mag_OUT_data_done === 1) begin
            read_mag_OUT_count = read_mag_OUT_count + 1;
            if (read_mag_OUT_count == mag_OUT_OPERATE_DEPTH) begin
                read_mag_OUT_run_flag <= 0; 
                mag_OUT_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_mag_OUT
    integer read_mag_OUT_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = mag_OUT_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_mag_OUT_run_flag === 1) begin
                process_busy = 1;
                get_vld = 1;
                if (get_vld == 1) begin
                    //read mag_OUT data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (mag_OUT_data_out_addr + read_mag_OUT_count * four_byte_num * 4 + i * 4, RDATA_reg, read_mag_OUT_resp);
                        if (mag_OUT_c_bitwidth < 32) begin
                            mem_mag_OUT[read_mag_OUT_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < mag_OUT_c_bitwidth) begin
                                    mem_mag_OUT[read_mag_OUT_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_mag_OUT_data_done <= 1;
                    @(posedge clk);
                    read_one_mag_OUT_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_data_IN_M_real_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [data_IN_M_real_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (data_IN_M_real_c_bitwidth , factor);
  fp = $fopen(`TV_IN_data_IN_M_real ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_data_IN_M_real); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < data_IN_M_real_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_data_IN_M_real [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_data_IN_M_real [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_data_IN_M_real [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_data_IN_M_real [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_data_IN_M_real [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_data_IN_M_imag_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [data_IN_M_imag_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (data_IN_M_imag_c_bitwidth , factor);
  fp = $fopen(`TV_IN_data_IN_M_imag ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_data_IN_M_imag); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < data_IN_M_imag_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_data_IN_M_imag [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_data_IN_M_imag [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_data_IN_M_imag [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_data_IN_M_imag [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_data_IN_M_imag [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_win_mode_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [win_mode_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] mem_tmp; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (win_mode_c_bitwidth , factor);
  fp = $fopen(`TV_IN_win_mode ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_win_mode); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < win_mode_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  mem_tmp [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  mem_tmp [31 : 24] = token_tmp;
                  mem_win_mode [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  mem_tmp [31 : 16] = token_tmp;
                  mem_win_mode [i/factor] = mem_tmp;
                  mem_tmp [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_win_mode [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_win_mode [i/factor] = mem_tmp;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_win_mode [i/factor] = mem_tmp;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_data_OUT_M_real_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [data_OUT_M_real_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (data_OUT_M_real_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (data_OUT_M_real_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_data_OUT_M_real, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_data_OUT_M_real); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (data_OUT_M_real_DEPTH - data_OUT_M_real_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_data_OUT_M_real[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[i]);
          end
      end 
      if (factor == 4) begin
          if ((data_OUT_M_real_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][23:16]);
          end
          if ((data_OUT_M_real_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][15:8]);
          end
          if ((data_OUT_M_real_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((data_OUT_M_real_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_real[data_OUT_M_real_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_AXILiteS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_data_OUT_M_imag_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [data_OUT_M_imag_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (data_OUT_M_imag_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (data_OUT_M_imag_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_data_OUT_M_imag, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_data_OUT_M_imag); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (data_OUT_M_imag_DEPTH - data_OUT_M_imag_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_data_OUT_M_imag[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[i]);
          end
      end 
      if (factor == 4) begin
          if ((data_OUT_M_imag_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][23:16]);
          end
          if ((data_OUT_M_imag_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][15:8]);
          end
          if ((data_OUT_M_imag_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((data_OUT_M_imag_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_data_OUT_M_imag[data_OUT_M_imag_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_AXILiteS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_mag_OUT_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [mag_OUT_c_bitwidth - 1 : 0] mem_tmp; 
  reg [ 100*8 : 1] str;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (mag_OUT_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (mag_OUT_read_data_finish !== 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_mag_OUT, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_mag_OUT); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (mag_OUT_DEPTH - mag_OUT_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_mag_OUT[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_mag_OUT[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  mem_tmp = mem_mag_OUT[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  mem_tmp = mem_mag_OUT[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  mem_tmp = mem_mag_OUT[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  mem_tmp = mem_mag_OUT[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",mem_tmp);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_mag_OUT[i]);
          end
      end 
      if (factor == 4) begin
          if ((mag_OUT_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][23:16]);
          end
          if ((mag_OUT_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][15:8]);
          end
          if ((mag_OUT_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((mag_OUT_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_mag_OUT[mag_OUT_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_AXILiteS_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
