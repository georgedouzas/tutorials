# f(x) = x^3 - 2 on [1, 2] and the first six intervals of bisection, each half of the previous one and each with a
# sign change of f; they close in on the root 2^(1/3).
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

f = lambda t: t^3 - 2
a, b = QQ(1), QQ(2)
ivs = [(a, b)]
for _ in range(5):
    m = (a + b) / 2
    a, b = (a, m) if f(m) > 0 else (m, b)
    ivs.append((a, b))
assert all(f(p) < 0 < f(q) for p, q in ivs)
r = float(2^(1/3))
fig, ax = plt.subplots(figsize=(6.4, 4.2))
xs = [1 + k / 400 for k in range(401)]
ax.axhline(0, color=GRID, lw=0.8)
ax.plot(xs, [float(f(t)) for t in xs], color=INK, lw=1.5)
for k, (p, q) in enumerate(ivs):
    y = -1.6 - 0.45 * k
    ax.plot([float(p), float(q)], [y, y], color=ACCENT, lw=2.4, solid_capstyle="butt")
    ax.text(0.97, y, "$I_%d$" % k, color=ACCENT, fontsize=10, ha="right", va="center")
ax.axvline(r, color=STATEMENT, lw=0.9, ls=(0, (4, 3)))
ax.plot([r], [0], "o", color=STATEMENT, ms=5)
ax.text(r + 0.03, 0.35, r"$\sqrt[3]{2}$", color=STATEMENT, fontsize=12)
ax.text(1.55, 4.2, "$x^3 - 2$", color=INK, fontsize=12)
ax.set_xlim(0.85, 2.05); ax.set_ylim(-4.2, 6.3); ax.set_xlabel("$x$")
ax.set_yticks([-1, 0, 2, 4, 6])
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "continuity_bisection")
