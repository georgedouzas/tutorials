# Exercise exr-gcn-hol-numerical: the transporter of the SU(2) potential A_x = cos(y) T_1, A_y = x T_3 along the
# straight path from (0, 0) to (1, 1), computed by solving dU/dt = -A_mu(x(t)) xdot^mu U and as an ordered product of
# short exponentials; both agree, and U is in SU(2).
import numpy as np
from scipy.linalg import expm
from scipy.integrate import solve_ivp
sig = [np.array([[0, 1], [1, 0]], complex), np.array([[0, -1j], [1j, 0]]), np.array([[1, 0], [0, -1]], complex)]
T = [-0.5j * m for m in sig]
def Adot(t):                       # A_mu(x(t)) xdot^mu on the path x = y = t
    x, y = t, t
    return np.cos(y) * T[0] * 1.0 + x * T[2] * 1.0
def rhs(t, u):
    U = u.reshape(2, 2)
    return (-Adot(t) @ U).reshape(-1)
sol = solve_ivp(rhs, (0, 1), np.eye(2, dtype=complex).reshape(-1), rtol=1e-12, atol=1e-12)
U_ode = sol.y[:, -1].reshape(2, 2)
N = 4000; h = 1.0 / N
U_prod = np.eye(2, dtype=complex)
for k in range(N):                 # later steps multiply from the left
    U_prod = expm(-h * Adot((k + 0.5) * h)) @ U_prod
print("U from the ODE:"); print(np.round(U_ode, 6))
print("[PASS] ordered product agrees with the ODE solution (difference %.1e):" % np.abs(U_ode - U_prod).max(), np.abs(U_ode - U_prod).max() < 1e-7)
print("[PASS] U is unitary with det 1:", np.allclose(U_ode @ U_ode.conj().T, np.eye(2)), abs(np.linalg.det(U_ode) - 1) < 1e-10)
U_naive = expm(-sum(h * Adot((k + 0.5) * h) for k in range(N)))
print("[PASS] the unordered exponential exp(-int A) differs (difference %.3f):" % np.abs(U_naive - U_ode).max(), np.abs(U_naive - U_ode).max() > 1e-3)
