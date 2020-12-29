`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Test bench for FFT IP - assumes inputs from datasrc modules
//////////////////////////////////////////////////////////////////////////////////


module fft32_tb(

    );
    reg clk, reset;
    
    design_1_wrapper dut(
        .clk(clk),
        .reset(reset)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        #100 
        reset = 0;
        
    end
    
endmodule
