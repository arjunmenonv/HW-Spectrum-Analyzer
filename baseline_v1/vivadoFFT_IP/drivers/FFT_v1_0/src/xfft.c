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

void XFft_Start(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL) & 0x80;
    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFft_IsDone(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFft_IsIdle(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFft_IsReady(XFft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFft_EnableAutoRestart(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XFft_DisableAutoRestart(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_AP_CTRL, 0);
}

u32 XFft_Get_data_IN_BaseAddress(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_BASE);
}

u32 XFft_Get_data_IN_HighAddress(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_HIGH);
}

u32 XFft_Get_data_IN_TotalBytes(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFFT_AXILITES_ADDR_DATA_IN_HIGH - XFFT_AXILITES_ADDR_DATA_IN_BASE + 1);
}

u32 XFft_Get_data_IN_BitWidth(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFFT_AXILITES_WIDTH_DATA_IN;
}

u32 XFft_Get_data_IN_Depth(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFFT_AXILITES_DEPTH_DATA_IN;
}

u32 XFft_Write_data_IN_Words(XFft *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFFT_AXILITES_ADDR_DATA_IN_HIGH - XFFT_AXILITES_ADDR_DATA_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFft_Read_data_IN_Words(XFft *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFFT_AXILITES_ADDR_DATA_IN_HIGH - XFFT_AXILITES_ADDR_DATA_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFft_Write_data_IN_Bytes(XFft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFFT_AXILITES_ADDR_DATA_IN_HIGH - XFFT_AXILITES_ADDR_DATA_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFft_Read_data_IN_Bytes(XFft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFFT_AXILITES_ADDR_DATA_IN_HIGH - XFFT_AXILITES_ADDR_DATA_IN_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_IN_BASE + offset + i);
    }
    return length;
}

u32 XFft_Get_data_OUT_BaseAddress(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_BASE);
}

u32 XFft_Get_data_OUT_HighAddress(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_HIGH);
}

u32 XFft_Get_data_OUT_TotalBytes(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFFT_AXILITES_ADDR_DATA_OUT_HIGH - XFFT_AXILITES_ADDR_DATA_OUT_BASE + 1);
}

u32 XFft_Get_data_OUT_BitWidth(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFFT_AXILITES_WIDTH_DATA_OUT;
}

u32 XFft_Get_data_OUT_Depth(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFFT_AXILITES_DEPTH_DATA_OUT;
}

u32 XFft_Write_data_OUT_Words(XFft *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFFT_AXILITES_ADDR_DATA_OUT_HIGH - XFFT_AXILITES_ADDR_DATA_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFft_Read_data_OUT_Words(XFft *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFFT_AXILITES_ADDR_DATA_OUT_HIGH - XFFT_AXILITES_ADDR_DATA_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFft_Write_data_OUT_Bytes(XFft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFFT_AXILITES_ADDR_DATA_OUT_HIGH - XFFT_AXILITES_ADDR_DATA_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFft_Read_data_OUT_Bytes(XFft *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFFT_AXILITES_ADDR_DATA_OUT_HIGH - XFFT_AXILITES_ADDR_DATA_OUT_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XFFT_AXILITES_ADDR_DATA_OUT_BASE + offset + i);
    }
    return length;
}

void XFft_InterruptGlobalEnable(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_GIE, 1);
}

void XFft_InterruptGlobalDisable(XFft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_GIE, 0);
}

void XFft_InterruptEnable(XFft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_IER);
    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_IER, Register | Mask);
}

void XFft_InterruptDisable(XFft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_IER);
    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_IER, Register & (~Mask));
}

void XFft_InterruptClear(XFft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFft_WriteReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_ISR, Mask);
}

u32 XFft_InterruptGetEnabled(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_IER);
}

u32 XFft_InterruptGetStatus(XFft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFft_ReadReg(InstancePtr->Axilites_BaseAddress, XFFT_AXILITES_ADDR_ISR);
}

