# Exercise exr-qsc-born-square-zeros (Cini et al., Sec. 14.10, Problem 4): zeros of the Born amplitude of a spherical well,
# tan x = x with x = q a, and the corresponding angles for k = 3/fm, a = 5 fm (q = 2 k sin(theta/2)).
t = var("t")
xs = [find_root(tan(t) - t, n*pi.n() + 0.01, n*pi.n() + pi.n()/2 - 1e-9) for n in (1, 2, 3)]
k, a = 3.0, 5.0
for xv in xs:
    th = 2*arcsin(xv/(2*k*a))
    print("q a = %.4f  ->  theta = %.2f deg" % (xv, th*180/pi.n()))
print("estimate 4.4934/(k a) = %.2f deg" % (xs[0]/(k*a)*180/pi.n()))
q = var('q'); fB = (sin(q*a) - q*a*cos(q*a))/q^3
print("Born amplitude (up to the factor -2 m V0/hbar^2) at the first zero: %.2e" % abs(fB.subs(q=xs[0]/a).n()))
