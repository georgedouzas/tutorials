# The brachistochrone from (0, 0) to (pi, 2), with y measured downwards and g = 1: the cycloid
# x = theta - sin(theta), y = 1 - cos(theta), 0 <= theta <= pi, the straight segment, and the circular arc through both
# points with a vertical tangent at the start. Descent times from rest: T = integral of ds / sqrt(2 g y).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import quad

g = 1.0
x1, y1 = np.pi, 2.0
th = np.linspace(0, np.pi, 400)
cyc = (th - np.sin(th), 1 - np.cos(th))
T_cyc = np.pi * np.sqrt(1 / g)                                   # R = 1, theta_1 = pi
ell = np.hypot(x1, y1)
T_line = ell * np.sqrt(2 / (g * y1))
c = (x1**2 + y1**2) / (2 * x1)                                   # circle (x - c)^2 + y^2 = c^2
phi1 = np.arcsin(y1 / c)
phi1 = np.pi - phi1 if c - c * np.cos(phi1) < x1 - 1e-9 else phi1
T_circ = quad(lambda p: c / np.sqrt(2 * g * c * np.sin(p)), 0, phi1)[0]
ph = np.linspace(0, phi1, 400)
circ = (c - c * np.cos(ph), c * np.sin(ph))
print("times: cycloid %.4f, circle %.4f, line %.4f" % (T_cyc, T_circ, T_line))

fig, ax = plt.subplots(figsize=(5.8, 3.4))
ax.plot([0, x1], [0, y1], color=MUTED, lw=1.5, label=r"segment, $T = %.2f$" % T_line)
ax.plot(*circ, color=EXAMPLE, lw=1.5, ls=(0, (4, 2)), label=r"circular arc, $T = %.2f$" % T_circ)
ax.plot(*cyc, color=ACCENT, lw=2.2, label=r"cycloid, $T = \pi \approx %.2f$" % T_cyc)
ax.plot([0, x1], [0, y1], "o", color=INK, ms=4)
ax.text(-0.1, -0.12, r"$(0, 0)$", ha="right", fontsize=10)
ax.text(x1 + 0.08, y1 + 0.05, r"$(\pi, 2)$", ha="left", va="top", fontsize=10)
ax.invert_yaxis()
ax.set_xlim(-0.6, 4.6); ax.set_ylim(2.35, -0.35)
ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$ (downwards)")
ax.legend(loc="upper right", frameon=False, fontsize=10)
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "brachistochrone")
