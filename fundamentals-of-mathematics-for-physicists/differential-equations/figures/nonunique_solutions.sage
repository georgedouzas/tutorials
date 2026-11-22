# Solutions of y' = 2 sqrt|y| with y(0) = 0: the zero solution and y_c = 0 for x <= c, (x - c)^2 for x >= c,
# for c = 0, 0.5, 1, 1.5; each y_c is checked to solve the equation for x > c.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
for c in [0, 1/2, 1, 3/2]:
    assert bool((diff((x - c)^2, x) - 2 * sqrt((x - c)^2)).subs(x=c + 1) == 0)
tt = np.linspace(-1, 3, 400)
fig, ax = plt.subplots(figsize=(5.6, 3.6))
for c in [0, 0.5, 1, 1.5]:
    ax.plot(tt, np.where(tt <= c, 0, (tt - c) ** 2), color=ACCENT, lw=1.5)
    ax.plot([c], [0], "o", color=ACCENT, ms=4)
ax.plot(tt, 0 * tt, color=STATEMENT, lw=2.2)
ax.set_xlim(-1, 3.0); ax.set_ylim(-0.3, 4)
ax.set_xlabel("$x$"); ax.set_ylabel("$y$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "nonunique_solutions")
