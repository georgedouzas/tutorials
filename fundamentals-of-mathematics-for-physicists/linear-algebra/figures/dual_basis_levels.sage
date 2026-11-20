# Level lines of the first dual basis covector f^1 = (2x - y)/3 of the basis f_1 = (2, 1), f_2 = (1, 2) of R^2:
# f_2 lies on the kernel f^1 = 0, and the tip of f_1 lies on the level line f^1 = 1.
load("../../_filters/figstyle.sage")

F = matrix(QQ, [[2, 1], [1, 2]]).transpose()   # columns f_1, f_2
D = F.inverse()                                 # rows f^1, f^2
f1, f2, a1 = F.column(0), F.column(1), D.row(0)
assert a1 * f1 == 1 and a1 * f2 == 0 and a1 == vector(QQ, [2, -1]) / 3

R = 2.6
g = Graphics()
def clipped(c):                                # the segment of the line 2x - y = 3c inside the square [-R, R]^2
    ys = [max(-R, 2 * (-R) - 3 * c), min(R, 2 * R - 3 * c)]
    return [((y + 3 * c) / 2, y) for y in ys]
for c in range(-3, 4):                          # the level lines f^1 = c
    if -R < (R + 3 * c) / 2 and (-R + 3 * c) / 2 < R:
        g += line(clipped(c), color=(INK if c == 0 else ACCENT), thickness=(2 if c == 0 else 0.9), alpha=(1 if c == 0 else 0.55))
for c in range(-1, 3):                          # the value of f^1 on each line, written near the bottom edge
    x = (3 * c - (R - 0.25)) / 2
    if -R < x < R - 0.1:
        g += text(f"${c}$", (x + 0.17, -R + 0.25), color=(INK if c == 0 else ACCENT), fontsize=9)
g += arrow((0, 0), f1, color=STATEMENT, width=2.4) + arrow((0, 0), f2, color=EXAMPLE, width=2.4)
g += text(r"$f_1$", f1 + vector([0.15, -0.25]), color=STATEMENT, fontsize=12, horizontal_alignment="left")
g += text(r"$f_2$", f2 + vector([-0.25, 0.05]), color=EXAMPLE, fontsize=12, horizontal_alignment="right")
g += text(r"$\ker f^1$", (-1.15, -1.95), color=INK, fontsize=11, horizontal_alignment="right")
save_figure(g, "dual_basis_levels", figsize=4, xmin=-R, xmax=R, ymin=-R, ymax=R, aspect_ratio=1, axes=False, frame=False)
