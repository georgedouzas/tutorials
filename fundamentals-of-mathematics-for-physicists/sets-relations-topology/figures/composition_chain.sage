# Composition of two maps between finite sets: f from X = {1, 2, 3} to Y = {a, b}, g from Y to Z = {u, v, w}, and
# the composite g o f from X to Z (dashed), read off by following the arrows from end to end.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import Ellipse, FancyArrowPatch

X, Y, Z = ["1", "2", "3"], ["a", "b"], ["u", "v", "w"]
f = {"1": "a", "2": "b", "3": "a"}
g = {"a": "w", "b": "u"}
gf = {x: g[f[x]] for x in X}
assert gf == {"1": "w", "2": "u", "3": "w"}

fig, ax = plt.subplots(figsize=(7.2, 3.6))
ys = lambda n: [1.0 - k * 1.0 for k in range(n)]
cols = [(0.0, X, ACCENT, "X"), (2.4, Y, EXAMPLE, "Y"), (4.8, Z, STATEMENT, "Z")]
pos = {}
for cx, S, col, name in cols:
    n = len(S)
    off = (3 - n) / 2
    ax.add_patch(Ellipse((cx, 0.0), 0.9 if name != "Y" else 1.1, 3.4, fill=False, edgecolor=col, lw=1.2))
    for s, yy in zip(S, ys(n)):
        p = (cx, yy - off)
        pos[(name, s)] = p
        ax.plot(*p, "o", color=col, ms=7)
        dy = 0 if name != "Y" else (0.32 if s == "a" else -0.32)
        ax.text(cx + (-0.2 if name == "X" else (0.16 if name == "Z" else 0.0)), p[1] + dy, f"${s}$", color=col,
                fontsize=12, ha={"X": "right", "Y": "center", "Z": "left"}[name], va="center")
    ax.text(cx, 1.95, f"${name}$", ha="center", color=col, fontsize=13)
for x, y in f.items():
    ax.add_patch(FancyArrowPatch(pos[("X", x)], pos[("Y", y)], arrowstyle="-|>", mutation_scale=12, color=INK, lw=1.1, shrinkA=6, shrinkB=6))
for y, z in g.items():
    ax.add_patch(FancyArrowPatch(pos[("Y", y)], pos[("Z", z)], arrowstyle="-|>", mutation_scale=12, color=INK, lw=1.1, shrinkA=6, shrinkB=6))
for x, z in gf.items():
    ax.add_patch(FancyArrowPatch(pos[("X", x)], pos[("Z", z)], arrowstyle="-|>", mutation_scale=12, color=EXERCISE,
                                 lw=1.0, ls="--", shrinkA=6, shrinkB=6, connectionstyle="arc3,rad=-0.28"))
ax.text(1.2, 1.95, "$f$", ha="center", fontsize=13)
ax.text(3.6, 1.95, "$g$", ha="center", fontsize=13)
ax.text(2.4, -2.45, r"$g \circ f$", ha="center", color=EXERCISE, fontsize=13)
ax.set_xlim(-0.8, 5.6); ax.set_ylim(-2.7, 2.3); ax.set_aspect("equal"); ax.axis("off")
save_matplotlib(fig, "composition_chain")
