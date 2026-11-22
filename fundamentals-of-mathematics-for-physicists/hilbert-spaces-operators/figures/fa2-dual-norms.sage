# Unit balls of |.|_3 and of the dual norm |.|_{3/2} on R^2; the line phi = 1 for phi(z) = y.z with
# y = (1, 4)/|(1, 4)|_{3/2} touches the |.|_3 ball at x = (1, 2)/|(1, 2)|_3.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 2*np.pi, 4001)
c, s = np.cos(t), np.sin(t)


def sphere(p):
    r = (abs(c)**p + abs(s)**p)**(-1/p)
    return r*c, r*s


x = np.array([1.0, 2.0]); x /= np.linalg.norm(x, 3)
y = np.array([1.0, 4.0]); y /= np.linalg.norm(y, 1.5)
assert abs(y @ x - 1) < 1e-12
fig, ax = plt.subplots(figsize=(4.8, 4.6))
X3, Y3 = sphere(3); X32, Y32 = sphere(1.5)
ax.plot(X3, Y3, color=ACCENT, lw=1.4, label=r"$\|\mathbf{z}\|_3 = 1$")
ax.plot(X32, Y32, color=ORANGE, lw=1.4, label=r"$\|\mathbf{z}\|_{3/2} = 1$")
u = np.linspace(-1.4, 1.6, 10)
ax.plot(u, (1 - y[0]*u)/y[1], color=STATEMENT, ls="--", lw=1.0, label=r"$\varphi(\mathbf{z}) = 1$")
ax.plot([x[0]], [x[1]], "o", color=STATEMENT, ms=5)
ax.annotate(r"$\mathbf{x}$", (x[0], x[1]), xytext=(x[0] + 0.12, x[1] + 0.08), fontsize=11)
ax.plot([0, y[0]], [0, y[1]], color=EXAMPLE, lw=1.2); ax.plot([y[0]], [y[1]], "o", color=EXAMPLE, ms=4)
ax.annotate(r"$\mathbf{y}$", (y[0], y[1]), xytext=(y[0] - 0.02, y[1] - 0.3), fontsize=11)
ax.axhline(0, color=GRID, lw=0.6); ax.axvline(0, color=GRID, lw=0.6)
ax.set_aspect("equal"); ax.set_xlim(-1.4, 1.6); ax.set_ylim(-1.4, 1.6)
ax.legend(fontsize=9, frameon=False, loc="lower left")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-dual-norms")
