# The radial densities u_{n0}(r)^2 of the hydrogen s-states n = 1, 2, 3, built from Laguerre polynomials and normalised.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r = var("r")
def u(n, l):
    f = r^(l + 1) * exp(-r / n) * gen_laguerre(n - l - 1, 2*l + 1, 2*r / n)
    return f / sqrt(integral(f^2, r, 0, oo))
U = [u(n, 0) for n in [1, 2, 3]]
for n, f in zip([1, 2, 3], U):
    res = (diff(f, r, 2) + (2 / r - 1 / n^2) * f).simplify_full()
    assert res == 0
tt = np.linspace(0.001, 20, 600)
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for n, f, col in zip([1, 2, 3], U, [ACCENT, STATEMENT, EXAMPLE]):
    g = fast_callable(f^2, vars=[r], domain=RDF)
    ax.plot(tt, [g(t) for t in tt], color=col, lw=1.6, label="$n = %d$" % n)
z3 = [float(z) for z in [(9 - 3*sqrt(3)) / 2, (9 + 3*sqrt(3)) / 2]]
ax.plot([2.0] + z3, [0, 0, 0], "o", color=MUTED, ms=4)
ax.set_xlim(0, 20); ax.set_ylim(0, 0.56)
ax.set_xlabel("$r$ (Bohr radii)")
ax.legend(frameon=False, loc="upper right", fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "hydrogen_radial")
