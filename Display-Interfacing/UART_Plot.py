'''
    Python Program to Plot Magnitude Spectrum of FFT in dB scale
    Input is stored in ./data.dat
    Jan 2021
'''
import os
import struct
import numpy as np
import matplotlib.pyplot as plt
import time
from scipy.fftpack import fft
from tkinter import TclError


x_vec = np.linspace(0, 31, 32)
file = open("data.dat", 'r')
filedata = file.readlines()
filedata = [filedata[i].strip("\n") for i in range(len(filedata))]
filedata = [float(filedata[i]) for i in range(len(filedata))]
numIter = len(filedata)/32
for index in range(int(numIter)):
    data = [filedata[i] for i in range(index*32, (index+1)*32)]
    data = np.array(data)
    data = 10*np.log10(data) 
    data1 = data.copy()
    data1[data < -20] = np.nan
    plt.stem(x_vec, data1, "-")
    plt.title("STFT Magnitude Spectrum Window "+str(index))
    plt.xlabel("Frequency Bins")
    plt.ylabel("Magnitude (dB)")
    plt.ylim((-30, 30))
    plt.pause(0.1)
    plt.clf()
plt.show()

