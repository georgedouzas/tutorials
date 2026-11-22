# det(1 - zG) = sin(sqrt z)/sqrt z for the Green's operator of [0,1], with partial products prod_{n<=N}(1 - z/(n pi)^2),
# N = 1, 2, 4, on -10 <= z <= 110; zeros at pi^2, 4 pi^2, 9 pi^2.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
zs = np.linspace(-10, 110, 1200)
def S(z):
    r = np.sqrt(np.abs(z))
    return np.where(z > 0, np.sin(r) / np.where(r == 0, 1, r), np.where(z < 0, np.sinh(r) / np.where(r == 0, 1, r), 1.0))
fig, ax = plt.subplots(figsize=(6.6, 3.8))
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(zs, S(zs), color=INK, lw=2.0, label=r"$\sin\sqrt{z}/\sqrt{z}$")
for N, col in zip((1, 2, 4), (STATEMENT, EXAMPLE, ACCENT)):
    P = np.prod([1 - zs / (n * np.pi)**2 for n in range(1, N + 1)], axis=0)
    ax.plot(zs, P, color=col, lw=1.2, ls="--", label=r"$N = %d$" % N)
for k in (1, 2, 3):
    ax.plot([(k * np.pi)**2], [0], "o", color=INK, ms=4)
ax.text(np.pi**2 - 4, -0.35, r"$\pi^2$", fontsize=10); ax.text(4 * np.pi**2 - 6, 0.25, r"$4\pi^2$", fontsize=10)
ax.text(9 * np.pi**2 - 6, -0.35, r"$9\pi^2$", fontsize=10)
ax.set_ylim(-0.6, 2.2); ax.set_xlabel(r"$z$"); ax.legend(frameon=False, loc="upper right")
ax.spines["top"].set_visible(False); ax.spines["right"].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "trc-fredholm-sine")
