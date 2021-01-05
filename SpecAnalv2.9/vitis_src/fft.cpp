/*
 * FFT Software Implementation (for speedup comparisons)
 * version 3
 * Source for Base code: Nitin Chandrachoodan (https://gitlab.com/chandrachoodan/teach-fpga)
 * Modified by Arjun Menon Vadakkeveedu and Akash Reddy (EE @ IIT Madras)
 * Modifications include:
 * 			fft.cpp file used for HLS modified for SW purposes
 * 			Removed HLS directives, using math.h instead of hls_math.h
 * 			Minor modifications such as reducing for loop trip counts in places where
 * 				loops were added in HW version to ensure separation of modules
 * Twiddle Factors, Bit-reversed indices and windowing functions pre-computed and
 * 	stored in header file (will get synthesised as LUTs/ BRAMs).
 *
 * version 3 stable; Latency = 365 cycles; II = 99 cycles (log10 unit is bottleneck for II)
 */

#include "32fft.h"
#include "32fftvalues.h"
#include "math.h"
#include "complex.h"

using namespace std;

void mult_window(data_comp data_IN[N], char win_mode, data_comp prod_IN[N])
{
	switch(win_mode){
	//win_mode used to specify window type (one_hot code for now)
	case 0x01:	// Multiply by Hanning
				for(int i = 0; i<N; i++){
					prod_IN[i] = data_IN[i]*Hann32[i];
				}
				break;
	case 0x02:	//Multiply by Hamming
				for(int i = 0; i<N; i++){
					prod_IN[i] = data_IN[i]*Hamm32[i];
				}
				break;
	case 0x04:	//Multiply by Blackman
				for(int i = 0; i<N; i++){
					prod_IN[i] = data_IN[i]*Blackman32[i];
				}
				break;
	default:	for(int i = 0; i<N; i++){
				prod_IN[i] = data_IN[i];
				}
	break;
  }
}

void bitreverse(data_comp data_IN[N], data_comp data_OUT[N]) {
	 bitreversal_label1: for (int i=0;i<N;i++) {
		 int index = rev_32[i];
		data_OUT[i] = data_IN[index];
	}
}

void FFT0(int FFT_stage,int pass_check,int index_shift,int pass_shift,data_comp data_IN[N], data_comp data_OUT[N]){
	int butterfly_span=0,butterfly_pass=0;
	FFT_label1: for (int i = 0; i < N/2; i++) {
		int index = butterfly_span << index_shift;
		int Ulimit = butterfly_span + (butterfly_pass<<pass_shift);
		int Llimit = Ulimit + FFT_stage;
		data_comp Product = W[index] * data_IN[Llimit];//calculate the product
		data_OUT[Llimit] = data_IN[Ulimit]-Product;
		data_OUT[Ulimit] = data_IN[Ulimit]+Product;
		if (butterfly_span<FFT_stage-1){
			butterfly_span++;
		} else if (butterfly_pass<pass_check-1) {
			butterfly_span = 0;	butterfly_pass++;
		} else {
			butterfly_span = 0;	butterfly_pass=0;
		}
	}
}

void polarOUT(data_comp data_IN[N], data_t mag_OUT[N])
{
	data_t mag_sqr[N];
	data_t in_r[N], in_i[N];
	for(int i = 0; i<N; i++){
		/*in_r[i] = data_IN[i].real();
		in_i[i] = data_IN[i].imag();
		mag_sqr[i] = in_r[i]*in_r[i] + in_i[i]*in_i[i];*/
		mag_sqr[i] = abs(data_IN[i]);
		mag_OUT[i] = 20*log10(mag_sqr[i]);
		//mag_OUT[i] = 10*log10(mag_sqr[i]);
	}
}

void FFT(data_comp data_IN[N], char win_mode, data_comp data_OUT[N], data_t mag_OUT[N]){
	static data_comp prod_IN[N];
	static data_comp data_OUT0[N];
	static data_comp data_OUT1[N];
	static data_comp data_OUT2[N];
	static data_comp data_OUT3[N];
	static data_comp data_OUT4[N];

	static data_comp xin[N];
	static data_comp data_OUTfft[N];
	static data_t xout_mag[N];	// xout = 20log(mag(data_OUTfft)

	/*for (int i=0; i<N; i++){
		xin[i] = data_IN[i];
		}*/
//	mult_window(xin, win_mode, prod_IN);	// Multiply by Window specified by win_mode
	mult_window(data_IN, win_mode, prod_IN);
	bitreverse(prod_IN, data_OUT0);  //calculate bitreverse order
	FFT0(1,16,4,1,data_OUT0,data_OUT1); //calculate the FFT
	FFT0(2,8,3,2,data_OUT1,data_OUT2);
	FFT0(4,4,2,3,data_OUT2,data_OUT3);
	FFT0(8,2,1,4,data_OUT3,data_OUT4);
	//FFT0(16,1,0,5,data_OUT4,data_OUTfft);
	FFT0(16,1,0,5,data_OUT4,data_OUT);
	polarOUT(data_OUT, mag_OUT);
	//polarOUT(data_OUTfft, xout_mag);

	/*for (int i=0; i<N; i++){
		mag_OUT[i] = xout_mag[i];
		data_OUT[i] = data_OUTfft[i];
	}*/
}
