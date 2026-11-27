load("../../_filters/figstyle.sage")
# Eigenvalues -(m + alpha)/r of i d/dy on the circle of radius r = 1 with twist alpha, and (interactive version)
# the smallest |lambda| on the square torus T^2 with twists (alpha, alpha).
import matplotlib.pyplot as plt
import numpy as np

al = np.linspace(0, 1, 201)
fig, ax = plt.subplots(figsize=(5.6, 3.8))
ax.axhline(0, color=GRID, lw=0.8)
for m in range(-3, 3):
    ax.plot(al, -(m + al), color=ACCENT, lw=1.6)
ax.axvline(0.5, color=STATEMENT, ls="--", lw=1.4)
ax.annotate("antiperiodic", (0.52, 2.6), color=STATEMENT, fontsize=10)
ax.plot([0], [0], "o", color=INK); ax.annotate("zero mode (periodic)", (0.03, 0.2), fontsize=10, color=INK)
ax.set_xlim(0, 1); ax.set_ylim(-3, 3)
ax.set_xlabel(r"twist $\alpha$"); ax.set_ylabel(r"eigenvalue $\lambda r$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
fig.tight_layout()
print("eigenvalues at alpha = 1/2:", sorted(float(-(m + 0.5)) for m in range(-3, 3)))
save_matplotlib(fig, "sd-torus-spectra")
alf = [float(a) for a in np.linspace(0, 1, 101)]
traces = [{"x": alf, "y": [float(-(m + a)) for a in alf], "mode": "lines", "name": "circle, m = %d" % m, "line": {"color": ACCENT}} for m in range(-3, 3)]
gap = [float(min(np.hypot(m1 + a, m2 + a) for m1 in range(-3, 3) for m2 in range(-3, 3))) for a in alf]
traces.append({"x": alf, "y": gap, "mode": "lines", "name": "square torus, smallest |lambda|", "line": {"color": STATEMENT, "dash": "dash"}})
save_plotly(traces, "sd-torus-spectra", {"xaxis": {"title": "twist alpha"}, "yaxis": {"title": "eigenvalue times r"}})
