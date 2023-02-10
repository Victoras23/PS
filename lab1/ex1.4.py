from scipy import signal
import matplotlib.pyplot as plot
import numpy as np

t = np.linspace( -1 , 1 , 2000 , endpoint = True )

k=0.5
w=0.2
s0 = 0
s1 = 1
s2 = -1

plot.subplot(3, 1 , 1) 
plot.plot(t, signal.triang(t-k,w,s0) ,'r')
plot.xlabel('t(sec)')
plot.ylabel('Y(t)')
plot.title('impuls in forma triunghiulara cu diferita inclinatie (skew)')

plot.subplot(3, 1 , 2) 
plot.plot(t, signal.triang(t-k,w,s1) ,'r')
plot.xlabel('t(sec)')
plot.ylabel('Y(t)')

plot.subplot(3, 1 , 3) 
plot.plot(t, signal.triang(t-k,w,s2) ,'r')
plot.xlabel('t(sec)')
plot.ylabel('Y(t)')
