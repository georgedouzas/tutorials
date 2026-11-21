# The Beta integrands t^(a - 1) (1 - t)^(b - 1) on (0, 1) for (a, b) = (1/2, 1/2), (1/2, 2), (2, 1/2), (1, 1) and
# (2, 2); the areas under them are B(1/2, 1/2) = pi, B(1/2, 2) = B(2, 1/2) = 4/3, B(1, 1) = 1 and B(2, 2) = 1/6.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(5.4, 3.6))
t = np.linspace(1e-3, 1 - 1e-3, 600)
cases = [((0.5, 0.5), r"$a = b = \frac{1}{2}$"), ((0.5, 2), r"$a = \frac{1}{2},\ b = 2$"),
         ((2, 0.5), r"$a = 2,\ b = \frac{1}{2}$"), ((1, 1), r"$a = b = 1$"), ((2, 2), r"$a = b = 2$")]
for ((a, b), lab), c in zip(cases, SERIES):
    ax.plot(t, t**(a - 1) * (1 - t)**(b - 1), color=c, lw=1.6, label=lab)
ax.set_ylim(0, 4); ax.set_xlim(0, 1)
ax.set_xlabel(r"$t$"); ax.legend(frameon=False, fontsize=10, loc="upper center")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "beta_integrands")
