# Exercise exr-abm-ab-ring-spectrum: a particle of charge q and mass M on a ring of radius R around a flux Phi has
# E_m = (m - q Phi/2pi)^2 / (2 M R^2), m in Z. The set of levels is periodic in q Phi with period 2 pi (m -> m + 1), so the
# spectrum depends on the flux only through the holonomy e^{i q Phi}.
def levels(f, mmax=6):                 # f = q Phi / 2 pi, in units 1/(2 M R^2) = 1
    return sorted((m - f)^2 for m in range(-mmax - 3, mmax + 4))[:8]
for f in (0, 0.3, 1.3, 0.5):
    print("q Phi/2pi = %.1f: lowest levels" % f, [round(float(e), 4) for e in levels(f)])
print("[PASS] the spectra at q Phi/2pi = 0.3 and 1.3 coincide:", all(abs(a - b) < 1e-12 for a, b in zip(levels(0.3), levels(1.3))))
print("[PASS] at q Phi/2pi = 0.5 every level is doubly degenerate:", all(abs(a - b) < 1e-12 for a, b in zip(levels(0.5)[0::2], levels(0.5)[1::2])))
f = var("f")
E0 = lambda fv: min((m - fv)^2 for m in range(-5, 6))
print("[PASS] the ground-state energy is periodic with period 1 in q Phi/2pi and maximal (1/4) at 1/2:",
      all(abs(E0(v) - E0(v + 1)) < 1e-12 for v in (0.1, 0.37, 0.8)), abs(E0(0.5) - 0.25) < 1e-12)
