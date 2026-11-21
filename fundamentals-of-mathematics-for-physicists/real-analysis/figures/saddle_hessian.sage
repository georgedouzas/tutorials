# f(x, y) = x^3 - 3x + y^2: a strict local minimum at (1, 0), Hessian diag(6, 2) of signature (2, 0, 0), and a saddle at
# (-1, 0), Hessian diag(-6, 2) of signature (1, 1, 0). Static: level curves with the two critical points and, at the
# saddle, the eigen-directions of the Hessian (f decreases along the x-axis, increases along the y-direction).
# Interactive: the graph of f as a surface, with the two critical points marked.
load("../../_filters/figstyle.sage")

x, y = var("x y")
f = x^3 - 3*x + y^2
grad = [diff(f, v) for v in (x, y)]
crit = solve(grad, [x, y], solution_dict=True)
H = matrix(SR, 2, 2, lambda i, j: diff(f, (x, y)[i], (x, y)[j]))
pts = sorted([(s[x], s[y]) for s in crit])
assert pts == [(-1, 0), (1, 0)]
assert H.subs(x=1, y=0) == diagonal_matrix([6, 2]) and H.subs(x=-1, y=0) == diagonal_matrix([-6, 2])

X0, X1, Y0, Y1 = -2.3, 2.3, -1.6, 1.6
g = contour_plot(f, (x, X0, X1), (y, Y0, Y1), contours=[-2.5, -1.5, -0.8, 0, 0.8, 1.5, 2, 2.5, 3.5, 5],
                 fill=False, cmap=[MUTED], linewidths=0.9, plot_points=300)
g += contour_plot(f, (x, X0, X1), (y, Y0, Y1), contours=[2], fill=False, cmap=[STATEMENT], linewidths=1.6, plot_points=300)
g += point((1, 0), color=ACCENT, size=40, zorder=5) + point((-1, 0), color=STATEMENT, size=40, zorder=5)
g += arrow((-1, 0), (-1.55, 0), color=STATEMENT, width=1.6, arrowsize=3) + arrow((-1, 0), (-0.45, 0), color=STATEMENT, width=1.6, arrowsize=3)
g += arrow((-1, 0), (-1, 0.6), color=ACCENT, width=1.6, arrowsize=3) + arrow((-1, 0), (-1, -0.6), color=ACCENT, width=1.6, arrowsize=3)
g += text("minimum\n$(2, 0, 0)$", (1.0, -0.42), color=ACCENT, fontsize=10)
g += text("saddle\n$(1, 1, 0)$", (-1.0, -0.92), color=STATEMENT, fontsize=10)
save_figure(g, "saddle_hessian", figsize=(6, 4.2), xmin=X0, xmax=X1, ymin=Y0, ymax=Y1, aspect_ratio=1,
            axes_labels=["$x$", "$y$"], frame=True, axes=False)

# Interactive surface z = f(x, y) on a coarse grid, with the critical points.
xs = [-2.1 + 4.2 * i / 40 for i in range(41)]
ys = [-1.6 + 3.2 * j / 32 for j in range(33)]
ff = fast_callable(f, vars=[x, y], domain=RDF)
z = [[ff(a, b) for a in xs] for b in ys]
traces = [dict(type="surface", x=xs, y=ys, z=z, showscale=False, opacity=0.85,
               colorscale=[[0, ACCENT], [0.5, "#f2f2f2"], [1, STATEMENT]], name="z = x^3 - 3x + y^2",
               hovertemplate="x=%{x:.2f}, y=%{y:.2f}, z=%{z:.2f}<extra></extra>"),
          dict(type="scatter3d", mode="markers+text", x=[1, -1], y=[0, 0], z=[-2, 2],
               text=["minimum, signature (2,0,0)", "saddle, signature (1,1,0)"], textposition="top center",
               marker=dict(size=5, color=[ACCENT, STATEMENT]), name="critical points")]
save_plotly(traces, "saddle_hessian", dict(scene=dict(xaxis_title="x", yaxis_title="y", zaxis_title="z")))
