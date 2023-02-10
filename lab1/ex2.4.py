import matplotlib.pyplot as plt
import numpy as np

A = 1
A1 = -1
w0 = 10*np.pi
a= 5
t = np.linspace(0 , 1 , 1000 , endpoint = True)

plt.figure(figsize=(10,7))

plt.plot(t, A* np.sin(w0*t)*np.e**(-a*t), 'g' , label = 'expsin')
plt.plot(t, A1* np.sin(w0*t)*np.e**(-a*t), 'r' , label = 'expsin1')

plt.title('Semnal sinusoidal cu valoarea descrescanda folosind procedura de multiplicare , in forma continua')
plt.xlabel('t , sec')
plt.ylabel('X(t)')

plt.grid(True , which = 'both')

plt.axhline(y = 0 , color = 'k')

plt.legend(['expsin' , 'expsin 1'])

plt.show()