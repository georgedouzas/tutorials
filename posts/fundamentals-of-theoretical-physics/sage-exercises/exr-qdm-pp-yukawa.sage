# Exercise exr-qdm-pp-yukawa: int d^3k/(2 pi)^3 e^{i k.x}/(|k|^2 + m^2) = e^{-m r}/(4 pi r); for m -> 0 the Coulomb potential
# 1/(4 pi r) of a unit charge in Heaviside-Lorentz units. The angular integral leaves (1/(2 pi^2 r)) int_0^oo k sin(k r)/(k^2 + m^2) dk.
k, m, r = var("k m r", domain="positive")
radial = integrate(k * sin(k * r) / (k**2 + m**2), k, 0, oo)
V = (radial / (2 * pi**2 * r)).simplify_full()
print("V(r) =", V, "  equals e^{-m r}/(4 pi r):", bool((V - exp(-m * r) / (4 * pi * r)).simplify_full() == 0))
print("m -> 0:", limit(V, m=0))
