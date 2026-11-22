# Resonance curves of q'' + 2 gamma q' + omega0^2 q = F cos(omega t) with omega0 = F = 1: the steady-state amplitude
# A(omega) = F / sqrt((omega0^2 - omega^2)^2 + 4 gamma^2 omega^2) for gamma = 1/20, 1/8, 1/4, 1/2, with a dot at the
# maximum, at omega_r = sqrt(omega0^2 - 2 gamma^2), and a dashed line at omega0.
# Interactive: the same curves as Plotly traces.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

w = var("w")
gammas = [QQ(1) / 20, QQ(1) / 8, QQ(1) / 4, QQ(1) / 2]
Afun = lambda g: 1 / sqrt((1 - w^2)^2 + 4 * g^2 * w^2)
for g in gammas:                     # the dot is the maximum: dA^2/dw vanishes at omega_r
    wr = sqrt(1 - 2 * g^2)
    assert bool(diff(Afun(g)^2, w).subs(w=wr).simplify_full() == 0)
ws = np.linspace(0.01, 2.5, 600)
fig, ax = plt.subplots(figsize=(6.4, 3.8))
traces = []
for g, col in zip(gammas, [STATEMENT, ORANGE, EXAMPLE, ACCENT]):
    gf = float(g)
    A = 1 / np.sqrt((1 - ws**2)**2 + 4 * gf**2 * ws**2)
    wr = math.sqrt(1 - 2 * gf**2); Ar = 1 / math.sqrt((1 - wr**2)**2 + 4 * gf**2 * wr**2)
    ax.plot(ws, A, color=col, lw=1.5, label=r"$\gamma = %s$" % latex(g))
    ax.plot([wr], [Ar], "o", color=col, ms=5)
    traces.append(dict(type="scatter", mode="lines", x=floats(ws), y=floats(A), line=dict(color=col, width=2), name="gamma = %s" % g))
    traces.append(dict(type="scatter", mode="markers", x=[wr], y=[Ar], marker=dict(color=col, size=8), name="omega_r, gamma = %s" % g, showlegend=False))
ax.axvline(1, color=MUTED, lw=1, ls="--")
ax.set_xlim(0, 2.5); ax.set_ylim(0, 10.6)
ax.set_xlabel(r"$\omega$"); ax.set_ylabel(r"$A(\omega)$")
ax.legend(frameon=False, loc="upper right")
ax.spines[["top", "right"]].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ode_resonance")
save_plotly(traces, "ode_resonance", dict(xaxis=dict(range=[0, 2.5], title="omega"), yaxis=dict(range=[0, 10.6], title="A(omega)")))
