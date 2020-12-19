# Notes and References for the Project

Add useful links, notes and ideas to this doc

**11 Dec 2020:**  *Edited by: Arjun*  
Added a document on FFT implementation on hardware to the notes/ folder in the repo for general reference;  we will not have to write the complete HDL model for the FFT module.

So far, I am aware of two options- using Xilinx's FFT IP on vivado, and designing the FFT core using a C program and vivado High Level Synthesis (HLS converts a C code into suitable hardware blocks). The video and code sir referred to in his reply to our mail uses HLS. More info on this to be added.


**18 Dec 2020:** *Edited by: Arjun*

#### Project Overview, Plan and Task Parallelisation


**Brief Description of Project:**

Aim: To interface a Hardware Peripheral with a 32 bit Processor, that can efficiently compute FFT of time domain windowed signals (Short time Fourier Transform). Using this, an application program is written in C for a digital FFT-based spectrum analyser.
This system is then realised on a Digilent Zybo eval board. The processor to be used is the Shakti E-class 32 bit SoC which includes an AXI bus and memory mapping for General Purpose IOs (GPIO).

The input is read from RAM (can be extended to taking values in from the XADC port of the board- we dont have an analog input source at the moment), and the output from the peripheral (FFT of time domain windowed signal in polar form) is stored back to the RAM. This is then communicated serially to a PC and the spectrum is plotted using python libraries.

***Major Blocks of the System:***
1. Shakti processor- must support IMF instructions
2.  FFT peripheral- computes FFT(inpvec*window(n)) in polar form
3.  AXI Bus architecture and interfacing- maps processor's address space to Data Memory, FFT peripheral, UART port on shakti (optional- also to XADC port)- shakti soc comes with the bus interface
4. Application Programs- Written in C; Loads test data into dmem; Driver for FFT peripheral and UART serial ports
5. Testbenches- to validate and test the following blocks of the System  
  - FFT Peripheral- C behav sim, post synthesis sim (use vivado_hls)
  - Processor+ Peripheral system- behavioural simulation and post synthesis simulation; this system can also be tested on the board
  - Pure software implementation of fft+spectrum analyser
  - Miscellaneous: In case of optimisations performed on the baseline implementation, run specific testbenches to check imporvement due to the optimisation
6. Python application on PC for storing and plotting serially input data from the board ('serial' module)

The Vivado High Level Synthesis (HLS) tool makes the job of designing an FFT peripheral simpler. It is capable of converting a suitably written C/C++ program into RTL code and further synthesise into hardware blocks on an FPGA. The synthesis reports include the number of FFs, LUTs, BRAMs and DSP slices used along with latency and throughput of the hardware block. A synthesised block can then be exported to the Vivado tool as a block design and then interfaced with other processor, bus and peripheral systems (as schematics)


**Design Choices and Tradeoffs:**
1. Float vs Fixed Point data type in Peripheral:
  - The peripheral can be designed to operate on float variables using HLS- the required floating point arithmetic units is synthesised by HLS automatically
  - In comparison to float, fixed point computations require fewer FPGA resources and is faster. Hence a fixed point implementation would help us achieve better speed up.
  - The dynamic range of a 32-bit fixed point signed representation is 2^31 which gives approx 186dB of dynamic range in magnitude spectrum. Since most windows have ripples contributing > -100 dB, this seems good enough.
  - There are two downsides to fixed point representation:
    * We cannot parallely get low resolution and high magnitude as the dynamic range is always constant. The ap_fixed (arbitrary precision fixed) data type supported by HLS libraries for C let us choose the number of bits for representing fractions. So by choosing a suitable precision, we can optimise on the magnitude and precision required for the spectrum analyser.
    * Addition of fixed point numbers is the same as adding integers. While multiplying two fixed point numbers, the result must be shifted accordingly to preserve the binary point position. Since shakti processors do not support fixed point in its native form, we'll either have to modify the multiply instruction in RV32IM isa or convert the data from float to ap_fixed (with loss of precision) whenever the data is loaded from memory to the peripheral (and vice versa).
  - The baseline implementation of the system will use float data type as the code for it is readily available. This will let us run tests and compute the performance.
  -*Comparisons to be made wrt float vs ap_fixed:*
    - Speedup (latency and initiation interval) of peripheral
    - Speedup of complete system (float2ap_fixed conversion in case of an ap_fixed implementation using a shakti processorwill increase the critical delay)
    - Resource usage (LUTs, FFs, BRAMs and DSP slices)


