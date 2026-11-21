# Left: domain colouring of f(z) = (z - 1)/(z^2 + 1) on [-2.2, 2.2]^2, hue = Arg f, brightness increasing with |f|;
# the zero z = 1 and the points z = +-i, where the denominator vanishes, are marked.
# Right: the images under z -> z^2 of the grid lines Re z = c and Im z = c, c = -1.5, -1.25, ..., 1.5.
# Interactive: the same grid images with the point z and its image z^2 on hover.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.colors import hsv_to_rgb
import numpy as np

f = lambda z: (z - 1) / (z**2 + 1)
# checks: f(1) = 0 and the denominator vanishes at +-i
assert f(1) == 0 and abs(CDF(0, 1)**2 + 1) < 1e-12

n = 600
xs = np.linspace(-2.2, 2.2, n)
X, Y = np.meshgrid(xs, xs)
Z = X + 1j * Y
with np.errstate(divide="ignore", invalid="ignore"):
    W = f(Z)
H = (np.angle(W) / (2 * np.pi)) % 1.0
A = np.abs(W)
V = 0.25 + 0.75 * (A**0.4 / (1 + A**0.4))
rgb = hsv_to_rgb(np.dstack([H, 0.9 * np.ones_like(H), V]))

fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.6, 4.4))
ax.imshow(rgb, extent=(-2.2, 2.2, -2.2, 2.2), origin="lower", interpolation="bilinear")
for p, lab, dx in ((complex(1, 0), r"$z = 1$", 0.12), (complex(0, 1), r"$z = i$", 0.14), (complex(0, -1), r"$z = -i$", 0.14)):
    ax.plot(p.real, p.imag, "o", ms=6, mfc="white", mec=INK, mew=1.2)
    ax.annotate(lab, (p.real, p.imag), xytext=(p.real + dx, p.imag + 0.18), color="white", fontsize=11,
                bbox=dict(boxstyle="round,pad=0.15", fc=INK, ec="none", alpha=0.75))
ax.set_xticks([-2, -1, 0, 1, 2]); ax.set_yticks([-2, -1, 0, 1, 2])
ax.set_xlabel(r"$\operatorname{Re} z$"); ax.set_ylabel(r"$\operatorname{Im} z$")
ax.set_title(r"$f(z) = (z - 1)/(z^2 + 1)$", fontsize=11)

cs = [k / 4 for k in range(-6, 7)]
t = np.linspace(-1.5, 1.5, 200)
for c in cs:
    w1 = (c + 1j * t) ** 2          # image of Re z = c
    w2 = (t + 1j * c) ** 2          # image of Im z = c
    bx.plot(w1.real, w1.imag, color=ACCENT, lw=0.9)
    bx.plot(w2.real, w2.imag, color=STATEMENT, lw=0.9)
bx.set_aspect("equal"); bx.set_xlim(-2.4, 2.4); bx.set_ylim(-4.7, 4.7)
bx.set_xlabel(r"$\operatorname{Re} z^2$"); bx.set_ylabel(r"$\operatorname{Im} z^2$")
bx.set_title(r"images of $\operatorname{Re} z = c$ (blue) and $\operatorname{Im} z = c$ (red)", fontsize=11)
for side in ("top", "right"):
    bx.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "domain_colouring")

traces = []
ts = [k / 40 * 1.5 for k in range(-40, 41)]
for j, c in enumerate(cs):
    for kind, col, name in (("re", ACCENT, "image of Re z = c"), ("im", STATEMENT, "image of Im z = c")):
        pts = [CDF(c, s) if kind == "re" else CDF(s, c) for s in ts]
        img = [p**2 for p in pts]
        traces.append({"x": floats([q.real() for q in img]), "y": floats([q.imag() for q in img]), "mode": "lines",
                       "line": {"color": col, "width": 1.2}, "name": name, "legendgroup": kind,
                       "showlegend": j == 0, "customdata": [[float(p.real()), float(p.imag())] for p in pts],
                       "hovertemplate": "z = %{customdata[0]:.2f} + %{customdata[1]:.2f} i<br>z^2 = %{x:.2f} + %{y:.2f} i<extra></extra>"})
save_plotly(traces, "domain_colouring", {"xaxis": {"scaleanchor": "y", "title": "Re z^2"}, "yaxis": {"title": "Im z^2"},
                                          "legend": {"orientation": "h"}, "margin": {"l": 50, "r": 20, "t": 30, "b": 50}})
