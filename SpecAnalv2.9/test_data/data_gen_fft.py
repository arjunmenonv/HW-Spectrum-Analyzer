import numpy as np
import numpy.random as random
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
#  N = 32    # For SW and HW testing
  N = 1024
  pi = np.pi
  exp_out = []
  #data   = np.array([(random.randn()+1j*random.randn()) for i in range(N)])
  data   = np.array([(np.cos(pi*i/4) + 1j*np.sin(pi*i/4)) for i in range(N)])
  for index in range(32):
    data32 = data[index*32:(index+1)*32]
    exp_out.append(abs(np.fft.fft(data32*np.hanning(32))))
  exp_out = np.array(exp_out, dtype = float)
    
  ''' Test data for comparing results from SW and HW implementations
  result_hann = np.fft.fft(data*np.hanning(32))
  result_hamm = np.fft.fft(data*np.hamming(32))
  result_black = np.fft.fft(data*np.blackman(32))

  np.savetxt("../inp.txt", data, fmt = "%f %f")
  np.savetxt("../out_hann.txt", result_hann, fmt = "%f %f")
  np.savetxt("../out_hamm.txt", result_hamm, fmt = "%f %f")
  np.savetxt("../out_black.txt", result_black, fmt = "%f %f")
  '''

  # storing input data for long input vectors, for use as a spectrum analyser
  np.savetxt("../vitis_src/inp_long.txt", data, fmt = "data_comp(%f, %f),")
  np.savetxt("../vitis_src/exp_long.txt", exp_out, fmt = "%f\n")

