// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __FFT_rev_32_H__
#define __FFT_rev_32_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct FFT_rev_32_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(FFT_rev_32_ram) {
        ram[0] = "0b00000";
        ram[1] = "0b10000";
        ram[2] = "0b01000";
        ram[3] = "0b11000";
        ram[4] = "0b00100";
        ram[5] = "0b10100";
        ram[6] = "0b01100";
        ram[7] = "0b11100";
        ram[8] = "0b00010";
        ram[9] = "0b10010";
        ram[10] = "0b01010";
        ram[11] = "0b11010";
        ram[12] = "0b00110";
        ram[13] = "0b10110";
        ram[14] = "0b01110";
        ram[15] = "0b11110";
        ram[16] = "0b00001";
        ram[17] = "0b10001";
        ram[18] = "0b01001";
        ram[19] = "0b11001";
        ram[20] = "0b00101";
        ram[21] = "0b10101";
        ram[22] = "0b01101";
        ram[23] = "0b11101";
        ram[24] = "0b00011";
        ram[25] = "0b10011";
        ram[26] = "0b01011";
        ram[27] = "0b11011";
        ram[28] = "0b00111";
        ram[29] = "0b10111";
        ram[30] = "0b01111";
        ram[31] = "0b11111";


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


SC_MODULE(FFT_rev_32) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


FFT_rev_32_ram* meminst;


SC_CTOR(FFT_rev_32) {
meminst = new FFT_rev_32_ram("FFT_rev_32_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~FFT_rev_32() {
    delete meminst;
}


};//endmodule
#endif
