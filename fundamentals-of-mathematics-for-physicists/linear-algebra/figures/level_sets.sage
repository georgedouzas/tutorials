# Level lines of the linear functional alpha(x, y) = 2x + y on R^2: the kernel (alpha = 0) and the parallel lines
# alpha = c; a vector v with alpha(v) = 3 crosses three of them, and w in the kernel crosses none.
load("../../_filters/figstyle.sage")

alpha = vector(QQ, [2, 1])
K = matrix(QQ, [alpha]).right_kernel()
w = K.basis()[0] / 2                     # (1/2, -1), a vector of the kernel
v = vector(QQ, [1, 1])
assert alpha * w == 0 and alpha * v == 3

R = 2.2
g = Graphics()
for c in range(-6, 7):                   # the level lines 2x + y = c, clipped to the square
    g += implicit_plot(lambda x, y, c=c: 2 * x + y - c, (-R, R), (-R, R),
                       color=(INK if c == 0 else ACCENT), linewidth=(2 if c == 0 else 0.9), alpha=(1 if c == 0 else 0.55))
for c in range(-2, 7):                   # the value of alpha on each line, written where it leaves the top edge
    x = (c - R) / 2
    if -R < x < R - 0.1:
        g += text(f"${c}$", (x + 0.12, R - 0.12), color=(INK if c == 0 else ACCENT), fontsize=9)
g += arrow((0, 0), v, color=STATEMENT, width=2.4) + arrow((0, 0), w, color=EXAMPLE, width=2.4)
g += text(r"$\alpha(v) = 3$", v + vector([0.15, 0.25]), color=STATEMENT, fontsize=12, horizontal_alignment="left")
g += text(r"$\alpha(w) = 0$", w + vector([0.15, -0.15]), color=EXAMPLE, fontsize=12, horizontal_alignment="left")
g += text(r"$\ker \alpha$", (1.15, -1.95), color=INK, fontsize=12, horizontal_alignment="left")
save_figure(g, "level_sets", figsize=4, xmin=-R, xmax=R, ymin=-R, ymax=R, aspect_ratio=1, axes=False, frame=False)
