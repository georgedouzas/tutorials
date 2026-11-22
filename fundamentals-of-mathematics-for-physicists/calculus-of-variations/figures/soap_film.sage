# Soap film between two coaxial rings of radius a = 2 at x = -1 and x = 1: the profiles y = c cosh(x / c) through
# (+-1, 2) solve c cosh(1/c) = 2, which has two roots c; both catenaries and their mirror images are drawn.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import brentq

a = 2.0
f = lambda c: c * np.cosh(1 / c) - a
tstar = brentq(lambda t: t * np.tanh(t) - 1, 0.5, 2.0)          # minimum of cosh(t)/t
cstar = 1 / tstar
c_shallow = brentq(f, cstar, 10.0)
c_deep = brentq(f, 0.2, cstar)
print("c (shallow) = %.4f, c (deep) = %.4f, smallest ring radius with a solution = %.4f"
      % (c_shallow, c_deep, np.cosh(tstar) / tstar))

xs = np.linspace(-1, 1, 400)
fig, ax = plt.subplots(figsize=(5.4, 3.8))
ax.axhline(0, color=GRID, lw=0.8)
for c, col, ls, lab in [(c_shallow, ACCENT, "-", r"$c = %.3f$" % c_shallow),
                        (c_deep, STATEMENT, (0, (4, 2)), r"$c = %.3f$" % c_deep)]:
    y = c * np.cosh(xs / c)
    ax.plot(xs, y, color=col, lw=2.0, ls=ls, label=lab)
    ax.plot(xs, -y, color=col, lw=2.0, ls=ls)
for s in (-1, 1):
    ax.plot([s, s], [-a, a], color=INK, lw=3)
ax.text(-1.0, 2.25, r"rings of radius $2$ at $x = \pm 1$", ha="left", va="bottom", fontsize=10)
ax.set_xlim(-1.4, 2.8); ax.set_ylim(-2.4, 2.8)
ax.set_xlabel(r"$x$ (axis of the rings)"); ax.set_ylabel(r"$y$")
ax.legend(loc="center right", frameon=False, fontsize=10, title=r"$y = c\cosh(x/c)$", title_fontsize=10)
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "soap_film")
