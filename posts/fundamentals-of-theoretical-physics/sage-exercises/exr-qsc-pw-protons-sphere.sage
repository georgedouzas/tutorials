# Exercise exr-qsc-pw-protons-sphere (Zettili, Problem 11.3; Cini et al., Sec. 14.5): hard-sphere cross section for
# protons on a = 6 fm at 5 keV and 700 MeV (non-relativistic k), from the partial-wave sum with tan delta_l = j_l/n_l.
a, mc2, hbc = 6.0, 938.3, 197.33
def sigma(E):
    k = sqrt(2*mc2*E)/hbc; x = k*a
    L = int(x) + 40
    s = 4*pi.n()/k^2*sum((2*l + 1)*spherical_bessel_J(l, x)^2/(spherical_bessel_J(l, x)^2 + spherical_bessel_Y(l, x)^2) for l in range(L))
    return k*a, s.n()
for E in (0.005, 700.0):
    ka, s = sigma(E)
    print("E = %g MeV: ka = %.3f, sigma = %.4f b, 4 pi a^2 = %.4f b, 2 pi a^2 = %.4f b" % (E, ka, s/100, 4*pi.n()*a^2/100, 2*pi.n()*a^2/100))
print("sigma/(pi a^2) for ka = 10, 30, 100, 300:", [round(4/x^2*sum((2*l + 1)*spherical_bessel_J(l, x)^2/(spherical_bessel_J(l, x)^2 + spherical_bessel_Y(l, x)^2) for l in range(int(x) + 40)).n(), 4) for x in (10.0, 30.0, 100.0, 300.0)])
