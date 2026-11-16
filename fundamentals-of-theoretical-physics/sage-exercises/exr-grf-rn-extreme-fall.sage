# Exercise exr-grf-rn-extreme-fall: proper time and coordinate time of a radial fall from rest at infinity into the extreme horizon r = m.
m = 1
rdot = lambda r: sqrt(2*m/r - m^2/r^2)
tau = numerical_integral(lambda r: 1/rdot(r), m, 10*m)[0]
print('proper time from r = 10m to r = m: %.6f m' % tau)
r = var('r'); assume(r > 1)
print('closed form:', integrate(1/sqrt(2/r - 1/r^2), r, 1, 10).simplify_full(), '=', integrate(1/sqrt(2/r - 1/r^2), r, 1, 10).n())
for eps in (1e-1, 1e-2, 1e-3):
    t = numerical_integral(lambda x: 1/((1 - m/x)^2*rdot(x)), m*(1 + eps), 10*m)[0]
    print('coordinate time from r = 10m to r = m(1 + %g): %.2f m' % (eps, t))
