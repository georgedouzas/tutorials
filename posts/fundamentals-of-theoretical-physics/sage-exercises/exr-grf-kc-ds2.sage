# Exercise exr-grf-kc-ds2: the boost X d/dT + T d/dX of the embedding space is a Killing vector of two-dimensional de Sitter space.
M = Manifold(2, 'dS2', structure='Lorentzian')
C.<tau, th> = M.chart()
r0 = var('r0'); assume(r0 > 0)
g = M.metric('g'); g[0, 0] = 1; g[1, 1] = -r0^2*cosh(tau/r0)^2
T = r0*sinh(tau/r0); X = r0*cosh(tau/r0)*cos(th); Y = r0*cosh(tau/r0)*sin(th)
# tangent components (a, b) of K = a d/dtau + b d/dth: the embedding pushes K forward to (X, T, 0)
a, b = var('a b')
emb = [T, X, Y]
push = [a*diff(F, tau) + b*diff(F, th) for F in emb]
sol = solve([push[0] == X, push[1] == T], a, b, solution_dict=True)[0]
A = sol[a].simplify_full(); B = sol[b].simplify_full()
print('K = (%s) d/dtau + (%s) d/dth' % (A, B))
print('third component of the push-forward vanishes:', bool((push[2].subs(a=A, b=B)).simplify_full() == 0))
K = M.vector_field(A, B)
print('Killing equation L_K g = 0:', g.lie_derivative(K) == 0)
print('d/dth Killing:', g.lie_derivative(M.vector_field(0, 1)) == 0)
print('g(K, K) =', g(K, K).expr().simplify_full())
