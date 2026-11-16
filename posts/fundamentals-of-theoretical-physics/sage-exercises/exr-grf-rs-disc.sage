# Exercise exr-grf-rs-disc: frequency range of a line emitted from the circular orbit r = 6m and seen in the orbital plane.
m = 1; r = 6*m
Om = sqrt(m/r^3); bmax = r/sqrt(1 - 2*m/r)
ratio = lambda b: sqrt(1 - 3*m/r)/(1 - Om*b)
print('Omega = %.6f, |b|max = %.6f, Omega |b|max = %.6f' % (Om, bmax, Om*bmax))
print('b = -bmax: %.6f, b = 0: %.6f, b = +bmax: %.6f' % (ratio(-bmax), ratio(0), ratio(bmax)))
print('max/min = %.6f' % (ratio(bmax)/ratio(-bmax)))
