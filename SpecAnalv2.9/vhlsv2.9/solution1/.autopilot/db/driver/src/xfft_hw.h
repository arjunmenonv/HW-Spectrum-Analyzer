// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x180 : Data signal of win_mode
//         bit 7~0 - win_mode[7:0] (Read/Write)
//         others  - reserved
// 0x184 : reserved
// 0x080 ~
// 0x0ff : Memory 'data_IN_M_real' (32 * 32b)
//         Word n : bit [31:0] - data_IN_M_real[n]
// 0x100 ~
// 0x17f : Memory 'data_IN_M_imag' (32 * 32b)
//         Word n : bit [31:0] - data_IN_M_imag[n]
// 0x200 ~
// 0x27f : Memory 'data_OUT_M_real' (32 * 32b)
//         Word n : bit [31:0] - data_OUT_M_real[n]
// 0x280 ~
// 0x2ff : Memory 'data_OUT_M_imag' (32 * 32b)
//         Word n : bit [31:0] - data_OUT_M_imag[n]
// 0x300 ~
// 0x37f : Memory 'mag_OUT' (32 * 32b)
//         Word n : bit [31:0] - mag_OUT[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFFT_AXILITES_ADDR_AP_CTRL              0x000
#define XFFT_AXILITES_ADDR_GIE                  0x004
#define XFFT_AXILITES_ADDR_IER                  0x008
#define XFFT_AXILITES_ADDR_ISR                  0x00c
#define XFFT_AXILITES_ADDR_WIN_MODE_DATA        0x180
#define XFFT_AXILITES_BITS_WIN_MODE_DATA        8
#define XFFT_AXILITES_ADDR_DATA_IN_M_REAL_BASE  0x080
#define XFFT_AXILITES_ADDR_DATA_IN_M_REAL_HIGH  0x0ff
#define XFFT_AXILITES_WIDTH_DATA_IN_M_REAL      32
#define XFFT_AXILITES_DEPTH_DATA_IN_M_REAL      32
#define XFFT_AXILITES_ADDR_DATA_IN_M_IMAG_BASE  0x100
#define XFFT_AXILITES_ADDR_DATA_IN_M_IMAG_HIGH  0x17f
#define XFFT_AXILITES_WIDTH_DATA_IN_M_IMAG      32
#define XFFT_AXILITES_DEPTH_DATA_IN_M_IMAG      32
#define XFFT_AXILITES_ADDR_DATA_OUT_M_REAL_BASE 0x200
#define XFFT_AXILITES_ADDR_DATA_OUT_M_REAL_HIGH 0x27f
#define XFFT_AXILITES_WIDTH_DATA_OUT_M_REAL     32
#define XFFT_AXILITES_DEPTH_DATA_OUT_M_REAL     32
#define XFFT_AXILITES_ADDR_DATA_OUT_M_IMAG_BASE 0x280
#define XFFT_AXILITES_ADDR_DATA_OUT_M_IMAG_HIGH 0x2ff
#define XFFT_AXILITES_WIDTH_DATA_OUT_M_IMAG     32
#define XFFT_AXILITES_DEPTH_DATA_OUT_M_IMAG     32
#define XFFT_AXILITES_ADDR_MAG_OUT_BASE         0x300
#define XFFT_AXILITES_ADDR_MAG_OUT_HIGH         0x37f
#define XFFT_AXILITES_WIDTH_MAG_OUT             32
#define XFFT_AXILITES_DEPTH_MAG_OUT             32

