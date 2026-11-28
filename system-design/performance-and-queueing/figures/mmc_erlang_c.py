"""Erlang C: probability that a request waits in the M/M/c queue against the number of servers c, for offered loads of
10, 50 and 87 erlangs (one when c <= a)."""
import os
import sys
from math import exp, lgamma, log

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403


def erlang_c(c, a):
    if c <= a:
        return 1.0
    logs = [n * log(a) - lgamma(n + 1) for n in range(c)]
    tail = c * log(a) - lgamma(c + 1) + log(c / (c - a))
    m = max(logs + [tail])
    return exp(tail - m) / (sum(exp(x - m) for x in logs) + exp(tail - m))


fig, ax = plt.subplots(figsize=(5.2, 3.9))
for a, colour in ((10, ACCENT), (50, EXAMPLE), (87, STATEMENT)):
    cs = list(range(1, int(1.6 * a) + 12))
    ax.plot(cs, [erlang_c(c, a) for c in cs], color=colour, lw=1.8, label=f"$a = {a}$ erlangs")
ax.set_xlabel("number of servers $c$")
ax.set_ylabel("probability of waiting $C(c, a)$")
ax.set_ylim(-0.02, 1.02)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper right")
save_figure(fig, "mmc_erlang_c")
