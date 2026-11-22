# Level curves of f = x^2 - y^2 and g = 2xy on the Euclidean plane: star(df) = dg, so the two gradients are a quarter turn apart.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, ax = plt.subplots(figsize=(5, 5))
s = np.linspace(-2, 2, 401); X, Y = np.meshgrid(s, s)
lev = [-3, -2, -1, -0.4, 0.4, 1, 2, 3]
ax.contour(X, Y, X**2 - Y**2, levels=lev, colors=ACCENT, linewidths=1.1)
ax.contour(X, Y, 2*X*Y, levels=lev, colors=STATEMENT, linewidths=1.1, linestyles="dashed")
pts = [(1.2, 0.5), (-0.6, 1.3), (-1.3, -0.7), (0.7, -1.3)]
for (a, b) in pts:
    gf = np.array([2*a, -2*b]); gg = np.array([2*b, 2*a])          # grad f and grad g = quarter turn of grad f
    for v, c in [(gf, ACCENT), (gg, STATEMENT)]:
        v = 0.45*v/np.linalg.norm(v)
        ax.annotate("", xy=(a + v[0], b + v[1]), xytext=(a, b), arrowprops=dict(arrowstyle="-|>", color=c, lw=1.6))
    ax.plot(a, b, "o", color=INK, ms=3)
ax.plot([], [], color=ACCENT, label=r"$f = x^2 - y^2$ and $\mathrm{grad}\,f$")
ax.plot([], [], color=STATEMENT, ls="dashed", label=r"$h = 2xy$ and $\mathrm{grad}\,h$, $dh = \star df$")
ax.legend(loc="upper center", bbox_to_anchor=(0.5, -0.1), frameon=False, ncol=1)
ax.set_aspect("equal"); ax.set_xlim(-2, 2); ax.set_ylim(-2, 2); ax.set_xlabel(r"$x$"); ax.set_ylabel(r"$y$")
fig.tight_layout()
save_matplotlib(fig, "hodge_quarter_turn")
