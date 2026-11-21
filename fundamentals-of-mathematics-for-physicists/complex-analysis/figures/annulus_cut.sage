# The annulus r < |z| < R (shaded), the circles C(0, rho_1) and C(0, rho_2) inside it, and the region between them cut
# into polar rectangles. One piece is highlighted with its boundary and its orientation; it lies in a disc inside the
# annulus.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r, R, r1, r2 = 0.8, 2.6, 1.2, 2.2
N, M = 3, 12
fig, ax = plt.subplots(figsize=(4.6, 4.6))
t = np.linspace(0, 2 * np.pi, 400)
ax.add_patch(plt.Circle((0, 0), R, color=ACCENT, alpha=0.08, lw=0))
ax.add_patch(plt.Circle((0, 0), r, color="white", lw=0))
ax.plot(R * np.cos(t), R * np.sin(t), color=MUTED, lw=0.8, ls="--")
ax.plot(r * np.cos(t), r * np.sin(t), color=MUTED, lw=0.8, ls="--")
for j in range(N + 1):
    s = r1 + j * (r2 - r1) / N
    ax.plot(s * np.cos(t), s * np.sin(t), color=GRID if 0 < j < N else ACCENT, lw=0.8 if 0 < j < N else 1.6)
for k in range(M):
    a = 2 * np.pi * k / M
    ax.plot([r1 * np.cos(a), r2 * np.cos(a)], [r1 * np.sin(a), r2 * np.sin(a)], color=GRID, lw=0.8)
# highlighted piece: j = 2 (middle ring), k = 1
s0, s1 = r1 + (r2 - r1) / N, r1 + 2 * (r2 - r1) / N
a0, a1 = 2 * np.pi / M, 4 * np.pi / M
u = np.linspace(a0, a1, 50)
xs = np.concatenate([s0 * np.cos(u), s1 * np.cos(u[::-1])]); ys = np.concatenate([s0 * np.sin(u), s1 * np.sin(u[::-1])])
ax.fill(xs, ys, color=STATEMENT, alpha=0.25, lw=0)
ax.plot(np.append(xs, xs[0]), np.append(ys, ys[0]), color=STATEMENT, lw=1.6)
def arrow(p, q, c):
    ax.annotate("", xy=q, xytext=p, arrowprops=dict(arrowstyle="-|>", color=c, lw=1.4))
am = 0.5 * (a0 + a1)
arrow((s1 * np.cos(am + 0.02), s1 * np.sin(am + 0.02)), (s1 * np.cos(am + 0.08), s1 * np.sin(am + 0.08)), STATEMENT)
arrow((s0 * np.cos(am + 0.02), s0 * np.sin(am + 0.02)), (s0 * np.cos(am - 0.05), s0 * np.sin(am - 0.05)), STATEMENT)
arrow((2.2 * np.cos(-0.9), 2.2 * np.sin(-0.9)), (2.2 * np.cos(-0.8), 2.2 * np.sin(-0.8)), ACCENT)
arrow((1.2 * np.cos(-0.8), 1.2 * np.sin(-0.8)), (1.2 * np.cos(-0.9), 1.2 * np.sin(-0.9)), ACCENT)
pc = ((s0 + s1) / 2 * np.cos(am), (s0 + s1) / 2 * np.sin(am))
ax.add_patch(plt.Circle(pc, 0.5, fill=False, color=STATEMENT, lw=0.9, ls=":"))
ax.plot([0], [0], "o", color=INK, ms=3); ax.text(0.08, -0.22, r"$z_0$", color=INK)
ax.text(-2.15, -2.35, r"$C(z_0, \rho_2)$", color=ACCENT)
ax.text(-0.55, -1.05, r"$C(z_0, \rho_1)$", color=ACCENT, fontsize=10)
ax.text(1.75, 2.15, r"$R$", color=MUTED); ax.text(0.2, 0.45, r"$r$", color=MUTED)
ax.set_xlim(-2.8, 2.8); ax.set_ylim(-2.8, 2.8); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "annulus_cut")
