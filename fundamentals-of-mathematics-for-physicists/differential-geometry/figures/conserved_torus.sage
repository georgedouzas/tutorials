# Geodesics of the torus r^2 da^2 + (R + r cos a)^2 db^2 (R = 2, r = 1) in the chart (b, a), confined by the constant L = (R + r cos a)^2 b' between the circles R + r cos a = |L|.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
R0, r0 = 2.0, 1.0
def rhs(t, s):
    a, b, ad, bd = s; F = R0 + r0*np.cos(a)
    return [ad, bd, -(F*np.sin(a)/r0)*bd**2, 2*(r0*np.sin(a)/F)*ad*bd]
fig, ax = plt.subplots(figsize=(8, 3.6))
for psi, lab, col in [(1.2, "1.2", ACCENT), (0.6, "0.6", STATEMENT), (0.25, "0.25", EXAMPLE)]:
    sol = solve_ivp(rhs, [0, 40], [0, 0, np.cos(psi)/r0, np.sin(psi)/3], max_step=0.02, rtol=1e-9, atol=1e-11)
    a = (sol.y[0] + np.pi) % (2*np.pi) - np.pi; b = sol.y[1]
    cut = np.abs(np.diff(a)) > np.pi; a = a.copy(); a[1:][cut] = np.nan
    ax.plot(b, a, color=col, lw=1.2, label=r"$\psi = %s$" % lab)
    L = 3*np.sin(psi)
    if L > R0 - r0:
        amax = np.arccos((L - R0)/r0)
        for s in (1, -1): ax.axhline(s*amax, color=col, lw=0.8, ls="--")
ax.axhline(np.pi, color=MUTED, lw=0.8); ax.axhline(-np.pi, color=MUTED, lw=0.8)
ax.set_xlim(0, 12); ax.set_ylim(-3.3, 3.3); ax.set_xlabel(r"$b$"); ax.set_ylabel(r"$a$")
ax.legend(loc="lower center", bbox_to_anchor=(0.5, 1.0), ncol=3, fontsize=9, frameon=False)
fig.tight_layout()
save_matplotlib(fig, "conserved_torus")
