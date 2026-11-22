# Phase portrait of the damped pendulum theta'' + 0.3 theta' + sin theta = 0 as the system
# (theta, omega)' = (omega, -sin theta - 0.3 omega): normalised vector field (grey), six numerical solutions (blue),
# stable equilibria (2 pi k, 0) (green) and unstable equilibria (pi + 2 pi k, 0) (red).
# Interactive: the same picture as Plotly traces.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

th, om = var("th om")
gam = 0.3
F = [om, -sin(th) - gam * om]
J = jacobian(vector(F), [th, om])
assert all(e.real() < 0 for e in J.subs(th=0, om=0).change_ring(CDF).eigenvalues())     # (0, 0) is stable
assert any(e.real() > 0 for e in J.subs(th=pi, om=0).change_ring(CDF).eigenvalues())    # (pi, 0) is unstable
ts = srange(0, 40, 0.02)
starts = [(-7.0, 2.6), (-3.0, 2.9), (0.0, 2.6), (2.0, -2.8), (6.5, -2.4), (-6.0, -1.0)]
sols = [desolve_odeint(F, list(s0), ts, [th, om]) for s0 in starts]

gx = np.arange(-7, 7.01, 1.0); gy = np.arange(-3, 3.01, 0.5)
segs = []
for a in gx:
    for b in gy:
        u, v = b, -math.sin(a) - gam * b
        n = math.hypot(u, v)
        if n > 1e-9:
            L = 0.35
            segs.append(([a, a + L * u / n], [b, b + L * v / n]))
fig, ax = plt.subplots(figsize=(8.0, 3.8))
for sx, sy in segs:
    ax.annotate("", xy=(sx[1], sy[1]), xytext=(sx[0], sy[0]), arrowprops=dict(arrowstyle="-|>", color="#b4bac3", lw=0.8, mutation_scale=7))
def clipped(S):          # points outside the frame become gaps, so no line joins an exit to a re-entry
    S = np.array(S, dtype=float)
    S[~((np.abs(S[:, 0]) < 7.6) & (np.abs(S[:, 1]) < 3.4))] = np.nan
    return S
for S in sols:
    C = clipped(S)
    ax.plot(C[:, 0], C[:, 1], color=ACCENT, lw=1.3)
for k in range(-1, 2):
    ax.plot([2 * math.pi * k], [0], "o", color=EXAMPLE, ms=6, zorder=5)
for k in (-1, 0):
    ax.plot([math.pi + 2 * math.pi * k], [0], "o", color=STATEMENT, ms=6, zorder=5)
ax.set_xlim(-7.5, 7.5); ax.set_ylim(-3.3, 3.3)
ax.set_xlabel(r"$\theta$"); ax.set_ylabel(r"$\omega$")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ode_phase_portrait")

fx, fy = [], []
for sx, sy in segs:
    fx += [float(sx[0]), float(sx[1]), None]; fy += [float(sy[0]), float(sy[1]), None]
traces = [dict(type="scatter", mode="lines", x=fx, y=fy, line=dict(color=MUTED, width=1), name="vector field", hoverinfo="skip")]
for i, S in enumerate(sols):
    C = clipped(S)
    traces.append(dict(type="scatter", mode="lines", x=[None if math.isnan(a) else float(a) for a in C[:, 0]],
                       y=[None if math.isnan(b) else float(b) for b in C[:, 1]], line=dict(color=ACCENT, width=2), name="solution %d" % (i + 1)))
traces.append(dict(type="scatter", mode="markers", x=[2 * math.pi * k for k in range(-1, 2)], y=[0, 0, 0], marker=dict(color=EXAMPLE, size=9), name="stable"))
traces.append(dict(type="scatter", mode="markers", x=[-math.pi, math.pi], y=[0, 0], marker=dict(color=STATEMENT, size=9), name="unstable"))
save_plotly(traces, "ode_phase_portrait", dict(xaxis=dict(range=[-7.5, 7.5], title="theta"), yaxis=dict(range=[-3.3, 3.3], title="omega")))