2. Adding time domain window multiplication to the peripheral:
  - In the baseline implementation, the peripheral will only compute the fourier transform of an input vector. The multiplication of the data vector by a window will be done in the processor itself. This will let us get a working implementation of the system quickly
  - The processor will perform the windowing operation sequentially (from element 0 to element N-1). However, this can be parallelised using the Multiply Accumulates on the FPGA. This can be done by modifying the HLS code for the FFT peripheral.
  - Additionally, the output can be converted from cartesian to polar form in the peripheral itself (abs computation can be sped up using a multiplier while for computing arctan the peripheral can use an optimal architecture such as CORDIC)
  -*Comparisons to be made wrt windowing in fpga:*
    - Speedup (latency and initiation interval) of peripheral
    - Resource usage (LUTs, FFs, BRAMs and DSP slices) and mapping the additional usage of DSP slices to the windowing operation


3. Further optimisations of the FFT peripheral:
  - Includes array partitioning and hardware pipelining
  - Using #pragma directives in vivado_hls
  - More on this in reference 2.5
  - *Comparisons:* Speedup (peripheral and complete system) and resource usage


4. Choice of Processor:
  - Final design will use Shakti E-class 32 bit E-arty35T SoC
  - However, this will involve making slight modifications to the source code (to add peripheral as a general purpose IO and to instantiate the processor on a board different from Arty35T)
  - To test the functionality of and speedup due to the peripheral, we can use another interface the peripheral with another processor instead. This will also let us parallely work on different tasks
  - We will use the ARM processor (Zynq7 PS) on the Zybo board
  - All testbenches and application programs will largely be unchanged. Peripheral drivers and board/processor config related parameters will have to be modifed while switching from Zynq7 to Shakti


5. Spectrum Analyser Parameters:
  - Sampling frequency: Based on intended application (audio/speech/ecg type data) the sampling frequency will have to be determined, subject to Nyquist criterion
  - FFT buffer size: The spectrum analyser returns the time-frequency plot of the input signal, the buffer (time window) size depends on the sampling frequency (should be a power of 2 between 32 and 1024)
  - Time Domain Windows: 4-5 window functions of appropriate size to be stored in look up tables. Pick popular windows with low stop band ripples, complexity of closed form expression of the window isn't a big deal here as they will be computed on a PC and stored permanently.
  - Number of bits allocated to fractions in ap_fixed point dtype: Depending on the expected magnitude and resolution of the input and output data for the intended application, choose an optimal way to split a 32 bit fixed point number as int+fraction


**Strategy and Baseline Implementation:**

Strategy: Implement a vanilla system that can be easily implemented. This involves
  * using a Zynq7 processor instead of Shakti
  * interfacing it with the baseline float dtype version of the FFT peripheral (code available in ref 2.3)
  * implementing the bus interfacing for the peripherals (FFT and UART0)
  * developing the application code for spectrum analyser

This implementation is then tested using suitable testbenches in C and verilog. Parallely, the optimisations mentioned above are implemented (designchoices.{1,2,3,4}) and then compared with the baseline implementation.

The work may be divided into the following largely parallelisable tasks:

*Task A: Assembling the baseline hardware system*

  - Simulate and synthesise vivado_hls code for FFT peripheral (not optimised, float dtype, window size of 32) and analyse control and status signals generated by HLS
  - Interface with Zynq7 PS using AXI Bus
  - Simulate the system and synthesise on Zybo board
  - SEQUENCE: NO PREREQ

