# Exercise exr-qcp-gc-zeeman-sage (Galitski et al., Problem 7.1): Bohr magneton and the normal Zeeman splitting of the
# 2p level of hydrogen (spin ignored), with the frequency and wavelength shifts of Lyman alpha (121.6 nm).
hbar, e, me, h, c = 1.054571817e-34, 1.602176634e-19, 9.1093837015e-31, 6.62607015e-34, 299792458.0
muB = e*hbar/(2*me)
print("mu_B = %.4e J/T = %.4e eV/T" % (muB, muB/e))
lam = 121.6e-9
for B in (1.0, 10.0):
    dE = muB*B
    print("B = %4.1f T: splitting %.3e eV, frequency %.2f GHz, wavelength %.3e nm (relative %.2e)" % (B, dE/e, dE/h/1e9, lam^2*dE/(h*c)*1e9, dE/(h*c/lam)))
