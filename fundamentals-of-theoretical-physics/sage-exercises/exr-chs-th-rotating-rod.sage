# Exercise exr-chs-th-rotating-rod: a bead on a rod rotating in the plane with angular velocity w; constraint x sin(wt) - y cos(wt) = 0 with a multiplier.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
t, w, m, lam, u, x, y, px, py, pl = var('t w m lam u x y px py pl')
qs, ps = [x, y, lam], [px, py, pl]
n = vector([sin(w*t), -cos(w*t)]); e = vector([cos(w*t), sin(w*t)])
X = vector([x, y]); P = vector([px, py])
H = P*P/(2*m) + lam*(n*X)
HT = H + u*pl
d = lambda F: (diff(F, t) + PB(F, HT, qs, ps)).simplify_full()
chain = [n*X]
for _ in range(3):
    chain.append(d(chain[-1]))
for i, c in enumerate(chain):
    print('chi%d =' % (i + 1), c)
print('chi2 - (n.p/m + w e.x) =', (chain[1] - (n*P/m + w*(e*X))).simplify_full())
lam_sol = solve(chain[2] == 0, lam)[0].rhs()
print('lambda - (2 w e.p - m w^2 n.x) =', (lam_sol - 2*w*(e*P) + m*w^2*(n*X)).simplify_full(), ' -> lambda = 2 w p_r on the rod: the Coriolis force')
print('u from chi4 = 0:', solve(chain[3] == 0, u)[0])
r, pr = e*X, e*P
rdot = d(r).subs(lam=lam_sol); prdot = d(pr).subs(lam=lam_sol)
print('d/dt r - p_r/m =', (rdot - pr/m).simplify_full(), ' (= -w n.x, zero on the rod)')
print('d/dt p_r + w n.p =', (prdot + w*(n*P)).simplify_full(), ' and n.p = -m w r on the surface, so d/dt p_r = m w^2 r: r\'\' = w^2 r')
