# The Coulomb potential -1/(4 pi r) and the Yukawa functions -exp(-m r)/(4 pi r) for m = 1, 2 (prp-greens-laplacian),
# drawn with the same sign. Checked: both are radial solutions of their equations for r > 0.
# Interactive: the same curves as a Plotly figure.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

r, m = var("r m")
assume(r > 0, m > 0)
radlap = lambda u: diff(u, r, 2) + 2 / r * diff(u, r)
assert radlap(-1 / (4 * pi * r)).simplify_full() == 0
Y = -exp(-m * r) / (4 * pi * r)
assert (radlap(Y) - m^2 * Y).simplify_full() == 0
rs = np.linspace(0.05, 4, 800)
curves = [(0, INK, "$m = 0$ (Coulomb)"), (1, ACCENT, "$m = 1$"), (2, STATEMENT, "$m = 2$")]
fig, ax = plt.subplots(figsize=(5.6, 3.4))
for mm, col, lab in curves:
    ax.plot(rs, -np.exp(-mm * rs) / (4 * np.pi * rs), color=col, lw=1.5, label=lab)
ax.axhline(0, color=GRID, lw=0.8)
ax.set_xlim(0, 4); ax.set_ylim(-0.6, 0.02)
ax.set_xlabel("$r$"); ax.set_ylabel(r"$-e^{-mr}/(4\pi r)$")
ax.legend(frameon=False, loc="lower right")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "greens_function_laplacian")
traces = [dict(type="scatter", mode="lines", x=floats(rs), y=floats(-np.exp(-mm * rs) / (4 * np.pi * rs)), name="m = %d" % mm,
               line=dict(color=col)) for mm, col, lab in curves]
save_plotly(traces, "greens_function_laplacian", dict(xaxis=dict(title="r"), yaxis=dict(title="-exp(-mr)/(4 pi r)", range=[-0.6, 0.02])))
