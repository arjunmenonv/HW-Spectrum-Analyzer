#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <complex>
#include "32fft.h"

#define TOL 0.01
#define NORM(x) ((x) * (x)).real()

int main()
{
	int result=0;
	for(int z=0; z<2; z++){
		data_comp data_in[N];
		data_comp data_out[N];
		data_comp exp_out[N];
		ifstream FFTfileIN("inp_cpp.txt");  //reading input to the fft
		ifstream FFTfileOUT("out_cpp.txt");  //expected fft
		if (FFTfileIN.fail() || FFTfileOUT.fail()) {
			std::cerr << "Failed to open file." << endl;
			exit(-1);
		}
		data_t temp1,temp2,temp3,temp4;

		for(int i=0; i<N; i++){
			FFTfileIN>>temp1>>temp2;
			data_in[i]=data_comp(temp1,temp2);
//			cout << temp1 << " " << temp2 << endl;
		}
		FFTfileIN.close();

		FFT(data_in,data_out);

		for(int j=0; j<N;j++){
			FFTfileOUT >> temp3 >> ws >> temp4;
			exp_out[j]=data_comp(temp3,temp4);
//			cout << "Python: " << temp3 << " " << temp4 << endl;
		}
		FFTfileOUT.close();


		for(int k=0;k<N;k++){
			data_t n = NORM(exp_out[k]-data_out[k]);
//			cout << "Exp: " << exp_out[k] << " \t- Got: " << data_out[k] << " \t- Norm: " << n << endl;
//			cout << data_out[k].real() * 256 << ", " << data_out[k].imag() * 256 << endl;
			if (n>TOL) {
				result ++;
			}
		}

	}
	if (result == 0) {
		cout << "PASS" << endl;
	} else {
		cout << "FAIL: " << result << " errors" << endl;
	}
	return result;

}
