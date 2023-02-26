import matplotlib.pyplot as plot
import numpy as np

t = np.linspace( 0 , 50 , 1000 , endpoint = True )

plot.figure( figsize = ( 10 , 7) )

plot.plot( t , 0.7 * np.sinc(np.pi*(t-25)/5), 'g' )
plot.plot( t , -0.7 * np.sinc(np.pi*(t-25)/5), 'm' )

plot.title( ' Semnal in forma transformarii fourier a unui impuls dreptunghic' )

plot.xlabel( ' t , sec ' )

plot.ylabel( 'X( t ) ' )
plot.grid( True , which = 'both' )

plot.axhline( y = 0 , color = 'k' )

plot.legend( [ 'ft' , 'ft 1' ] )

plot.show()