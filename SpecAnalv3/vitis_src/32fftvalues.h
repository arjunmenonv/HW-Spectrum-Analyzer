#ifndef __32FFTVALUES_H__
#define __32FFTVALUES_H__
#define FFT_LENGTH 32


const int rev_32[]={

0,16,8,24,4,20,12,28,2,18,10,26,6,22,14,30,1,17,9,25,5,21,13,29,3,19,11,27,7,23,15,31,

};


const float scale = 1.0;

const data_comp W[FFT_LENGTH/2] = {

	data_comp(cos(2 * M_PI *0/ FFT_LENGTH) * scale,-sin(2 * M_PI *0/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *1/ FFT_LENGTH) * scale,-sin(2 * M_PI *1/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *2/ FFT_LENGTH) * scale,-sin(2 * M_PI *2/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *3/ FFT_LENGTH) * scale,-sin(2 * M_PI *3/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *4/ FFT_LENGTH) * scale,-sin(2 * M_PI *4/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *5/ FFT_LENGTH) * scale,-sin(2 * M_PI *5/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *6/ FFT_LENGTH) * scale,-sin(2 * M_PI *6/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *7/ FFT_LENGTH) * scale,-sin(2 * M_PI *7/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *8/ FFT_LENGTH) * scale,-sin(2 * M_PI *8/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *9/ FFT_LENGTH) * scale,-sin(2 * M_PI *9/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *10/ FFT_LENGTH) * scale,-sin(2 * M_PI *10/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *11/ FFT_LENGTH) * scale,-sin(2 * M_PI *11/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *12/ FFT_LENGTH) * scale,-sin(2 * M_PI *12/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *13/ FFT_LENGTH) * scale,-sin(2 * M_PI *13/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *14/ FFT_LENGTH) * scale,-sin(2 * M_PI *14/ FFT_LENGTH) * scale),
    data_comp(cos(2 * M_PI *15/ FFT_LENGTH) * scale,-sin(2 * M_PI *15/ FFT_LENGTH) * scale),

};

const float Hann32[FFT_LENGTH] = {
		0, 0.01023503, 0.04052109, 0.08961828, 0.15551654,
		0.23551799, 0.32634737, 0.42428611, 0.52532458, 0.62532627,
		0.72019708, 0.80605299, 0.87937906, 0.93717331, 0.97706963,
		0.99743466, 0.99743466, 0.97706963, 0.93717331, 0.87937906,
		0.80605299, 0.72019708, 0.62532627, 0.52532458, 0.42428611,
		0.32634737, 0.23551799, 0.15551654, 0.08961828, 0.04052109,
		0.01023503, 0
};

const float Hamm32[FFT_LENGTH] = {
		0.08, 0.08941623, 0.11727941, 0.16244882, 0.22307522,
		0.29667656, 0.38023958, 0.47034322, 0.56329862, 0.65530016,
		0.74258131, 0.82156875, 0.88902874, 0.94219944, 0.97890406,
		0.99763989, 0.99763989, 0.97890406, 0.94219944, 0.88902874,
		0.82156875, 0.74258131, 0.65530016, 0.56329862, 0.47034322,
		0.38023958, 0.29667656, 0.22307522, 0.16244882, 0.11727941,
		0.08941623, 0.08
};

const float Blackman32[FFT_LENGTH] = {
		-1.38777878e-17,  3.75165430e-03,  1.56384477e-02,  3.74026996e-02,
		 7.14646070e-02,  1.20286463e-01,  1.85646724e-01,  2.67954971e-01,
		 3.65735039e-01,  4.75378537e-01,  5.91228597e-01,  7.06000789e-01,
		 8.11493284e-01,  8.99490429e-01,  9.62730703e-01,  9.95797057e-01,
		 9.95797057e-01,  9.62730703e-01,  8.99490429e-01,  8.11493284e-01,
		 7.06000789e-01,  5.91228597e-01,  4.75378537e-01,  3.65735039e-01,
		 2.67954971e-01,  1.85646724e-01,  1.20286463e-01,  7.14646070e-02,
		 3.74026996e-02,  1.56384477e-02,  3.75165430e-03, -1.38777878e-17
};
#endif