*Task B: Improving FFT Peripheral Design*
  - Optimisations mentioned in designchoices.{1,2,3}
  - Float to ap_fixed conversion inside the peripheral
  - Compare synthesis reports and do necessary Comparisons
  - SEQUENCE: AFTER TASK A

*Task C: Replace Zynq7 with Shakti E-arty35T*
  - Requires changing board config files from Arty35T board to Zybo Z7-20 board
  - Interface HW accelerator as GPIO peripheral
  - Adopt application code for Shakti (modifications to peripheral drivers and header files included)
  - SEQUENCE: AFTER TASK A

*Task D: Testbenches*
  - C and HDL testbenches to test FFT peripheral, FFT+PS system and spectrum analyser
  - Software implementation of FFT and spectrum analyser to compute speedup due to HW accelerator
  - SEQUENCE: NO PREREQ

*Task E: Application programs*
  - C code for peripheral drivers, feed in i/p, activate peripheral (subject to handshake protocols as per HLS) and store o/p in DMEM
  - Interface UART0 peripheral and send resulting mag and phase spectrum to a PC serially
  - Python application to take in serial data and create a time-frequency plot (module time.serial for store uart inputs to an array)

*Task F: Comparisons and Benchmarking*
  - Linked to task D, involves collating synthesis and timing reports to analyse speedup and FPGA resource usage
  - Compare SW Implementation, baseline and various versions of optimised implementation

*Task G: Documentation*
  - Final report work can be done after the entire system is assembled


**Resources:**
1. Shakti Processor
  1. User Manual: http://shakti.org.in/docs/user_manual.pdf
  2. Source Code for E class Processor: https://gitlab.com/shaktiproject/cores/shakti-soc/tree/master/fpga/boards/artya7-35t/e-class
  3. Documentation for Zybo Z7-20 board: https://reference.digilentinc.com/reference/programmable-logic/zybo-z7/reference-manual

  Remarks: References for instantiating shakti processor on an FPGA, memory map of E-class 32 bit processor E-arty35T (we'll use the UART0 and GPIO peripherals), using Shakti SDK for application programming in C

  More info required on integrating a vivado IP peripheral with shakti, and instantiating shakti on digilent Zybo board (documentation provides instructions for an artix board)


2. FFT on hardware
  1. FFT on Hardware using Vivado HLS- baseline implementation: https://www.youtube.com/watch?v=R-msBFn6r88&list=PLco7dux9L7g3PAmOFZtaqO93FnKf9MZiZ&index=4
  The rest of this playlist on youtube includes details on getting a block design running on an FPGA
  2.  Source Code for Nitin Sir's HLS implementation of FFT: https://gitlab.com/chandrachoodan/teach-fpga
  3. Analysing Vivado HLS synthesis: https://www.youtube.com/watch?v=iAarcpreA7Q&list=PLco7dux9L7g1RrB8TqUVCMEeu86D7azeg&index=21
  4. Primer on FFT and its Digital architecture: http://web.mit.edu/6.111/www/f2017/handouts/FFTtutorial121102.pdf
  5. Writing C++ code to optimise Vivado HLS sythesis: Chapters 4 and 5 in https://arxiv.org/pdf/1805.03648.pdf
  6. Software Implementation of FFT in C: Numerical Recipes in C is a good reference (Chapter 12)  
  https://www.cec.uchile.cl/cinetica/pcordero/MC_libros/NumericalRecipesinC.pdf


3. Spectrum analyser
  1. https://www.electronics-notes.com/articles/test-methods/spectrum-analyzer/fft-fast-fourier-transform-spectrum-analyser.php
  2. https://www.thinksrs.com/downloads/pdfs/applicationnotes/AboutFFTs.pdf
  3. This article talks about windowing in one of the sections: https://www.sjsu.edu/people/burford.furman/docs/me120/FFT_tutorial_NI.pdf
  4. Short Time Fourier Transform: https://ccrma.stanford.edu/~jos/sasp/Short_Time_Fourier_Transform.html
  5. Time Domain Windows and their Freq char: https://ccrma.stanford.edu/~jos/sasp/Rectangular_Window.html
