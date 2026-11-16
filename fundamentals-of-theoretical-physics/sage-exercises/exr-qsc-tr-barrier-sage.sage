# Exercise exr-qsc-tr-barrier-sage (Cini et al., Sec. 13.2, eq. (13.6)): transmission above a rectangular barrier, E > V0,
# from the four matching conditions, and the energies of perfect transmission (K a = n pi).
k, K, a = var('k K a'); assume(k > 0, K > 0, a > 0)
r, B, C, t = var('r B C t')      # psi = e^{ikx} + r e^{-ikx}; B e^{iKx} + C e^{-iKx}; t e^{ikx}
eqs = [1 + r == B + C, k*(1 - r) == K*(B - C),
       B*exp(I*K*a) + C*exp(-I*K*a) == t*exp(I*k*a), K*(B*exp(I*K*a) - C*exp(-I*K*a)) == k*t*exp(I*k*a)]
sol = solve(eqs, r, B, C, t, solution_dict=True)[0]
T = sol[t]*sol[t].conjugate()
E, V0 = k^2, k^2 - K^2            # units hbar^2/2m = 1
formula = 1/(1 + V0^2*sin(K*a)^2/(4*E*(E - V0)))
print("|t|^2 equals the closed form at four points:",
      all(abs((T - formula).subs(k=kv, K=Kv, a=av).n()) < 1e-12 for kv, Kv, av in [(2, 1, 1), (3, 0.5, 2), (1.5, 1.2, 0.7), (5, 4, 0.3)]))
print("T = 1 when K a = pi:", abs(formula.subs(k=2, K=pi.n(), a=1).n() - 1) < 1e-12)
c, V, L = 0.0381, 5.0, 0.5
for n in (1, 2, 3):
    print("n = %d: E = V0 + c n^2 pi^2/a^2 = %.3f eV" % (n, V + c*n^2*pi.n()^2/L^2))
