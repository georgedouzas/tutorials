# Exercise exr-qdm-ss-scalar-equal-time: 2W(r) = (1/(2 pi^2 r)) int_0^oo p sin(p r)/E dp equals m K_1(m r)/(2 pi^2 r), checked
# numerically after subtracting the Abel-summed part int_0^oo sin(p r) dp = 1/r; and the limits r -> 0 and r -> oo.
import mpmath
m = 1
for r in (0.5, 1, 3):
    I = mpmath.quadosc(lambda p: (p / mpmath.sqrt(p**2 + m**2) - 1) * mpmath.sin(p * r), [0, mpmath.inf], omega=r)
    num = (1 / r + I) / (2 * mpmath.pi**2 * r); exact = m * mpmath.besselk(1, m * r) / (2 * mpmath.pi**2 * r)
    print("r = %g:  numerical %.12f   m K_1(m r)/(2 pi^2 r) %.12f" % (r, num, exact))
x = var("x", domain="positive")
print("r -> 0:  2 pi^2 r^2 * 2W = (m r) K_1(m r) at m r = 1e-4, 1e-6:", [N(t * bessel_K(1, t), 12) for t in (1e-4, 1e-6)], " -> 1, the massless value 1/(2 pi^2 r^2)")
print("r -> oo: K_1(x) ~ sqrt(pi/(2x)) e^{-x}; ratio at x = 30:", N(bessel_K(1, 30) / (sqrt(pi / 60) * exp(-30)), 6))
