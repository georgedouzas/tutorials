# Exercise exr-grf-kc-infall: proper time of a radial fall from rest at infinity, from r = 3m to the horizon r = 2m.
m = var('m'); assume(m > 0); r = var('r')
tau = integrate(sqrt(r/(2*m)), r, 2*m, 3*m)
closed = 2/(3*sqrt(2*m))*((3*m)^(3/2) - (2*m)^(3/2))
print('tau =', tau.simplify_full(), ' closed form agrees:', bool((tau - closed).simplify_full() == 0))
print('tau/m = %.6f' % (tau/m).simplify_full().n())
print('numerical check with m = 1: %.6f' % numerical_integral(lambda x: 1/sqrt(2/x), 2, 3)[0])
