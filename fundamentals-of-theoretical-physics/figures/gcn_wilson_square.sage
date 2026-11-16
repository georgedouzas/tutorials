# Figure: the holonomy and Wilson loop of a square in a constant non-abelian potential. For the SU(2) potential
# A_x = T_1, A_y = T_2 (so F_xy = [A_x, A_y] = T_3) the holonomy of the square of side L, traversed counterclockwise from
# the origin, is Hol = e^{L A_y} e^{L A_x} e^{-L A_y} e^{-L A_x} (each side transported by P exp(-int A)). Left: the
# normalised Wilson loop W/2 = (1/2) tr Hol = 1/4 + cos L - (1/4) cos 2L against the naive abelian Stokes value
# (1/2) tr e^{-L^2 F_xy} = cos(L^2/2), which agrees only to order L^4. Right: the deviation ||Hol - (1 - L^2 F_xy)||
# falls like L^3, so the field strength is the holonomy per unit area. Output: figures/gcn_wilson_square.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "gcn_wilson_square.svg")
L = var("L", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]      # exp(th T_k)
Hol = expT(L, 1) * expT(L, 0) * expT(-L, 1) * expT(-L, 0)
w = (Hol.trace() / 2).simplify_full()
w_closed = 1/4 + cos(L) - cos(2 * L) / 4
F = T[0] * T[1] - T[1] * T[0]
fig, axes = plt.subplots(1, 2, figsize=(10, 4.0))
ll = np.linspace(0, 3.2, 400)
wf = fast_callable(w_closed, vars=[L], domain=RDF)
ax = axes[0]
ax.plot(ll, [wf(x) for x in ll], color="firebrick", lw=1.8, label=r"$\frac{1}{2} W(C) = \frac{1}{4} + \cos L - \frac{1}{4}\cos 2L$")
ax.plot(ll, np.cos(ll**2 / 2), color="royalblue", lw=1.5, ls="--", label=r"abelian Stokes guess $\cos(L^2/2)$")
ax.axhline(0, color="grey", lw=0.6)
ax.set_xlabel(r"side $L$ of the square"); ax.set_ylabel(r"$\frac{1}{2}\,\mathrm{tr}\,\mathrm{Hol}(C)$")
ax.set_title(r"Wilson loop of a square, $A_x = T_1$, $A_y = T_2$", fontsize=10); ax.legend(fontsize=8, loc="lower left")
Ls = np.logspace(-2.5, -0.3, 30)
def dev(x):
    x = RDF(x); H = Hol.subs(L=x).change_ring(CDF)
    return (H - (identity_matrix(CDF, 2) - x**2 * F.change_ring(CDF))).norm()
dv = [dev(x) for x in Ls]
slope = np.polyfit(np.log(Ls[:10]), np.log(dv[:10]), 1)[0]
ax = axes[1]
ax.loglog(Ls, dv, "o", color="firebrick", ms=3.5, label=r"$\|\mathrm{Hol}(C) - (1 - L^2F_{xy})\|$")
ax.loglog(Ls, dv[0] * (Ls / Ls[0])**3, color="grey", lw=1, ls=":", label=r"slope $3$")
ax.set_xlabel(r"side $L$"); ax.set_title("Small loops: holonomy $= 1 - L^2F_{xy} + O(L^3)$", fontsize=10)
ax.legend(fontsize=8, loc="upper left")
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] F_xy = [T_1, T_2] = T_3:", (F - T[2]).is_zero())
print("[PASS] (1/2) tr Hol = 1/4 + cos L - cos(2L)/4:", bool((w - w_closed).simplify_full().trig_reduce().simplify_full() == 0))
print("[PASS] it agrees with cos(L^2/2) to order L^4 and differs at order L^6:",
      bool(((w_closed - cos(L**2 / 2)).taylor(L, 0, 5)) == 0), (w_closed - cos(L**2 / 2)).taylor(L, 0, 6))
print("[PASS] Hol is in SU(2): det = 1 and Hol Hol^dagger = 1:",
      bool(Hol.det().simplify_full() == 1), (Hol * Hol.conjugate_transpose() - 1).apply_map(lambda e: e.simplify_full()).is_zero())
print("[PASS] fitted slope of the deviation at small L: %.3f, close to 3:" % slope, abs(slope - 3) < 0.05)
print("wrote", os.path.relpath(OUT))
