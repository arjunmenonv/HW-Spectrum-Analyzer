`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Test bench for datasrc module
// - Not self-checking: just generates outputs to be manually verified
//////////////////////////////////////////////////////////////////////////////////


module datasrc_tb(

    );
    reg clk, resetn, tready;
    wire tvalid;
    wire [31:0] tdata;
    wire [4:0] addr;
    
    always #5 clk = ~clk;
    
    datasrc dut (
        .clk(clk),
        .resetn(resetn),
        .tready(tready),
        .tdata(tdata),
        .tvalid(tvalid)
    );
    
    initial begin
        clk = 0;
        resetn = 0;
        tready = 0;
        #100
        resetn = 1;
        
        $monitor($time, "%b %x", tvalid, tdata);
        
        #100 tready = 1;
        #80 tready = 0;
        #40 tready = 1;
        #40 tready = 0;
        #50 tready = 1;
    end
    
    
endmodule
