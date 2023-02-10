import matplotlib.pyplot as pl
import numpy as np 

A = 1
A1 = -1
w0 = 10*np.pi
rho = 0.5
t = np.linspace( 0 , 1 , 1000 , endpoint = True )

pl.figure(figsize = (10 ,7))

pl.plot(t,A*np.cos(w0*t+rho), 'g')
pl.plot(t,A1*np.cos(w0*t+rho), 'r')

pl.title('Semnal periodic in forma sinusoidala')

pl.xlabel('t, sec ')
pl.ylabel('X(t)')

pl.grid(True , which = 'both')

pl.axhline(y = 0 , color = 'k')

pl.legend(['cosine'])

pl.show()