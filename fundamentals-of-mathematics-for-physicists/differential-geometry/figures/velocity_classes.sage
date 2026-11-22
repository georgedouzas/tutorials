# Three curves through the origin with the same velocity d_x: a line, a parabola and a unit circle.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(5.5, 3.6))
t = np.linspace(-1.2, 1.2, 300)
ax.plot(t, 0*t, color=ACCENT, lw=1.6, label=r"$(t, 0)$")
ax.plot(t, t**2, color=STATEMENT, lw=1.6, label=r"$(t, t^2)$")
s = np.linspace(-1.4, 1.4, 300)
ax.plot(np.sin(s), 1 - np.cos(s), color=EXAMPLE, lw=1.6, label=r"$(\sin t, 1 - \cos t)$")
ax.annotate("", xy=(0.8, 0), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=INK, lw=2.2))
ax.text(0.82, -0.12, r"$\partial_x$", fontsize=12, color=INK)
ax.plot(0, 0, "o", color=INK, ms=4)
ax.set_aspect("equal"); ax.set_xlim(-1.3, 1.3); ax.set_ylim(-0.35, 1.3); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
ax.legend(loc="upper center", fontsize=9, frameon=False, ncol=3, bbox_to_anchor=(0.5, 1.13))
save_matplotlib(fig, "velocity_classes")
