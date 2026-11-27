"""Bifurcation diagrams of the saddle-node, transcritical and pitchfork normal forms (Gros Figs. 2.7-2.9)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from skcomplex.core.analysis import stability  # noqa: E402
from skcomplex.systems.general.dynamics import DynamicalSystem  # noqa: E402
from skcomplex.systems.mathematics.dynamical_systems import SaddleNodeFormSystem  # noqa: E402

FORMS = {
    "saddle-node": lambda mu: SaddleNodeFormSystem(mu=mu),
    "transcritical": lambda mu: DynamicalSystem(states={"x": 0.0}, parameters={"mu": mu}, element="form",
                                                equations={"x": lambda s: s.target.mu * s.target.x - s.target.x**2}),
    "pitchfork": lambda mu: DynamicalSystem(states={"x": 0.0}, parameters={"mu": mu}, element="form",
                                            equations={"x": lambda s: s.target.mu * s.target.x - s.target.x**3}),
}
TITLES = {"saddle-node": r"$\dot x = \mu - x^2$", "transcritical": r"$\dot x = \mu x - x^2$",
          "pitchfork": r"$\dot x = \mu x - x^3$"}

mus = np.r_[-np.geomspace(1, 1e-4, 30), np.geomspace(1e-4, 1, 30)]
fig, axes = plt.subplots(1, 3, figsize=(9.6, 3.2), sharey=True)
for ax, (name, build) in zip(axes, FORMS.items()):
    points = {"stable": [], "unstable": []}
    for mu in mus:
        result = stability(build(mu), parameters={"form.mu": mu})
        for point, values in zip(result.fixed_points, result.eigenvalues):
            x = complex(point["form.x"])
            if abs(x.imag) < 1e-12:
                kind = "stable" if np.real(values[0]) < 0 else "unstable"
                points[kind].append((mu, x.real))
    ax.axvline(0, color=GRID, lw=0.8, zorder=0)
    for kind, style in (("stable", "-"), ("unstable", "--")):
        branch = sorted(points[kind])
        # draw each branch as separate curves: group by sign of x and of mu
        for sign_mu in (-1, 1):
            for sign_x in (-1, 0, 1):
                seg = [(m, x) for m, x in branch if np.sign(m) == sign_mu and (np.sign(round(x, 9)) == sign_x)]
                if len(seg) > 1:
                    seg = np.array(sorted(seg))
                    ax.plot(seg[:, 0], seg[:, 1], style, color=ACCENT if kind == "stable" else STATEMENT, lw=1.8)
    ax.set_title(TITLES[name], fontsize=FONT_SIZE)
    ax.set_xlabel(r"$\mu$")
    ax.set_xlim(-1, 1)
    ax.set_ylim(-1.1, 1.1)
axes[0].set_ylabel(r"fixed point $x^*$")
axes[0].plot([], [], "-", color=ACCENT, label="stable")
axes[0].plot([], [], "--", color=STATEMENT, label="unstable")
axes[0].legend(frameon=False, loc="upper left", fontsize=9)
fig.tight_layout()
save_figure(fig, "normal_forms")
