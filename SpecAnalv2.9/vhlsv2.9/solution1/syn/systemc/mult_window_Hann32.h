// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mult_window_Hann32_H__
#define __mult_window_Hann32_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mult_window_Hann32_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(mult_window_Hann32_ram) {
        ram[0] = "0b00000000000000000000000000000000";
        ram[1] = "0b00111100001001111011000011010100";
        ram[2] = "0b00111101001001011111100101110001";
        ram[3] = "0b00111101101101111000100111001010";
        ram[4] = "0b00111110000111110011111110111010";
        ram[5] = "0b00111110011100010010101110100001";
        ram[6] = "0b00111110101001110001011100000001";
        ram[7] = "0b00111110110110010011110000000111";
        ram[8] = "0b00111111000001100111101110101100";
        ram[9] = "0b00111111001000000001010101100010";
        ram[10] = "0b00111111001110000101111011010110";
        ram[11] = "0b00111111010011100101100101111101";
        ram[12] = "0b00111111011000010001111011111100";
        ram[13] = "0b00111111011011111110101010010111";
        ram[14] = "0b00111111011110100010000100111100";
        ram[15] = "0b00111111011111110101011111100001";
        ram[16] = "0b00111111011111110101011111100001";
        ram[17] = "0b00111111011110100010000100111100";
        ram[18] = "0b00111111011011111110101010010111";
        ram[19] = "0b00111111011000010001111011111100";
        ram[20] = "0b00111111010011100101100101111101";
        ram[21] = "0b00111111001110000101111011010110";
        ram[22] = "0b00111111001000000001010101100010";
        ram[23] = "0b00111111000001100111101110101100";
        ram[24] = "0b00111110110110010011110000000111";
        ram[25] = "0b00111110101001110001011100000001";
        ram[26] = "0b00111110011100010010101110100001";
        ram[27] = "0b00111110000111110011111110111010";
        ram[28] = "0b00111101101101111000100111001010";
        ram[29] = "0b00111101001001011111100101110001";
        ram[30] = "0b00111100001001111011000011010100";
        ram[31] = "0b00000000000000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(mult_window_Hann32) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mult_window_Hann32_ram* meminst;


SC_CTOR(mult_window_Hann32) {
meminst = new mult_window_Hann32_ram("mult_window_Hann32_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~mult_window_Hann32() {
    delete meminst;
}


};//endmodule
#endif
