# Exercise exr-qsc-cs-classical-rutherford (Cini et al., Sec. 14.6): the classical cross section b/sin(theta)|db/dtheta|
# of the Coulomb orbit b = (kappa/2E) cot(theta/2) is Rutherford's (kappa/4E)^2/sin^4(theta/2).
th, kap, E = var('theta kappa E'); assume(0 < th, th < pi, kap > 0, E > 0)
b = kap/(2*E)*cot(th/2)
ds = (b/sin(th)*abs(diff(b, th))).simplify_full()
print("b/sin(theta)|db/dtheta| =", ds)
diff_ = (ds - (kap/(4*E))^2/sin(th/2)^4).subs(sin(th) == 2*sin(th/2)*cos(th/2)).simplify_full()
print("equals (kappa/4E)^2/sin^4(theta/2) (using sin theta = 2 sin(theta/2) cos(theta/2)):", bool(diff_ == 0),
      all(abs((ds - (kap/(4*E))^2/sin(th/2)^4).subs({th: x, kap: 2.3, E: 1.7}).n()) < 1e-10 for x in (0.2, 1.0, 2.5)))
