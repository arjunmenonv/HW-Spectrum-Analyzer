/*
 * Test and profile FFT application in software
 */

#include <complex>
#include "32fft.h"
#include "xcounter.h"

#define TOL 0.1
#define NORM(x) ((x) * (x)).real()

void dispf(float a) {
	int q = a;
	if (a < 0) q--;
	int r = (1000 * (a-q));
	xil_printf("%d.%03d", q, r);
}

int main()
{
	XCounter xc;
	XCounter* xcptr = &xc;
    data_comp data_in[N]={
#include "inp_cpp.txt"
    };
    data_comp data_out[N];
    data_comp data_exp[N] = {
#include "out_cpp.txt"
    };

	int result=0;
	XCounter_Initialize(xcptr, 0);
	XCounter_EnableAutoRestart(xcptr);
	XCounter_Start(xcptr);

	int t1 = XCounter_Get_return(xcptr);
	FFT(data_in,data_out);
	int t2 = XCounter_Get_return(xcptr);

	for(int k=0;k<N;k++){
		xil_printf("SW-ERROR: [%d] \t ", k);
		dispf(data_out[k].real());
		xil_printf(" vs exp:\t ");
		dispf(data_exp[k].real());
		xil_printf("\r\n");
		if(NORM(data_exp[k]-data_out[k])>TOL) {
			result ++;
		}
	}

	if (result != 0) {
		xil_printf("FAIL SW: %d errors\r\n", result);
	} else {
		xil_printf("PASS\r\n");
	}

	xil_printf("SW FFT cycles: %d\r\n", t2-t1);

    return result;

}
