# Step responses of q'' + 2 gamma q' + q = 1 from rest, gamma = 0.25, 1, 2, computed by inverting
# Q(s) = 1/(s (s^2 + 2 gamma s + 1)).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

s, t = var("s t")
curves = []
for g, c in [(1/4, ACCENT), (1, EXAMPLE), (2, STATEMENT)]:
    q = inverse_laplace(1/(s*(s^2 + 2*g*s + 1)), s, t)
    assert abs(q.subs(t=0)) < 1e-12 and abs(q.subs(t=60).n() - 1) < 1e-6
    f = fast_callable(q, vars=[t], domain=RDF)
    curves.append((g, c, f))

T = np.linspace(0, 20, 1001)
fig, ax = plt.subplots(figsize=(6.4, 3.4))
ax.axhline(1, color=MUTED, lw=0.9, ls="--")
labels = {1/4: r"$\gamma = 0.25$", 1: r"$\gamma = 1$", 2: r"$\gamma = 2$"}
for g, c, f in curves:
    ax.plot(T, [f(x) for x in T], color=c, lw=1.6, label=labels[g])
ax.set_xlim(0, 20); ax.set_ylim(0, 1.6); ax.set_xlabel("$t$"); ax.set_ylabel("$q(t)$")
ax.legend(loc="lower right", fontsize=9, frameon=False)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "laplace_step_response")
