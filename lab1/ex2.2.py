import matplotlib.pyplot as plt
import numpy as np

A = 1
A1 = 2
a = -5
t = np.linspace(0 , 1 , 1000 , endpoint = True)

plt.figure(figsize=(10,7))

plt.plot(t, A* np.e**(a*t), 'g' , label = 'exp')
plt.plot(t, A1* np.e**(a*t), 'r' , label = 'exp1')

plt.title('Semnal exponential cu valoarea descrescanda , in forma continua')

plt.xlabel('t , sec')
plt.ylabel('X(t)')

plt.grid(True , which = 'both')

plt.axhline(y = 0 , color = 'k')

plt.legend(['exp' , 'exp 1'])

plt.show()