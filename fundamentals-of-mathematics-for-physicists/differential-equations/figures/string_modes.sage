# The first four Dirichlet eigenfunctions sin(n x), n = 1..4, of -u'' = lambda u on [0, pi], u(0) = u(pi) = 0,
# with their interior zeros k pi / n marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
for n in range(1, 5):                      # each mode solves the problem with lambda = n^2
    assert bool((-diff(sin(n * x), x, 2) - n^2 * sin(n * x)) == 0) and sin(n * pi) == 0
tt = np.linspace(0, float(pi), 400)
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for n, col in zip(range(1, 5), [ACCENT, STATEMENT, EXAMPLE, EXERCISE]):
    ax.plot(tt, np.sin(n * tt), color=col, lw=1.5, label=r"$\sin %sx$" % ("" if n == 1 else n))
    zs = [k * float(pi) / n for k in range(1, n)]
    ax.plot(zs, [0] * len(zs), "o", color=col, ms=4.5)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(0, float(pi)); ax.set_ylim(-1.15, 1.15)
ax.set_xticks([0, float(pi) / 2, float(pi)]); ax.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$"])
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.16), ncol=4, fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "string_modes")
