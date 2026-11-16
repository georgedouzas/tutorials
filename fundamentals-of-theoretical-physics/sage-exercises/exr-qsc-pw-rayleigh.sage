# Exercise exr-qsc-pw-rayleigh (Cini et al., Sec. 14.4, eq. (14.24)): partial sums of e^{ikz} = sum (2l+1) i^l j_l(kr) P_l(cos theta)
# at kr = 5, theta = 0.7.
x, th = 5.0, 0.7
exact = exp(I*x*cos(th)).n()
for L in (3, 6, 10, 15, 25):
    s = sum((2*l + 1)*I^l*spherical_bessel_J(l, x)*legendre_P(l, cos(th)) for l in range(L + 1)).n()
    print("L = %2d: |partial sum - e^{i kr cos theta}| = %.3e" % (L, abs(s - exact)))
print("j_l(5) for l = 5, 10, 15: %.3e, %.3e, %.3e" % tuple(spherical_bessel_J(l, x).n() for l in (5, 10, 15)))
