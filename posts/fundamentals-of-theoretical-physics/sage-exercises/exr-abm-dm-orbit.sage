# Exercise exr-abm-dm-orbit: integrate the motion of a charge in the monopole field numerically (m = 1, q g/4pi = 0.5).
# The speed and J = r x v - (q g/4pi) r_hat stay constant, and the angle between r_hat and J stays fixed at
# arccos(-(q g/4pi)/|J|): the orbit lies on a cone with axis -J.
import numpy as np
from scipy.integrate import solve_ivp
k = 0.5                                      # q g / 4 pi, with m = 1
def rhs(t, u):
    r, v = u[:3], u[3:]
    return np.concatenate([v, k * np.cross(v, r) / np.linalg.norm(r)**3])
u0 = np.array([1.0, 0.0, 0.3, 0.0, 0.8, 0.1])
sol = solve_ivp(rhs, (0, 40), u0, rtol=1e-11, atol=1e-12, dense_output=True)
def J(u):
    r, v = u[:3], u[3:]
    return np.cross(r, v) - k * r / np.linalg.norm(r)
ts = np.linspace(0, 40, 400); us = sol.sol(ts).T
Js = np.array([J(u) for u in us]); speeds = np.linalg.norm(us[:, 3:], axis=1)
cosang = np.array([np.dot(u[:3] / np.linalg.norm(u[:3]), Js[0]) / np.linalg.norm(Js[0]) for u in us])
print("J(0) =", np.round(Js[0], 6), " |J| = %.6f" % np.linalg.norm(Js[0]))
print("[PASS] |J(t) - J(0)| stays below 1e-7:", np.abs(Js - Js[0]).max() < 1e-7)
print("[PASS] the speed is constant:", np.ptp(speeds) < 1e-8)
print("[PASS] cos(angle between r_hat and J) = -k/|J| = %.6f throughout:" % (-k / np.linalg.norm(Js[0])), np.abs(cosang + k / np.linalg.norm(Js[0])).max() < 1e-7)
