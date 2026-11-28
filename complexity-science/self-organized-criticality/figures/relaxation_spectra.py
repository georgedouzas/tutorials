"""Spectrum of a single relaxation and of forty relaxations with log-uniform times, against slopes -2 and -1."""
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
from scipy.signal import lfilter  # noqa: E402
from skcomplex.core.analysis import spectrum  # noqa: E402

rng = np.random.default_rng(1066)
n = 2 ** 17
many = np.zeros(n)
for tau in np.exp(np.linspace(0, np.log(1000), 40)):
    a = np.exp(-1 / tau)
    many += lfilter([np.sqrt(1 - a * a)], [1.0, -a], rng.normal(size=n))
a = np.exp(-1 / 100)
one = 40 * lfilter([np.sqrt(1 - a * a)], [1.0, -a], rng.normal(size=n))
fig, ax = plt.subplots(figsize=(6.2, 3.6))
for x, color, label in ((one, STATEMENT, r"one relaxation, $\tau = 100$"), (many, ACCENT, r"forty relaxations, $\tau \in [1, 1000]$")):
    r = spectrum(x)
    ax.loglog(r.frequencies[1:], r.power[0][1:], color=color, lw=1.0, label=label)
f = np.array([2e-3, 1e-1])
ax.loglog(f, 0.6 * f ** -1, color=MUTED, lw=1.0, ls="--", label=r"slope $-1$")
ax.set_xlabel(r"frequency $f$")
ax.set_ylabel(r"power $S(f)$")
ax.legend(frameon=False)
fig.tight_layout()
save_figure(fig, "relaxation_spectra")
