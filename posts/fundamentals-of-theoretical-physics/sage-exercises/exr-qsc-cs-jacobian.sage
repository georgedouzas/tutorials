# Exercise exr-qsc-cs-jacobian (Cini et al., Sec. 14.2, eq. (14.10); Sec. 14.10, Problems 1-2): the factor converting a
# centre-of-mass cross section into a laboratory one, d cos(theta)/d cos(theta_lab), with gamma = m1/m2.
th, g = var('theta gamma'); assume(0 < th, th < pi, g > 0)
coslab = (cos(th) + g)/sqrt(1 + g^2 + 2*g*cos(th))
tanlab = sin(th)/(cos(th) + g)
print("cos(theta_lab) is consistent with tan(theta_lab) = sin/(cos + gamma):",
      bool((1/coslab^2 - 1 - tanlab^2).simplify_full() == 0))
factor = 1/(diff(coslab, th)/diff(cos(th), th))
target = (1 + g^2 + 2*g*cos(th))^(3/2)/(1 + g*cos(th))
print("d cos(theta)/d cos(theta_lab) = (1 + g^2 + 2 g cos)^(3/2)/(1 + g cos):", bool((factor - target).simplify_full() == 0))
eq = target.subs({g: 1}).simplify_full()
print("equal masses: factor =", eq, "; equals 4 cos(theta/2) = 4 cos(theta_lab):",
      all(abs((eq - 4*cos(th/2)).subs({th: x}).n()) < 1e-12 for x in (0.3, 1.1, 2.0, 3.0)))
