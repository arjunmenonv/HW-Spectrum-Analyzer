// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __FFT0118_W_M_real130_H__
#define __FFT0118_W_M_real130_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct FFT0118_W_M_real130_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(FFT0118_W_M_real130_ram) {
        ram[0] = "0b00111111100000000000000000000000";
        ram[1] = "0b00111111011110110001010010111110";
        ram[2] = "0b00111111011011001000001101011110";
        ram[3] = "0b00111111010101001101101100110001";
        ram[4] = "0b00111111001101010000010011110011";
        ram[5] = "0b00111111000011100011100111011010";
        ram[6] = "0b00111110110000111110111100010101";
        ram[7] = "0b00111110010001111100010111000010";
        ram[8] = "0b00100100100011010011000100110010";
        ram[9] = "0b10111110010001111100010111000010";
        ram[10] = "0b10111110110000111110111100010101";
        ram[11] = "0b10111111000011100011100111011010";
        ram[12] = "0b10111111001101010000010011110011";
        ram[13] = "0b10111111010101001101101100110001";
        ram[14] = "0b10111111011011001000001101011110";
        ram[15] = "0b10111111011110110001010010111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(FFT0118_W_M_real130) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


FFT0118_W_M_real130_ram* meminst;


SC_CTOR(FFT0118_W_M_real130) {
meminst = new FFT0118_W_M_real130_ram("FFT0118_W_M_real130_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~FFT0118_W_M_real130() {
    delete meminst;
}


};//endmodule
#endif
