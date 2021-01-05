// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mult_window_Blackbkb_H__
#define __mult_window_Blackbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mult_window_Blackbkb_ram : public sc_core::sc_module {

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


   SC_CTOR(mult_window_Blackbkb_ram) {
        ram[0] = "0b10100011100000000000000000000000";
        ram[1] = "0b00111011011101011101111001010001";
        ram[2] = "0b00111100100000000001110000110100";
        ram[3] = "0b00111101000110010011001110010011";
        ram[4] = "0b00111101100100100101110000001001";
        ram[5] = "0b00111101111101100101100011000000";
        ram[6] = "0b00111110001111100001101000101101";
        ram[7] = "0b00111110100010010011000101100101";
        ram[8] = "0b00111110101110110100000110011111";
        ram[9] = "0b00111110111100110110010011010001";
        ram[10] = "0b00111111000101110101101011000010";
        ram[11] = "0b00111111001101001011110001111000";
        ram[12] = "0b00111111010011111011111000000110";
        ram[13] = "0b00111111011001100100010100000001";
        ram[14] = "0b00111111011101100111010110000101";
        ram[15] = "0b00111111011111101110110010001110";
        ram[16] = "0b00111111011111101110110010001110";
        ram[17] = "0b00111111011101100111010110000101";
        ram[18] = "0b00111111011001100100010100000001";
        ram[19] = "0b00111111010011111011111000000110";
        ram[20] = "0b00111111001101001011110001111000";
        ram[21] = "0b00111111000101110101101011000010";
        ram[22] = "0b00111110111100110110010011010001";
        ram[23] = "0b00111110101110110100000110011111";
        ram[24] = "0b00111110100010010011000101100101";
        ram[25] = "0b00111110001111100001101000101101";
        ram[26] = "0b00111101111101100101100011000000";
        ram[27] = "0b00111101100100100101110000001001";
        ram[28] = "0b00111101000110010011001110010011";
        ram[29] = "0b00111100100000000001110000110100";
        ram[30] = "0b00111011011101011101111001010001";
        ram[31] = "0b10100011100000000000000000000000";


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


SC_MODULE(mult_window_Blackbkb) {


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


mult_window_Blackbkb_ram* meminst;


SC_CTOR(mult_window_Blackbkb) {
meminst = new mult_window_Blackbkb_ram("mult_window_Blackbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~mult_window_Blackbkb() {
    delete meminst;
}


};//endmodule
#endif
