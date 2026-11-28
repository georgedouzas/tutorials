"""Backlog of a queue of four workers of rate 1 during a burst of arrivals at rate 6 for 100 time units, then at rate 2:
the fluid model and one seeded simulation with Poisson arrivals and exponential processing times."""
import os
import random
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "..", "_filters"))
from figstyle import *  # noqa: E402,F403

import numpy as np  # noqa: E402
import simpy  # noqa: E402

random.seed(4)
env = simpy.Environment()
pool = simpy.Resource(env, capacity=4)
state = {"B": 0, "trace": []}


def job(env):
    with pool.request() as req:
        yield req
        yield env.timeout(random.expovariate(1.0))
    state["B"] -= 1


def source(env):
    while True:
        yield env.timeout(random.expovariate(6 if env.now < 100 else 2))
        state["B"] += 1
        env.process(job(env))


def watch(env):
    while True:
        state["trace"].append((env.now, state["B"]))
        yield env.timeout(0.5)


env.process(source(env))
env.process(watch(env))
env.run(until=260)
t, b = np.array(state["trace"]).T

tf = np.linspace(0, 260, 600)
fluid = np.where(tf <= 100, 2 * tf, np.maximum(0, 200 - 2 * (tf - 100)))

fig, ax = plt.subplots(figsize=(5.6, 3.6))
ax.step(t, b, where="post", color=MUTED, lw=1.0, label="simulation")
ax.plot(tf, fluid, color=ACCENT, lw=1.8, label="fluid model")
ax.axvline(100, color=GRID, lw=1.0, ls="--")
ax.text(104, 232, "burst ends", color=INK, fontsize=9, va="top")
ax.set_xlabel("time")
ax.set_ylabel(r"backlog $B(t)$")
ax.set_ylim(0, 240)
ax.grid(True, color=GRID, lw=0.6)
ax.legend(frameon=False, loc="upper right")
save_figure(fig, "backlog")
