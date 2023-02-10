from scipy import signal
import matplotlib.pyplot as plot
import numpy as np

A0 = 1
A1 = -2.5
w0 = 10 * np.pi
rho0 = 0.5

t = np.linspace( 0 , 1 , 1000 , endpoint = True )

plot.figure( figsize = ( 10 , 7) )

plot.plot(t , A0 * signal.sawtooth( w0 * t + rho0 ) , 'b' )
plot.plot(t , A1 * signal.sawtooth( w0 * t + rho0 ) , 'r' )

plot.title( ' Impuls in forma triunghiulara ' )

plot.xlabel( ' t , sec ' )

plot.ylabel( 'X( t ) ' )
plot.grid( True , which = 'both' )
plot.axhline( y = 0 , color = 'k' )

plot.legend( [ 'sawtooth' , 'sawtooth 2' ] )

plot.show()

