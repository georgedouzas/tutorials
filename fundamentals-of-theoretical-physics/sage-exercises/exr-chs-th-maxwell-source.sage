# Exercise exr-chs-th-maxwell-source: one Maxwell mode with a charge mode rho(t) sin(kz) and a current mode j(t) cos(kz); Gauss's law is preserved iff charge is conserved.
def PB(f, g, qs, ps):
    return sum(diff(f, a)*diff(g, b) - diff(f, b)*diff(g, a) for a, b in zip(qs, ps))
t = var('t'); k = var('k', domain='positive')
a0, a1, a3, p0, p1, p3, v1, v3, u = var('a0 a1 a3 p0 p1 p3 v1 v3 u')
rho = function('rho')(t); j = function('j')(t)
L = ((v3 + k*a0)^2 + v1^2 - k^2*a1^2)/4 - rho*a0/2 + j*a3/2
sol = solve([p1 == diff(L, v1), p3 == diff(L, v3)], [v1, v3], solution_dict=True)[0]
H = (p1*v1 + p3*v3 - L).subs(sol).expand()
print('H =', H)
qs, ps = [a0, a1, a3], [p0, p1, p3]
HT = H + u*p0
chi = PB(p0, HT, qs, ps)
print('d/dt p0 = chi =', chi, '   (Gauss: 2k p3 = rho)')
dchi = (diff(chi, t) + PB(chi, HT, qs, ps)).expand()
print('d/dt chi =', dchi, '  -> vanishes iff rho\' = k j, the continuity equation for these modes')
# continuity equation for rho = rho(t) sin kz, J_z = j(t) cos kz
zz = var('zz')
print('d rho/dt + div J =', (diff(rho*sin(k*zz), t) + diff(j*cos(k*zz), zz)).factor())
