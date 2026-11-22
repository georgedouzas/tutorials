# Cayley graphs: Z_6 with generator 1, and S_3 with generators s = (1 2) and c = (1 2 3), an arrow from g to gs for each
# generator s (products read right to left: gs applies s first). The interactive page shows the multiplication table of
# S_3, row g, column h, entry gh, coloured by the sign of the product.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyArrowPatch, Circle
import math

G = SymmetricGroup(3)
tmul = lambda g, h: h * g            # the text's g h: first h, then g (Sage composes left to right)
def name(g):
    return "e" if g == G.one() else "(" + " ".join(map(str, g.cycle_tuples()[0])) + ")"
def tex(g):
    return r"$e$" if g == G.one() else r"$(" + r"\,".join(map(str, g.cycle_tuples()[0])) + ")$"
s, c = G("(1,2)"), G("(1,2,3)")
outer = [G.one(), c, tmul(c, c)]                 # e, c, c^2
inner = [tmul(g, s) for g in outer]              # s, cs, c^2 s
assert all(tmul(outer[k], c) == outer[(k + 1) % 3] and tmul(inner[k], c) == inner[(k - 1) % 3] for k in range(3))
assert all(tmul(outer[k], s) == inner[k] for k in range(3))

fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.6, 4.0))
P = [(math.cos(math.pi / 2 - 2 * math.pi * k / 6), math.sin(math.pi / 2 - 2 * math.pi * k / 6)) for k in range(6)]
for k in range(6):
    a1.add_patch(FancyArrowPatch(P[k], P[(k + 1) % 6], arrowstyle="-|>", mutation_scale=14, color=ACCENT, lw=1.5,
                                 shrinkA=12, shrinkB=12))
for k, (x, y) in enumerate(P):
    a1.add_patch(Circle((x, y), 0.13, fc="white", ec=INK, lw=1.2, zorder=3))
    a1.text(x, y, str(k), ha="center", va="center", fontsize=12, zorder=4)
a1.text(0, -1.45, r"$\mathbb{Z}_6$, generator $1$", ha="center", fontsize=12)
a1.set_xlim(-1.5, 1.5); a1.set_ylim(-1.65, 1.35); a1.set_aspect("equal"); a1.axis("off")

R_out, R_in = 1.25, 0.55
ang = [math.pi / 2 + 2 * math.pi * k / 3 for k in range(3)]
po = [(R_out * math.cos(t), R_out * math.sin(t)) for t in ang]
pi_ = [(R_in * math.cos(t), R_in * math.sin(t)) for t in ang]
for k in range(3):
    a2.add_patch(FancyArrowPatch(po[k], po[(k + 1) % 3], arrowstyle="-|>", mutation_scale=14, color=ACCENT, lw=1.5,
                                 shrinkA=15, shrinkB=15))
    a2.add_patch(FancyArrowPatch(pi_[k], pi_[(k - 1) % 3], arrowstyle="-|>", mutation_scale=14, color=ACCENT, lw=1.5,
                                 shrinkA=15, shrinkB=15))
    a2.add_patch(FancyArrowPatch(po[k], pi_[k], arrowstyle="<|-|>", mutation_scale=12, color=STATEMENT, lw=1.5,
                                 shrinkA=15, shrinkB=15))
for g, (x, y) in list(zip(outer, po)) + list(zip(inner, pi_)):
    a2.add_patch(Circle((x, y), 0.2, fc="white", ec=INK, lw=1.2, zorder=3))
    a2.text(x, y, tex(g), ha="center", va="center", fontsize=9, zorder=4)
a2.text(0, -1.45, r"$S_3$, generators $(1\,2)$ (red), $(1\,2\,3)$ (blue)", ha="center", fontsize=12)
a2.set_xlim(-1.6, 1.6); a2.set_ylim(-1.65, 1.55); a2.set_aspect("equal"); a2.axis("off")
save_matplotlib(fig, "cayley_graph")

order = [G.one(), c, tmul(c, c), s, G("(1,3)"), G("(2,3)")]
labels = [name(g) for g in order]
z = [[float(tmul(g, h).sign()) for h in order] for g in order]
text = [[name(g) + " · " + name(h) + " = " + name(tmul(g, h)) for h in order] for g in order]
ann = [{"x": name(h), "y": name(g), "text": name(tmul(g, h)), "showarrow": False, "font": {"size": 14}}
       for g in order for h in order]
save_plotly([{"type": "heatmap", "z": z, "x": labels, "y": labels, "text": text, "hoverinfo": "text",
              "colorscale": [[0.0, "#f4a582"], [1.0, "#92c5de"]], "showscale": False, "xgap": 2, "ygap": 2}],
            "cayley_graph",
            {"title": "Multiplication table of S_3: row g, column h, entry g h (blue: even, orange: odd)",
             "xaxis": {"title": "h (applied first)", "side": "top"}, "yaxis": {"title": "g", "autorange": "reversed"},
             "annotations": ann, "showlegend": False, "margin": {"l": 70, "r": 10, "t": 90, "b": 20}})
