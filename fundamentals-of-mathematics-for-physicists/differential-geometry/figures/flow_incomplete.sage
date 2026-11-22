# The flow of x^2 d_x on the line: the curves t -> x0/(1 - t x0) and the flow domain {t x < 1}, outside which the flow is not defined.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
fig, (a1, a2) = plt.subplots(1, 2, figsize=(9, 4.2))
for k, (x0, lab) in enumerate(zip([2, 1, 0.5, -0.5, -1, -2], ["2", "1", "1/2", "-1/2", "-1", "-2"])):
    T = np.linspace(-3, 3, 2000)
    T = T[T*x0 < 1 - 1e-3]
    X = x0/(1 - T*x0); keep = np.abs(X) < 6
    a1.plot(T[keep], X[keep], color=SERIES[k], lw=1.4, label=r"$x_0 = %s$" % lab)
    if x0 > 0: a1.axvline(1/x0, color=SERIES[k], lw=0.8, ls="--")
a1.plot([-3, 3], [0, 0], color=INK, lw=1.4)
a1.set_xlim(-3, 3); a1.set_ylim(-6, 6); a1.set_xlabel(r"$t$"); a1.set_ylabel(r"$\Phi_t(x_0)$"); a1.legend(fontsize=8, frameon=False, loc="lower right")
t = np.linspace(-3, 3, 400); x = np.linspace(-3, 3, 400); TT, XX = np.meshgrid(t, x)
a2.contourf(TT, XX, (TT*XX < 1).astype(float), levels=[0.5, 1.5], colors=["#c9d6e6"])
tt = np.linspace(1/3, 3, 200); a2.plot(tt, 1/tt, color=STATEMENT, lw=1.4); a2.plot(-tt, -1/tt, color=STATEMENT, lw=1.4)
a2.text(-2.8, 2.2, r"flow domain $t x < 1$", fontsize=11, color=INK)
a2.set_xlim(-3, 3); a2.set_ylim(-3, 3); a2.set_xlabel(r"$t$"); a2.set_ylabel(r"$x$"); a2.set_aspect("equal")
fig.tight_layout()
save_matplotlib(fig, "flow_incomplete")
