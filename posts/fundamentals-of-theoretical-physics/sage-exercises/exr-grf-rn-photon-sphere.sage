# Exercise exr-grf-rn-photon-sphere: the circular light orbit and the critical impact parameter of the Reissner-Nordstrom metric, m = 1.
r, q = var('r q'); m = 1
W = (1 - 2*m/r + q^2/r^2)/r^2
roots = solve(diff(W, r)*r^5 == 0, r)
print('W\'(r) = 0 :', roots)
rph = (3*m + sqrt(9*m^2 - 8*q^2))/2
for qq in (0, 1/2, 1):
    rr = rph.subs(q=qq); b = 1/sqrt(W.subs(q=qq, r=rr))
    print('q = %s: r_ph = %s = %.4f, b_c = %s = %.4f, W\'\' = %.4f' % (qq, rr.simplify_full(), float(rr), b.simplify_full(), float(b), float(diff(W, r, 2).subs(q=qq, r=rr))))
