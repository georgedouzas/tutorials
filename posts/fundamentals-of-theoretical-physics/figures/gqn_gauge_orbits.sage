# Figure: gauge orbits and the Faddeev-Popov determinant in the plane. The rotations SO(2) act on R^2; their orbits are circles.
# Left: the orbits, the ideal slice x_2 = 0, x_1 > 0 (each orbit met once), and the slice x_2 = c (each orbit of radius r > |c| met twice,
# smaller orbits not at all: Gribov copies and a Gribov horizon in miniature).
# Right: the weight that the gauge-fixed integral gives to the orbit of radius r when the slice x_2 = c is averaged over a Gaussian
# of width xi. With the Faddeev-Popov factor |dF/dtheta| = |x_1| it is w(r) = 2 erf(r/sqrt(2 xi)), which tends to the number of copies,
# 2, on every orbit as xi -> 0; without the factor it tends to 2/r and weights the orbits unequally.
# Checks: the numerical orbit integrals agree with 2 erf(r/sqrt(2 xi)); r w_0(r) -> 2 at small xi; the polar-coordinate identity
# int d^2x e^{-S} = 2 pi int_0^oo dx_1 x_1 e^{-S(x_1)} for S = r^2/2 + r^4/10.
# Output: figures/gqn_gauge_orbits.svg.
import os
import numpy as np
from scipy.integrate import quad, dblquad
from scipy.special import erf
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "gqn_gauge_orbits.svg")
def w_fp(r, xi):
    return quad(lambda t: r * abs(np.cos(t)) * np.exp(-r**2 * np.sin(t)**2 / (2 * xi)) / np.sqrt(2 * np.pi * xi), 0, 2 * np.pi, limit=400, points=[np.pi / 2, np.pi, 3 * np.pi / 2])[0]
def w_0(r, xi):
    return quad(lambda t: np.exp(-r**2 * np.sin(t)**2 / (2 * xi)) / np.sqrt(2 * np.pi * xi), 0, 2 * np.pi, limit=400, points=[np.pi / 2, np.pi, 3 * np.pi / 2])[0]
fig, axes = plt.subplots(1, 2, figsize=(11, 4.6))
ax = axes[0]
th = np.linspace(0, 2 * np.pi, 400)
c = 0.8
for r in (0.5, 1.0, 1.5, 2.0):
    ax.plot(r * np.cos(th), r * np.sin(th), color="0.55", lw=1.0)
ax.plot([0, 2.4], [0, 0], color="C0", lw=2.2, label=r"ideal slice $x_2 = 0,\ x_1 > 0$")
ax.plot([-2.4, 2.4], [c, c], color="C3", lw=1.6, ls="--", label=r"slice $x_2 = c = 0.8$")
for r in (1.0, 1.5, 2.0):
    ax.plot([r], [0], "o", color="C0", ms=6)
    x1 = np.sqrt(r**2 - c**2)
    ax.plot([x1, -x1], [c, c], "s", color="C3", ms=5, mfc="white")
ax.annotate("orbit $r = 0.5$ misses the slice", xy=(0.0, -0.5), xytext=(-2.3, -2.2), fontsize=8, arrowprops=dict(arrowstyle="->", color="0.4"))
ax.annotate("", xy=(1.5 * np.cos(0.55), 1.5 * np.sin(0.55)), xytext=(1.5, 0.0), arrowprops=dict(arrowstyle="->", color="k", connectionstyle="arc3,rad=0.25"))
ax.text(1.62, 0.3, r"$x \mapsto x^\theta$", fontsize=9)
ax.set_aspect("equal"); ax.set_xlim(-2.5, 2.5); ax.set_ylim(-2.4, 2.4)
ax.set_xlabel("$x_1$"); ax.set_ylabel("$x_2$"); ax.legend(fontsize=8, loc="upper left")
ax.set_title("Orbits of $SO(2)$ and two gauge conditions", fontsize=9)
ax = axes[1]
rs = np.linspace(0.05, 3.0, 120)
for col, xi in zip(("C0", "C1", "C2"), (0.01, 0.1, 1.0)):
    ax.plot(rs, [w_fp(r, xi) for r in rs], color=col, lw=1.8, label=r"with $|x_1|$, $\xi = %g$" % float(xi))
    ax.plot(rs, [w_0(r, xi) for r in rs], color=col, lw=1.1, ls=":", label=r"without, $\xi = %g$" % float(xi))
ax.plot(rs, 2 / rs, color="0.4", lw=0.8, ls="--", label=r"$2/r$")
ax.axhline(2, color="0.7", lw=0.8)
ax.set_ylim(0, 5.4); ax.set_xlabel("orbit radius $r$"); ax.set_ylabel(r"orbit weight $w(r)$")
ax.set_title(r"The Faddeev-Popov factor weights every orbit equally as $\xi \to 0$", fontsize=9)
ax.legend(fontsize=7, ncol=2, loc="upper right")
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
err = max(abs(w_fp(r, xi) - 2 * erf(r / np.sqrt(2 * xi))) for xi in (0.01, 0.1, 1.0) for r in (0.1, 0.5, 1.0, 2.0, 3.0))
print("[PASS] orbit weight with the Faddeev-Popov factor = 2 erf(r/sqrt(2 xi)) (largest difference %.1e):" % err, err < 1e-7)
lim = max(abs(r * w_0(r, 1e-4) - 2) for r in (0.5, 1.0, 2.0, 3.0))
print("[PASS] without the factor, r w_0(r) -> 2 at xi = 1e-4 (largest deviation %.1e):" % lim, lim < 1e-3)
S = lambda rr: rr**2 / 2 + rr**4 / 10
full = dblquad(lambda y, x: np.exp(-S(np.hypot(x, y))), -10, 10, -10, 10)[0]
fixed = 2 * np.pi * quad(lambda x: x * np.exp(-S(x)), 0, 10)[0]
print("[PASS] int d^2x e^{-S} = 2 pi int dx_1 x_1 e^{-S(x_1)} (%.10f vs %.10f):" % (full, fixed), abs(full - fixed) < 1e-8)
print("intersections of x_2 = %.1f with the orbits r = 0.5, 1, 1.5, 2:" % c, [2 if r > c else 0 for r in (0.5, 1.0, 1.5, 2.0)])
print("wrote", os.path.relpath(OUT))
