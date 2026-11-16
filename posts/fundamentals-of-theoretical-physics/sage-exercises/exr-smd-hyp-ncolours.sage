# Exercise exr-smd-hyp-ncolours: anomaly cancellation for one generation with N colours, and the resulting charges when the
# electron has charge -1 (y_e = 1 for e^c).
N, yQ, yu = var("N yQ yu")
yd = -2 * yQ - yu; yL = -N * yQ
ye = -2 * yL                                   # gravitational condition: 2N yQ + N yu + N yd + 2 yL + ye = 0
print("gravitational condition:", (2 * N * yQ + N * yu + N * yd + 2 * yL + ye).expand())
cubic = (2 * N * yQ^3 + N * yu^3 + N * yd^3 + 2 * yL^3 + ye^3).expand()
print("cubic / (6 N yQ) =", (cubic / (6 * N * yQ)).simplify_full())
sols = solve(cubic / (6 * N * yQ) == 0, yu); print("roots:", sols)
print("[PASS] y_u = y_Q(-1 - N) or y_Q(N - 1):", sorted([(s.rhs() / yQ).simplify_full() for s in sols], key=str) == sorted([-N - 1, N - 1], key=str))
yQN = solve(ye == 1, yQ)[0].rhs(); print("y_e = 1 gives y_Q =", yQN)
Qu, Qd = 1/2 + yQN, -1/2 + yQN
print("Q_u =", Qu, ", Q_d =", Qd, "; N = 3:", Qu.subs(N=3), Qd.subs(N=3))
print("[PASS] Q_u = 1/2 + 1/(2N), Q_d = -1/2 + 1/(2N), giving 2/3 and -1/3 for N = 3:", bool(Qu.subs(N=3) == 2/3 and Qd.subs(N=3) == -1/3))
cp = ((N + 1) / 2 * Qu + (N - 1) / 2 * Qd).simplify_full()
print("[PASS] a baryon of (N+1)/2 up and (N-1)/2 down quarks has charge", cp, "for every odd N:", bool(cp == 1))
