## About Version:

Includes:

* Vivado HLS design of a custom IP to compute 32 point FFT of complex valued floating point inputs 
* Vivado Block Design and Bitstream for Interfacing the IP with a Zynq-7 Processor (ARM cortex A9)- **Axilite Bus** 
* C++ Application project to compute Short Time Fourier Transform (window size = 32) of an input signal saved in Memory 
and send magnitude response to a PC through UART/USB bridge on the Zybo Z7-20 board
* Python application to save UART data in a file and generate a stem plot of the mag response

Directory Structure:

* [./vhls_src: Vivado HLS source files](https://github.com/murale127/HW-Spectrum-Analyzer/tree/ver3/SpecAnalv2.9/vhls_src)
* [./vitis_src: C++ Application Project](https://github.com/murale127/HW-Spectrum-Analyzer/tree/ver3/SpecAnalv2.9/vitis_src)
* [./FFT32v2.9_axis: Vivado Project and Wrapper](https://github.com/murale127/HW-Spectrum-Analyzer/tree/ver3/SpecAnalv2.9/FFT32v2.9_axis)
* [../Display-Interfacing: Python Display + UART](https://github.com/murale127/HW-Spectrum-Analyzer/tree/ver3/Display-Interfacing)
