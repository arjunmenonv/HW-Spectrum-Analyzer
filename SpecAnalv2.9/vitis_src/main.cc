/*
 * FFT Based Spectrum Analyzer Application Program ver2.9
 * 	1. Compare SW (on Zynq7 PS) and HW (using Custom Peripheral IP) implementations of 32-point FFT
 * 	2. Reads input vector from a file stored in DMEM of Zynq7 PS and feeds it to the peripheral 32 points at a time to compute STFT
 * 	3. Includes required calls to peripheral driver functions for initialization, read, write and reset (wherever applicable)
 *
 * 	Interfaced Peripherals:
 * 		1. Custom FFT IP (through axilite bus)
 * 		2. Custom Counter IP to track number of clock cycles elapsed (axilite bus)
 * 		3. UART1 Peripheral for sending output data (memory mapped to Zynq7 PS)
 *		4. (WiP- in ver3) AXI DMA to provide a memory mapped interface to PS while interfacing FFT IP using AXI-stream
 *
 *  Using Drivers provided by Vivado
 *  Authors: Arjun Menon Vadakkeveedu (EE18B104), Muralekrishnan R (EP18B026)
 * 	IIT Madras
 * 	December 2020
 */

#include <complex.h>
#include "32fft.h"
#include "xcounter.h"
#include "xfft.h"
#include "xparameters.h"	// Generated during HW export, includes macros for
							// peripheral addresses, device IDs etc.
#include "xuartps.h"
//#include "xaxidma.h"

#define TOL 0.1
#define NORM(x) ((x).real()*(x).real() + (x).imag()*(x).imag())
#define HANN32_MODE	0x01
#define HAMM32_MODE	0x02
#define BLACK32_MODE	0x04
#define INP_SIZE	1024
// Reusing macros from "xparameters.h"
#define FFT_devID XPAR_FFT_0_DEVICE_ID
#define PerfCtr_devID XPAR_COUNTER_0_DEVICE_ID
#define UART1_devID XPAR_PS7_UART_1_DEVICE_ID
#define XUARTPS_OPTION_RESET_TX		0x0010U /**< Reset the transmitter */
/*#define DMA0_devID XPAR_AXI_DMA_0_DEVICE_ID
#define DMA1_devID XPAR_AXI_DMA_1_DEVICE_ID*/


// Function Declarations- for Read and Write to Peripherals
void WriteFFT_IN(XFft* InstancePtr, float* data_in_r, float* data_in_imag, int length){
	XFft_Write_data_IN_M_real_Words(InstancePtr, 0, (int *)data_in_r, length);
	XFft_Write_data_IN_M_imag_Words(InstancePtr, 0, (int *)data_in_imag, length);
}

void ReadFFT_OUT(XFft* InstancePtr, float* data_out_r, float* data_out_imag, float* mag_out,
		int length){
	XFft_Read_data_OUT_M_real_Words(InstancePtr,0, (int *)data_out_r, length);
	XFft_Read_data_OUT_M_imag_Words(InstancePtr, 0, (int *)data_out_imag, length);
	XFft_Read_mag_OUT_Words(InstancePtr, 0, (int *) mag_out, length);
}

void uart_send64(XUartPs* InstancePtr, u8* data_ptr){
	/*
	 * Sends 64 bytes of data (size of UART Tx FIFO) through UART (to PC)
	 * End of Transmission is found by polling; Once the buffer is transmitted completely, it is reset so that new data can be stored in it
	 */
	 for(int i = 0; i<16;i++){
	       XUartPs_Send(InstancePtr, data_ptr, sizeof(float));
	       data_ptr += 4;
	   }
    int sendctr = 0;
	while(XUartPs_IsSending(InstancePtr))	sendctr++;
	XUartPs_SetOptions(InstancePtr, XUARTPS_OPTION_RESET_TX);
}

