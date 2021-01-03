import serial
import numpy
import math
import matplotlib.pyplot as plt
import matplotlib.animation as animation


plt.style.use('fivethirtyeight')

fig = plt.figure()
ax1 = fig.add_subplot(1,1,1)

def animate(i):
	graph_data = open('data.txt', 'r').read()
	lines = graph_data.split('\n')
        
	for line in lines:
		if len(line) == 32:
			data = line.split(',')
	ax1.clear()
	ax1.plot(xs, ys)

ani = animation.FuncAnimation(fig, animate, interval=1000)
plt.show()
