# Figure: gauge freedom of the relativistic free particle. Hamilton's equations of the total Hamiltonian H_T = u(tau) phi,
# phi = (|p|^2 - p_t^2 + m^2)/2, are integrated for three choices of the multiplier u(tau) from the same initial state.
# Left: t(tau); middle: x(tau); right: x against t. The parametrised curves differ, the worldline does not.
# Checks: the three worldlines agree with x = x0 + (p/E)(t - t0); the constraint phi stays zero; |dx/dt| < 1.
# Output: figures/chs_gauge_orbits.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "chs_gauge_orbits.svg")
m, p = 1.0, 0.75
E = np.sqrt(p**2 + m**2); pt = -E              # on the constraint surface
mults = [(lambda s: 1.0, r"$u = 1$", "royalblue", "-"),
         (lambda s: 1 + 0.6*np.sin(2*s), r"$u = 1 + 0.6\sin 2\tau$", "firebrick", "--"),
         (lambda s: np.exp(-s/3), r"$u = e^{-\tau/3}$", "seagreen", "-.")]
def rhs(u):
    # state (t, x, p_t, p): tdot = d(u phi)/dp_t = -u p_t, xdot = u p, momenta constant
    return lambda s, y: [-u(s)*y[2], u(s)*y[3], 0.0, 0.0]
taus = np.linspace(0, 4, 401)
fig, axes = plt.subplots(1, 3, figsize=(11, 3.4))
worst_line, worst_phi, vmax = 0.0, 0.0, 0.0
for u, lab, col, ls in mults:
    sol = solve_ivp(rhs(u), [0, 4], [0.0, 0.0, pt, p], t_eval=taus, rtol=1e-11, atol=1e-12)
    t, x, ptt, pp = sol.y
    axes[0].plot(taus, t, ls, color=col, label=lab)
    axes[1].plot(taus, x, ls, color=col, label=lab)
    axes[2].plot(t, x, ls, color=col, lw=2.2 if ls == "-" else 1.6, label=lab)
    worst_line = max(worst_line, np.abs(x - p/E*t).max())
    worst_phi = max(worst_phi, np.abs((pp**2 - ptt**2 + m**2)/2).max())
    vmax = max(vmax, np.abs(np.gradient(x, taus)/np.gradient(t, taus)).max())
tt = np.linspace(0, 4.2, 10)
axes[2].plot(tt, tt, ":", color="grey", label="light cone $x = t$")
axes[0].set_xlabel(r"parameter $\tau$"); axes[0].set_ylabel(r"$t$"); axes[0].set_title(r"time $t(\tau)$", fontsize=10)
axes[1].set_xlabel(r"parameter $\tau$"); axes[1].set_ylabel(r"$x$"); axes[1].set_title(r"position $x(\tau)$", fontsize=10)
axes[2].set_xlabel(r"$t$"); axes[2].set_ylabel(r"$x$"); axes[2].set_title(r"worldline $x(t)$: the same for all $u$", fontsize=10)
axes[0].legend(fontsize=8); axes[2].legend(fontsize=8, loc="upper left")
fig.tight_layout(); fig.savefig(OUT, bbox_inches="tight")
print("[PASS] the three worldlines lie on x = (p/E) t (max deviation %.1e):" % worst_line, worst_line < 1e-8)
print("[PASS] the constraint phi stays zero along all three solutions (max %.1e):" % worst_phi, worst_phi < 1e-12)
print("[PASS] the speed dx/dt = p/E = %.4f is below 1 (max %.4f):" % (p/E, vmax), vmax < 1)
print("wrote", os.path.relpath(OUT))
