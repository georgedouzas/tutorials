# Exercise exr-qsc-born-hydrogen (Zettili, Problem 11.7(a)): Born amplitude for elastic scattering of an electron by a
# hydrogen atom in its ground state, V = -kappa (1/r + 1/a0) e^{-2r/a0}, kappa = e^2/(4 pi eps0), a0 = hbar^2/(m kappa).
r, q, a0, m, hb, kap = var('r q a0 m hbar kappa'); assume(r > 0, q > 0, a0 > 0, m > 0, hb > 0, kap > 0)
V = -kap*(1/r + 1/a0)*exp(-2*r/a0)
fB = (-2*m/(hb^2*q)*integrate(r*V*sin(q*r), r, 0, oo)).subs({kap: hb^2/(m*a0)}).simplify_full()
target = 2*a0*(8 + q^2*a0^2)/(4 + q^2*a0^2)^2
print("f_B =", fB.factor(), "; equals 2 a0 (8 + q^2 a0^2)/(4 + q^2 a0^2)^2:", bool((fB - target).simplify_full() == 0))
print("forward limit f_B(0) =", limit(target, q=0), "; q^2 f_B for large q ->", limit(q^2*target, q=oo))
