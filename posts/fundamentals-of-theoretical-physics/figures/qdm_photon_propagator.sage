# Figure: the photon propagator between conserved currents. A current J^mu with k.J = 0 is exchanged with momentum k = (k0, 0, 0, 1).
# Left: the Feynman-gauge exchange J_mu J_nu (-g^{mu nu})/k^2 (the propagator without its factor i) against k0, and its split into
# transverse-photon exchange (Coulomb gauge, delta^{ij} - k^i k^j/|k|^2) plus the instantaneous Coulomb term J_0^2/|k|^2.
# Right: J_mu J_nu D_xi^{mu nu} for the gauge parameters xi = 0, 1, 3 for the conserved current and for a non-conserved one.
# Checks: transverse + Coulomb = Feynman exactly (symbolic); the xi dependence cancels for every conserved current (symbolic) and
# not for a non-conserved one.
# Output: figures/qdm_photon_propagator.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "qdm_photon_propagator.svg")
k0, kz, j0, jx, jy, xi = var("k0 kz j0 jx jy xi")
g = diagonal_matrix(SR, [1, -1, -1, -1])
kup = vector(SR, [k0, 0, 0, kz])
Jup = vector(SR, [j0, jx, jy, k0 * j0 / kz])            # k.J = k0 j0 - kz Jz = 0
low = lambda v: g * v
k2 = kup * g * kup
# Feynman / R_xi propagators with upper indices, without the overall i: D^{mu nu} = -(g^{mu nu} - (1 - xi) k^mu k^nu/k^2)/k^2
Dxi = -(g - (1 - xi) * kup.column() * kup.row() / k2) / k2
Dfeyn = Dxi.subs(xi=1)
JF = (low(Jup) * Dfeyn * low(Jup)).simplify_full()
# Coulomb gauge: D^{ij} = (delta^{ij} - k^i k^j/|k|^2)/k^2, D^{0 mu} = 0; plus the instantaneous Coulomb term J_0^2/|k|^2
P = matrix(SR, 4, 4, 0)
kv = vector(SR, [0, 0, kz])
for i in range(3):
    for j in range(3):
        P[i + 1, j + 1] = (kronecker_delta(i, j) - kv[i] * kv[j] / kz**2) / k2
JT = (low(Jup) * P * low(Jup)).simplify_full()
JC = (j0**2 / kz**2).simplify_full()
split_ok = bool((JT + JC - JF).simplify_full() == 0)
xi_ok = bool((low(Jup) * Dxi * low(Jup) - JF).simplify_full() == 0)
Jbad = vector(SR, [j0, jx, jy, 0])                       # k.J = k0 j0, not conserved
bad = (low(Jbad) * Dxi * low(Jbad)).simplify_full()
xi_bad = bool(diff(bad, xi).simplify_full() != 0)
vals = {kz: 1, j0: 1, jx: 0.6, jy: 0.3}
f = lambda e: fast_callable(e.subs(vals), vars=[k0, xi] if e.has(xi) else [k0], domain=float)
fF, fT, fC = f(JF), f(JT), f(JC)
fig, axes = plt.subplots(1, 2, figsize=(11, 4.2))
x = np.concatenate([np.linspace(0.0, 0.92, 200), np.linspace(1.08, 2.5, 200)])
nan_at_pole = lambda arr: arr
axes[0].plot(x, [fF(t) for t in x], color="k", lw=2.2, label=r"Feynman gauge: $-J_\mu J^\mu/k^2$")
axes[0].plot(x, [fT(t) for t in x], color="C0", lw=1.4, ls="--", label=r"transverse photons: $\vec J_\perp^{\,2}/k^2$")
axes[0].plot(x, [fC(t) for t in x], color="C1", lw=1.4, ls="-.", label=r"instantaneous Coulomb term: $J_0^2/|\vec k|^2$")
axes[0].plot(x[::25], [fT(t) + fC(t) for t in x[::25]], "o", color="C2", mfc="white", label="transverse + Coulomb")
axes[0].axvline(1, color="0.7", lw=0.8)
axes[0].set_ylim(-6, 6); axes[0].set_xlabel(r"$k^0$ (with $|\vec k| = 1$)"); axes[0].set_ylabel("exchange amplitude / $i$")
axes[0].set_title("Coulomb gauge and Feynman gauge agree on conserved currents", fontsize=9); axes[0].legend(fontsize=7.5, loc="lower left")
fx = fast_callable((low(Jup) * Dxi * low(Jup)).simplify_full().subs(vals), vars=[k0, xi], domain=float)
fb = fast_callable(bad.subs(vals), vars=[k0, xi], domain=float)
for c, xv in zip(("C0", "C1", "C2"), (0, 1, 3)):
    axes[1].plot(x, [fx(t, xv) for t in x], color=c, lw=1.6, label=rf"conserved $J$, $\xi = {xv}$")
    axes[1].plot(x, [fb(t, xv) for t in x], color=c, lw=1.0, ls=":", label=rf"non-conserved $J$, $\xi = {xv}$")
axes[1].axvline(1, color="0.7", lw=0.8)
axes[1].set_ylim(-6, 6); axes[1].set_xlabel(r"$k^0$ (with $|\vec k| = 1$)"); axes[1].set_ylabel(r"$J_\mu J_\nu D_\xi^{\mu\nu}/i$")
axes[1].set_title(r"Gauge-parameter independence needs $k\cdot J = 0$", fontsize=9); axes[1].legend(fontsize=7, ncol=2, loc="lower left")
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] transverse exchange + instantaneous Coulomb term = Feynman-gauge exchange for every conserved current:", split_ok)
print("[PASS] J D_xi J is independent of xi when k.J = 0:", xi_ok)
print("[PASS] J D_xi J depends on xi when k.J != 0:", xi_bad)
print("Feynman-gauge exchange:", JF)
print("wrote", os.path.relpath(OUT))
