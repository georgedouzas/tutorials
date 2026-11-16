# Figure: two classical tests of general relativity, G = c = 1. Left: redshift z of light from a static source at radius r,
# received far away, exact z = (1 - 2m/r)^(-1/2) - 1 (prp-grf-redshift) and first order m/r. Right: excess round-trip time of
# a radar signal Earth-Mars passing the Sun at closest distance r0, from the exact integral (prp-grf-shapiro) and from the
# leading formula 4m(ln(4 r1 r2/r0^2) + 1). Checks: the exact and first-order redshifts at the Sun, Sirius B and a
# neutron star; the Shapiro integral against the first-order t(r, r0) and the leading formula at r0 = 1, 3, 10 solar radii. Output: figures/grf_classical_tests.svg.
import os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.integrate import quad
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "grf_classical_tests.svg")
G, c, Msun = 6.674e-11, 2.99792458e8, 1.98892e30
msun = G*Msun/c**2; AU = 1.495978707e11; Rsun = 6.957e8
zex = lambda x: (1 - 2*x)**-0.5 - 1          # x = m/r
for name, x, want in (("Sun", msun/Rsun, 2.123e-6), ("Sirius B", G*1.018*Msun/c**2/5.84e6, 2.576e-4), ("neutron star", 2.0677e3/12e3, 0.2352)):
    print("[PASS] redshift of %s: exact z = %.4e, first order %.4e" % (name, zex(x), x) if abs(zex(x)/want - 1) < 2e-3 else "[FAIL] %s" % name)
def leg(R, R0, m):
    f = lambda x: 1 - 2*m/x
    def g(u):
        x = R0*np.cosh(u); s = 1 - (R0/x)**2*f(x)/f(R0)
        return R0*np.sinh(u)*(1/(f(x)*np.sqrt(s)) - x/np.sqrt(x*x - R0*R0))
    return quad(g, 0, np.arccosh(R/R0), epsabs=1e-9, epsrel=1e-12, limit=400)[0]
r1, r2 = AU, 1.524*AU
exact = lambda R0: 2*(leg(r1, R0, msun) + leg(r2, R0, msun))/c*1e6
approx = lambda R0: 4*msun/c*(np.log(4*r1*r2/R0**2) + 1)*1e6
first = lambda R0: 2*sum(2*msun*np.log((R + np.sqrt(R*R - R0*R0))/R0) + msun*np.sqrt((R - R0)/(R + R0)) for R in (r1, r2))/c*1e6
for k in (1, 3, 10):
    e, f1, a = exact(k*Rsun), first(k*Rsun), approx(k*Rsun)
    print(("[PASS]" if abs(e - f1) < 0.01 and abs(e - a) < 1 else "[FAIL]") + " Shapiro delay Earth-Mars at r0 = %d Rsun: exact %.2f us, first-order t(r, r0) %.2f us, leading formula %.2f us" % (k, e, f1, a))
fig, axes = plt.subplots(1, 2, figsize=(10, 4))
ax = axes[0]
x = np.logspace(-6, np.log10(0.49), 400)
ax.loglog(1/x, zex(x), color="royalblue", lw=3, alpha=0.6, label="exact")
ax.loglog(1/x, x, color="black", ls="--", lw=1.2, label="first order $m/r$")
for name, xx in (("Sun", msun/Rsun), ("Sirius B", G*1.018*Msun/c**2/5.84e6), ("neutron star", 2.0677e3/12e3)):
    ax.plot(1/xx, zex(xx), "o", color="firebrick", ms=5)
    ax.annotate(name, (1/xx, zex(xx)), textcoords="offset points", xytext=(6, 6), fontsize=8)
ax.set_xlabel("$r/m$ of the source"); ax.set_ylabel("redshift $z$")
ax.set_title("gravitational redshift", fontsize=10); ax.legend(fontsize=8, frameon=False)
ax = axes[1]
k = np.linspace(1, 30, 40)
ax.plot(k, [exact(kk*Rsun) for kk in k], color="royalblue", lw=3, alpha=0.6, label="exact integral")
ax.plot(k, approx(k*Rsun), color="black", ls="--", lw=1.2, label=r"$4m(\ln(4r_1r_2/r_0^2) + 1)$")
ax.set_xlabel(r"closest approach $r_0/R_\odot$"); ax.set_ylabel(r"excess round-trip time ($\mu$s)")
ax.set_title("Shapiro delay, Earth to Mars", fontsize=10); ax.legend(fontsize=8, frameon=False)
fig.tight_layout(); fig.savefig(OUT); print("wrote", os.path.basename(OUT))
