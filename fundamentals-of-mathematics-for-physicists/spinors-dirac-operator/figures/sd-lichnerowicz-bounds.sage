load("../../_filters/figstyle.sage")
# Lower bounds for lambda^2 on the unit sphere S^n: R/4 = n(n-1)/4 and the sharper bound n R/(4(n-1)) = (n/2)^2.
import matplotlib.pyplot as plt

ns = list(range(2, 11))
lich = [n*(n - 1)/4 for n in ns]
sharp = [n*n*(n - 1)/(4*(n - 1)) for n in ns]
fig, ax = plt.subplots(figsize=(5.6, 3.6))
ax.plot(ns, lich, "o:", color=ACCENT, label=r"$R/4 = n(n-1)/4$")
ax.plot(ns, sharp, "s--", color=STATEMENT, label=r"$nR/(4(n-1)) = (n/2)^2$")
ax.set_xlabel(r"$n$"); ax.set_ylabel(r"bound for $\lambda^2$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, loc="upper left", fontsize=9)
fig.tight_layout()
print("R/4:", lich); print("(n/2)^2:", sharp)
save_matplotlib(fig, "sd-lichnerowicz-bounds")
