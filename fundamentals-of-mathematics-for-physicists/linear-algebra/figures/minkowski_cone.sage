# The Minkowski form eta(v, v) = t^2 - x^2 on R^2 (signature (+, -), the site's convention): the light cone
# eta = 0 and the timelike (eta > 0) and spacelike (eta < 0) regions, with one vector of each kind.
# Interactive: the same form on R^3, eta = t^2 - x^2 - y^2, with the cone and the hyperboloids eta = 1 and eta = -1.
load("../../_filters/figstyle.sage")

eta = diagonal_matrix(QQ, [1, -1])       # components in the order (t, x)
q = lambda tx: vector(QQ, tx) * eta * vector(QQ, tx)
vt, vs, vl = (QQ(6) / 5, QQ(3) / 10), (QQ(3) / 10, QQ(13) / 10), (1, 1)   # (t, x): timelike, spacelike, null
assert q(vt) > 0 and q(vs) < 0 and q(vl) == 0

R = 2
xy = lambda tx: (tx[1], tx[0])           # draw x horizontally and t vertically
g = polygon([(0, 0), (R, R), (-R, R)], color=STATEMENT, alpha=0.12, edgecolor=None)
g += polygon([(0, 0), (R, -R), (-R, -R)], color=STATEMENT, alpha=0.12, edgecolor=None)
g += polygon([(0, 0), (R, R), (R, -R)], color=ACCENT, alpha=0.10, edgecolor=None)
g += polygon([(0, 0), (-R, R), (-R, -R)], color=ACCENT, alpha=0.10, edgecolor=None)
g += line([(-R, -R), (R, R)], color=INK, thickness=1.6) + line([(-R, R), (R, -R)], color=INK, thickness=1.6)
g += arrow((-R, 0), (R + 0.15, 0), color=MUTED, width=0.8, arrowsize=3) + arrow((0, -R), (0, R + 0.15), color=MUTED, width=0.8, arrowsize=3)
g += text("$x$", (R + 0.25, -0.12), color=MUTED, fontsize=12) + text("$t$", (0.13, R + 0.22), color=MUTED, fontsize=12)
g += arrow((0, 0), xy(vt), color=STATEMENT, width=2.2) + arrow((0, 0), xy(vs), color=ACCENT, width=2.2)
g += text("timelike\n" + r"$\eta(v, v) > 0$", (-1.05, 1.55), color=STATEMENT, fontsize=10)
g += text("spacelike\n" + r"$\eta(v, v) < 0$", (1.35, -0.55), color=ACCENT, fontsize=10)
g += text("light cone\n" + r"$\eta(v, v) = 0$", (R + 0.12, R - 0.1), color=INK, fontsize=10, horizontal_alignment="left")
save_figure(g, "minkowski_cone", figsize=4, xmin=-R, xmax=R + 1.3, ymin=-R, ymax=R + 0.3, aspect_ratio=1, axes=False)

# Interactive 3D version on (x, y, t), eta = t^2 - x^2 - y^2: the cone eta = 0 and the hyperboloids of timelike
# (eta = 1) and spacelike (eta = -1) unit vectors, as parametric surfaces on a coarse grid.
eta3 = diagonal_matrix(QQ, [1, -1, -1])  # components in the order (t, x, y)
var("s th")
surfaces = [  # (t, x, y) in terms of (s, th), the value eta takes on it, colour, name
    ((s, s * cos(th), s * sin(th)), 0, MUTED, "light cone, eta = 0"),
    ((sqrt(1 + s^2), s * cos(th), s * sin(th)), 1, STATEMENT, "timelike unit vectors, eta = 1 (future)"),
    ((-sqrt(1 + s^2), s * cos(th), s * sin(th)), 1, STATEMENT, "timelike unit vectors, eta = 1 (past)"),
    ((s, sqrt(1 + s^2) * cos(th), sqrt(1 + s^2) * sin(th)), -1, ACCENT, "spacelike unit vectors, eta = -1"),
]
traces = []
S_range = {0: (-1.6, 1.6), 1: (0, 1.3), -1: (-1.3, 1.3)}
for (T_, X_, Y_), val, col, name in surfaces:
    p3 = vector([T_, X_, Y_])
    assert (p3 * eta3 * p3).simplify_full() == val
    s0, s1 = S_range[val]
    ss = [s0 + (s1 - s0) * i / 16 for i in range(17)]
    ts = [2 * pi.n() * j / 36 for j in range(37)]
    grid = lambda e: [[float(e.subs(s=a, th=b)) for b in ts] for a in ss]
    traces.append(dict(type="surface", x=grid(X_), y=grid(Y_), z=grid(T_), name=name, showscale=False, opacity=0.55,
                       colorscale=[[0, col], [1, col]], hovertemplate=name + "<extra></extra>"))
save_plotly(traces, "minkowski_cone", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="t", aspectmode="cube")))