int main()
{
	// Creating objects of structures used in peripheral drivers
	XUartPs uart;
	XUartPs* uart_ptr = &uart;
	XUartPs_Config* Config_0;
	XFft xf;
	XFft* xfptr = &xf;
	XCounter xc;
	XCounter* xcptr = &xc;
	/* Axi Dma objects removed in ver2.9 ()
	XAxiDma dma0;		// dma0: MM2S for data_IN, S2MM for data_OUT
	XAxiDma* dma0_ptr = &dma0;
	XAxiDma_Config* Cfg0_ptr;
	XAxiDma dma1;		// dma1: S2MM for mag_OUT
	XAxiDma* dma1_ptr = &dma1;
	XAxiDma_Config* Cfg1_ptr;
	*/

	// data_in and data_exp are assigned values during compile time
	data_comp long_inp[INP_SIZE] = {
#include "inp_long.txt"
	};
	data_comp data_in[N]={
	#include "inp.txt"
	};
	data_comp data_exp[N] = {
	#include "out_black.txt"
	};
    data_comp data_out_hw[N], data_out_sw[N];
    data_t mag_out_hw[N], mag_out_sw[N];
    float din_r[N], din_i[N], dout_r[N], dout_i[N];
	char win_mode;
	u8* uartData_ptr;

    int t_hw0, t_hw1, t_hw2, t_hw3;	// track data write, fft and data read time
    int poll_ctr = 0;
    float norm[N];
  	int result=0;
  	int hw_result = 0;

  	// Peripheral initialize and mode set
  	XFft_Initialize(xfptr, FFT_devID);
   	XCounter_Initialize(xcptr, PerfCtr_devID);
   	XCounter_EnableAutoRestart(xcptr);
    XCounter_Start(xcptr);
    Config_0 = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
    XUartPs_CfgInitialize(uart_ptr, Config_0, Config_0->BaseAddress);

    // Send input data in blocks of 32
    int numIter = (int)INP_SIZE/32;

    for (int iter = 0; iter<numIter; iter++){
    	for(int i = 0; i<N; i++){
    	     din_r[i] = long_inp[i + iter*32].real();
    	     din_i[i] = long_inp[i + iter*32].imag();
    	   }
        win_mode = HANN32_MODE;
        XFft_Set_win_mode(xfptr, (u32)win_mode);							// Write data_IN and win_mode
        WriteFFT_IN(xfptr, din_r, din_i, N);
        XFft_Start(xfptr);
        while(!XFft_IsDone(xfptr) && poll_ctr < 1000)	poll_ctr++;			// Polling
        if(poll_ctr == 1000)	xil_printf("\r\nFFT Peripheral timed out\r\n");
        ReadFFT_OUT(xfptr, dout_r, dout_i, mag_out_hw, N);
        // Send mag_out through UART
        uartData_ptr = (u8*) mag_out_hw;
        for(int i = 0; i<2; i++){
           uart_send64(uart_ptr, uartData_ptr);
           uartData_ptr += 64;
        }
    }


    /*	Compare SW and HW runs: Use serial Terminal

    for(int i = 0; i<N; i++){
        	din_r[i] = data_in[i].real();
        	din_i[i] = data_in[i].imag();
        }
    win_mode = BLACK32_MODE;

    // SW Run
    int t1 = XCounter_Get_return(xcptr);
    FFT(data_in,win_mode, data_out_sw, mag_out_sw);
    int t2 = XCounter_Get_return(xcptr);
    for(int k=0;k<N;k++){
    	norm[k] =  NORM(data_exp[k]-data_out_sw[k]);
       	if(norm[k]>TOL)	result ++;
    }
    xil_printf("\r\nWindow Mode Used: %d \r\n", u32(win_mode));
    if (result != 0) xil_printf("\r\nFAIL SW: %d errors\r\n", result);
    else	xil_printf("\r\nPASS SW\r\n");
    xil_printf("SW FFT cycles: %d\r\n", t2-t1);

    // HW Run
    t_hw0 = XCounter_Get_return(xcptr);
    XFft_Set_win_mode(xfptr, (u32)win_mode);							// Write data_IN and win_mode
    WriteFFT_IN(xfptr, din_r, din_i, N);
    t_hw1 = XCounter_Get_return(xcptr);
    XFft_Start(xfptr);
    while(!XFft_IsDone(xfptr) && poll_ctr < 1000)	poll_ctr++;			// Polling
    if(poll_ctr == 1000)	xil_printf("\r\nFFT Peripheral timed out\r\n");
    t_hw2 = XCounter_Get_return(xcptr);
    ReadFFT_OUT(xfptr, dout_r, dout_i, mag_out_hw, N);
    t_hw3 = XCounter_Get_return(xcptr);
    for(int i = 0; i<N; i++){
    	data_out_hw[i] = data_comp(dout_r[i], dout_i[i]);
    	norm[i] =  NORM(data_exp[i]-data_out_hw[i]);
    	if(norm[i]>TOL) hw_result ++;
    }
    if (hw_result != 0) xil_printf("FAIL HW: %d errors\r\n", hw_result);
    else xil_printf("PASS HW\r\n");
    xil_printf("HW FFT cycles: \r\nData Write Stage:  %d\r\n", t_hw1 - t_hw0);
    xil_printf("FFT computation: %d\r\n", t_hw2 - t_hw1);
    xil_printf("Read Stage: %d\r\n", t_hw3 - t_hw2);
    xil_printf("Net HW time: %d\r\n", t_hw3 - t_hw0);
    */

   	return result + hw_result;
}

