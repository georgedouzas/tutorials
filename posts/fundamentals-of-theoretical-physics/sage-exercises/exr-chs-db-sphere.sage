# Exercise exr-chs-db-sphere: Dirac brackets of the particle on a sphere, from the two constraints |x|^2 - R^2, x.p and from all four of the multiplier formulation.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
def dirac(psi, qs, ps):
    C = matrix(SR, len(psi), len(psi), lambda i, j: PB(psi[i], psi[j], qs, ps)); Ci = C.inverse()
    return lambda A, B: (PB(A, B, qs, ps) - sum(PB(A, psi[i], qs, ps)*Ci[i, j]*PB(psi[j], B, qs, ps)
                                              for i in range(len(psi)) for j in range(len(psi)))).simplify_full()
x1, x2, x3, p1, p2, p3, lam, pl, m, R = var('x1 x2 x3 p1 p2 p3 lam pl m R')
X = vector([x1, x2, x3]); P = vector([p1, p2, p3]); r2 = X*X
D2 = dirac([r2 - R^2, X*P], [x1, x2, x3], [p1, p2, p3])
print('{x1, x2}_D =', D2(x1, x2))
print('{x1, p1}_D =', D2(x1, p1), ';  {x1, p2}_D =', D2(x1, p2))
print('{p1, p2}_D =', D2(p1, p2))
print('{x_i, p_j}_D - (delta_ij - x_i x_j/|x|^2):', [(D2(X[i], P[j]) - (kronecker_delta(i, j) - X[i]*X[j]/r2)).simplify_full() for i in range(3) for j in range(3)])
print('{p_i, p_j}_D - (x_j p_i - x_i p_j)/|x|^2:', [(D2(P[i], P[j]) - (X[j]*P[i] - X[i]*P[j])/r2).simplify_full() for i in range(3) for j in range(3)])
D4 = dirac([pl, r2 - R^2, X*P, P*P/m - lam*r2], [x1, x2, x3, lam], [p1, p2, p3, pl])
F = [x1, x2, x3, p1, p2, p3]
print('four constraints give the same brackets of x and p:', all((D4(A, B) - D2(A, B)).simplify_full() == 0 for A in F for B in F))
