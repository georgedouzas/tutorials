# One vector read off two grids: v = (5, 4) has coordinates (5, 4) in the standard basis and (2, 1) in the basis
# f1 = (2, 1), f2 = (1, 2). Static figure and an interactive version where hovering shows both coordinates.
load("../../_filters/figstyle.sage")

e1, e2 = vector(QQ, [1, 0]), vector(QQ, [0, 1])
f1, f2 = vector(QQ, [2, 1]), vector(QQ, [1, 2])
v = vector(QQ, [5, 4])
F = matrix(QQ, [f1, f2]).transpose()
c = F.solve_right(v)                     # coordinates of v in the basis f1, f2
assert c == vector(QQ, [2, 1]) and c[0] * f1 + c[1] * f2 == v

lo, hi = -1, 7
g = Graphics()
for k in range(lo, hi + 1):              # the standard grid
    g += line([(k, lo), (k, hi)], color=GRID, thickness=0.7) + line([(lo, k), (hi, k)], color=GRID, thickness=0.7)
for a in range(-4, 8):                   # the grid of the basis f1, f2, clipped to the window
    for p, d in ((a * f1, f2), (a * f2, f1)):
        g += line([p - 6 * d, p + 6 * d], color=ACCENT, alpha=0.3, thickness=0.8)
g += arrow((0, 0), e1, color=MUTED, width=1.6) + arrow((0, 0), e2, color=MUTED, width=1.6)
g += arrow((0, 0), f1, color=ACCENT, width=2.2) + arrow((0, 0), f2, color=ACCENT, width=2.2)
g += arrow((0, 0), v, color=STATEMENT, width=2.6)
g += text("$e_1$", (1.05, -0.35), color=MUTED, fontsize=13) + text("$e_2$", (-0.4, 1.0), color=MUTED, fontsize=13)
g += text("$f_1$", f1 + vector([0.35, -0.25]), color=ACCENT, fontsize=13)
g += text("$f_2$", f2 + vector([-0.4, 0.2]), color=ACCENT, fontsize=13)
g += text("$v$", v + vector([0.3, 0.25]), color=STATEMENT, fontsize=14)
save_figure(g, "basis_change", figsize=4.2, xmin=lo, xmax=hi, ymin=lo, ymax=hi, aspect_ratio=1, axes=False)

# Interactive: the same two grids; hovering a grid point of the f-grid shows both coordinate pairs.
traces = []
for k in range(lo, hi + 1):
    traces += [dict(x=[k, k], y=[lo, hi], mode="lines", line=dict(color=GRID, width=1), hoverinfo="skip", showlegend=False),
               dict(x=[lo, hi], y=[k, k], mode="lines", line=dict(color=GRID, width=1), hoverinfo="skip", showlegend=False)]
for a in range(-4, 8):
    for p, d in ((a * f1, f2), (a * f2, f1)):
        P, Q = p - 6 * d, p + 6 * d
        traces.append(dict(x=floats([P[0], Q[0]]), y=floats([P[1], Q[1]]), mode="lines",
                           line=dict(color=ACCENT, width=1), opacity=0.35, hoverinfo="skip", showlegend=False))
pts = [(a, b) for a in range(-3, 7) for b in range(-3, 7) if lo <= (a * f1 + b * f2)[0] <= hi and lo <= (a * f1 + b * f2)[1] <= hi]
xy = [a * f1 + b * f2 for a, b in pts]
traces.append(dict(x=floats([p[0] for p in xy]), y=floats([p[1] for p in xy]), mode="markers",
                   marker=dict(color=ACCENT, size=5), name="points of the f-grid",
                   text=[f"standard ({p[0]}, {p[1]}), in f1, f2: ({a}, {b})" for p, (a, b) in zip(xy, pts)], hoverinfo="text"))
for w, col, nm in ((f1, ACCENT, "f1"), (f2, ACCENT, "f2"), (v, STATEMENT, "v = 2 f1 + f2")):
    traces.append(dict(x=[0, float(w[0])], y=[0, float(w[1])], mode="lines+markers", name=nm,
                       line=dict(color=col, width=3), marker=dict(size=[0, 9], color=col)))
save_plotly(traces, "basis_change", dict(xaxis=dict(range=[lo, hi], zeroline=False), yaxis=dict(range=[lo, hi], scaleanchor="x", zeroline=False)))
