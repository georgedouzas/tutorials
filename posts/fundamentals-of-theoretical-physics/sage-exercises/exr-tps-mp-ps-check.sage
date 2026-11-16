# Exercise exr-tps-mp-ps-check: the Prasad-Sommerfield functions K = xi/sinh xi, H = xi coth xi - 1 solve the reduced BPS
# equations xi K' = -K H and xi H' = H + 1 - K^2, with K -> 1, H -> 0 at the origin and K -> 0, H/xi -> 1 at infinity;
# inserted in Phi^a = x^a H(xi)/(g r^2), A^a_i = eps_aij x^j (1 - K(xi))/(g r^2), xi = g v r, they satisfy B^a_i = D_i Phi^a,
# while a pair with the right limits that does not solve the ODEs (K = e^{-xi}, H = xi tanh xi) does not.
xi = var("xi", domain="positive")
K = xi / sinh(xi); H = xi * coth(xi) - 1
r1 = (xi * diff(K, xi) + K * H)
r2 = (xi * diff(H, xi) - H - 1 + K^2)
print("[PASS] xi K' + K H = 0:", bool(r1.simplify_full() == 0))
print("[PASS] xi H' - H - 1 + K^2 = 0:", bool(r2.simplify_full() == 0))
print("Taylor expansions at 0: 1 - K =", taylor(1 - K, xi, 0, 3), "; H =", taylor(H, xi, 0, 3))
ok = bool(limit(K, xi=0) == 1) and bool(limit(H, xi=0) == 0) and bool(limit(K, xi=oo) == 0) and bool(limit(H / xi, xi=oo) == 1)
print("[PASS] boundary values K(0) = 1, H(0) = 0, K(oo) = 0, H/xi(oo) = 1:", ok)
x, y, z, g, v = var("x y z g v", domain="real")
X = [x, y, z]; r = sqrt(x^2 + y^2 + z^2)
eps = lambda a, b, c: (a - b) * (b - c) * (c - a) / 2
def residual(Kf, Hf, pt):
    s = g * v * r
    Phi = [X[a] * Hf(s) / (g * r^2) for a in range(3)]
    A = [[sum(eps(a, i, j) * X[j] for j in range(3)) * (1 - Kf(s)) / (g * r^2) for i in range(3)] for a in range(3)]
    F = lambda a, i, j: diff(A[a][j], X[i]) - diff(A[a][i], X[j]) + g * sum(eps(a, b, c) * A[b][i] * A[c][j] for b in range(3) for c in range(3))
    B = lambda a, l: -sum(eps(l, i, j) * F(a, i, j) for i in range(3) for j in range(3)) / 2
    DPhi = lambda a, l: diff(Phi[a], X[l]) + g * sum(eps(a, b, c) * A[b][l] * Phi[c] for b in range(3) for c in range(3))
    return max(abs((B(a, l) - DPhi(a, l)).subs(pt).n()) for a in range(3) for l in range(3))
pt = {x: 0.4, y: -0.3, z: 0.6, g: 1.1, v: 0.7}
e1 = residual(lambda s: s / sinh(s), lambda s: s * coth(s) - 1, pt)
e2 = residual(lambda s: exp(-s), lambda s: s * tanh(s), pt)
print("[PASS] B = D Phi for the Prasad-Sommerfield fields (largest residual %.1e):" % e1, e1 < 1e-12)
print("[PASS] B != D Phi for K = e^{-xi}, H = xi tanh xi (largest residual %.3f):" % e2, e2 > 1e-3)
