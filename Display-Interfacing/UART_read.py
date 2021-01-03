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


def getValues():

	arduinoData = ser.readline()
	print(arduinoData)
	data_int = np.array(struct.unpack(str(numPoints)+'f', data))
	print(data_int)
	return data_int


        
file_object = open('data.txt', 'a')



while True:
	count+=1
	print("FFT Data: set", count, '\n')
	for i in range(0,numPoints):
		data = getValues()
		dataList[i] = data
		file_object.write(data + ',')
		file_object.write('\n')

        	
print(dataList)

