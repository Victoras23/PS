import matplotlib.pyplot as plot
import numpy as np

k0=0.7
k1=-0.7
w=0.6

t = np.linspace( -2 , 2 , 1000 , endpoint = True )

plot.figure( figsize = ( 10 , 7) )

plot.plot(t, 1*(abs(t-k0)<w),'r')
plot.plot(t, 1*(abs(t-k1)<w),'b')

plot.title( ' Impuls in forma dreptunghiulara ' )

plot.xlabel( ' t , sec ' )

plot.ylabel( 'X( t ) ' )
plot.grid( True , which = 'both' )

plot.legend( [ 'rectpuls' , 'rectpuls 2' ] )

plot.show()

