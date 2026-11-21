# The real parts of the spherical harmonics Y_lm(theta, phi), l <= 3, 0 <= m <= l, on the rectangle
# 0 <= phi <= 2 pi (horizontal), 0 <= theta <= pi (vertical, north pole at the top). Interactive: the surface
# r = |Re Y_lm| on the sphere, coloured by Re Y_lm, one harmonic at a time.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

th, ph = var("theta phi")
# checks: the eigenvalue equation and one normalisation, with Sage's spherical_harmonic (Condon-Shortley phase)
lap = lambda f: diff(sin(th)*diff(f, th), th)/sin(th) + diff(f, ph, 2)/sin(th)^2
for l in range(4):
    for m in range(l + 1):
        Y = spherical_harmonic(l, m, th, ph)
        assert bool((lap(Y) + l*(l + 1)*Y).simplify_full() == 0)
Y21 = spherical_harmonic(2, 1, th, ph)
assert bool(integrate(integrate((Y21*Y21.conjugate()).simplify_full()*sin(th), ph, 0, 2*pi), th, 0, pi) == 1)

PH, TH = np.meshgrid(np.linspace(0, 2*np.pi, 241), np.linspace(0, np.pi, 121))
U = np.cos(TH)


def re_Y(l, m):
    f = fast_callable(spherical_harmonic(l, m, th, ph).real_part().simplify_full(), vars=[th, ph], domain=RDF)
    return np.vectorize(lambda a, b: f(a, b))(TH, PH)


fig, axes = plt.subplots(4, 4, figsize=(10, 6.2))
data = {}
for l in range(4):
    for m in range(4):
        ax = axes[l, m]
        if m > l:
            ax.axis("off")
            continue
        Z = re_Y(l, m)
        data[(l, m)] = Z
        v = max(abs(Z).max(), 1e-12)
        ax.imshow(Z, extent=(0, 2*np.pi, np.pi, 0), cmap="RdBu_r", vmin=-v, vmax=v, aspect="auto")
        ax.set_title(r"$l = %d,\ m = %d$" % (l, m), fontsize=10, pad=3)
        ax.set_xticks([]); ax.set_yticks([])
axes[3, 0].set_xlabel(r"$\varphi$"); axes[3, 0].set_ylabel(r"$\theta$")
fig.tight_layout(h_pad=1.2)
save_matplotlib(fig, "spherical_harmonics")

# interactive: one surface per harmonic, a menu to switch
PH2, TH2 = np.meshgrid(np.linspace(0, 2*np.pi, 73), np.linspace(0, np.pi, 37))
traces, keys = [], [(l, m) for l in range(4) for m in range(l + 1)]
for (l, m) in keys:
    f = fast_callable(spherical_harmonic(l, m, th, ph).real_part().simplify_full(), vars=[th, ph], domain=RDF)
    C = np.vectorize(lambda a, b: f(a, b))(TH2, PH2)
    R = np.abs(C)
    traces.append(dict(type="surface", x=(R*np.sin(TH2)*np.cos(PH2)).tolist(), y=(R*np.sin(TH2)*np.sin(PH2)).tolist(),
                       z=(R*np.cos(TH2)).tolist(), surfacecolor=C.tolist(), colorscale="RdBu", reversescale=True,
                       cmin=-0.7, cmax=0.7, showscale=False, visible=(l, m) == (2, 1), name="l = %d, m = %d" % (l, m)))
title = lambda l, m: "|Re Y_%d%d| on the sphere, coloured by Re Y_%d%d (drag to rotate)" % (l, m, l, m)
buttons = [dict(method="update", label="l = %d, m = %d" % k, args=[dict(visible=[k2 == k for k2 in keys]), dict(title=title(*k))])
           for k in keys]
ax3 = dict(range=[-0.7, 0.7], visible=False)
save_plotly(traces, "spherical_harmonics", dict(title=title(2, 1), showlegend=False,
            scene=dict(xaxis=ax3, yaxis=ax3, zaxis=ax3, aspectmode="cube"),
            updatemenus=[dict(buttons=buttons, x=0.0, y=1.0, xanchor="left", yanchor="top")]))
