# The flow x(t) = exp(tA) x(0) of two planar linear systems.
# Left: the spiral sink A = [[0, 1], [-2, -2]] (eigenvalues -1 +- i): the unit circle of initial values (black), its
# images at t = 0.5, 1, 1.5 (blue) and four trajectories (red). Right: the saddle S = diag(1, -1): the eigenvector
# lines (green) and eight trajectories (red), which are hyperbolas x1 x2 = const.
# Interactive: the same two panels as Plotly traces.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

t = var("t")
A = matrix(QQ, [[0, 1], [-2, -2]])
E = (t * A).exp().apply_map(lambda e: e.rectform().simplify_full())
closed = exp(-t) * matrix([[cos(t) + sin(t), sin(t)], [-2 * sin(t), cos(t) - sin(t)]])
assert all(bool(e == 0) for e in (E - closed).apply_map(lambda e: e.simplify_full()).list())

def flowA(s):
    c, sn, ex = math.cos(s), math.sin(s), math.exp(-s)
    return np.array([[ex * (c + sn), ex * sn], [-2 * ex * sn, ex * (c - sn)]])

th = np.linspace(0, 2 * math.pi, 300)
circle = np.vstack([np.cos(th), np.sin(th)])
images = [(s, flowA(s) @ circle) for s in (0.5, 1.0, 1.5)]
ts = np.linspace(0, 8, 800)
starts = [np.array([math.cos(a), math.sin(a)]) for a in (0.3, 1.9, 3.4, 5.0)]
trajA = [np.array([flowA(s) @ x0 for s in ts]) for x0 in starts]

ts2 = np.linspace(-3, 3, 600)
trajS = []
for (a, b) in [(0.12, 1.9), (0.55, 1.9), (1.9, 1.0)]:
    for sx in (1, -1):
        for sy in (1, -1):
            x0 = np.array([sx * a, sy * b])
            trajS.append(np.array([[x0[0] * math.exp(s), x0[1] * math.exp(-s)] for s in ts2]))

def clip(P, L):
    P = np.array(P, dtype=float)
    P[~((np.abs(P[:, 0]) <= L) & (np.abs(P[:, 1]) <= L))] = np.nan
    return P

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(9.0, 4.2))
for T in trajA:
    ax1.plot(T[:, 0], T[:, 1], color=STATEMENT, lw=1.1)
ax1.plot(circle[0], circle[1], color=INK, lw=1.4)
for s, P in images:
    ax1.plot(P[0], P[1], color=ACCENT, lw=1.3)
ax1.plot([0], [0], "o", color=INK, ms=4)
ax1.set_aspect("equal"); ax1.set_xlim(-1.15, 1.15); ax1.set_ylim(-1.15, 1.15)
ax1.set_xlabel(r"$x_1$"); ax1.set_ylabel(r"$x_2$")
ax1.set_title(r"spiral sink, eigenvalues $-1 \pm i$", fontsize=FONT_SIZE)
L = 2.0
ax2.axhline(0, color=EXAMPLE, lw=1.6); ax2.axvline(0, color=EXAMPLE, lw=1.6)
for T in trajS:
    C = clip(T, L)
    ax2.plot(C[:, 0], C[:, 1], color=STATEMENT, lw=1.1)
ax2.set_aspect("equal"); ax2.set_xlim(-L, L); ax2.set_ylim(-L, L)
ax2.set_xlabel(r"$x_1$"); ax2.set_ylabel(r"$x_2$")
ax2.set_title(r"saddle, eigenvalues $\pm 1$", fontsize=FONT_SIZE)
for ax in (ax1, ax2):
    ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "matrix_exp_flow")

def nn(a):
    return [None if math.isnan(v) else float(v) for v in a]
traces = []
for i, T in enumerate(trajA):
    traces.append(dict(type="scatter", mode="lines", x=nn(T[:, 0]), y=nn(T[:, 1]), line=dict(color=STATEMENT, width=1.5), name="trajectory", showlegend=(i == 0)))
traces.append(dict(type="scatter", mode="lines", x=floats(circle[0]), y=floats(circle[1]), line=dict(color=INK, width=2), name="initial values"))
for s, P in images:
    traces.append(dict(type="scatter", mode="lines", x=floats(P[0]), y=floats(P[1]), line=dict(color=ACCENT, width=2), name="t = %g" % s))
for i, T in enumerate(trajS):
    C = clip(T, L)
    traces.append(dict(type="scatter", mode="lines", x=nn(C[:, 0]), y=nn(C[:, 1]), xaxis="x2", yaxis="y2", line=dict(color=STATEMENT, width=1.5), name="saddle trajectory", showlegend=(i == 0)))
traces.append(dict(type="scatter", mode="lines", x=[-L, L, None, 0, 0], y=[0, 0, None, -L, L], xaxis="x2", yaxis="y2", line=dict(color=EXAMPLE, width=2), name="eigenvector lines"))
save_plotly(traces, "matrix_exp_flow", dict(xaxis=dict(domain=[0, 0.45], range=[-1.15, 1.15], title="x1"), yaxis=dict(range=[-1.15, 1.15], title="x2", scaleanchor="x"),
            xaxis2=dict(domain=[0.55, 1], range=[-L, L], title="x1"), yaxis2=dict(anchor="x2", range=[-L, L], scaleanchor="x2")))
