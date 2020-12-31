/*Source: Numerical Recipe In C
 * Modified by IIT Madras
 * The following code computes 32point FFT
 * The bit reversal positions are precomputed and stored in the header files.
 * The Twiddle Factor is decomposed into following form:
 * exp(ia + ib) = exp(ia)*exp(ib) = exp(ia) + Z*exp(ia)
 * Where Z = exp(ib) - 1 = -(1 - cos(b)) + isin(b) = -2*sin^2(b/2) + isin(b)
 * Z is precomputed and stored in header file.
 * */

#include "32fft.h"
#include "32fftvalues.h"
#include "hls_math.h"
//#include "complex"

using namespace std;

void mult_window(data_comp data_IN[N], char win_mode, data_comp prod_IN[N])
{
	float window[N];
	switch(win_mode){
	//win_mode used to specify window type (one_hot code for now)
	case 0x01:	// Multiply by Hanning
				for(int i = 0; i<N; i++){
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE

					window[i] = Hann32[i];
				}
				break;
	case 0x02:	//Multiply by Hamming
				for(int i = 0; i<N; i++){
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE

					window[i] = Hamm32[i];
				}
				break;
	case 0x04:	//Multiply by Blackman
				for(int i = 0; i<N; i++){
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE

					window[i] = Blackman32[i];
				}
				break;
	default:	for(int i = 0; i<N; i++){
#pragma HLS UNROLL factor=2
				window[i] = 1;
				}
	break;
  }
for(int i = 0; i<N; i++){
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE
	prod_IN[i] = data_IN[i]*window[i];
	}
}

void bitreverse(data_comp data_IN[N], data_comp data_OUT[N]) {
	 bitreversal_label1: for (int i=0;i<N;i++) {
#pragma HLS UNROLL
#pragma HLS PIPELINE
		 int index = rev_32[i];
		data_OUT[i] = data_IN[index];
	}
}

void FFT0(int FFT_stage,int pass_check,int index_shift,int pass_shift,data_comp data_IN[N], data_comp data_OUT[N]){
	int butterfly_span=0,butterfly_pass=0;
	FFT_label1: for (int i = 0; i < N/2; i++) {
#pragma HLS PIPELINE
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
#pragma HLS PIPELINE
//#pragma HLS UNROLL factor=2
	/*
	 * This block consumes 27 DSP slices per instance!
	 * Approx 19 slices due to log10(float)
	 * This block is the current bottleneck in terms of
	 * latency as well as II. UNROLL avoided to reduce
	 * number of DSP48's used.
	 * Workaround: Compute log(mag(fft)) on host PC while plotting
	 * instead of computing it in PL. Computing in PS would
	 * add memory access time
	 */
		in_r[i] = data_IN[i].real();
		in_i[i] = data_IN[i].imag();
		mag_sqr[i] = in_r[i]*in_r[i] + in_i[i]*in_i[i];
		mag_OUT[i] = 10*log10(mag_sqr[i]);
	}
}

void FFT(data_comp data_IN[N], char win_mode, data_comp data_OUT[N], data_t mag_OUT[N]){
#pragma HLS INTERFACE s_axilite port=win_mode
#pragma HLS DATAFLOW
#pragma HLS INTERFACE axis register both port=mag_OUT
#pragma HLS INTERFACE axis register both port=data_OUT
#pragma HLS INTERFACE axis register both port=data_IN

/*
 * Avoid DATA_PACK directive
 * Increases both latency and II of FFT loop from 33 cycles to 67
 * DATA_PACK packs elements of a typedef struct into one long vector (reg)
 * While data packing simplifies memory access, this can no longer
 * be pipelined.
 */
	static data_comp prod_IN[N];
	static data_comp data_OUT0[N];
	static data_comp data_OUT1[N];
	static data_comp data_OUT2[N];
	static data_comp data_OUT3[N];
	static data_comp data_OUT4[N];

	static data_comp xin[N];
	static data_comp data_OUTfft[N];
	static data_t xout_mag[N];	// xout = 20log(mag(data_OUTfft)

	for (int i=0; i<N; i++){
#pragma HLS UNROLL
		xin[i] = data_IN[i];
		}
	mult_window(xin, win_mode, prod_IN);	// Multiply by Window specified by win_mode
	bitreverse(prod_IN, data_OUT0);  //calculate bitreverse order
	FFT0(1,16,4,1,data_OUT0,data_OUT1); //calculate the FFT
	FFT0(2,8,3,2,data_OUT1,data_OUT2);
	FFT0(4,4,2,3,data_OUT2,data_OUT3);
	FFT0(8,2,1,4,data_OUT3,data_OUT4);
	FFT0(16,1,0,5,data_OUT4,data_OUTfft);
	polarOUT(data_OUTfft, xout_mag);

	for (int i=0; i<N; i++){
#pragma HLS UNROLL
#pragma HLS PIPELINE
		mag_OUT[i] = xout_mag[i];
		data_OUT[i] = data_OUTfft[i];
	}
}
