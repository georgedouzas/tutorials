# Exercise exr-chs-fc-combination: find the first-class combinations of a set of constraints from the null space of their bracket matrix.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
q1, q2, q3, p1, p2, p3 = var('q1 q2 q3 p1 p2 p3')
qs, ps = [q1, q2, q3], [p1, p2, p3]
Phi = [p1, p2, q1 + q2, p3 - q3]
C = matrix(QQ, len(Phi), len(Phi), lambda a, b: PB(Phi[a], Phi[b], qs, ps))
print('bracket matrix:'); print(C)
print('rank =', C.rank())
K = C.left_kernel().basis()
print('null vectors:', K)
for c in K:
    gam = sum(ci*f for ci, f in zip(c, Phi))
    print('first-class combination:', gam, '; its brackets with the constraints:', [PB(gam, f, qs, ps) for f in Phi])
S = [Phi[0], Phi[2]]
print('second-class pair (p1, q1 + q2): matrix', matrix(QQ, 2, 2, lambda a, b: PB(S[a], S[b], qs, ps)).list())
