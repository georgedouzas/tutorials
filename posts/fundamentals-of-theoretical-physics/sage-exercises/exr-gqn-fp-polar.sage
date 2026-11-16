# Exercise exr-gqn-fp-polar: for a rotation-invariant weight on the plane, gauge fixing x_2 = 0, x_1 > 0 with the Faddeev-Popov factor |x_1| reproduces the full integral divided by the orbit volume 2 pi.
x1, x2, r = var("x1 x2 r")
for lam in (0, 1/10, 1):
    S = lambda rr: rr^2 / 2 + lam * rr^4
    full = numerical_integral(lambda y: numerical_integral(lambda x: exp(-S(sqrt(x^2 + y^2))), -12, 12)[0], -12, 12)[0]
    fixed = numerical_integral(lambda x: x * exp(-S(x)), 0, 12)[0]
    print("lambda = %s: full integral = %.10f, 2 pi * int x1 e^(-S) dx1 = %.10f, without the factor x1: %.10f" % (lam, full, 2 * pi.n() * fixed, 2 * pi.n() * numerical_integral(lambda x: exp(-S(x)), 0, 12)[0]))
print("lambda = 0 exact:", integrate(exp(-r^2 / 2) * r, r, 0, oo) * 2 * pi)
