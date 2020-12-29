# FFT: Demo for Vivado HLS and Hardware Test

## Problem definition

We want to implement a 32-point Fast Fourier Transform (FFT) on an FPGA.  This proceeds in three stages:

1. Reference (test data) generation
2. Implementation and Verification using HLS
3. FPGA implementation

**NOTE**: The focus of this demo code is only functionality - we do not discuss optimization directives and possible improvements to the code.

The steps are described in more detail below.

<details>
<summary><strong>Reference generation</strong></summary>

We can use the Numeric Python (numpy) implementation of the FFT function as the basis to generate sample input and output data that can be used to test the implementation.  The program is available in the [scripts](./scripts) folder and is called `data_gen_fft.py`.  By default the program generates a random sequence (starting from a fixed seed, so that the result will always be the same).  This input and the corresponding output are saved into files in normal decimal notation suitable for reading and processing using the C test bench.

The same inputs and outputs are also converted to 16 bit `ap_fixed<16,8>` data type - this has a total of 16 bits per value, of which 8 are used to represent the integer portion, and remaining 8 for the fraction.  

This script should be suitably modified if you want to generate test cases with different size of input sequence, number of bits etc.
</details>

<details>
<summary><strong>Implementation and Verification using HLS</strong></summary>

1. Write a C/C++ implementation of the FFT, together with a suitable test bench that applies the inputs from numpy and compares against the expected outputs.
    * *Optional:* Refine this implementation using the `ap_fixed` data type to use appropriate number of bits, and convert the system to fixed point operation instead of floating point. *Note: not covered in this example.*

2. Once satisfied with the C implementation, synthesize it.  
    * *Optional:* Change the number of bits used in the data types to reduce hardware usage.
    * *Optional:* Apply suitable directives to optimize hardware usage, latency, initiation interval and other similar parameters.

3. After the synthesis results are satisfactory and all warnings and errors are either resolved or confirmed safe to ignore, run a hardware co-simulation to verify that the synthesized netlist has the required functionality.  This is especially necessary if the synthesis generates any warnings about synthesis/simulation mismatch.

4. Export the resulting IP core in a format that can be imported for hardware implementation.  This packages the design in a format that can imported into other implementation tools (in our case the Vivado suite from Xilinx).
</details>

<details>
<summary><strong>FPGA implementation</strong></summary>

1. Create a project targeting the appropriate board.  Set up the IP repository to point to the previously synthesized FFT core directory.
2. Import the FFT core, along with the `datasrc` module and the input/output reference data
3. Set up the integrated logic analyzer (ILA) to monitor signals
4. Run a behavioural simulation to check correctness of the test setup
5. Implement and generate a bitstream using Vivado to program the FPGA
6. Download the bitstream to the FPGA, monitor the signals on the ILA, and verify functionality

</details>