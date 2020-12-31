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
  N = 256

  data   = np.array([(random.randn()+1j*random.randn()) for i in range(N)])
  result_hann = np.fft.fft(data*np.hanning(N))
  result_hamm = np.fft.fft(data*np.hamming(N))
  result_black = np.fft.fft(data*np.blackman(N))

  np.savetxt("./inp.txt", data, fmt = "%f %f")
  np.savetxt("./out_hann.txt", result_hann, fmt = "%f %f")
  np.savetxt("./out_hamm.txt", result_hamm, fmt = "%f %f")
  np.savetxt("./out_black.txt", result_black, fmt = "%f %f")


