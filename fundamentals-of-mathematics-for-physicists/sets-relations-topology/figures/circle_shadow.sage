# The shadow map (X, Y) -> X from the circle to the line: its image is [-1, 1]; a value u in (-1, 1) has the two
# preimages (u, +-sqrt(1 - u^2)), the values +-1 one each, and values outside [-1, 1] none.
load("../../_filters/figstyle.sage")

t = var("t")
u = 0.45
s = sqrt(1 - u^2)
g = parametric_plot((cos(t), sin(t)), (t, 0, 2 * pi), color=ACCENT, thickness=2)
g += line([(-1.6, -1.45), (1.6, -1.45)], color=MUTED, thickness=0.9)
g += line([(-1, -1.45), (1, -1.45)], color=STATEMENT, thickness=5)
g += line([(u, s), (u, -1.45)], color=INK, linestyle="--", thickness=0.9)
g += point([(u, s), (u, -s)], color=EXAMPLE, size=45, zorder=5) + point([(u, -1.45)], color=INK, size=35, zorder=5)
g += point([(-1, 0), (1, 0)], color=STATEMENT, size=35, zorder=5)
g += text("$u$", (u + 0.08, -1.62), color=INK, fontsize=12)
g += text(r"$(u, \sqrt{1 - u^2})$", (u + 0.1, s + 0.14), color=EXAMPLE, fontsize=11, horizontal_alignment="left")
g += text(r"$(u, -\sqrt{1 - u^2})$", (u + 0.12, -s - 0.12), color=EXAMPLE, fontsize=11, horizontal_alignment="left")
g += text("$[-1, 1]$", (-1.0, -1.66), color=STATEMENT, fontsize=11)
g += text("$S^1$", (-0.95, 0.85), color=ACCENT, fontsize=12)
save_figure(g, "circle_shadow", figsize=4.2, aspect_ratio=1, axes=False, frame=False, xmin=-1.7, xmax=1.9, ymin=-1.8, ymax=1.3)
