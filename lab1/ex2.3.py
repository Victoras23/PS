import matplotlib.pyplot as plt
import numpy as np
B = 5
B1 = 10
r = 0.85
t = np.linspace(-10 , 10 , 20 , endpoint = True)

plt.figure(figsize=(10,7))

plt.stem(t, B*r**t, 'g' , markerfmt = 'bo' , label = 'pwr')
plt.stem(t, B1*r**t, 'r' , markerfmt = 'bo' , label = 'pwr1')

plt.title('Semnal exponential cu valoarea descrescanda , in forma directa')

plt.xlabel('t , sec')
plt.ylabel('X(t)')

plt.grid(True , which = 'both')

plt.axhline(y = 0 , color = 'k')

plt.legend(['exp' , 'exp 1'])

plt.show()