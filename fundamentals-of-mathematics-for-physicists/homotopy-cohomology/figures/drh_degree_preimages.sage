# Degree by counting preimages: the lift L(theta) = theta + 2.2 sin(theta) of F(e^{i theta}) = e^{i L(theta)} on [0, 2 pi],
# the level L = 3, its three preimages and their signs (the sign of L'); the signed count, printed, is the degree 1.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import brentq

L = lambda t: t + 2.2 * np.sin(t)
dL = lambda t: 1 + 2.2 * np.cos(t)
t1 = np.arccos(-1 / 2.2); t2 = 2 * np.pi - t1
roots = [brentq(lambda t: L(t) - 3, a, b) for a, b in [(0, t1), (t1, t2), (t2, 2 * np.pi)]]
signs = [int(np.sign(dL(r))) for r in roots]
print("preimages:", [round(r, 4) for r in roots], "signs:", signs, "degree:", sum(signs))

fig, ax = plt.subplots(figsize=(5.4, 3.8))
t = np.linspace(0, 2 * np.pi, 600)
ax.plot(t, L(t), color=ACCENT, lw=2)
ax.axhline(3, color=STATEMENT, lw=1.2, ls="--")
ax.text(0.05, 3.12, r"$L = 3$", color=STATEMENT, fontsize=10, va="bottom")
for r, sg, dy in zip(roots, signs, [0.45, 0.45, -0.75]):
    ax.plot([r], [3], "o", color=STATEMENT, ms=5)
    ax.text(r, 3 + dy, "$+1$" if sg > 0 else "$-1$", ha="center", color=INK, fontsize=11)
ax.set_xlim(0, 2 * np.pi); ax.set_ylim(-0.3, 2 * np.pi + 0.3)
ax.set_xticks([0, np.pi, 2 * np.pi]); ax.set_xticklabels(["$0$", r"$\pi$", r"$2\pi$"])
ax.set_yticks([0, np.pi, 2 * np.pi]); ax.set_yticklabels(["$0$", r"$\pi$", r"$2\pi$"])
ax.set_xlabel(r"$\theta$"); ax.set_ylabel(r"$\theta + 2.2\sin\theta$")
for sp in ("top", "right"):
    ax.spines[sp].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "drh_degree_preimages")
