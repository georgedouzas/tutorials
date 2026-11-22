# Probability tree of a diagnostic test: prevalence 1/100, sensitivity 99/100, false-positive rate 1/20.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(7.2, 3.8))
root = (0, 0)
nodes = {"ill": (2.2, 1.1), "healthy": (2.2, -1.1),
         "ill+": (4.6, 1.65), "ill-": (4.6, 0.55), "h+": (4.6, -0.55), "h-": (4.6, -1.65)}
edges = [(root, nodes["ill"], r"$\frac{1}{100}$"), (root, nodes["healthy"], r"$\frac{99}{100}$"),
         (nodes["ill"], nodes["ill+"], r"$\frac{99}{100}$"), (nodes["ill"], nodes["ill-"], r"$\frac{1}{100}$"),
         (nodes["healthy"], nodes["h+"], r"$\frac{1}{20}$"), (nodes["healthy"], nodes["h-"], r"$\frac{19}{20}$")]
for (a, b, lab) in edges:
    ax.plot([a[0], b[0]], [a[1], b[1]], color=MUTED, lw=1.2)
    ax.text((a[0] + b[0]) / 2, (a[1] + b[1]) / 2 + 0.14, lab, ha="center", va="bottom", fontsize=12)
ax.plot(*root, "o", color=INK)
ax.text(nodes["ill"][0], nodes["ill"][1], " ill", ha="left", va="center", fontsize=11, color=STATEMENT,
        bbox=dict(boxstyle="round,pad=0.2", fc="white", ec=STATEMENT))
ax.text(nodes["healthy"][0], nodes["healthy"][1], " healthy", ha="left", va="center", fontsize=11, color=ACCENT,
        bbox=dict(boxstyle="round,pad=0.2", fc="white", ec=ACCENT))
leaf = {"ill+": (r"$+$", r"$\frac{99}{10000}$", STATEMENT), "ill-": (r"$-$", r"$\frac{1}{10000}$", MUTED),
        "h+": (r"$+$", r"$\frac{495}{10000}$", ORANGE), "h-": (r"$-$", r"$\frac{9405}{10000}$", MUTED)}
for k, (sign, p, col) in leaf.items():
    x, y = nodes[k]
    ax.text(x + 0.08, y, sign, ha="left", va="center", fontsize=13, color=col)
    ax.text(x + 0.55, y, p, ha="left", va="center", fontsize=12, color=col)
ax.text(5.15, -2.35, r"$\mathbb{P}(\mathrm{ill} \mid +) = \frac{99}{99 + 495} = \frac{1}{6}$", ha="center", fontsize=12)
ax.set_xlim(-0.3, 6.6); ax.set_ylim(-2.6, 2.1); ax.axis("off")
save_matplotlib(fig, "bayes_tree")
