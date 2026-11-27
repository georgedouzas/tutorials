load("../../_filters/figstyle.sage")
# Index (Q+1)(Q+2)/2 of the spin-c Dirac operator of CP^2 for the structure of charge Q, and the zero-mode
# counts (|Y|+2)(|Y|+4)/8 of Dolan (Y = 2Q for Q >= 0, Y = 2Q + 6 for Q <= -3, none for Q = -1, -2).
import matplotlib.pyplot as plt

Qs = list(range(-7, 6))
ind = [(Q + 1)*(Q + 2)/2 for Q in Qs]
zm = []
for Q in Qs:
    if Q in (-1, -2):
        zm.append(0)
    else:
        Y = 2*Q if Q >= 0 else 2*Q + 6
        zm.append((abs(Y) + 2)*(abs(Y) + 4)/8)
fig, ax = plt.subplots(figsize=(6.0, 3.6))
ax.plot(Qs, ind, "o", color=ACCENT, ms=7, label=r"index $(Q+1)(Q+2)/2$")
ax.plot(Qs, zm, "x", color=STATEMENT, ms=8, mew=2, label="number of zero modes")
ax.set_xticks(Qs); ax.set_xlabel(r"$Q$")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(loc="upper center", frameon=False, fontsize=9)
fig.tight_layout()
print("index:", ind); print("zero modes:", zm)
save_matplotlib(fig, "sd-cp2-index")
