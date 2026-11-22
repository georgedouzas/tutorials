# The figure-eight immersion t -> (sin 2t, sin t) on (0, 2 pi), with velocity arrows; both ends approach the crossing point.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(4.6, 4.2))
t = np.linspace(0.02, 2*np.pi - 0.02, 600)
ax.plot(np.sin(2*t), np.sin(t), color=ACCENT, lw=2)
for t0 in (np.pi/4, 3*np.pi/4, 5*np.pi/4, 7*np.pi/4):
    p = np.array([np.sin(2*t0), np.sin(t0)]); v = np.array([2*np.cos(2*t0), np.cos(t0)])
    v = 0.35*v/np.linalg.norm(v)
    ax.annotate("", xy=p + v, xytext=p, arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=1.8))
ax.plot([0], [0], "o", color=EXAMPLE, ms=7)
ax.set_aspect("equal"); ax.set_xlim(-1.3, 1.3); ax.set_ylim(-1.25, 1.25)
ax.set_xlabel(r"$X$"); ax.set_ylabel(r"$Y$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
save_matplotlib(fig, "figure_eight_immersion")
