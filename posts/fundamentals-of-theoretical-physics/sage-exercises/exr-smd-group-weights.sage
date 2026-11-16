# Exercise exr-smd-group-weights: weights (t_3, t_8) of the colour triplet, antitriplet and octet, with t_A = lambda_A/2.
l = [matrix(QQbar, [[0,1,0],[1,0,0],[0,0,0]]), matrix(QQbar, [[0,-I,0],[I,0,0],[0,0,0]]), matrix(QQbar, [[1,0,0],[0,-1,0],[0,0,0]]),
     matrix(QQbar, [[0,0,1],[0,0,0],[1,0,0]]), matrix(QQbar, [[0,0,-I],[0,0,0],[I,0,0]]), matrix(QQbar, [[0,0,0],[0,0,1],[0,1,0]]),
     matrix(QQbar, [[0,0,0],[0,0,-I],[0,I,0]]), matrix(QQbar, [[1,0,0],[0,1,0],[0,0,-2]]) / sqrt(QQbar(3))]
t = [x / 2 for x in l]
def weights(t3, t8):
    # t3 and t8 commute and are diagonalisable: read the joint eigenvalues on a common eigenbasis
    P = (t3 + QQbar(sqrt(2)) * t8).eigenmatrix_right()[1]
    D3, D8 = P.inverse() * t3 * P, P.inverse() * t8 * P
    return sorted([(AA(D3[i, i]), AA(D8[i, i])) for i in range(t3.nrows())])
w3 = weights(t[2], t[7]); print("triplet:", w3)
w3b = weights(-t[2].transpose(), -t[7].transpose()); print("antitriplet:", w3b)
f = lambda a, b, c: (-2 * I * ((t[a] * t[b] - t[b] * t[a]) * t[c]).trace())   # structure constants: [t_a, t_b] = i f_abc t_c
adj = [matrix(QQbar, 8, 8, lambda b, c: -I * f(a, b, c)) for a in range(8)]
w8 = weights(adj[2], adj[7]); print("octet:", w8)
diffs = sorted([(a1 - a2, b1 - b2) for (a1, b1) in w3 for (a2, b2) in w3 if (a1, b1) != (a2, b2)] + [(0, 0), (0, 0)])
print("[PASS] triplet weights (1/2, 1/(2 sqrt 3)), (-1/2, 1/(2 sqrt 3)), (0, -1/sqrt 3):", w3 == sorted([(1/2, 1/(2*sqrt(AA(3)))), (-1/2, 1/(2*sqrt(AA(3)))), (0, -1/sqrt(AA(3)))]))
print("[PASS] antitriplet weights are the negatives:", w3b == sorted([(-a, -b) for a, b in w3]))
print("[PASS] octet weights are the differences of triplet weights, with two zero weights:", w8 == diffs)
