# Exercise exr-smd-hyp-cubic: the U(1)^3 anomaly of a generation after the three linear conditions, and its roots.
yQ, yu = var("yQ yu")
yd = -2 * yQ - yu; yL = -3 * yQ; ye = 6 * yQ
cubic = (6 * yQ^3 + 3 * yu^3 + 3 * yd^3 + 2 * yL^3 + ye^3).expand()
print("cubic after the linear conditions:", cubic, "=", cubic.factor())
print("[PASS] cubic = -18 yQ (yu + 4 yQ)(yu - 2 yQ):", bool((cubic + 18 * yQ * (yu + 4 * yQ) * (yu - 2 * yQ)).expand() == 0))
for r in solve(cubic.subs(yQ=1) == 0, yu):
    s = r.rhs(); print("y_Q = 1/6: (y_u, y_d, y_L, y_e) =", [x.subs(yQ=1/6, yu=s/6) for x in (yu, yd, yL, ye)])
print("[PASS] y_Q = 1/6 and y_u = -4 y_Q give the Standard Model (-2/3, 1/3, -1/2, 1):", [x.subs(yQ=1/6, yu=-4/6) for x in (yu, yd, yL, ye)] == [-2/3, 1/3, -1/2, 1])
