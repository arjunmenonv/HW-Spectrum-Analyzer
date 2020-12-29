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
// 0x100 ~
// 0x1ff : Memory 'data_IN' (32 * 64b)
//         Word 2n   : bit [31:0] - data_IN[n][31: 0]
//         Word 2n+1 : bit [31:0] - data_IN[n][63:32]
// 0x200 ~
// 0x2ff : Memory 'data_OUT' (32 * 64b)
//         Word 2n   : bit [31:0] - data_OUT[n][31: 0]
//         Word 2n+1 : bit [31:0] - data_OUT[n][63:32]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFFT_AXILITES_ADDR_AP_CTRL       0x000
#define XFFT_AXILITES_ADDR_GIE           0x004
#define XFFT_AXILITES_ADDR_IER           0x008
#define XFFT_AXILITES_ADDR_ISR           0x00c
#define XFFT_AXILITES_ADDR_DATA_IN_BASE  0x100
#define XFFT_AXILITES_ADDR_DATA_IN_HIGH  0x1ff
#define XFFT_AXILITES_WIDTH_DATA_IN      64
#define XFFT_AXILITES_DEPTH_DATA_IN      32
#define XFFT_AXILITES_ADDR_DATA_OUT_BASE 0x200
#define XFFT_AXILITES_ADDR_DATA_OUT_HIGH 0x2ff
#define XFFT_AXILITES_WIDTH_DATA_OUT     64
#define XFFT_AXILITES_DEPTH_DATA_OUT     32

