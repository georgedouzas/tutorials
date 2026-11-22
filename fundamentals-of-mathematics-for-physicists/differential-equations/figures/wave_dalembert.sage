# Solutions of u_tt - u_xx = 0 (c = 1). Left: d'Alembert's solution u = [f(x - t) + f(x + t)]/2 for the Gaussian
# f = exp(-x^2) released from rest, at t = 0, 1, 2, 3. Right: the standing wave sin(2x) cos(2t) on [0, pi] at t = 0, 0.3, 0.6, 1.2, with its nodes 0, pi/2, pi marked.
# Interactive: both solutions with a slider in t (Plotly restyle steps).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t, x = var("t x")
dal = (exp(-(x - t)^2) + exp(-(x + t)^2)) / 2
stand = sin(2 * x) * cos(2 * t)
for u in (dal, stand):                     # both solve the wave equation
    assert bool((diff(u, t, 2) - diff(u, x, 2)).simplify_full() == 0)
assert bool(dal.subs(t=0) == exp(-x^2)) and bool(diff(dal, t).subs(t=0) == 0)

xs = np.linspace(-6, 6, 601)
xp = np.linspace(0, float(pi), 301)
D = lambda tt: 0.5 * (np.exp(-(xs - tt)**2) + np.exp(-(xs + tt)**2))
W = lambda tt: np.sin(2 * xp) * np.cos(2 * tt)

fig, (a1, a2) = plt.subplots(1, 2, figsize=(9.6, 3.4))
for tt, col in zip([0, 1, 2, 3], [ACCENT, STATEMENT, EXAMPLE, EXERCISE]):
    a1.plot(xs, D(tt), color=col, lw=1.5, label="$t = %d$" % tt)
a1.set_xlim(-6, 6); a1.set_ylim(-0.05, 1.1); a1.set_xlabel("$x$"); a1.set_ylabel("$u$")
a1.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.2), ncol=4, fontsize=9)
for tt, col in zip([0, 0.3, 0.6, 1.2], [ACCENT, STATEMENT, EXAMPLE, EXERCISE]):
    a2.plot(xp, W(tt), color=col, lw=1.5, label="$t = %.1f$" % tt)
a2.plot([0, float(pi) / 2, float(pi)], [0, 0, 0], "o", color=INK, ms=4)
a2.axhline(0, color=GRID, lw=0.8)
a2.set_xlim(0, float(pi)); a2.set_ylim(-1.15, 1.15)
a2.set_xticks([0, float(pi) / 2, float(pi)]); a2.set_xticklabels(["$0$", r"$\pi/2$", r"$\pi$"])
a2.set_xlabel("$x$")
a2.legend(frameon=False, loc="upper center", bbox_to_anchor=(0.5, 1.2), ncol=4, fontsize=9)
for a in (a1, a2):
    a.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "wave_dalembert")

times = [k / 10 for k in range(0, 31)]
traces = [dict(type="scatter", mode="lines", x=floats(xs), y=floats(D(0)), line=dict(color=ACCENT, width=2),
               name="d'Alembert: [f(x - t) + f(x + t)]/2"),
          dict(type="scatter", mode="lines", x=floats(xp), y=floats(W(0)), line=dict(color=STATEMENT, width=2),
               name="standing wave sin 2x cos 2t")]
steps = [dict(method="restyle", label="%.1f" % tt, args=[{"y": [floats(D(tt)), floats(W(tt))]}]) for tt in times]
layout = dict(xaxis=dict(range=[-6, 6], title="x"), yaxis=dict(range=[-1.15, 1.15], title="u"),
              sliders=[dict(active=0, currentvalue=dict(prefix="t = "), steps=steps, pad=dict(t=40))],
              margin=dict(l=40, r=10, t=10, b=80))
save_plotly(traces, "wave_dalembert", layout)
