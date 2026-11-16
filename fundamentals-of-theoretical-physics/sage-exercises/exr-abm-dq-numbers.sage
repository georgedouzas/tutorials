# Exercise exr-abm-dq-numbers: the minimal Dirac charge g_D = 2 pi/e in Heaviside-Lorentz units with hbar = c = 1 has
# g_D/e = 1/(2 alpha), magnetic fine-structure constant g_D^2/(4 pi) = 1/(4 alpha), and the force between two minimal
# monopoles is (g_D/e)^2 times that between two electrons; in SI units the flux of a minimal monopole is h/e.
alpha = 1 / 137.035999
e = sqrt(4 * pi * alpha).n()
gD = (2 * pi / e).n()
print("e = %.5f, g_D = %.4f" % (e, gD))
print("[PASS] g_D/e = 1/(2 alpha) = %.3f:" % (gD / e), abs(gD / e - 1 / (2 * alpha)) < 1e-9)
print("[PASS] g_D^2/(4 pi) = 1/(4 alpha) = %.3f:" % (gD^2 / (4 * pi)), bool(abs((gD^2 / (4 * pi)).n() - 1 / (4 * alpha)) < 1e-9))
print("[PASS] force ratio (g_D/e)^2 = %.1f:" % ((gD / e)^2), abs((gD / e)^2 - 4694.6) < 0.5)
h, qe = 6.62607015e-34, 1.602176634e-19
print("[PASS] flux of the minimal monopole h/e = %.4e Wb, twice the superconducting quantum h/2e = %.4e Wb:" % (h / qe, h / (2 * qe)), abs(h / qe - 4.1357e-15) < 1e-19)
