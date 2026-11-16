# Exercise exr-qsc-tr-delta-sage (Cini et al., Sec. 13.3): reflection and transmission by a delta barrier alpha delta(x).
k, a, hb, m = var('k alpha hbar m'); assume(k > 0, hb > 0, m > 0, a, 'real')
r, t = var('r t')
eqs = [1 + r == t, I*k*t - I*k*(1 - r) == 2*m*a/hb^2 * t]          # continuity and the jump of phi'
sol = solve(eqs, r, t, solution_dict=True)[0]
beta = m*a/(hb^2*k)
print("t =", sol[t].simplify_full(), "; equals 1/(1 + i beta):", bool((sol[t] - 1/(1 + I*beta)).simplify_full() == 0))
R = (sol[r]*sol[r].conjugate()).simplify_full(); T = (sol[t]*sol[t].conjugate()).simplify_full()
print("R + T = 1:", bool((R + T - 1).simplify_full() == 0))
E = var('E'); assume(E > 0)
TE = T.subs(k == sqrt(2*m*E)/hb).simplify_full()
print("T(E) =", TE, "; equals 1/(1 + m alpha^2/(2 hbar^2 E)):", bool((TE - 1/(1 + m*a^2/(2*hb^2*E))).simplify_full() == 0))
c = 0.0381   # hbar^2/2m_e in eV nm^2; alpha = 1 eV nm
print("electron, alpha = 1 eV nm: T = 1/2 at E = m alpha^2/(2 hbar^2) = alpha^2/(4 c) = %.3f eV" % (1/(4*c)))
