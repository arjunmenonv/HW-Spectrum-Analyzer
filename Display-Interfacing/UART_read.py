'''
    Python Program to Save UART input in a file
    Input is stored in ./data.dat
    Jan 2021
'''
import UART_detect
import serial
import time
import struct
import serial
import numpy as np


ser = UART_detect.connect()


time.sleep(3)
numPoints = 32
dataList = [0]*numPoints
count = 0

def startRx(empty_data):
    data = ser.read(4)
    print(data)
    while(data == empty_data):
        data = ser.read(4)
        print(data)
    data_flt = np.array(struct.unpack(str(1)+'f', data))
    file_object.write(str(data_flt[0]))
    file_object.write('\n')
    return 0

def getValues():
        data = ser.read(4)
        data_flt = np.array(struct.unpack(str(1)+'f', data))
        print(data)
        return data_flt

file_object = open('data.dat', 'w')
numIter = 64
empty_data = ser.read(4)
while (count<numIter):
        count+=1
        print("FFT Data: set", count, '\n')
        startRx(empty_data)
        for i in range(0,15):
                data = getValues()
                dataList[i] = data[0]
                file_object.write(str(dataList[i]))
                file_object.write('\n')        	
        print("Set", count, " done")
file_object.close()
