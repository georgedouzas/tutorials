# Nested closed balls K_1 > K_2 > K_3 > K_4 in the plane; K_n avoids the closed nowhere dense set A_n
# (A_1: the line y = 0.2; A_2: the line x + y = 4.6; A_3: a circle; A_4: the line y = 2), and the centres x_n converge.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Circle

balls = [((2.0, 2.0), 1.5), ((1.6, 1.7), 0.7), ((1.35, 1.95), 0.3), ((1.30, 1.80), 0.12)]
circ_c, circ_r = np.array([2.2, 1.0]), 0.8
dist = [lambda p: abs(p[1] - 0.2), lambda p: abs(p[0] + p[1] - 4.6) / np.sqrt(2),
        lambda p: abs(np.linalg.norm(np.array(p) - circ_c) - circ_r), lambda p: abs(p[1] - 2.0)]
for k, ((c0, r0), dk) in enumerate(zip(balls, dist)):
    assert dk(c0) > r0                                  # K_k misses A_k
    if k:
        (c1, r1) = balls[k - 1]
        assert np.linalg.norm(np.array(c0) - np.array(c1)) + r0 < r1   # K_k inside K_{k-1}

fig, ax = plt.subplots(figsize=(5.2, 4.6))
x = np.linspace(-0.2, 4.2, 10)
ax.plot(x, 0.2 + 0 * x, color=MUTED, lw=1.1); ax.text(3.75, 0.27, "$A_1$", color=MUTED)
ax.plot(x, 4.6 - x, color=MUTED, lw=1.1); ax.text(3.3, 1.38, "$A_2$", color=MUTED)
th = np.linspace(0, 2 * np.pi, 400)
ax.plot(circ_c[0] + circ_r * np.cos(th), circ_c[1] + circ_r * np.sin(th), color=MUTED, lw=1.1)
ax.text(2.75, 0.35, "$A_3$", color=MUTED)
ax.plot(x, 2.0 + 0 * x, color=MUTED, lw=1.1, ls="--"); ax.text(3.75, 2.07, "$A_4$", color=MUTED)
for k, ((c0, r0), col) in enumerate(zip(balls, (ACCENT, EXAMPLE, EXERCISE, STATEMENT))):
    ax.add_patch(Circle(c0, r0, facecolor=col, alpha=0.12, edgecolor=col, lw=1.3))
    ax.plot([c0[0]], [c0[1]], "o", color=col, ms=3)
offs = [(0.08, 0.1), (0.07, -0.22), (-0.32, 0.25), (-0.38, -0.12)]
for k, ((c0, r0), o) in enumerate(zip(balls, offs)):
    ax.annotate(f"$x_{k + 1}$", c0, xytext=(c0[0] + o[0], c0[1] + o[1]), fontsize=10)
ax.set_aspect("equal"); ax.set_xlim(-0.2, 4.2); ax.set_ylim(-0.1, 3.8)
ax.set_xticks([]); ax.set_yticks([])
for side in ("top", "right", "left", "bottom"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "fa2-baire-balls")
