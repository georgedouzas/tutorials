# The Jacobian determinant of the polar map Phi(r, phi) = (r cos phi, r sin phi) as an area factor: two coordinate
# rectangles of equal area delta * eps in the (r, phi) plane (left) and their images, annular sectors (right), whose
# areas (r0 + delta/2) * delta * eps grow with r, since det J_Phi = r.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

var("r ph")
J = jacobian(vector([r * cos(ph), r * sin(ph)]), (r, ph))
assert J.det().simplify_full() == r

delta, eps = 0.4, 0.4
rects = [(0.8, 0.5, ACCENT), (2.2, 1.7, STATEMENT)]     # (r0, phi0, colour)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8.4, 3.8))
for r0, p0, col in rects:
    ax1.add_patch(plt.Rectangle((r0, p0), delta, eps, color=col, alpha=0.55, lw=0))
    ax1.text(r0 + delta / 2, p0 - 0.17, f"area ${delta * eps:.2f}$", ha="center", va="top", color=col, fontsize=10)
    rr, pp = np.meshgrid(np.linspace(r0, r0 + delta, 30), np.linspace(p0, p0 + eps, 30))
    sector_r = np.concatenate([np.linspace(r0, r0 + delta, 20), np.full(30, r0 + delta), np.linspace(r0 + delta, r0, 20), np.full(30, r0)])
    sector_p = np.concatenate([np.full(20, p0), np.linspace(p0, p0 + eps, 30), np.full(20, p0 + eps), np.linspace(p0 + eps, p0, 30)])
    ax2.fill(sector_r * np.cos(sector_p), sector_r * np.sin(sector_p), color=col, alpha=0.55, lw=0)
    area = float((r0 + delta / 2) * delta * eps)
    rm, pm = r0 + delta + 0.15, p0 + eps / 2
    ax2.text(rm * np.cos(pm), rm * np.sin(pm), f"area ${area:.2f}$", color=col, fontsize=10,
             ha=("left" if np.cos(pm) > 0 else "right"), va="center")
ax1.set_xlim(0, 3.1); ax1.set_ylim(0, 2.6); ax1.set_xlabel("$r$"); ax1.set_ylabel(r"$\varphi$")
ax1.spines[["top", "right"]].set_visible(False)
th = np.linspace(0, 2 * np.pi, 200)
for c in (1, 2):
    ax2.plot(c * np.cos(th), c * np.sin(th), color=GRID, lw=0.8)
ax2.axhline(0, color=MUTED, lw=0.6); ax2.axvline(0, color=MUTED, lw=0.6)
ax2.set_aspect("equal"); ax2.set_xlim(-3.6, 3.3); ax2.set_ylim(-2.2, 3.3); ax2.axis("off")
ax2.text(3.2, -0.15, "$x$", color=MUTED, ha="right", va="top"); ax2.text(0.08, 3.2, "$y$", color=MUTED, va="top")
ax1.set_title(r"the $(r, \varphi)$ plane", fontsize=11, color=INK)
ax2.set_title(r"the $(x, y)$ plane", fontsize=11, color=INK)
fig.tight_layout()
save_matplotlib(fig, "jacobian_polar")
