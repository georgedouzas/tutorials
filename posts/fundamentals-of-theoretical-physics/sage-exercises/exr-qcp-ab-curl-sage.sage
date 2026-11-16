# Exercise exr-qcp-ab-curl-sage (Guidry-Sun, Problem 27.1, eqs. (27.1)-(27.2)): the potential of a solenoid of radius R,
# A_phi = B s/2 inside and B R^2/(2 s) outside, has curl B e_z inside and 0 outside; its circulation is pi s^2 B or pi R^2 B.
s, B, R, ph = var('s B R phi'); assume(s > 0, R > 0)
for name, Aphi in (("inside", B*s/2), ("outside", B*R^2/(2*s))):
    curl_z = (diff(s*Aphi, s)/s).simplify_full()      # (curl A)_z = (1/s) d_s(s A_phi); A_s = A_z = 0, no phi or z dependence
    circ = integrate(Aphi*s, ph, 0, 2*pi)
    print("%s: (curl A)_z = %s, (curl A)_s = (curl A)_phi = 0, circulation around radius s = %s" % (name, curl_z, circ))
x, y = var('x y')
Ax, Ay = -B*R^2/2*y/(x^2 + y^2), B*R^2/2*x/(x^2 + y^2)
print("outside, Cartesian check: d_x A_y - d_y A_x =", (diff(Ay, x) - diff(Ax, y)).simplify_full())
