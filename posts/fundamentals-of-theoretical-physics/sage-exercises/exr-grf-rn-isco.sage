# Exercise exr-grf-rn-isco: innermost stable circular orbit of neutral particles in the Reissner-Nordstrom metric.
r, L2, m, q = var('r L2 m q'); assume(r > 0, m > 0)
V = (1 - 2*m/r + q^2/r^2)*(1 + L2/r^2)
for qq in (0, m):
    Vq = V.subs(q=qq)
    sol = solve([diff(Vq, r) == 0, diff(Vq, r, 2) == 0], r, L2, solution_dict=True)
    real = [s for s in sol if bool(s[r].subs(m=1) > 1) and s[L2].subs(m=1).is_real() and bool(s[L2].subs(m=1) > 0)]
    print('q = %s:' % qq, [(s[r], s[L2]) for s in real])
