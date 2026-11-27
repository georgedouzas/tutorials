load("../../_filters/figstyle.sage")
# Size N = 2^floor(d/2) of the gamma matrices, and real dimension of a minimal spinor of signature (1, d - 1).
import matplotlib.pyplot as plt

ds = list(range(1, 13))
N = [2^(d // 2) for d in ds]


def real_dim(p, q):
    n = 2^((p + q) // 2); r = (p - q) % 8
    return n // 2 if r == 0 else (2 * n if r in (3, 5) else n)


R = [real_dim(1, d - 1) for d in ds]
print("N:", N); print("real dimension, Lorentzian:", R)
fig, ax = plt.subplots(figsize=(6.4, 3.8))
ax.plot(ds, [log(x, 2) for x in N], "o-", color=ACCENT, label=r"size $N = 2^{\lfloor d/2\rfloor}$ of the $\gamma^a$")
ax.plot(ds, [log(x, 2) for x in R], "s--", color=STATEMENT, label=r"real dimension of a minimal spinor, signature $(1, d - 1)$")
ax.set_xticks(ds); ax.set_yticks(range(0, 7)); ax.set_yticklabels([r"$2^{%d}$" % k for k in range(7)])
ax.set_xlabel(r"$d$"); ax.set_ylim(-0.4, 6.6); ax.grid(color=GRID, lw=0.5)
ax.legend(loc="upper left", frameon=False, fontsize=9)
for side in ("top", "right"):
    ax.spines[side].set_visible(False)
save_matplotlib(fig, "sd-spinor-dimensions")
