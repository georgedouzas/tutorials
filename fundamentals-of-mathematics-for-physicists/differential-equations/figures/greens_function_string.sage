# The Green's function x_<(1 - x_>) of -u'' = f, u(0) = u(1) = 0 (def-greens-function), for xi = 0.2, 0.5, 0.8.
# Checked: continuity and the slope jump -1 at x = xi.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, xi = var("x xi")
Ga, Gb = x * (1 - xi), xi * (1 - x)
assert (Ga - Gb).subs(x=xi) == 0 and diff(Gb, x) - diff(Ga, x) == -1
xs = np.linspace(0, 1, 401)
fig, ax = plt.subplots(figsize=(5.2, 3.2))
for lab, col in zip(["0.2", "0.5", "0.8"], [ACCENT, STATEMENT, EXAMPLE]):
    s = float(lab)
    ax.plot(xs, np.minimum(xs, s) * (1 - np.maximum(xs, s)), color=col, lw=1.5, label=r"$\xi = %s$" % lab)
    ax.plot([s], [s * (1 - s)], "o", color=col, ms=4)
ax.set_xlim(0, 1); ax.set_ylim(0, 0.34)
ax.set_xlabel("$x$"); ax.set_ylabel(r"$x_<(1 - x_>)$")
ax.legend(frameon=False, loc="upper left")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "greens_function_string")
