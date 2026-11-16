# Exercise exr-grf-em-bertotti-robinson: AdS2 x S2 with a uniform electric field solves the Einstein-Maxwell equations.
M = Manifold(4, 'M', structure='Lorentzian')
X.<t, rho, th, ph> = M.chart(r't rho:(0,+oo) th:(0,pi) ph:(0,2*pi)')
l, E, k2 = var('l E kappa2'); assume(l > 0)
g = M.metric('g')
g[0, 0] = l^2*rho^2; g[1, 1] = -l^2/rho^2; g[2, 2] = -l^2; g[3, 3] = -l^2*sin(th)^2
A = M.one_form(E*l^2*rho, 0, 0, 0)
F = A.exterior_derivative()
Fu = F.up(g)
F2 = (F['_ab']*Fu['^ab']).expr().simplify_full()
gi = g.inverse()
T = M.tensor_field(0, 2)
for i in range(4):
    for j in range(4):
        T[i, j] = sum(F[i, a]*gi[a, b]*F[b, j] for a in range(4) for b in range(4)) + g[i, j]*F2/4
Gt = g.ricci() - g.ricci_scalar()*g/2
print('F_{mu nu} F^{mu nu} =', F2, ' (that is -2E^2: a pure electric field of strength E)')
print('Maxwell: div F = 0:', Fu.divergence() == 0)
eqs = [(Gt[i, i] - k2*T[i, i]).expr().simplify_full() for i in range(4)]
print('G_mu mu - kappa^2 T_mu mu (diagonal):', eqs)
print('off-diagonal components vanish:', all(bool((Gt[i, j] - k2*T[i, j]).expr().simplify_full() == 0) for i in range(4) for j in range(4) if i != j))
print('solution for kappa^2:', solve(eqs[2] == 0, k2))
print('all components vanish for kappa^2 E^2 l^2 = 2:', all(bool(e.subs(kappa2=2/(E^2*l^2)).simplify_full() == 0) for e in eqs))
