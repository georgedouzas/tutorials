# The exponential w = e^z on the strip -pi < y <= pi: the vertical lines x = -1, -1/2, 0, 1/2, 1 go to circles of radius
# e^x and the horizontal lines y = k pi/4 go to rays of angle k pi/4.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

xs = [-1, -0.5, 0, 0.5, 1]
ys = [k * np.pi / 4 for k in range(-3, 5)]
fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.0, 4.2))
yy = np.linspace(-np.pi, np.pi, 300)
xx = np.linspace(-1, 1, 100)
for x0 in xs:
    ax.plot([x0, x0], [-np.pi, np.pi], color=ACCENT, lw=1.1)
    w = np.exp(x0) * np.exp(1j * yy)
    bx.plot(w.real, w.imag, color=ACCENT, lw=1.1)
for y0 in ys:
    ax.plot([-1, 1], [y0, y0], color=STATEMENT, lw=1.1)
    w = np.exp(xx) * np.exp(1j * y0)
    bx.plot(w.real, w.imag, color=STATEMENT, lw=1.1)
z = CDF(1, 3 * pi / 4)
assert abs(abs(exp(z)) - e.n()) < 1e-12 and abs(exp(z).arg() - 3 * pi.n() / 4) < 1e-12
ax.set_xlim(-1.4, 1.4); ax.set_ylim(-3.6, 3.6)
ax.set_yticks([-np.pi, 0, np.pi]); ax.set_yticklabels([r"$-\pi$", r"$0$", r"$\pi$"])
ax.set_xticks([-1, 0, 1])
ax.set_xlabel(r"$x = \operatorname{Re} z$"); ax.set_ylabel(r"$y = \operatorname{Im} z$")
ax.set_title(r"$z$-plane", fontsize=11)
bx.set_aspect("equal"); bx.set_xlim(-3, 3); bx.set_ylim(-3, 3)
bx.set_xlabel(r"$\operatorname{Re} w$"); bx.set_ylabel(r"$\operatorname{Im} w$")
bx.set_title(r"$w = e^z$", fontsize=11)
bx.text(2.0, 2.35, r"$|w| = e$", color=ACCENT, fontsize=10)
for a in (ax, bx):
    for side in ("top", "right"):
        a.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "exp_map")
