# Left: e^(-t^2) with the area F(1) = int_0^1 e^(-t^2) dt shaded. Right: F(x) = (sqrt(pi)/2) erf(x) with its tangent at
# x = 1, whose slope e^(-1) is the height of the curve on the left at t = 1 (the fundamental theorem).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

x = var("x")
F = sqrt(pi) / 2 * erf(x)  # = int_0^x e^(-t^2) dt
assert bool(diff(F, x) == exp(-x^2)) and F.subs(x=0) == 0
F1, s1 = float(F.subs(x=1)), float(exp(-1))
Ff = fast_callable(F, vars=[x], domain=RDF)
ts = [-0.5 + k * 3.0 / 600 for k in range(601)]
fig, (a1, a2) = plt.subplots(1, 2, figsize=(8.6, 3.4))
a1.plot(ts, [math.exp(-t * t) for t in ts], color=INK, lw=1.8)
sh = [t for t in ts if 0 <= t <= 1]
a1.fill_between(sh, [math.exp(-t * t) for t in sh], color=ACCENT, alpha=0.3)
a1.plot([1, 1], [0, s1], color=STATEMENT, lw=1.6)
a1.text(0.18, 0.35, "$F(1)$", color=ACCENT, fontsize=12)
a1.text(1.06, s1 + 0.04, "$e^{-1}$", color=STATEMENT, fontsize=11)
a1.text(1.55, 0.25, "$e^{-t^2}$", color=INK, fontsize=12)
a1.set_xlabel("$t$"); a1.set_ylim(0, 1.1); a1.set_xlim(-0.5, 2.5)
a2.plot(ts, [Ff(t) for t in ts], color=ACCENT, lw=1.8)
tl = [0.3, 1.7]
a2.plot(tl, [F1 + s1 * (t - 1) for t in tl], color=STATEMENT, lw=1.2, ls="--")
a2.plot([1], [F1], "o", color=STATEMENT, ms=5)
a2.text(1.12, F1 - 0.12, "slope $e^{-1}$", color=STATEMENT, fontsize=11)
a2.text(1.95, 0.7, "$F(x)$", color=ACCENT, fontsize=12)
a2.set_xlabel("$x$"); a2.set_xlim(-0.5, 2.5); a2.set_ylim(-0.5, 1.1)
for ax in (a1, a2):
    ax.axhline(0, color=GRID, lw=0.8); ax.axvline(0, color=GRID, lw=0.8)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "ftc_area")
