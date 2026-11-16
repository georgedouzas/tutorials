# Exercise exr-qdm-mq-stefan: the energy density of thermal photons, two polarisations with Bose-Einstein occupation,
# u = 2 int d^3k/(2 pi)^3 omega/(e^{omega/T} - 1) = (pi^2/15) T^4 (hbar = c = k_B = 1), and its SI value at T = 300 K.
x, T = var("x T", domain="positive")
n = var("n")
I3 = sum(6 / n**4, n, 1, oo)   # expand 1/(e^x - 1) = sum e^{-n x}; omega = x T
print("int_0^oo x^3/(e^x - 1) dx = Gamma(4) zeta(4) =", I3, "  numerically %.10f vs %.10f" % (numerical_integral(lambda t: t**3 / (exp(t) - 1) if t > 0 else 0, 0, 100)[0], N(pi**4 / 15)))
u = 2 * 4 * pi / (2 * pi)**3 * T**4 * I3
print("u =", u.simplify_full(), "  equals pi^2 T^4/15:", bool((u - pi**2 * T**4 / 15).simplify_full() == 0))
kB, hbar, c = 1.380649e-23, 1.054571817e-34, 2.99792458e8
uSI = (pi**2 / 15) * (kB * 300)**4 / (hbar * c)**3
print("u(300 K) = %.4e J/m^3" % uSI, "  4 sigma T^4/c with sigma = 5.670374e-8:", "%.4e" % (4 * 5.670374e-8 * 300**4 / c))
