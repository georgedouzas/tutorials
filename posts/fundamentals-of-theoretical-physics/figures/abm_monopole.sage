# Figure: holonomies in the Aharonov-Bohm and monopole backgrounds (hbar = 1, Heaviside-Lorentz units). Left: the
# holonomy e^{i q oint A . dl} of a charge q around the parallel theta = theta_0 of a sphere around a Dirac monopole of
# magnetic charge g, computed with the northern potential A_N . dl = (g/4pi)(1 - cos theta) dphi (phase
# q g (1 - cos theta_0)/2) and with the southern one A_S . dl = -(g/4pi)(1 + cos theta) dphi (phase -q g (1 + cos theta_0)/2),
# both reduced to (-pi, pi]: for q g = 2 pi the two agree for every theta_0, for q g = pi they differ by pi. Right: the
# intensity at the centre of a two-path interferometer around a flux tube, cos^2(q Phi/2), periodic with period
# 2 pi in q Phi: a tube with q Phi in 2 pi Z, such as the Dirac string of a quantised monopole, is invisible.
# Output: figures/abm_monopole.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "abm_monopole.svg")
th, g, phi = var("th g phi", domain="real")
AN, AS = g / (4 * pi) * (1 - cos(th)), -g / (4 * pi) * (1 + cos(th))      # coefficients of dphi
circN, circS = integrate(AN, phi, 0, 2 * pi), integrate(AS, phi, 0, 2 * pi)
wrap = lambda x: np.angle(np.exp(1j * x))
fig, axes = plt.subplots(1, 2, figsize=(10, 4.0))
tt = np.linspace(0.001, np.pi - 0.001, 400)
ax = axes[0]
for qg, ls, lab in ((2 * np.pi, "-", r"$qg = 2\pi$"), (np.pi, "--", r"$qg = \pi$")):
    ax.plot(tt, wrap(qg * (1 - np.cos(tt)) / 2), color="firebrick", lw=1.8, ls=ls, label=lab + r", with $\vec A_N$")
    ax.plot(tt, wrap(-qg * (1 + np.cos(tt)) / 2), color="royalblue", lw=1.3, ls=ls, label=lab + r", with $\vec A_S$")
ax.set_xlabel(r"polar angle $\theta_0$ of the loop"); ax.set_ylabel(r"phase of the holonomy, in $(-\pi, \pi]$")
ax.set_xticks([0, np.pi / 2, np.pi]); ax.set_xticklabels(["0", r"$\pi/2$", r"$\pi$"])
ax.set_yticks([-np.pi, 0, np.pi]); ax.set_yticklabels([r"$-\pi$", "0", r"$\pi$"])
ax.set_title("Holonomy around a parallel of the monopole sphere", fontsize=10); ax.legend(fontsize=7.5, loc="lower right")
ax = axes[1]
xx = np.linspace(0, 3, 400)
ax.plot(xx, np.cos(np.pi * xx)**2, color="seagreen", lw=1.8)
for k in range(4):
    ax.plot(k, 1, "o", color="black", ms=5)
ax.set_xlabel(r"$q\Phi/2\pi$"); ax.set_ylabel(r"intensity $\cos^2(q\Phi/2)$")
ax.set_title("Two paths around a flux tube", fontsize=10)
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] the circulations around the parallel are oint A_N . dl = g(1 - cos th0)/2, oint A_S . dl = -g(1 + cos th0)/2:",
      bool((circN - g * (1 - cos(th)) / 2).simplify_full() == 0), bool((circS + g * (1 + cos(th)) / 2).simplify_full() == 0))
print("[PASS] their difference is g for every theta_0, the flux through the whole sphere:", bool((circN - circS).simplify_full() == g))
d2 = max(abs(np.exp(1j * 2 * np.pi * (1 - np.cos(tt)) / 2) - np.exp(-1j * 2 * np.pi * (1 + np.cos(tt)) / 2)))
d1 = np.exp(1j * np.pi * (1 - np.cos(tt)) / 2) / np.exp(-1j * np.pi * (1 + np.cos(tt)) / 2)
print("[PASS] for q g = 2 pi the two holonomies agree (max difference %.1e):" % d2, d2 < 1e-12)
print("[PASS] for q g = pi their ratio is e^{i pi} = -1 for every theta_0:", bool(max(abs(d1 + 1)) < 1e-12))
print("[PASS] the interference intensity cos^2(q Phi/2) equals 1 at q Phi = 0, 2 pi, 4 pi, 6 pi:",
      all(abs(np.cos(np.pi * k)**2 - 1) < 1e-12 for k in range(4)))
print("wrote", os.path.relpath(OUT))
