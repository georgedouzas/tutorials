# f_n(x) = 2n x e^{-n x^2} on [0, 1] for n = 1, 4, 16, 64: f_n -> 0 at every point, but the bump at x = 1/sqrt(2n) grows
# like sqrt(2n/e) and the area under f_n is 1 - e^{-n} -> 1, so the limit of the integrals is not the integral of the limit.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, n = var("x n")
f = 2*n*x*exp(-n*x^2)
assert bool(integrate(f, x, 0, 1) == 1 - exp(-n))
assert limit(f.subs(x=1/2), n=oo) == 0

fig, ax = plt.subplots(figsize=(6.0, 3.6))
X = np.linspace(0, 1, 800)
for k, c in zip([1, 4, 16, 64], [ACCENT, EXERCISE, ORANGE, STATEMENT]):
    Y = 2*k*X*np.exp(-k*X**2)
    ax.fill_between(X, Y, color=c, alpha=0.10, lw=0)
    ax.plot(X, Y, color=c, lw=1.5)
    xm = 1/np.sqrt(2*k)
    ax.text(xm + 0.02, 2*k*xm*np.exp(-0.5) + 0.12, "$n = %d$, area $%.3f$" % (k, 1 - np.exp(-k)), color=c, fontsize=10)
ax.plot([0, 1], [0, 0], color=INK, lw=2.0)
ax.set_xlim(0, 1); ax.set_ylim(0, 7.6); ax.set_xlabel("$x$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "nonuniform_bump")
