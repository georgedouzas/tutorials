# Exercise exr-gcn-hol-small-square: for the SU(2) potential A_x = x y T_1, A_y = x T_2 + T_3, the holonomy of the square
# [0, eps]^2 traversed counterclockwise from the origin satisfies (Hol - 1)/eps^2 -> -F_xy(0) = -T_2 as eps -> 0, with an
# error of order eps.
import numpy as np
from scipy.linalg import expm
sig = [np.array([[0, 1], [1, 0]], complex), np.array([[0, -1j], [1j, 0]]), np.array([[1, 0], [0, -1]], complex)]
T = [-0.5j * m for m in sig]
A = lambda x, y: (x * y * T[0], x * T[1] + T[2])
def hol(eps, N=400):
    corners = [(0, 0), (eps, 0), (eps, eps), (0, eps), (0, 0)]
    U = np.eye(2, dtype=complex)
    for (x0, y0), (x1, y1) in zip(corners, corners[1:]):
        for k in range(N):
            t = (k + 0.5) / N
            x, y = x0 + t * (x1 - x0), y0 + t * (y1 - y0)
            Ax, Ay = A(x, y)
            U = expm(-(Ax * (x1 - x0) + Ay * (y1 - y0)) / N) @ U
    return U
F0 = T[1]                          # F_xy(0) = d_x A_y - d_y A_x + [A_x, A_y] at the origin
for eps in (0.2, 0.1, 0.05, 0.025):
    D = (hol(eps) - np.eye(2)) / eps**2 + F0
    print("eps = %.3f   |(Hol - 1)/eps^2 + F_xy(0)| = %.4f" % (eps, np.abs(D).max()))
errs = [np.abs((hol(e) - np.eye(2)) / e**2 + F0).max() for e in (0.04, 0.02)]
print("[PASS] the error halves with eps (ratio %.2f), so it is of order eps:" % (errs[0] / errs[1]), 1.8 < errs[0] / errs[1] < 2.2)
