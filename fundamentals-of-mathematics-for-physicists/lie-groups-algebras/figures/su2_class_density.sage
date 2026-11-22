# Class-angle density (1/pi) sin^2(alpha/2) of SU(2), with a histogram of the class angles of random points of S^3.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
rng = np.random.default_rng(int(1))
x = rng.normal(size=(int(20000), int(4)))
x0 = x[:, 0] / np.linalg.norm(x, axis=1)
alpha = 2 * np.arccos(x0)
a = np.linspace(0, 2 * np.pi, 400)
fig, ax = plt.subplots(figsize=(5.2, 3.4))
ax.hist(alpha, bins=int(40), range=(float(0), float(2 * np.pi)), density=True, color=GRID, edgecolor="white")
ax.plot(a, np.sin(a / 2) ** 2 / np.pi, color=ACCENT, lw=2.2, label=r"$\frac{1}{\pi}\sin^2\frac{\alpha}{2}$")
ax.plot(a, 0 * a + 1 / (2 * np.pi), color=STATEMENT, lw=1.4, ls="--", label=r"$\frac{1}{2\pi}$")
ax.set_xlim(0, 2 * np.pi); ax.set_ylim(0, 0.38)
ax.set_xticks([0, np.pi / 2, np.pi, 3 * np.pi / 2, 2 * np.pi])
ax.set_xticklabels([r"$0$", r"$\pi/2$", r"$\pi$", r"$3\pi/2$", r"$2\pi$"])
ax.set_xlabel(r"class angle $\alpha$")
ax.legend(frameon=False, loc="upper left")
for s in ["right", "top"]:
    ax.spines[s].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "su2_class_density")
