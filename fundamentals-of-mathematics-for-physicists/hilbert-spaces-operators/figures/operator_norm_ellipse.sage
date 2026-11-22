# Unit circle of R^2 and its images under A = [[2, 1], [0, 1]] (an ellipse with semi-axes the singular values
# (sqrt 5 +- 1)/sqrt 2), under the rotation R by 45 degrees (the circle) and under the orthogonal projection P onto the
# diagonal (a segment of half-length 1). The longest semi-axis is the operator norm.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 2*np.pi, 721)
circle = np.vstack([np.cos(t), np.sin(t)])
A = np.array([[2.0, 1.0], [0.0, 1.0]])
c = np.cos(np.pi/4)
R = np.array([[c, -c], [c, c]])
P = 0.5*np.array([[1.0, 1.0], [1.0, 1.0]])
U, S, Vt = np.linalg.svd(A)
assert abs(S[0] - (np.sqrt(5) + 1)/np.sqrt(2)) < 1e-12 and abs(S[1] - (np.sqrt(5) - 1)/np.sqrt(2)) < 1e-12
assert abs(S[0]*S[1] - 2) < 1e-12

fig, axs = plt.subplots(1, 3, figsize=(10, 3.6))
for ax, M, name, norm in zip(axs, (A, R, P), (r"$\mathbf{A}$", r"$\mathbf{R}$", r"$\mathbf{P}$"), (S[0], 1.0, 1.0)):
    ax.plot(circle[0], circle[1], color=MUTED, lw=1.0, ls="--")
    img = M @ circle
    ax.plot(img[0], img[1], color=ACCENT, lw=1.6)
    if M is A:
        v = Vt[0]; w = A @ v
        ax.annotate("", xy=w, xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=STATEMENT, lw=1.3))
        ax.text(0.9, 1.3, r"$\sigma_1 \approx %.2f$" % S[0], color=STATEMENT, fontsize=11)
        w2 = A @ Vt[1]
        ax.annotate("", xy=w2, xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=EXAMPLE, lw=1.3))
        ax.text(-2.55, 1.3, r"$\sigma_2 \approx %.2f$" % S[1], color=EXAMPLE, fontsize=11)
    else:
        ax.plot([c, -c] if M is P else [], [c, -c] if M is P else [], "o", color=STATEMENT, ms=4)
    ax.set_title(name + r", norm $%.2f$" % norm, fontsize=11)
    ax.set_aspect("equal"); ax.set_xlim(-2.6, 2.6); ax.set_ylim(-1.8, 1.8)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "operator_norm_ellipse")
