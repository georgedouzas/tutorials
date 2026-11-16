# Exercise exr-grf-sh-isotropic: the Shapiro time in Schwarzschild coordinates rewritten with the isotropic radius rho, r = rho + m.
m, rho, rho0, u = var('m rho rho0 u'); assume(rho > rho0, rho0 > 0, u > 0)
r, r0 = rho + m, rho0 + m
t = sqrt(r^2 - r0^2) + 2*m*log((r + sqrt(r^2 - r0^2))/r0) + m*sqrt((r - r0)/(r + r0))
weak = sqrt(rho^2 - rho0^2) + 2*m*log((rho + sqrt(rho^2 - rho0^2))/rho0)
d1 = diff(t - weak, m).subs(m=0)          # coefficient of m in t - weak
claim = 2*sqrt((rho - rho0)/(rho + rho0))
for a, b in ((2.0, 1.0), (10.0, 1.0), (1e4, 3.0)):
    print('rho = %g, rho0 = %g: first-order coefficient %.10f, 2 sqrt((rho - rho0)/(rho + rho0)) = %.10f' % (a, b, float(d1.subs(rho=a, rho0=b)), float(claim.subs(rho=a, rho0=b))))
print('limit of 2 sqrt((rho - rho0)/(rho + rho0)) for rho -> oo:', limit(claim, rho=oo))
# a direct check with a small mass
M = 1e-6
for a, b in ((2.0, 1.0), (10.0, 1.0)):
    print('m = 1e-6, rho = %g: (t - weak)/m = %.6f' % (a, float((t - weak).subs(m=M, rho=a, rho0=b))/M))
