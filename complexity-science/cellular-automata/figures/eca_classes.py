"""Space-time diagrams of one elementary rule from each of Wolfram's classes (Lindgren Fig. 4.3)."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from matplotlib.colors import ListedColormap  # noqa: E402
from skcomplex.core.engine.runtime import simulate  # noqa: E402
from skcomplex.systems.computer_science.automata import ElementaryAutomatonSystem  # noqa: E402

x = np.random.default_rng(3).integers(0, 2, 200)
fig, axes = plt.subplots(1, 4, figsize=(10, 3.4))
for ax, (rule, label) in zip(axes, ((160, "I"), (213, "II"), (30, "III"), (110, "IV"))):
    rows = np.asarray(simulate(ElementaryAutomatonSystem(rule, size=200, initial=x), until=150).get_values("cells.alive"))
    ax.imshow(rows, cmap=ListedColormap(["#ffffff", ACCENT]), interpolation="nearest", aspect="auto")
    ax.set_title(f"Rule {rule} (class {label})", fontsize=10)
    ax.axis("off")
fig.tight_layout()
save_figure(fig, "eca_classes")
