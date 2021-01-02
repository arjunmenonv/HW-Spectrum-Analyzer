/*
 * Test and profile FFT application in software
 */
/*
 * Test and profile software and hardware versions of  FFT
 */

#include <complex.h>
#include "32fft.h"
#include "xcounter.h"
#include "xfft.h"
#include "xaxidma.h"
#include "xparameters.h"	// Generated during HW export, includes macros for
							// peripheral addresses, device IDs etc.
#include "xuartps.h"


#define TOL 0.1
#define NORM(x) ((x).real()*(x).real() + (x).imag()*(x).imag())

// Reusing macros from "xparameters.h"
#define FFT_devID XPAR_FFT_0_DEVICE_ID
#define PerfCtr_devID XPAR_COUNTER_0_DEVICE_ID
#define DMA0_devID XPAR_AXI_DMA_0_DEVICE_ID
#define DMA1_devID XPAR_AXI_DMA_1_DEVICE_ID
#define UART1_devID XPAR_PS7_UART_1_DEVICE_ID

void dispf(float a) {
	// Error in printing negative floats, as q is integer closest to a
	// This function isn't critical, this bug can be fixed later
	int q = a;
	if (a < 0) q--;
	int r = (10000 * (a-q));
	if (a<0) r  = 10000 - r;
	xil_printf("%d.%04d", q, r);
}

int main()
{
	XUartPs uart;			// XUart struct to communicate between the board and laptop
	XUartPs* uart_ptr=&uart;
	XFft xf;			// XFft struct is used to send win_mode through axilite bus
	XFft* xfptr = &xf;
	XAxiDma dma0;		// dma0: MM2S for data_IN, S2MM for data_OUT
	XAxiDma* dma0_ptr = &dma0;
	XAxiDma_Config* Cfg0_ptr;
	XAxiDma dma1;		// dma1: S2MM for mag_OUT
	XAxiDma* dma1_ptr = &dma1;
	XAxiDma_Config* Cfg1_ptr;
	XCounter xc;
	XCounter* xcptr = &xc;
	char win_mode = 0x02;
	data_comp data_in[N]={
#include "inp.txt"
	};
    data_comp data_out[N];
    data_comp data_exp[N] = {
    #include "out_hamm.txt"
        };

    int t_hw0, t_hw1, t_hw2;	// track data write, fft and data read time
    int poll_ctr = 0;
    float mag_out[N];
    float norm[N];
	int Status;
  	int result=0;
  	int hw_result = 0;

  	// Peripheral initialise and mode set
  	XFft_Initialize(xfptr, FFT_devID);
   	XCounter_Initialize(xcptr, PerfCtr_devID);
   	XCounter_EnableAutoRestart(xcptr);
    XCounter_Start(xcptr);
    // DMA0 initialise and Interrupt Disable (use polling for now)
    Cfg0_ptr = XAxiDma_LookupConfig(DMA0_devID);
    Status = XAxiDma_CfgInitialize(dma0_ptr, Cfg0_ptr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}
	XAxiDma_IntrDisable(dma0_ptr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(dma0_ptr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);
	// DMA1 Initialise and Interrupt Disable
	Cfg1_ptr = XAxiDma_LookupConfig(DMA1_devID);
	Status = XAxiDma_CfgInitialize(dma1_ptr, Cfg1_ptr);
	if (Status != XST_SUCCESS) {
			xil_printf("Initialization failed %d\r\n", Status);
			return XST_FAILURE;
		}
	XAxiDma_IntrDisable(dma1_ptr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(dma1_ptr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);
   //
   

    // Software Run
    int t1 = XCounter_Get_return(xcptr);
   	FFT(data_in,win_mode, data_out, mag_out);
   	int t2 = XCounter_Get_return(xcptr);

   	for(int k=0;k<N;k++){
   		norm[k] =  NORM(data_exp[k]-data_out[k]);
   		if(norm[k]>TOL)	result ++;

   	if (result != 0) xil_printf("\r\nFAIL SW: %d errors\r\n", result);
   	else	xil_printf("\r\nPASS SW\r\n");
   	xil_printf("SW FFT cycles: %d\r\n", t2-t1);

   	// Hardware Run
	t_hw0 = XCounter_Get_return(xcptr);
	// Write data_IN and win_mode
	XFft_Set_win_mode(xfptr, (u32)0x01);	// hann window
	//write data_in to fft
	XAxiDma_SimpleTransfer(dma0_ptr, (UINTPTR) data_in, N*sizeof(data_comp), XAXIDMA_DMA_TO_DEVICE);
	while(XAxiDma_Busy(dma0_ptr, XAXIDMA_DMA_TO_DEVICE) && poll_ctr < 1000)	poll_ctr++;
	if (poll_ctr == 1000)	xil_printf("Input Transfer Timed out \n");
	t_hw1 = XCounter_Get_return(xcptr);
	// ap_start signal of FFT peripheral is always 1, no need to explicitly start the peripheral
	poll_ctr = 0;
	XAxiDma_SimpleTransfer(dma0_ptr, (UINTPTR) data_out, N*sizeof(data_comp), XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_SimpleTransfer(dma1_ptr, (UINTPTR) mag_out, N*sizeof(float), XAXIDMA_DEVICE_TO_DMA);
	t_hw2 = XCounter_Get_return(xcptr);
	

	
	Config_0 = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
        if (NULL == Config_0){
                xil_printf("Initialization failed %d\r\n", Config_0);
                return XST_FAILURE;
        }

        Status = XUartPs_CfgInitialize(uart_ptr, Config_0, Config_0->BaseAddress);
        if (Status != XST_SUCCESS) {
                return XST_FAILURE;
        }
	
        int bytes_sent;
	
        bytes_sent = XUartPs_Send(uart_ptr, (char*) mag_out, N*sizeof(float));
	xil_printf(":%d\n", bytes_sent);
        

	for(int k=0;k<N;k++){
		norm[k] =  NORM(data_exp[k]-data_out[k]);
		//xil_printf("\r\n");
		//dispf(mag_out[k]);
		if(norm[k]>TOL) hw_result ++;
		}
	if (hw_result != 0) xil_printf("FAIL HW: %d errors\r\n", hw_result);
	else xil_printf("PASS HW\r\n");

	xil_printf("HW FFT cycles: \r\nData Write Stage:  %d\r\n", t_hw1 - t_hw0);
	xil_printf("FFT computation + Read: %d\r\n", t_hw2 - t_hw1);
	xil_printf("Net HW time: %d\r\n", t_hw2 - t_hw0);
	/*
	 * This code passes tests comparing 32 pt FFT results for hamm, hann and blackman windows
	 * Issues/Further work:
	 * counter does not return actual number of clock cycles elapsed; To be replaced/fixed
	 * Send mag_out through uart port
	 */
   	return result + hw_result;
}
