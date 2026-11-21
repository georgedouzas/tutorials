# Partial sums g_m(x) = sum_{n <= m} h(2^n x)/2^n of the sawtooth series on [0, 2], h(y) = distance from y to the
# nearest even integer, for m = 0, 1, 3, 10. The limit g is continuous and differentiable nowhere.
load("../../_filters/figstyle.sage")
import matplotlib.pyplot as plt

def h(y):
    y = y - 2 * floor(y / 2)
    return y if y <= 1 else 2 - y

def g(x, m):
    return sum(h(2^n * x) / 2^n for n in range(m + 1))

for m in range(8):
    assert g(QQ(1) / 2^m, 12) == (m + 1) / QQ(2)^m           # difference quotients at 0 equal m + 1
N = 4096
xs = [2 * k / N for k in range(N + 1)]
fig, ax = plt.subplots(figsize=(6.6, 3.8))
for m, col in ((0, MUTED), (1, ACCENT), (3, EXAMPLE), (10, STATEMENT)):
    ax.plot(xs, [float(g(QQ(t), m)) for t in [QQ(2 * k) / N for k in range(N + 1)]], color=col,
            lw=1.0 if m < 10 else 1.3)
ax.text(1.45, 0.36, "$g_0$", color=MUTED, fontsize=11)
ax.text(0.3, 0.40, "$g_1$", color=ACCENT, fontsize=11, ha="center")
ax.text(0.10, 1.05, "$g_3$", color=EXAMPLE, fontsize=11)
ax.text(1.0, 1.40, "$g_{10}$", color=STATEMENT, fontsize=11, ha="center")
ax.set_xlim(0, 2); ax.set_ylim(0, 1.5); ax.set_xlabel("$x$")
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
fig.tight_layout()
save_matplotlib(fig, "sawtooth_nowhere")
