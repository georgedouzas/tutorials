# Exercise exr-gcn-wl-su2-classes: for U = exp(theta n.T) in SU(2), the fundamental Wilson loop is tr U = 2 cos(theta/2),
# the adjoint one is tr Ad(U) = 1 + 2 cos(theta) = (tr U)^2 - 1, and both are unchanged by conjugation U -> g^{-1} U g.
import numpy as np
from scipy.linalg import expm
rng = np.random.default_rng(int(1))
sig = [np.array([[0, 1], [1, 0]], complex), np.array([[0, -1j], [1j, 0]]), np.array([[1, 0], [0, -1]], complex)]
T = [-0.5j * m for m in sig]
def element(theta, n):
    return expm(theta * sum(n[a] * T[a] for a in range(3)))
def adjoint(U):                    # R_ab with U T_b U^{-1} = R_ab T_a, using tr(T_a T_b) = -delta_ab / 2
    return np.array([[-2 * np.trace(T[a] @ U @ T[b] @ np.linalg.inv(U)) for b in range(3)] for a in range(3)]).real
ok1 = ok2 = ok3 = True
for k in range(int(5)):
    theta = rng.uniform(0, 4 * np.pi); n = rng.normal(size=3); n /= np.linalg.norm(n)
    U = element(theta, n); g = element(rng.uniform(0, 4 * np.pi), rng.normal(size=3))
    W, Wad = np.trace(U), np.trace(adjoint(U))
    print("theta = %.3f: tr U = %.6f, 2 cos(theta/2) = %.6f, tr Ad(U) = %.6f" % (theta, W.real, 2 * np.cos(theta / 2), Wad))
    ok1 &= abs(W - 2 * np.cos(theta / 2)) < 1e-10
    ok2 &= abs(Wad - (1 + 2 * np.cos(theta))) < 1e-10 and abs(Wad - (W.real**2 - 1)) < 1e-10
    ok3 &= abs(np.trace(np.linalg.inv(g) @ U @ g) - W) < 1e-10
print("[PASS] tr U = 2 cos(theta/2), real:", ok1)
print("[PASS] tr Ad(U) = 1 + 2 cos(theta) = (tr U)^2 - 1:", ok2)
print("[PASS] the traces are invariant under conjugation:", ok3)
print("[PASS] U = -1 (theta = 2 pi) has tr U = -2 and tr Ad(U) = 3:", np.allclose(element(2 * np.pi, [0, 0, 1]), -np.eye(2)),
      abs(np.trace(adjoint(element(2 * np.pi, [0, 0, 1]))) - 3) < 1e-10)
