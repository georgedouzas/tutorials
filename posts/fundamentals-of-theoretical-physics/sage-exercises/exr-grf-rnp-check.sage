# Exercise exr-grf-rnp-check: the Reissner-Nordstrom metric with A = Q/(4 pi r) dt solves the Einstein-Maxwell equations, G = kappa^2 T.
M4 = Manifold(4, 'M', structure='Lorentzian')
X.<t, r, th, ph> = M4.chart(r't r:(0,+oo) th:(0,pi) ph:(0,2*pi)')
G, Mm, Q = var('G M Q'); assume(G > 0, Mm > 0)
f = 1 - 2*G*Mm/r + G*Q^2/(4*pi*r^2)
g = M4.metric('g'); g[0, 0] = f; g[1, 1] = -1/f; g[2, 2] = -r^2; g[3, 3] = -r^2*sin(th)^2
A = M4.one_form(Q/(4*pi*r), 0, 0, 0)
F = A.exterior_derivative(); Fu = F.up(g)
F2 = (F['_ab']*Fu['^ab']).expr().simplify_full()
gi = g.inverse()
T = M4.tensor_field(0, 2)
for i in range(4):
    for j in range(4):
        T[i, j] = sum(F[i, a]*gi[a, b]*F[b, j] for a in range(4) for b in range(4)) + g[i, j]*F2/4
Gt = g.ricci() - g.ricci_scalar()*g/2
print('F_tr =', F[0, 1].expr(), ';  F_{mu nu} F^{mu nu} =', F2)
print('T^t_t =', (gi[0, 0]*T[0, 0]).expr().simplify_full(), ';  T^th_th =', (gi[2, 2]*T[2, 2]).expr().simplify_full())
print('G_{mu nu} = 8 pi G T_{mu nu}, all components:', all(bool((Gt[i, j] - 8*pi*G*T[i, j]).expr().simplify_full() == 0) for i in range(4) for j in range(4)))
print('Maxwell nabla_mu F^{mu nu} = 0:', Fu.divergence() == 0)
print('scalar curvature R =', g.ricci_scalar().expr().simplify_full())
