# Exercise exr-grf-q-ellipticity: strain of a spinning neutron star with ellipticity 1e-6, I = 1e38 kg m^2, f = 100 Hz, at 1 kpc.
G, c, pc = 6.674e-11, 2.99792458e8, 3.0857e16
eps, I3, f, r = 1e-6, 1e38, 100.0, 1e3*pc
h0 = 4*pi^2*G*eps*I3*f^2/(c^4*r)
Om = pi*f
print('h0 = 4 pi^2 G eps I f^2/(c^4 r) = %.3e' % h0)
print('same from 4 G Omega^2 (I2 - I1)/(c^4 r) with Omega = pi f: %.3e' % (4*G*Om^2*eps*I3/(c^4*r)))
