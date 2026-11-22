# A disc of initial conditions of the pendulum H = p^2/2 - cos q (radius 0.3 about (0, 1.6)) carried by the flow to t = 0, 2, 4, 6.
load("../../_filters/figstyle.sage")
import numpy as np
import matplotlib.pyplot as plt
def f(x): return np.array([x[1], -np.sin(x[0])])
def rk4(x, h):
    k1 = f(x); k2 = f(x + h/2*k1); k3 = f(x + h/2*k2); k4 = f(x + h*k3)
    return x + h/6*(k1 + 2*k2 + 2*k3 + k4)
s = np.linspace(0, 2*np.pi, 800, endpoint=False)
X = np.array([0.3*np.cos(s), 1.6 + 0.3*np.sin(s)])
fig, ax = plt.subplots(figsize=(8, 5.4))
q = np.linspace(-np.pi, np.pi, 600)
for sg in (1, -1):
    ax.plot(q, sg*2*np.cos(q/2), color=MUTED, lw=1, ls="--")
shades = ["#9aa3ad", "#7fa3cc", "#4a7fb8", ACCENT]
t, h = 0.0, 0.005
for k, T in enumerate([0, 2, 4, 6]):
    while t < T - 1e-9:
        X = rk4(X, h); t += h
    area = 0.5*abs(np.dot(X[0], np.roll(X[1], -1)) - np.dot(np.roll(X[0], -1), X[1]))
    print("t = %.1f, polygon area = %.4f" % (T, area))
    ax.fill(X[0], X[1], color=shades[k], alpha=0.8, lw=0, label=r"$t = %d$" % T)
ax.set_xlim(-np.pi, np.pi); ax.set_ylim(-2.2, 2.2); ax.set_aspect("equal"); ax.legend(loc="lower right", fontsize=9, frameon=False)
ax.set_xticks([-np.pi, -np.pi/2, 0, np.pi/2, np.pi]); ax.set_xticklabels([r"$-\pi$", r"$-\pi/2$", r"$0$", r"$\pi/2$", r"$\pi$"])
ax.set_xlabel(r"$q$"); ax.set_ylabel(r"$p$")
save_matplotlib(fig, "spl_liouville_area")
