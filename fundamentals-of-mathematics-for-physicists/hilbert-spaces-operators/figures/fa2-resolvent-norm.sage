# Level curves ||R_lambda|| = 2, 4, 10 for the diagonal matrix diag(1, 2) and for the non-normal matrix [[1, 4], [0, 2]].
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-0.6, 3.6, 421); y = np.linspace(-1.8, 1.8, 361)
X, Y = np.meshgrid(x, y)
def resnorm(M):
    Z = np.empty_like(X)
    for i in range(X.shape[0]):
        for j in range(X.shape[1]):
            lam = X[i, j] + 1j*Y[i, j]
            Z[i, j] = 1 / np.linalg.svd(M - lam*np.eye(2), compute_uv=False)[-1]
    return Z
D = np.diag([1.0, 2.0]); B = np.array([[1.0, 4.0], [0.0, 2.0]])
ZD, ZB = resnorm(D), resnorm(B)
lam = 1.5
assert abs(1/np.linalg.svd(D - lam*np.eye(2), compute_uv=False)[-1] - 2) < 1e-12
assert 1/np.linalg.svd(B - lam*np.eye(2), compute_uv=False)[-1] > 16
fig, axes = plt.subplots(1, 2, figsize=(10, 3.9))
for ax, Z, title in [(axes[0], ZD, r"$\mathrm{diag}(1, 2)$"), (axes[1], ZB, r"$\mathbf{B} = [[1, 4], [0, 2]]$")]:
    cs = ax.contour(X, Y, Z, levels=[2, 4, 10], colors=[ACCENT, EXERCISE, STATEMENT], linewidths=1.4)
    ax.plot([1, 2], [0, 0], "o", color=INK, ms=4)
    ax.set_aspect("equal"); ax.set_title(title, fontsize=11)
    ax.set_xlabel(r"$\mathrm{Re}\,\lambda$")
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
axes[0].set_ylabel(r"$\mathrm{Im}\,\lambda$")
axes[1].plot([], [], color=ACCENT, label="2"); axes[1].plot([], [], color=EXERCISE, label="4"); axes[1].plot([], [], color=STATEMENT, label="10")
axes[1].legend(title=r"$\|R_\lambda\|$", frameon=False, loc="center left", bbox_to_anchor=(1.0, 0.5))
fig.tight_layout()
save_matplotlib(fig, "fa2-resolvent-norm")
