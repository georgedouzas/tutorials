# The chart (x, 1 - x^2 - y^2) of the closed unit disc near p = (0, 1): it maps the disc onto a piece of the half-plane R^2_+ and the boundary circle into the axis.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.5, 4.2))
t = np.linspace(0, 2*np.pi, 400)
a1.fill(np.cos(t), np.sin(t), color="#c9d6e6", alpha=0.5, lw=0); a1.plot(np.cos(t), np.sin(t), color=INK, lw=1.4)
# the chart domain: y > 0.35 inside the disc; level curves of z^1 = x and z^2 = 1 - x^2 - y^2
for c in np.linspace(-0.6, 0.6, 7):
    ys = np.linspace(0.35, np.sqrt(1 - c**2), 50); a1.plot(c + 0*ys, ys, color=ACCENT, lw=1)
    xs = np.linspace(-0.6, 0.6, 60)
for k in np.linspace(0, 0.5, 6):
    xs = np.linspace(-0.6, 0.6, 80); ys = np.sqrt(np.maximum(1 - k - xs**2, 0)); m = ys > 0.35
    a1.plot(xs[m], ys[m], color=EXAMPLE if k == 0 else MUTED, lw=2 if k == 0 else 1)
a1.plot(0, 1, "o", color=STATEMENT, ms=5); a1.text(0.05, 1.06, r"$p$", color=STATEMENT)
a1.text(0, -0.2, r"$D$", ha="center", fontsize=13)
a1.set_aspect("equal"); a1.set_xlim(-1.3, 1.3); a1.set_ylim(-1.2, 1.3); a1.axis("off")
a1.set_title(r"the closed disc $D$ near $p = (0, 1)$", fontsize=11, color=INK)
for c in np.linspace(-0.6, 0.6, 7):
    k = np.linspace(0, 1 - c**2 - 0.35**2, 50); a2.plot(c + 0*k, k, color=ACCENT, lw=1)
for k in np.linspace(0, 0.5, 6):
    xs = np.linspace(-0.6, 0.6, 80); m = 1 - k - xs**2 > 0.35**2
    a2.plot(xs[m], k + 0*xs[m], color=EXAMPLE if k == 0 else MUTED, lw=2 if k == 0 else 1)
a2.axhline(0, color=INK, lw=0.8); a2.fill_between([-1.2, 1.2], 0, 1.05, color="#c9d6e6", alpha=0.25, lw=0)
a2.plot(0, 0, "o", color=STATEMENT, ms=5); a2.text(0.04, 0.04, r"$z(p)$", color=STATEMENT)
a2.text(0.75, 0.9, r"$\mathbb{R}^2_+$", fontsize=12); a2.text(0.62, -0.12, r"$\partial\mathbb{R}^2_+$", fontsize=10, color=EXAMPLE)
a2.set_xlim(-1.2, 1.2); a2.set_ylim(-0.25, 1.05); a2.set_aspect("equal"); a2.set_xlabel(r"$z^1 = x$"); a2.set_ylabel(r"$z^2 = 1 - x^2 - y^2$")
a2.spines["top"].set_visible(False); a2.spines["right"].set_visible(False)
a2.set_title("its image in the half-plane", fontsize=11, color=INK)
save_matplotlib(fig, "half_space_chart")
