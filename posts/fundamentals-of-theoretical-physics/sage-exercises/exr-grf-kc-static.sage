# Exercise exr-grf-kc-static: K wedge dK for d/dt in the Schwarzschild metric and in a rotating frame of Minkowski spacetime.
M = Manifold(4, 'M', structure='Lorentzian')
S.<t, r, th, ph> = M.chart()
m = var('m')
g = M.metric('g'); f = 1 - 2*m/r
g[0, 0] = f; g[1, 1] = -1/f; g[2, 2] = -r^2; g[3, 3] = -r^2*sin(th)^2
K = M.vector_field(1, 0, 0, 0); Kb = K.down(g)
print('Schwarzschild: K_flat =', Kb.display())
print('  K_flat wedge dK_flat =', (Kb.wedge(Kb.exterior_derivative())).display())
N = Manifold(4, 'N', structure='Lorentzian')
R.<t, rho, vp, z> = N.chart()
Om = var('Om')
h = N.metric('h')
h[0, 0] = 1 - Om^2*rho^2; h[0, 2] = -Om*rho^2; h[1, 1] = -1; h[2, 2] = -rho^2; h[3, 3] = -1
print('rotating frame is flat:', h.riemann() == 0)
K2 = N.vector_field(1, 0, 0, 0)
print('d/dt is Killing in the rotating frame:', h.lie_derivative(K2) == 0)
Kb2 = K2.down(h)
print('  K_flat =', Kb2.display())
print('  K_flat wedge dK_flat =', (Kb2.wedge(Kb2.exterior_derivative())).display())
