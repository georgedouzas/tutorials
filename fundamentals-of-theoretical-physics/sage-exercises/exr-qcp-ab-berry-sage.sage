# Exercise exr-qcp-ab-berry-sage (Guidry-Sun, Example 27.1, Problems 27.5-27.6): Berry phase of a spin one-half aligned with
# a field that goes once around a cone of opening theta, for a single-valued and a double-valued choice of eigenvector.
th, ph, mu, B = var('theta phi mu B', domain='real'); assume(0 < th, th < pi)
s1 = matrix(SR, [[0, 1], [1, 0]]); s2 = matrix(SR, [[0, -I], [I, 0]]); s3 = matrix(SR, [[1, 0], [0, -1]])
H = -mu*B/2*(sin(th)*cos(ph)*s1 + sin(th)*sin(ph)*s2 + cos(th)*s3)
for name, n in (("single-valued (cos, sin e^{i phi})", vector(SR, [cos(th/2), sin(th/2)*exp(I*ph)])),
                ("Guidry-Sun eq. (27.30)", vector(SR, [cos(th/2)*exp(-I*ph/2), sin(th/2)*exp(I*ph/2)]))):
    res = all(abs(CDF(c.subs({th: tv, ph: pv, mu: 1, B: 1}))) < 1e-14 for c in (H*n + mu*B/2*n) for tv, pv in ((0.7, 1.3), (2.1, -0.4), (1.0, 3.0)))
    A = (I*sum(n[j].conjugate()*diff(n[j], ph) for j in range(2))).simplify_full()
    gamma = integrate(A, ph, 0, 2*pi).simplify_full()
    print("%s: eigenvector of energy -mu B/2 (three directions): %s; i<n|d_phi n> = %s; gamma = %s" % (name, res, A.trig_reduce(), gamma.trig_reduce()))
print("-pi(1 - cos theta) equals -2 pi sin^2(theta/2):", bool((-pi*(1 - cos(th)) + 2*pi*sin(th/2)^2).trig_reduce() == 0))
