# Image of the unit ball of the 1-, 2- and sup-norm under A = [[1, 2], [0, 1]], inside the ball of radius |A| of
# the same norm (3, 1 + sqrt 2, 3); dots mark vectors where the norm is attained.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[1.0, 2.0], [0.0, 1.0]])
t = np.linspace(0, 2*np.pi, 4001)
c, s = np.cos(t), np.sin(t)


def sphere(p):
    r = 1/np.maximum(abs(c), abs(s)) if p == np.inf else (abs(c)**p + abs(s)**p)**(-1/p)
    return np.vstack([r*c, r*s])


norms = {1: 3.0, 2: 1 + np.sqrt(2), np.inf: 3.0}
attain = {1: np.array([0.0, 1.0]), np.inf: np.array([1.0, 1.0])}
_, S, Vt = np.linalg.svd(A)
attain[2] = Vt[0]
for p, nA in norms.items():
    img = A @ sphere(p)
    assert abs(np.max(np.linalg.norm(img, ord=p, axis=0)) - nA) < 1e-4
fig, axs = plt.subplots(1, 3, figsize=(10, 3.6))
for ax, (p, nA), title in zip(axs, norms.items(), [r"$\|\cdot\|_1$", r"$\|\cdot\|_2$", r"$\|\cdot\|_\infty$"]):
    ball = sphere(p)
    ax.plot(ball[0], ball[1], color=MUTED, lw=1.0)
    img = A @ ball
    ax.fill(img[0], img[1], color=ACCENT, alpha=0.18); ax.plot(img[0], img[1], color=ACCENT, lw=1.3)
    big = nA*ball
    ax.plot(big[0], big[1], color=STATEMENT, lw=1.0, ls="--")
    v = attain[p]; w = A @ v
    ax.plot([w[0]], [w[1]], "o", color=STATEMENT, ms=5)
    ax.set_aspect("equal"); ax.set_xlim(-3.3, 3.3); ax.set_ylim(-3.3, 3.3)
    ax.set_title(title, fontsize=11)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-operator-norms")
