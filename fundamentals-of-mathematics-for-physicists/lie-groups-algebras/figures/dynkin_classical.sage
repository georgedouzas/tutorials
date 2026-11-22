# Dynkin diagrams of the classical types A_r, B_r, C_r, D_r, read off from Sage's Cartan matrices (r = 5 drawn with a gap).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
for t in "BC":
    A = matrix(ZZ, CartanMatrix([t, 5])).T   # our convention A_ij = 2(a_i, a_j)/(a_j, a_j)
    assert A[3, 4] * A[4, 3] == 2
assert matrix(ZZ, CartanMatrix(['B', 5])).T[3, 4] == -2   # B: alpha_5 short
fig, ax = plt.subplots(figsize=(6.8, 5.2))
dx = 1.0
def node(x, y, lab):
    ax.add_patch(plt.Circle((x, y), 0.12, facecolor="none", edgecolor=ACCENT, lw=1.6, zorder=3))
    ax.text(x, y - 0.32, lab, ha="center", fontsize=10, color=INK)
def line(x1, y1, x2, y2, k=1):
    import math
    L = math.hypot(x2 - x1, y2 - y1); ux, uy = (x2 - x1)/L, (y2 - y1)/L; px, py = -uy, ux
    for o in ([0] if k == 1 else [-0.045, 0.045]):
        ax.plot([x1 + 0.12*ux + o*px, x2 - 0.12*ux + o*px], [y1 + 0.12*uy + o*py, y2 - 0.12*uy + o*py], color=INK, lw=1.2, zorder=2)
def arrow(x1, x2, y):
    d = 1 if x2 > x1 else -1; xm = (x1 + x2)/2
    ax.plot([xm - 0.09*d, xm + 0.09*d, xm - 0.09*d], [y + 0.12, y, y - 0.12], color=INK, lw=1.2)
def chain(y, labels):
    xs = [i*dx for i in range(len(labels))]
    for i, lab in enumerate(labels):
        node(xs[i], y, lab)
    return xs
rows = {"A": 4.2, "B": 2.9, "C": 1.6, "D": 0.0}
lab = [r"$\alpha_1$", r"$\alpha_2$", r"$\alpha_{r-2}$", r"$\alpha_{r-1}$", r"$\alpha_r$"]
for t, y in rows.items():
    ax.text(-0.9, y, r"$%s_r$" % t, fontsize=12, color=STATEMENT, va="center")
    labels = lab if t != "D" else lab[:3]
    xs = chain(y, labels)
    line(xs[0], y, xs[1], y)
    ax.text((xs[1] + xs[2])/2, y - 0.04, r"$\cdots$", ha="center", fontsize=12, color=INK)
    if t == "A":
        line(xs[2], y, xs[3], y); line(xs[3], y, xs[4], y)
    elif t in "BC":
        line(xs[2], y, xs[3], y); line(xs[3], y, xs[4], y, k=2)
        arrow(xs[3], xs[4], y) if t == "B" else arrow(xs[4], xs[3], y)
    else:
        x0 = xs[2]
        for yy, l in [(y + 0.6, r"$\alpha_{r-1}$"), (y - 0.6, r"$\alpha_r$")]:
            ax.add_patch(plt.Circle((x0 + 0.85, yy), 0.12, facecolor="none", edgecolor=ACCENT, lw=1.6, zorder=3))
            ax.text(x0 + 1.12, yy - 0.05, l, fontsize=10, color=INK)
            line(x0, y, x0 + 0.85, yy)
ax.set_xlim(-1.1, 4.7); ax.set_ylim(-1.0, 4.6); ax.set_aspect("equal"); ax.axis("off")
fig.tight_layout()
save_matplotlib(fig, "dynkin_classical")
