# The shear L(x, y) = (x + y, y) of R^2: the standard grid (grey) and its image (blue). Lines go to lines, parallel
# lines to parallel lines and the origin stays fixed; the unit square goes to the parallelogram spanned by the columns
# L(e_1) = (1, 0) and L(e_2) = (1, 1) of the matrix of L.
load("../../_filters/figstyle.sage")

L = matrix(QQ, [[1, 1], [0, 1]])
e1, e2 = vector(QQ, [1, 0]), vector(QQ, [0, 1])
assert L * e1 == L.column(0) == vector(QQ, [1, 0]) and L * e2 == L.column(1) == vector(QQ, [1, 1])
assert L.right_kernel().dimension() == 0          # the shear is a bijection: kernel {0}, rank 2

lo, hi = -2, 2
g = Graphics()
for k in range(lo, hi + 1):                        # the standard grid
    g += line([(k, lo), (k, hi)], color=GRID, thickness=0.8) + line([(lo, k), (hi, k)], color=GRID, thickness=0.8)
for k in range(-4, 5):                             # images of the grid lines x = k (slanted) and y = k (unchanged)
    p, q = L * vector(QQ, [k, -6]), L * vector(QQ, [k, 6])
    g += line([p, q], color=ACCENT, alpha=0.45, thickness=0.9)
for k in range(lo, hi + 1):
    g += line([(lo, k), (hi, k)], color=ACCENT, alpha=0.45, thickness=0.9)
g += polygon([(0, 0), (1, 0), (1, 1), (0, 1)], color=MUTED, alpha=0.18, edgecolor=None)
g += polygon([(0, 0), tuple(L * e1), tuple(L * (e1 + e2)), tuple(L * e2)], color=ACCENT, alpha=0.22, edgecolor=None)
g += arrow((0, 0), e2, color=MUTED, width=1.8)
g += arrow((0, 0), L * e1, color=STATEMENT, width=2.4) + arrow((0, 0), L * e2, color=ACCENT, width=2.4)
g += text("$e_2$", (-0.28, 0.72), color=MUTED, fontsize=13, background_color="white")
g += text("$e_1 = L(e_1)$", (0.55, -0.5), color=STATEMENT, fontsize=12, background_color="white")
g += text("$L(e_2)$", (1.0, 1.5), color=ACCENT, fontsize=13, background_color="white")
save_figure(g, "linear_map_grid", figsize=4, xmin=lo, xmax=hi, ymin=lo, ymax=hi, aspect_ratio=1, axes=False)
