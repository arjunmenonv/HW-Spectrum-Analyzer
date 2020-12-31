int counter()
{
	/*
	 * Counter Module to track number of clock cycles elapsed
	 * in computing the FFT. Used in place of "timespec" struct
	 * in time.h
	 */
#pragma HLS INTERFACE s_axilite port=return
	// module can be accessed by a ps using axilite interface
	static int ctr = 0;	// static => value of var from prev fn call is stored
	ctr++;
	return ctr;
}
