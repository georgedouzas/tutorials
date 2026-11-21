# Left: z = 2 + i, its conjugate, its modulus sqrt(5) and argument, and the six sixth roots of unity on the unit circle.
# Right: the principal argument Arg z in (-pi, pi], which jumps by 2 pi across the cut along the negative real axis.
# Interactive: the sixth roots of unity and the powers w^k of w = 0.9 e^(0.5 i), with modulus and argument on hover.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

z = CDF(2, 1)
roots = [CDF(exp(2 * pi * I * k / 6)) for k in range(6)]
assert abs(sum(roots)) < 1e-12 and abs(abs(z) - sqrt(5.0)) < 1e-12

fig, (ax, bx) = plt.subplots(1, 2, figsize=(9.2, 4.0))
# left panel
t = np.linspace(0, 2 * np.pi, 400)
ax.plot(np.cos(t), np.sin(t), color=GRID, lw=1.0, ls=(0, (4, 3)))
ax.axhline(0, color=MUTED, lw=0.7); ax.axvline(0, color=MUTED, lw=0.7)
ax.plot([r.real() for r in roots], [r.imag() for r in roots], "o", color=INK, ms=5)
ax.annotate("", xy=(2, 1), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.6))
ax.annotate("", xy=(2, -1), xytext=(0, 0), arrowprops=dict(arrowstyle="-|>", color=STATEMENT, lw=1.6))
th = float(arctan(1 / 2))
a = np.linspace(0, th, 40)
ax.plot(0.55 * np.cos(a), 0.55 * np.sin(a), color=EXAMPLE, lw=1.4)
ax.text(0.62, 0.08, r"$\theta$", color=EXAMPLE, fontsize=12)
ax.text(2.06, 1.08, r"$z = 2 + i$", color=ACCENT, fontsize=11)
ax.text(2.06, -1.25, r"$z^* = 2 - i$", color=STATEMENT, fontsize=11)
ax.text(0.95, 0.72, r"$|z| = \sqrt{5}$", color=ACCENT, fontsize=11, rotation=26.6)
ax.text(-1.55, -1.5, "sixth roots of unity", color=INK, fontsize=10)
ax.set_xlim(-1.7, 3.2); ax.set_ylim(-1.7, 1.7); ax.set_aspect("equal"); ax.axis("off")
# right panel
xs = np.linspace(-2, 2, 401)
X, Y = np.meshgrid(xs, xs)
A = np.arctan2(Y, X)
im = bx.imshow(A, extent=(-2, 2, -2, 2), origin="lower", cmap="twilight", vmin=-np.pi, vmax=np.pi)
bx.plot([-2, 0], [0, 0], color=INK, lw=2.0, ls=(0, (5, 3)))
bx.text(-1.85, 0.15, "cut", color=INK, fontsize=11)
cb = fig.colorbar(im, ax=bx, fraction=0.046, pad=0.04, ticks=[-np.pi, 0, np.pi])
cb.ax.set_yticklabels([r"$-\pi$", r"$0$", r"$\pi$"])
bx.set_title(r"$\operatorname{Arg} z$", fontsize=12)
bx.set_xticks([-2, 0, 2]); bx.set_yticks([-2, 0, 2])
bx.set_xlabel(r"$\operatorname{Re} z$"); bx.set_ylabel(r"$\operatorname{Im} z$")
fig.tight_layout()
save_matplotlib(fig, "complex_plane")

w = CDF(0.9 * cos(0.5), 0.9 * sin(0.5))
pw = [w ^ k for k in range(13)]
ts = [2 * pi.n() * k / 240 for k in range(241)]
traces = [
    {"x": [float(cos(s)) for s in ts], "y": [float(sin(s)) for s in ts], "mode": "lines", "line": {"color": GRID},
     "name": "unit circle", "hoverinfo": "skip"},
    {"x": [float(r.real()) for r in roots], "y": [float(r.imag()) for r in roots], "mode": "markers+text",
     "marker": {"color": INK, "size": 9}, "text": ["k = %d" % k for k in range(6)], "textposition": "top center",
     "name": "sixth roots of unity", "hovertemplate": "root k: |w| = 1<extra></extra>"},
    {"x": [float(p.real()) for p in pw], "y": [float(p.imag()) for p in pw], "mode": "lines+markers",
     "line": {"color": ACCENT}, "marker": {"size": 7}, "name": "powers w^k of w = 0.9 e^(0.5 i)",
     "customdata": [[k, float(abs(p)), float(p.arg())] for k, p in enumerate(pw)],
     "hovertemplate": "w^%{customdata[0]}: |w^k| = %{customdata[1]:.3f}, arg = %{customdata[2]:.3f}<extra></extra>"},
]
save_plotly(traces, "complex_plane", {"xaxis": {"scaleanchor": "y", "range": [-1.5, 1.5], "title": "Re z"},
                                      "yaxis": {"range": [-1.3, 1.3], "title": "Im z"}, "legend": {"orientation": "h"},
                                      "margin": {"l": 50, "r": 20, "t": 30, "b": 50}})
