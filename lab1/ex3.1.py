from scipy import signal
import matplotlib.pyplot as plot
import numpy as np

A0 = 1
A1 = -0.5
w = 1
k = 3
rho0 = 0.5
s = 0.5
t = np.linspace( -10 , 10 , 200 , endpoint = True )

plot.figure( figsize = ( 10 , 7) )

plot.plot( t , A0 * signal.gausspulse( t+k, fc = w, bw = s) , 'g' )
plot.plot( t , A1 * signal.gausspulse( t+k, fc = w, bw = s) , 'm' )

plot.title( ' Semnal sinusoidal modulat dupa functia Gauss' )

plot.xlabel( ' t , sec ' )

plot.ylabel( 'X( t ) ' )
plot.grid( True , which = 'both' )

plot.axhline( y = 0 , color = 'k' )

plot.legend( [ 'gp' , 'gp1 4' ] )

plot.show()