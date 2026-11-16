# Exercise exr-chs-fc-dumbbell: two masses joined by a massless rod of length l; the constraints r^2 - l^2 and r.v are second class.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
var('m1 m2 l')
xs = list(var('x1 y1 z1 x2 y2 z2')); ps = list(var('px1 py1 pz1 px2 py2 pz2'))
X1, X2 = vector(xs[:3]), vector(xs[3:]); P1, P2 = vector(ps[:3]), vector(ps[3:])
r = X1 - X2; v = P1/m1 - P2/m2
chi1, chi2 = r*r - l^2, r*v
b = PB(chi1, chi2, xs, ps).factor()
print('{chi1, chi2} =', b)
mu = m1*m2/(m1 + m2)
print('{chi1, chi2} - 2|r|^2/mu =', (b - 2*(r*r)/mu).simplify_full())
H = P1*P1/(2*m1) + P2*P2/(2*m2)
print('{chi1, H} - 2 chi2 =', (PB(chi1, H, xs, ps) - 2*chi2).simplify_full(), ' (chi2 is the secondary constraint)')
Ptot = P1 + P2; Lrel = r.cross_product(m2*P1/(m1 + m2) - m1*P2/(m1 + m2))
print('total momentum first class:', [PB(c, chi, xs, ps).simplify_full() for c in Ptot for chi in (chi1, chi2)])
print('relative angular momentum first class:', [PB(c, chi, xs, ps).simplify_full() for c in Lrel for chi in (chi1, chi2)])
