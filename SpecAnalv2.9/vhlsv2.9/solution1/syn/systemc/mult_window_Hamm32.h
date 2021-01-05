// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mult_window_Hamm32_H__
#define __mult_window_Hamm32_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mult_window_Hamm32_ram : public sc_core::sc_module {

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


   SC_CTOR(mult_window_Hamm32_ram) {
        ram[0] = "0b00111101101000111101011100001010";
        ram[1] = "0b00111101101101110001111111011011";
        ram[2] = "0b00111101111100000011000000110000";
        ram[3] = "0b00111110001001100101100011111100";
        ram[4] = "0b00111110011001000110110111010101";
        ram[5] = "0b00111110100101111110010111111101";
        ram[6] = "0b00111110110000101010111011000011";
        ram[7] = "0b00111110111100001101000011010100";
        ram[8] = "0b00111111000100000011010001010111";
        ram[9] = "0b00111111001001111100000111000000";
        ram[10] = "0b00111111001111100001100111001111";
        ram[11] = "0b00111111010100100101001001010100";
        ram[12] = "0b00111111011000111001011101100011";
        ram[13] = "0b00111111011100010011001111111100";
        ram[14] = "0b00111111011110101001100101110101";
        ram[15] = "0b00111111011111110110010101010100";
        ram[16] = "0b00111111011111110110010101010100";
        ram[17] = "0b00111111011110101001100101110101";
        ram[18] = "0b00111111011100010011001111111100";
        ram[19] = "0b00111111011000111001011101100011";
        ram[20] = "0b00111111010100100101001001010100";
        ram[21] = "0b00111111001111100001100111001111";
        ram[22] = "0b00111111001001111100000111000000";
        ram[23] = "0b00111111000100000011010001010111";
        ram[24] = "0b00111110111100001101000011010100";
        ram[25] = "0b00111110110000101010111011000011";
        ram[26] = "0b00111110100101111110010111111101";
        ram[27] = "0b00111110011001000110110111010101";
        ram[28] = "0b00111110001001100101100011111100";
        ram[29] = "0b00111101111100000011000000110000";
        ram[30] = "0b00111101101101110001111111011011";
        ram[31] = "0b00111101101000111101011100001010";


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


SC_MODULE(mult_window_Hamm32) {


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


mult_window_Hamm32_ram* meminst;


SC_CTOR(mult_window_Hamm32) {
meminst = new mult_window_Hamm32_ram("mult_window_Hamm32_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~mult_window_Hamm32() {
    delete meminst;
}


};//endmodule
#endif
