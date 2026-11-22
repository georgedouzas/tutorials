# Left: cos(n theta), sin(n theta), n = 1, 2, 3, the eigenfunctions of the Laplacian on the unit circle.
# Right: spectra of -Delta on the unit circle (n^2, multiplicity 2), the unit sphere (l(l+1), multiplicity 2l+1) and the
# square torus (m^2 + n^2, multiplicity r_2), bar height = multiplicity. Also an interactive version of the three spectra.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np
from collections import Counter

th = np.linspace(0, 2 * np.pi, 400)
circ = [(n * n, 1 if n == 0 else 2) for n in range(0, 8)]
sph = [(l * (l + 1), 2 * l + 1) for l in range(0, 8)]
cnt = Counter(m * m + n * n for m in range(-8, 9) for n in range(-8, 9))
tor = sorted((N, r) for N, r in cnt.items() if N <= 56)
fig = plt.figure(figsize=(10, 4.2))
gl = fig.add_gridspec(3, 2, width_ratios=[1, 1.4])
ax0 = fig.add_subplot(gl[:, 0])
for n, col in zip([1, 2, 3], [ACCENT, STATEMENT, EXAMPLE]):
    ax0.plot(th, np.cos(n * th), color=col, lw=1.5, label=r"$n = %d$" % n)
    ax0.plot(th, np.sin(n * th), color=col, lw=1.0, ls="--")
ax0.set_xticks([0, np.pi, 2 * np.pi]); ax0.set_xticklabels([r"$0$", r"$\pi$", r"$2\pi$"]); ax0.set_xlabel(r"$\theta$")
ax0.set_ylim(-1.1, 1.6); ax0.legend(loc="upper center", fontsize=8, ncol=3, frameon=False)
for i, (data, name, col) in enumerate([(circ, "circle", ACCENT), (sph, "sphere", STATEMENT), (tor, "torus", EXAMPLE)]):
    ax = fig.add_subplot(gl[i, 1])
    ax.bar([d[0] for d in data], [d[1] for d in data], width=0.9, color=col)
    ax.set_ylabel(name, fontsize=9, color=col)
    ax.set_xlim(-1, 58)
    if i < 2: ax.set_xticklabels([])
    else: ax.set_xlabel(r"eigenvalue")
for a in fig.axes:
    for side in ("top", "right"):
        a.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplacian_spectra")
traces = [{"type": "bar", "x": [d[0] for d in data], "y": [d[1] for d in data], "name": name, "marker": {"color": col},
           "text": ["eigenvalue %d, multiplicity %d" % d for d in data], "hoverinfo": "text", "width": 0.6}
          for data, name, col in [(circ, "circle: n^2", ACCENT), (sph, "sphere: l(l+1)", STATEMENT), (tor, "torus: m^2 + n^2", EXAMPLE)]]
save_plotly(traces, "laplacian_spectra", {"barmode": "group", "xaxis": {"title": "eigenvalue"}, "yaxis": {"title": "multiplicity"}})
