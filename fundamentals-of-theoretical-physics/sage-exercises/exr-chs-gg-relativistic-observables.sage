# Exercise exr-chs-gg-relativistic-observables: which functions of the relativistic particle are gauge invariant (first class)?
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
t, x1, x2, x3, pt, p1, p2, p3, m = var('t x1 x2 x3 pt p1 p2 p3 m')
qs, ps = [t, x1, x2, x3], [pt, p1, p2, p3]
X = vector([x1, x2, x3]); P = vector([p1, p2, p3])
phi = (P*P - pt^2 + m^2)/2
cands = {'p_t': pt, 'p_1': p1, 'L_3 = x1 p2 - x2 p1': x1*p2 - x2*p1,
         'K_1 = t p1 + x1 p_t': t*p1 + x1*pt, 'X_1 = x1 + t p1/p_t': x1 + t*p1/pt,
         'x_1': x1, 't': t, 'x1 p1': x1*p1}
for name, F in cands.items():
    print('{%s, phi} =' % name, PB(F, phi, qs, ps).simplify_full())
# X_1 is the position at t = 0 of the worldline through (t, x) with velocity p/E, E = -p_t
E = var('E')
print('X_1 with p_t = -E:', (x1 + t*p1/pt).subs(pt=-E), ' = x1 - (p1/E) t')
