# Three delta sequences (def-dirac-delta): the box 1/(2 eps) on [-eps, eps], the Gaussian exp(-x^2/eps^2)/(sqrt(pi) eps) and
# the Lorentzian eps/(pi (x^2 + eps^2)), for eps = 0.25 (solid) and eps = 0.1 (dashed). Each has unit area (checked below).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x, eps = var("x eps")
assume(eps > 0)
assert integrate(exp(-x^2 / eps^2) / (sqrt(pi) * eps), x, -oo, oo) == 1
assert integrate(eps / (pi * (x^2 + eps^2)), x, -oo, oo) == 1
xs = np.linspace(-1.5, 1.5, 3001)
fig, ax = plt.subplots(figsize=(6.0, 3.4))
for e, ls in [(0.25, "-"), (0.1, "--")]:
    box = np.where(np.abs(xs) <= e, 1 / (2 * e), 0.0)
    ax.plot(xs, box, color=ACCENT, lw=1.4, ls=ls, label="box" if ls == "-" else None)
    ax.plot(xs, np.exp(-xs**2 / e**2) / (np.sqrt(np.pi) * e), color=STATEMENT, lw=1.4, ls=ls, label="Gaussian" if ls == "-" else None)
    ax.plot(xs, e / (np.pi * (xs**2 + e**2)), color=EXAMPLE, lw=1.4, ls=ls, label="Lorentzian" if ls == "-" else None)
ax.set_xlim(-1.5, 1.5); ax.set_ylim(0, 6)
ax.set_xlabel("$x$"); ax.set_ylabel(r"$\delta_\varepsilon(x)$")
ax.legend(frameon=False, loc="upper right")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "delta_sequences")
