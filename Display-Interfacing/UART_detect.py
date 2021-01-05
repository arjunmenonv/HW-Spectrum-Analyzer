'''
    Python Program to Detect UART/USB connections and Connect to the Digilent Board used for the demo
    Hardware Accelerator for FFT based digital spectrum analyser project
    Author: Muralekrishnan R
    Dec 2020
'''
import time
import serial.tools.list_ports


def get_ports():
	ports = serial.tools.list_ports.comports()
	return ports


def findBoard(portsFound):

	BoardPort = 'None'
	numConnections = len(portsFound)

	for i in range(numConnections):
	
		port = portsFound[i]
		strPort = str(port)
				
		if 'Digilent' in strPort:
			splitPort = strPort.split(' ')
			BoardPort = (splitPort[0])

	return BoardPort
    
          
def connect():
	foundPort = get_ports()
	connectBoard = findBoard(foundPort)
	
	while True:
		time.sleep(3)
		if connectBoard != 'None':
			ser = serial.Serial(connectBoard, baudrate=115200, timeout=1)
			print('Connected to ', connectBoard)
			break
		else:
                        print('Board not Found!')
                        exit()
	return ser

