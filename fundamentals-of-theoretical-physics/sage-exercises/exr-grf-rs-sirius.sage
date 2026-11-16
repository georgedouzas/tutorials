# Exercise exr-grf-rs-sirius: exact and first-order gravitational redshift of Sirius B and of the Sun, as velocities cz.
x = var('x')
print('series of (1 - 2x)^(-1/2) - 1:', taylor((1 - 2*x)^(-1/2) - 1, x, 0, 2))
G, c, Msun = 6.674e-11, 2.99792458e8, 1.98892e30
for name, M, R in (('Sirius B', 1.018*Msun, 5.84e6), ('Sun', Msun, 6.957e8)):
    m = G*M/c^2; z = (1 - 2*m/R)^(-1/2) - 1
    print('%-8s: m = %.1f m, z = %.6e, cz = %.4f km/s, first order cz = %.4f km/s, difference = %.2e m/s'
          % (name, m, z, c*z/1e3, c*m/R/1e3, c*(z - m/R)))
