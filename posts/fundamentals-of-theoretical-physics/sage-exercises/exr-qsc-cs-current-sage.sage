# Exercise exr-qsc-cs-current-sage (Cini et al., Sec. 14.3, eq. (14.15)): the current (hbar/m) Im(conj(psi) grad psi) of the
# outgoing spherical wave psi = f(theta, phi) e^{ikr}/r in spherical components, for a symbolic complex f = u + i v.
r, th, ph, k, hb, m = var('r theta phi k hbar m'); assume(r > 0, k > 0, 0 < th, th < pi)
u = function('u')(th, ph); v = function('v')(th, ph)          # f = u + i v
re_psi = (u*cos(k*r) - v*sin(k*r))/r; im_psi = (u*sin(k*r) + v*cos(k*r))/r
def Im_conj_grad(d):   # Im(conj(psi) d psi) = Re psi d(Im psi) - Im psi d(Re psi)
    return (re_psi*d(im_psi) - im_psi*d(re_psi)).simplify_full()
jr = hb/m*Im_conj_grad(lambda F: diff(F, r))
jth = hb/m*Im_conj_grad(lambda F: diff(F, th)/r)
jph = hb/m*Im_conj_grad(lambda F: diff(F, ph)/(r*sin(th)))
print("j_r - (hbar k/m)|f|^2/r^2 =", (jr - hb*k/m*(u^2 + v^2)/r^2).simplify_full())
print("r^3 j_theta =", (r^3*jth).simplify_full(), "  [ = (hbar/m) Im(conj f d_theta f) ]")
print("r^3 sin(theta) j_phi =", (r^3*sin(th)*jph).simplify_full())
