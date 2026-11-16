# Exercise exr-tps-mp-thooft-tensor: for a unit triplet n^a and any one-form a_i, the potential
# A^a_i = (1/g) eps_abc (d_i n^b) n^c + n^a a_i satisfies D_i n^a = d_i n^a + g eps_abc A^b_i n^c = 0, and its field strength
# F^a_ij = d_i A^a_j - d_j A^a_i + g eps_abc A^b_i A^c_j has n^a F^a_ij = d_i a_j - d_j a_i - (1/g) eps_abc n^a d_i n^b d_j n^c.
# Checked at random points for a non-trivial n (normalised from polynomials) and polynomial a_i.
x, y, z, g = var("x y z g", domain="real")
X = [x, y, z]
eps = lambda a, b, c: (a - b) * (b - c) * (c - a) / 2
m = [1 + x^2 - y * z, x * y + z, 2 - x + y^2 * z]
nn = sqrt(sum(c^2 for c in m)); n = [c / nn for c in m]
a = [x * y - z^2, 3 * z + x^3, y - x * z]
A = [[sum(eps(i, b, c) * diff(n[b], X[j]) * n[c] for b in range(3) for c in range(3)) / g + n[i] * a[j] for j in range(3)] for i in range(3)]
Dn = [[diff(n[i], X[j]) + g * sum(eps(i, b, c) * A[b][j] * n[c] for b in range(3) for c in range(3)) for j in range(3)] for i in range(3)]
F = lambda i, j, k: diff(A[i][k], X[j]) - diff(A[i][j], X[k]) + g * sum(eps(i, b, c) * A[b][j] * A[c][k] for b in range(3) for c in range(3))
set_random_seed(3)
worst_D, worst_F = 0, 0
for t in range(4):
    pt = {x: RR.random_element(-1, 1), y: RR.random_element(-1, 1), z: RR.random_element(-1, 1), g: RR.random_element(0.5, 2)}
    worst_D = max([worst_D] + [abs(Dn[i][j].subs(pt).n()) for i in range(3) for j in range(3)])
    for (j, k) in [(0, 1), (1, 2), (0, 2)]:
        lhs = sum(n[i] * F(i, j, k) for i in range(3))
        rhs = diff(a[k], X[j]) - diff(a[j], X[k]) - sum(eps(i, b, c) * n[i] * diff(n[b], X[j]) * diff(n[c], X[k]) for i in range(3) for b in range(3) for c in range(3)) / g
        worst_F = max(worst_F, abs((lhs - rhs).subs(pt).n()))
print("[PASS] D_i n^a = 0 (largest component %.1e):" % worst_D, worst_D < 1e-10)
print("[PASS] n^a F^a_ij = da - (1/g) eps n dn dn (largest difference %.1e):" % worst_F, worst_F < 1e-9)
