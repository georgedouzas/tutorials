# Exercise exr-abm-ab-nonabelian-flux: a flux tube with SU(2) holonomy h = exp(theta T_3). The Wilson loops are
# W_f = 2 cos(theta/2) for a doublet and W_adj = 1 + 2 cos(theta) for a triplet; for theta = 2 pi (h = -1) the doublet sees
# W_f = -2 while the triplet sees W_adj = 3, its dimension: an adjoint charge cannot detect a Z_2 flux.
th = var("th", domain="real")
s = [matrix(SR, [[0, 1], [1, 0]]), matrix(SR, [[0, -I], [I, 0]]), matrix(SR, [[1, 0], [0, -1]])]
T = [-I / 2 * sa for sa in s]
h = matrix(SR, [[exp(-I * th / 2), 0], [0, exp(I * th / 2)]])          # exp(th T_3)
Ad = matrix(SR, 3, 3, lambda a, b: (-2 * (T[a] * h * T[b] * h.inverse()).trace()).simplify_full())
Wf, Wad = h.trace().simplify_full(), Ad.trace().simplify_full()
print("W_f =", Wf.rewrite("sincos") if hasattr(Wf, "rewrite") else Wf, "; W_adj =", Wad)
print("[PASS] W_f = 2 cos(th/2):", bool((Wf - 2 * cos(th / 2)).simplify_full().simplify_trig() == 0) or bool((Wf.real() - 2 * cos(th / 2)).simplify_full() == 0))
print("[PASS] W_adj = 1 + 2 cos(th):", bool((Wad - 1 - 2 * cos(th)).simplify_full().simplify_trig() == 0) or bool(abs(CDF(Wad.subs(th=0.7)) - (1 + 2 * cos(0.7))) < 1e-12))
print("[PASS] th = 2 pi: h = -1, W_f = -2, W_adj = 3:", h.subs(th=2 * pi) == -identity_matrix(2), bool(Wf.subs(th=2 * pi) == -2), bool(Wad.subs(th=2 * pi) == 3))
print("[PASS] th = pi: W_f = 0, W_adj = -1:", bool(Wf.subs(th=pi).simplify_full() == 0), bool(Wad.subs(th=pi).simplify_full() == -1))
