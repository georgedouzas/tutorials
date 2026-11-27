load("../../_filters/figstyle.sage")
# Dirac spectrum of the unit spheres S^2, S^3, S^4: eigenvalues +-(l + n/2), multiplicity 2^floor(n/2) binom(l+n-1, l) each sign.
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(6.0, 3.4))
off = {2: -0.08, 3: 0.0, 4: 0.08}
for n, col in ((2, ACCENT), (3, EXAMPLE), (4, STATEMENT)):
    xs, ys = [], []
    for l in range(6):
        lam = l + n/2; mult = 2^(n//2)*binomial(l + n - 1, l)
        for sg in (1, -1):
            xs.append(float(sg*lam) + off[n]); ys.append(float(mult))
    ax.vlines(xs, 1, ys, color=col, alpha=0.45)
    ax.plot(xs, ys, "o", color=col, label=r"$S^%d$" % n)
ax.set_yscale("log"); ax.set_ylim(0.8, 400)
ax.set_xlabel(r"eigenvalue $\lambda$"); ax.set_ylabel("multiplicity")
for s in ("top", "right"): ax.spines[s].set_visible(False)
ax.legend(frameon=False, loc="upper center", ncol=3, fontsize=9)
fig.tight_layout()
print("S^2 multiplicities:", [2*(l + 1) for l in range(6)])
save_matplotlib(fig, "sd-sphere-spectrum")
