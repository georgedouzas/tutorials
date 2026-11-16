# Exercise exr-qcp-ab-ring-sage (Galitski et al., Problem 13.24): ground-state energy E(Phi) = min_n (hbar^2/2mR^2)(n - Phi/Phi0)^2
# of a charge on a ring around a flux, the persistent current I = -dE/dPhi, and its maximum for an electron, R = 1 micrometre.
f = var('f')                  # f = Phi/Phi0; energies in units hbar^2/(2 m R^2)
E = lambda fv: min((n - fv)^2 for n in range(-3, 4))
print("E(f) at f = 0, 0.25, 0.5, 0.75, 1, 1.25:", [E(fv) for fv in (0, 1/4, 1/2, 3/4, 1, 5/4)])
print("periodic with period 1 and even in f:", all(E(fv + 1) == E(fv) and E(-fv) == E(fv) for fv in (0, 1/8, 1/3, 2/5)))
dE = lambda fv: (E(fv + 1e-7) - E(fv - 1e-7))/2e-7
print("-dE/df at f = 0.1, 0.4, 0.6, 0.9 (current in units hbar^2/(2 m R^2 Phi0)):", [round(-dE(fv), 6) for fv in (0.1, 0.4, 0.6, 0.9)])
hbar, e, me, h = 1.054571817e-34, 1.602176634e-19, 9.1093837015e-31, 6.62607015e-34
R = 1e-6
Imax = hbar^2/(2*me*R^2)/(h/e)
print("largest current hbar^2/(2 m R^2 Phi0) = e hbar/(4 pi m R^2) = %.3e A; check %.3e A" % (Imax, e*hbar/(4*pi.n()*me*R^2)))
