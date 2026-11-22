# Unit vectors of a metric as ellipses: the vectors with g(v, v) = s^2 at points of the (r, phi) chart of the plane and of the (theta, phi) chart of the sphere.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Ellipse
s = 0.12
fig, axs = plt.subplots(1, 2, figsize=(9, 4.2))
panels = [(axs[0], [0.5, 1, 1.5, 2, 2.5], lambda a: 1.0, lambda a: a, r"$r$", r"$dr^2 + r^2\,d\varphi^2$"),
          (axs[1], [0.3, 0.7, 1.2, 1.57, 1.95, 2.45, 2.85], lambda a: 1.0, lambda a: np.sin(a), r"$\theta$", r"$d\theta^2 + \sin^2\theta\,d\varphi^2$")]
for ax, xs, h1, h2, xl, title in panels:
    for x in xs:
        for y in [0.5, 1.5, 2.5]:
            ax.add_patch(Ellipse((x, y), 2*s/h1(x), 2*s/h2(x), facecolor=ACCENT, alpha=0.35, edgecolor=ACCENT))
    ax.set_xlim(0, xs[-1] + 0.4); ax.set_ylim(0, 3.1); ax.set_aspect("equal")
    ax.set_xlabel(xl); ax.set_ylabel(r"$\varphi$"); ax.set_title(title, fontsize=12)
fig.tight_layout()
save_matplotlib(fig, "metric_ellipses")
traces = []
for k, (xs, f, name) in enumerate([([0.5, 1, 1.5, 2, 2.5], lambda a: a, "polar"), ([0.3, 0.7, 1.2, 1.57, 1.95, 2.45, 2.85], lambda a: float(np.sin(a)), "round")]):
    for x in xs:
        for y in [0.5, 1.5, 2.5]:
            t = np.linspace(0, 2*np.pi, 60)
            traces.append({"type": "scatter", "mode": "lines", "x": floats(x + s*np.cos(t)), "y": floats(y + s/f(x)*np.sin(t)),
                           "xaxis": "x%s" % ("" if k == 0 else "2"), "yaxis": "y%s" % ("" if k == 0 else "2"),
                           "line": {"color": ACCENT}, "fill": "toself", "showlegend": False, "name": name})
save_plotly(traces, "metric_ellipses", {"grid": {"rows": 1, "columns": 2, "pattern": "independent"}, "showlegend": False,
            "xaxis": {"title": "r"}, "yaxis": {"title": "phi", "scaleanchor": "x"}, "xaxis2": {"title": "theta"}, "yaxis2": {"title": "phi", "scaleanchor": "x2"}})
