# Exercise exr-qcp-gc-diamagnetic-sage (Galitski et al., Problem 7.5): <x^2 + y^2> in the hydrogen ground state and the
# diamagnetic shift e^2 B^2 <x^2 + y^2>/(8 m_e), with the field at which it equals 13.6 eV.
r, th, ph, a0 = var('r theta phi a0'); assume(a0 > 0, r > 0)
psi2 = exp(-2*r/a0)/(pi*a0^3)
mean = integrate(integrate(integrate(psi2*r^2*sin(th)^2*r^2*sin(th), r, 0, oo), th, 0, pi), ph, 0, 2*pi)
norm = integrate(integrate(integrate(psi2*r^2*sin(th), r, 0, oo), th, 0, pi), ph, 0, 2*pi)
print("normalisation:", norm, "; <x^2 + y^2> =", mean)
e, me, a = 1.602176634e-19, 9.1093837015e-31, 5.29177210903e-11
coef = e^2*2*a^2/(8*me)/e        # eV per T^2
for B in (1.0, 1e5):
    print("B = %.0e T: shift = %.3e eV" % (B, coef*B^2))
print("shift = 13.6 eV at B = %.3e T; magnetic length there sqrt(hbar/eB) = %.4f nm (a0 = 0.0529 nm)" % (sqrt(13.6/coef), sqrt(1.054571817e-34/(e*sqrt(13.6/coef)))*1e9))
