// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFft_CfgInitialize(XFft *InstancePtr, XFft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFft_Set_win_mode(XFft *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_WIN_MODE_DATA, Data);
}

u32 XFft_Get_win_mode(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_WIN_MODE_DATA);
    return Data;
}

