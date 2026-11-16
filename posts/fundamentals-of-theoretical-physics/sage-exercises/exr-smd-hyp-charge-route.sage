# Exercise exr-smd-hyp-charge-route: Pal's route. In right-handed notation impose equal charges of the two chiralities through
# Q = T_3 + y, y_uR = y_Q + 1/2, y_dR = y_Q - 1/2, y_eR = y_L - 1/2, the SU(2)^2 U(1) condition y_L = -3 y_Q and the cubic
# 6 y_Q^3 + 2 y_L^3 - 3 y_uR^3 - 3 y_dR^3 - y_eR^3 = 0 (Pal eq. 18.144).
yQ = var("yQ")
yL = -3 * yQ; yuR = yQ + 1/2; ydR = yQ - 1/2; yeR = yL - 1/2
cubic = (6 * yQ^3 + 2 * yL^3 - 3 * yuR^3 - 3 * ydR^3 - yeR^3).expand()
print("cubic:", cubic, "=", cubic.factor())
print("[PASS] the cubic is -27 (y_Q - 1/6)^3, with the triple root y_Q = 1/6:", bool((cubic + 27 * (yQ - 1/6)^3).expand() == 0))
vals = [x.subs(yQ=1/6) for x in (yQ, yuR, ydR, yL, yeR)]
print("(y_Q, y_uR, y_dR, y_L, y_eR) =", vals)
print("[PASS] the Standard Model values (1/6, 2/3, -1/3, -1/2, -1):", vals == [1/6, 2/3, -1/3, -1/2, -1])
grav = (6 * yQ + 2 * yL - 3 * yuR - 3 * ydR - yeR).expand()
print("[PASS] the gravitational condition reduces to", grav, "and also vanishes at y_Q = 1/6:", bool(grav.subs(yQ=1/6) == 0))
