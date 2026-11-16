# Exercise exr-grf-sh-rate: fractional frequency shift from the rate of change of the Shapiro delay, Cassini geometry.
G, c, Msun = 6.674e-11, 2.99792458e8, 1.98892e30
m = G*Msun/c^2; R0 = 1.6*6.957e8; v = 3e4
y = 8*m/R0*v/c
print('8m/r0 = %.3e' % (8*m/R0))
print('relativistic shift y = %.3e, Doppler shift v/c = %.3e, ratio = %.3e' % (y, v/c, y/(v/c)))
