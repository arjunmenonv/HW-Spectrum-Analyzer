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

#define TOL 0.1
#define NORM(x) ((x).real()*(x).real() + (x).imag()*(x).imag())

void dispf(float a) {
	// Error in printing negative floats, as q is integer closest to a
	// This function isn't critical, this bug can be fixed later
	int q = a;
	if (a < 0) q--;
	int r = (10000 * (a-q));
	if (a<0) r  = 10000 - r;
	xil_printf("%d.%04d", q, r);
}

void FFTwrite_in(XFft* InstancePtr, float *InData_r, float *InData_i)
{
	XFft_Write_data_IN_M_real_Words(InstancePtr, 0, (int *) InData_r, N);
	XFft_Write_data_IN_M_imag_Words(InstancePtr, 0, (int *) InData_i, N);
}

void FFTread_out(XFft* InstancePtr, float *OutData_r, float *OutData_i)
{
	XFft_Read_data_OUT_M_real_Words(InstancePtr, 0, (int *) OutData_r, N);
	XFft_Read_data_OUT_M_imag_Words(InstancePtr, 0, (int *) OutData_i, N);
}

int main()
{
	XFft xf;
	XFft* xfptr = &xf;
	XCounter xc;
	XCounter* xcptr = &xc;
	data_comp data_in[N]={
#include "inp_1.txt"
	};

    data_comp data_out[N];
    data_comp data_exp[N] = {
    #include "out_1.txt"
        };

    int t_hw0, t_hw1, t_hw2, t_hw3;	// track data write, fft and data read time
    int poll_ctr = 0;
    float d_in_r[N], d_in_i[N];	// represent data_comp as real and imag floats
    float d_out_r[N], d_out_i[N];
	float norm[N];

  	int result=0;
   	XFft_Initialize(xfptr, 0);
   	XCounter_Initialize(xcptr, 0);
   	XCounter_EnableAutoRestart(xcptr);
    XCounter_Start(xcptr);

    // Software Run
    int t1 = XCounter_Get_return(xcptr);
   	FFT(data_in,data_out);
   	int t2 = XCounter_Get_return(xcptr);

   	for(int k=0;k<N;k++){
   		norm[k] =  NORM(data_exp[k]-data_out[k]);
   		//xil_printf("\r\n");
  		//dispf(norm[k]);
  		if(norm[k]>TOL)	result ++;
  	}
   	if (result != 0) xil_printf("FAIL SW: %d errors\r\n", result);
   	else	xil_printf("PASS\r\n");
   	xil_printf("SW FFT cycles: %d\r\n", t2-t1);

   	// Hardware Run
   	int hw_result = 0;
	for(int i = 0; i<N; i++)
	{
		 d_in_r[i] = data_in[i].real();
		 d_in_i[i] = data_in[i].imag();
	}
	t_hw0 = XCounter_Get_return(xcptr);
	FFTwrite_in(xfptr, d_in_r, d_in_i);
	t_hw1 = XCounter_Get_return(xcptr);
	XFft_Start(xfptr);
	while (!XFft_IsDone(xfptr) && poll_ctr < 1000)	poll_ctr++;
	if (poll_ctr == 1000)	xil_printf("Timed out \n");
	t_hw2 = XCounter_Get_return(xcptr);
	FFTread_out(xfptr, d_out_r, d_out_i);
	t_hw3 = XCounter_Get_return(xcptr);

	for(int i = 0; i<N; i++){
		data_out[i] = data_comp(d_out_r[i], d_out_i[i]);
	}
	for(int k=0;k<N;k++){
		norm[k] =  NORM(data_exp[k]-data_out[k]);
		xil_printf("\r\n");
		dispf(norm[k]);
		if(norm[k]>TOL) hw_result ++;
		}
	if (hw_result != 0) xil_printf("FAIL HW: %d errors\r\n", hw_result);
	else xil_printf("PASS\r\n");

	xil_printf("HW FFT cycles: \r\nData Write Stage:  %d\r\n", t_hw1 - t_hw0);
	xil_printf("\nFFT computation: %d\r\n", t_hw2 - t_hw1);
	xil_printf("\nData Read Stage: %d\r\n", t_hw3 - t_hw2);
	xil_printf("\nNet time: %d\r\n", t_hw3 - t_hw0);
   	return result + hw_result;
}
