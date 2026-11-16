# Exercise exr-sr-classification-dimensions: states per momentum of vector, antisymmetric and symmetric traceless tensor particles in D dimensions, from the little groups SO(D-1) (massive) and SO(D-2) (massless, helicity).
def dim_tensors(n, kind):
    # dimension of the space of rank-2 tensors on R^n of the given kind, computed as the kernel of the defining linear conditions
    V = QQ^(n*n); idx = lambda a, b: a*n + b
    rows = []
    for a in range(n):
        for b in range(n):
            r = [0]*(n*n)
            if kind == "antisymmetric":
                r[idx(a, b)] += 1; r[idx(b, a)] += 1        # T_ab + T_ba = 0
            else:
                r[idx(a, b)] += 1; r[idx(b, a)] -= 1        # T_ab - T_ba = 0
            rows.append(r)
    if kind == "symmetric traceless":
        rows.append([1 if (k // n == k % n) else 0 for k in range(n*n)])
    return n*n - matrix(QQ, rows).rank()
print("formulas: antisymmetric n(n-1)/2, symmetric traceless n(n+1)/2 - 1:",
      all(dim_tensors(n, "antisymmetric") == n*(n - 1)/2 and dim_tensors(n, "symmetric traceless") == n*(n + 1)/2 - 1 for n in range(1, 11)))
for D in [4, 5, 11]:
    for name, n in [("massive  (SO(%d))" % (D - 1), D - 1), ("massless (SO(%d))" % (D - 2), D - 2)]:
        print("D = %2d %s: vector %3d, 2-form %3d, symmetric traceless %3d" % (D, name, n, dim_tensors(n, "antisymmetric"), dim_tensors(n, "symmetric traceless")))
print("D = 4 massive spin 2 has 2s + 1 = 5 states:", dim_tensors(3, "symmetric traceless") == 5)
