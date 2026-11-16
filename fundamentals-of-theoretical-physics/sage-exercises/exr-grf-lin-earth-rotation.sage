# Exercise exr-grf-lin-earth-rotation: ratio of the gravitomagnetic to the Newtonian metric perturbation at the surface of the Earth.
G, c = 6.674e-11, 2.99792458e8
M, R, w = 5.9722e24, 6.371e6, 7.2921e-5
J = 0.3307*M*R^2*w
h0i = 2*G*J/(c^3*R^2); h00 = 2*G*M/(c^2*R)
print('J = %.3e kg m^2/s' % J)
print('|h_0i| = %.3e, |h_00| = %.3e, ratio = %.3e' % (h0i, h00, h0i/h00))
print('0.3307 omega R/c = %.3e' % (0.3307*w*R/c))
