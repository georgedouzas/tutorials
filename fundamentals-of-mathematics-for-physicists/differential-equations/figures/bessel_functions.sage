# The Bessel functions J_0, J_1, J_2 on [0, 15], with the first four positive zeros of J_0 marked.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
z0 = [find_root(bessel_J(0, x), a, a + 1) for a in [2, 5, 8, 11]]
assert abs(z0[0] - 2.404825557695773) < 1e-9
tt = np.linspace(0, 15, 600)
fig, ax = plt.subplots(figsize=(6.4, 3.4))
for n, col in zip(range(3), [ACCENT, STATEMENT, EXAMPLE]):
    ax.plot(tt, [float(bessel_J(n, float(t))) for t in tt], color=col, lw=1.5, label="$J_%d$" % n)
ax.plot(z0, [0] * 4, "o", color=ACCENT, ms=5)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(0, 15); ax.set_ylim(-0.5, 1.05)
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper right", fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "bessel_functions")
