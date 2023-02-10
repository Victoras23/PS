import matplotlib.pyplot as pl
import numpy as np 

A = 1
A1 = -3
w0 = 10*np.pi
rho = 0.5
t = np.linspace( 0 , 1 , 200 , endpoint = True )

pl.figure(figsize = (10 ,7))

pl.bar(t,A*np.cos(w0*t+rho), width = 0.005 , color = 'r')
pl.bar(t,A1*np.cos(w0*t+rho), width = 0.005 , color = 'g')

pl.title('Semnal periodic in forma sinusoidala, in forma discreta')

pl.xlabel('t, sec ')
pl.ylabel('X(t)')

pl.grid(True , which = 'both')

pl.axhline(y = 0 , color = 'k')

pl.legend(['cosine'])

pl.show()