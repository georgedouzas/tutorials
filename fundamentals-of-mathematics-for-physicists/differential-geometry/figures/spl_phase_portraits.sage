# Phase portraits of the oscillator H = (p^2 + q^2)/2 and of the pendulum H = p^2/2 - cos q: level curves of H and arrows of X_H.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(10, 4.2), gridspec_kw={"width_ratios": [1, 1.6]})
q, p = np.meshgrid(np.linspace(-2.2, 2.2, 300), np.linspace(-2.2, 2.2, 300))
a1.contour(q, p, (p**2 + q**2)/2, levels=[0.125, 0.5, 1.125, 2.0], colors=ACCENT, linewidths=1.1)
Q, P = np.meshgrid(np.linspace(-2, 2, 9), np.linspace(-2, 2, 9))
a1.quiver(Q, P, P, -Q, color=GRID, angles="xy", scale_units="xy", scale=5, width=0.004)
a1.set_title(r"$H = \frac{1}{2}(p^2 + q^2)$", fontsize=11); a1.set_aspect("equal")
q, p = np.meshgrid(np.linspace(-2*np.pi, 2*np.pi, 500), np.linspace(-3, 3, 300))
H = p**2/2 - np.cos(q)
a2.contour(q, p, H, levels=[-0.8, -0.4, 0.2, 0.6, 1.6, 2.6], colors=ACCENT, linewidths=1.1, linestyles="solid")
a2.contour(q, p, H, levels=[1.0], colors=STATEMENT, linewidths=1.8)
Q, P = np.meshgrid(np.linspace(-2*np.pi, 2*np.pi, 17), np.linspace(-2.6, 2.6, 9))
a2.quiver(Q, P, P, -np.sin(Q), color=GRID, angles="xy", scale_units="xy", scale=4, width=0.003)
a2.set_title(r"$H = \frac{1}{2}p^2 - \cos q$", fontsize=11)
a2.set_xticks([-2*np.pi, -np.pi, 0, np.pi, 2*np.pi]); a2.set_xticklabels([r"$-2\pi$", r"$-\pi$", r"$0$", r"$\pi$", r"$2\pi$"])
for ax in (a1, a2):
    ax.set_xlabel(r"$q$"); ax.set_ylabel(r"$p$")
fig.tight_layout()
save_matplotlib(fig, "spl_phase_portraits")
# interactive version: trajectories of the pendulum computed from the energy, clickable by energy
traces = []
qq = np.linspace(-2*np.pi, 2*np.pi, 801)
for E in [-0.8, -0.4, 0.2, 0.6, 1.0, 1.6, 2.6]:
    pp = np.sqrt(np.maximum(2*(E + np.cos(qq)), 0)); mask = 2*(E + np.cos(qq)) >= 0
    for s in (1, -1):
        y = np.where(mask, s*pp, np.nan)
        traces.append({"type": "scatter", "mode": "lines", "x": floats(qq), "y": [None if np.isnan(v) else float(v) for v in y],
                       "line": {"color": STATEMENT if E == 1.0 else ACCENT, "width": 2 if E == 1.0 else 1.2},
                       "name": "H = %.1f" % E, "legendgroup": "E%.1f" % E, "showlegend": s == 1})
save_plotly(traces, "spl_phase_portraits", {"xaxis": {"title": "q"}, "yaxis": {"title": "p"}})
