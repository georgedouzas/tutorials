# The monic polynomial 2^{-4} T_5 equioscillates between -1/16 and 1/16 at six points of [-1, 1]; the monic x^5 and the monic multiple of P_5 have larger maxima.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = var("x")
T5 = chebyshev_T(5, x).expand()
assert T5 == 16*x^5 - 20*x^3 + 5*x
p = T5 / 16
q = legendre_P(5, x) / legendre_P(5, x).coefficient(x, 5)
ext = [cos(k * pi / 5) for k in range(6)]
assert all(bool(p.subs(x=e) == (-1)^k / 16) for k, e in enumerate(ext))
tt = np.linspace(-1, 1, 500)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
for f, col, lab in [(x^5, MUTED, "$x^5$"), (q, EXERCISE, "monic $P_5$"), (p, ACCENT, "$2^{-4}T_5$")]:
    g = fast_callable(f, vars=[x], domain=RDF)
    ax.plot(tt, [g(t) for t in tt], color=col, lw=1.6, label=lab)
ax.axhline(1/16, color=STATEMENT, lw=0.9, ls="--"); ax.axhline(-1/16, color=STATEMENT, lw=0.9, ls="--")
ax.plot([float(e) for e in ext], [(-1)**k / 16 for k in range(6)], "o", color=STATEMENT, ms=5)
ax.set_xlim(-1, 1); ax.set_ylim(-0.16, 0.16)
ax.set_xlabel("$x$")
ax.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.16), ncol=3, fontsize=10)
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "chebyshev_equioscillation")
