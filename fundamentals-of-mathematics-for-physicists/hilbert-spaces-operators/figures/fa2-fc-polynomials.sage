# Bernstein polynomials of degree 4, 16, 64 approximating f(x) = |x| on [-1, 1] (through t = (x + 1)/2 on [0, 1]).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from math import comb

def bernstein(f, n, t):
    return sum(f(k/n)*comb(n, k)*t**k*(1 - t)**(n - k) for k in range(n + 1))
g = lambda t: abs(2*t - 1)
x = np.linspace(-1, 1, 401); t = (x + 1)/2
fig, ax = plt.subplots(figsize=(6.0, 3.8))
ax.plot(x, np.abs(x), "--", color=INK, lw=1.2, label=r"$|x|$")
errs = []
for n, col in [(4, "#9db9d8"), (16, "#5b8cc0"), (64, ACCENT)]:
    b = bernstein(g, n, t); errs.append(np.max(np.abs(b - np.abs(x))))
    ax.plot(x, b, color=col, lw=1.6, label=r"degree $%d$" % n)
assert errs[0] > errs[1] > errs[2]
ax.set_xlabel(r"$x \in \sigma(A) = [-1, 1]$"); ax.set_xlim(-1, 1); ax.set_ylim(0, 1.05)
ax.legend(frameon=False, loc="upper center")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-fc-polynomials")
