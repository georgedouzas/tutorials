# Exercise exr-grf-rs-gps: exact rate of a GPS satellite clock relative to a static ground clock, Schwarzschild field of the Earth.
G, c, ME = 6.674e-11, 2.99792458e8, 5.9722e24
m = G*ME/c^2; R = 6.371e6; r = 2.6561e7
exact = sqrt(1 - 3*m/r)/sqrt(1 - 2*m/R) - 1
first = m/R - 3*m/(2*r)
print('m = %.4f mm' % (m*1e3))
print('exact rate difference = %.10e, first order m/R - 3m/2r = %.10e' % (exact, first))
print('gain per day: exact %.4f us, first order %.4f us' % (exact*86400e6, first*86400e6))
print('gravitational part %.2f us, velocity part %.2f us' % ((m/R - m/r)*86400e6, -m/(2*r)*86400e6))
