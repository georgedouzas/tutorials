# Goursat's subdivision: the triangle T^(0) with vertices 0, 4, 1 + 3i is cut into four by its midlines, one of the four
# (here the one at the vertex 1 + 3i) is chosen as T^(1), and T^(1) is cut again; the chosen triangles shrink to a point.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt
import numpy as np

A, B, C = complex(0, 0), complex(4, 0), complex(1, 3)
def mids(a, b, c):
    return (a + b) / 2, (b + c) / 2, (c + a) / 2
def tri(ax, a, b, c, **kw):
    p = [a, b, c, a]
    ax.plot([z.real for z in p], [z.imag for z in p], **kw)
fig, ax = plt.subplots(figsize=(4.6, 3.6))
tri(ax, A, B, C, color=ACCENT, lw=1.6)
ab, bc, ca = mids(A, B, C)
tri(ax, ab, bc, ca, color=ACCENT, lw=1.0)
T1 = (ca, bc, C)                                # the chosen quarter, at the vertex C
ax.fill([z.real for z in T1], [z.imag for z in T1], color=STATEMENT, alpha=0.15, lw=0)
m1 = mids(*T1)
tri(ax, *m1, color=STATEMENT, lw=0.9)
T2 = (T1[0], m1[0], m1[2])                      # a quarter of T^(1)
ax.fill([z.real for z in T2], [z.imag for z in T2], color=STATEMENT, alpha=0.35, lw=0)
# orientation arrows on the outer boundary
for p, q in ((A, B), (B, C), (C, A)):
    m = (p + q) / 2; d = (q - p) / abs(q - p) * float(0.15)
    ax.annotate("", xy=((m + d).real, (m + d).imag), xytext=((m - d).real, (m - d).imag),
                arrowprops=dict(arrowstyle="-|>", color=ACCENT, lw=1.4))
ax.text(2.85, 0.4, r"$T^{(0)}$", color=ACCENT, ha="center")
ax.annotate(r"$T^{(1)}$", xy=(1.9, 2.0), xytext=(2.7, 2.6), color=STATEMENT,
            arrowprops=dict(arrowstyle="-", color=STATEMENT, lw=0.8))
ax.plot([C.real], [C.imag], "o", color=INK, ms=3)
ax.set_aspect("equal"); ax.axis("off"); ax.set_xlim(-0.3, 4.3); ax.set_ylim(-0.3, 3.3)
fig.tight_layout()
save_matplotlib(fig, "goursat_subdivision")
