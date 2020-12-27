"""
File Name   : data_gen_fft.py
Author      : Avinash Sure
            : Nitin Chandrachoodan <nitin@ee.iitm.ac.in>

This program is used to generate random input data
and its corresponding FFT for a given length N.
"""

import numpy, random
import sys

def get_hex(value, fmt="{:04x}"):
	if value < 0:
		c = 2**16 + value
	else:
		c = value
	return fmt.format(c.astype(int))

def dump_coe(filename, x):
	with open(filename, "w") as f:
		f.write("; Hex equivalent of test input for FFT 32\n")
		f.write("memory_initialization_radix=16;\n")
		f.write("memory_initialization_vector=\n")
		for val in x[:-1]:
			dr = get_hex(val.real*(2**8))
			di = get_hex(val.imag*(2**8))
			f.write(di+dr+",\n")
		val = x[-1]
		dr = get_hex(val.real*(2**8))
		di = get_hex(val.imag*(2**8))
		f.write(di+dr+";\n")

def dump_mem(filename, x):
	with open(filename, "w") as f:
		for val in x:
			dr = get_hex(val.real*(2**8))
			di = get_hex(val.imag*(2**8))
			f.write(di+dr+"\n")

if __name__ == "__main__" :
	
	# N = int(sys.argv[1])
  N = 32
#  numpy.random.seed(0)   # start from known state
  data   = numpy.array([(numpy.random.randn()+1j*numpy.random.randn()) for i in range(N)])
  result = numpy.fft.fft(data)

#  numpy.savetxt("../build/inp_1.txt", data, fmt = "%f %f")
#  numpy.savetxt("../build/out_1.txt", result, fmt = "%f %f")

  numpy.savetxt("../vivado/fft-sdk/inp_1.txt", data, fmt = "data_comp(%f, %f),")
  numpy.savetxt("../vivado/fft-sdk/out_1.txt", result, fmt = "data_comp(%f, %f),")

	#dump_coe("inp_hex.coe", data)
	#dump_coe("out_hex.coe", result)

