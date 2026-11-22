# Counting functions N(lambda) of the unit circle (left) and of the unit sphere and the square torus (right),
# with Weyl's predictions 2 sqrt(lambda), lambda and pi lambda.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

lam = np.linspace(0, 60, 1201)
Nc = np.array([2 * np.floor(np.sqrt(l)) + 1 for l in lam])
def Ns(l):
    k = 0
    while (k + 1) * (k + 2) <= l: k += 1
    return (k + 1) ** 2
pts = np.array([m * m + n * n for m in range(-9, 10) for n in range(-9, 10)])
Nt = np.array([np.sum(pts <= l) for l in lam])
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.4))
a1.step(lam, Nc, where="post", color=ACCENT, lw=1.6, label=r"circle")
a1.plot(lam, 2 * np.sqrt(lam), color=MUTED, lw=1.2, ls="--", label=r"$2\sqrt{\lambda}$")
a2.step(lam, [Ns(l) for l in lam], where="post", color=STATEMENT, lw=1.6, label=r"sphere")
a2.plot(lam, lam, color=STATEMENT, lw=1.0, ls="--", label=r"$\lambda$")
a2.step(lam, Nt, where="post", color=EXAMPLE, lw=1.6, label=r"torus")
a2.plot(lam, np.pi * lam, color=EXAMPLE, lw=1.0, ls="--", label=r"$\pi\lambda$")
for ax in (a1, a2):
    ax.set_xlabel(r"$\lambda$"); ax.set_ylabel(r"$N(\lambda)$")
    ax.legend(loc="upper left", fontsize=9, frameon=False)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "unb-weyl-counting")
