# Exercise exr-gcn-wl-square: for the constant SU(2) potential A_x = c T_1, A_y = c T_2, the fundamental Wilson loop of the
# square of side L is W = 1/2 + 2 cos(cL) - (1/2) cos(2cL); it first vanishes at cL = arccos(1 - sqrt 2) = 1.9979, while the
# abelian Stokes guess 2 cos(c^2 L^2 / 2) vanishes at cL = sqrt(pi) = 1.7725.
L, c = var("L c", domain="positive")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
expT = lambda th, k: cos(th / 2) * identity_matrix(SR, 2) - I * sin(th / 2) * s[k]
Hol = expT(c * L, 1) * expT(c * L, 0) * expT(-c * L, 1) * expT(-c * L, 0)
W = Hol.trace().simplify_full()
Wc = 1/2 + 2 * cos(c * L) - cos(2 * c * L) / 2
print("[PASS] W = 1/2 + 2 cos(cL) - cos(2cL)/2:", bool((W - Wc).trig_reduce().simplify_full() == 0))
u = var("u")
x0 = arccos(1 - sqrt(2)).n()
print("first zero of W: cL = %.4f;  W there = %.1e" % (x0, Wc.subs(c=1, L=x0).n()))
print("[PASS] it solves cos^2(cL) - 2 cos(cL) - 1 = 0:", abs((cos(x0)^2 - 2 * cos(x0) - 1).n()) < 1e-12)
print("[PASS] the abelian guess vanishes earlier, at cL = sqrt(pi) = %.4f:" % sqrt(pi).n(), sqrt(pi).n() < x0)
print("[PASS] at cL = pi the loop reaches W = -2, the trace of -1:", bool(Wc.subs(c=1, L=pi) == -2))
