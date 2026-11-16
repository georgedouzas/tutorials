# Exercise exr-qdm-ee-contraction: contracting the electron and muon tensors,
# [k'^mu p'^nu + k'^nu p'^mu - g^{mu nu}(p'.k' + m_mu^2)][p_mu k_nu + p_nu k_mu - g_{mu nu}(p.k + m_e^2)]
#   = 2[p.p' k.k' + p.k' k.p' + m_mu^2 p.k + m_e^2 p'.k' + 2 m_e^2 m_mu^2],
# for symbolic four-vectors (no on-shell condition is needed).
P = [vector(SR, var(n + "0 " + n + "1 " + n + "2 " + n + "3")) for n in ("p", "k", "q", "l")]   # p, k, p' = q, k' = l
p, k, q, l = P
me, mm = var("me mm")
g = diagonal_matrix(SR, [1, -1, -1, -1])
d = lambda a, b: a * g * b
low = lambda a: g * a
Mu = l.column() * q.row() + q.column() * l.row() - (d(q, l) + mm**2) * g.inverse()      # upper indices
El = low(p).column() * low(k).row() + low(k).column() * low(p).row() - (d(p, k) + me**2) * g  # lower indices
contr = sum(Mu[a, b] * El[a, b] for a in range(4) for b in range(4))
rhs = 2 * (d(p, q) * d(k, l) + d(p, l) * d(k, q) + mm**2 * d(p, k) + me**2 * d(q, l) + 2 * me**2 * mm**2)
print("contraction - 2[...] =", (contr - rhs).expand())
