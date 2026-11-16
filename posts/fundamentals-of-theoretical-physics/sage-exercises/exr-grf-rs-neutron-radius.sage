# Exercise exr-grf-rs-neutron-radius: the compactness R/m of a neutron star whose surface lines have z = 0.35.
z = 0.35
x = 1 - (1 + z)^(-2)             # 2m/R
G, c, Msun = 6.674e-11, 2.99792458e8, 1.98892e30
m = G*1.4*Msun/c^2
print('2m/R = %.6f, R/m = %.4f' % (x, 2/x))
print('for M = 1.4 Msun: m = %.4f km, R = %.3f km' % (m/1e3, 2/x*m/1e3))
print('outside the photon sphere 3m: %s; inside the innermost stable orbit 6m: %s' % (2/x > 3, 2/x < 6))
print('check: (1 - 2m/R)^(-1/2) - 1 = %.6f' % ((1 - x)^(-1/2) - 1))
