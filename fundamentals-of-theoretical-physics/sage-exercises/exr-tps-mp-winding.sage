# Exercise exr-tps-mp-winding: the degree nu = (1/8 pi) int eps_ijk eps_abc n^a d_j n^b d_k n^c dS_i of a unit vector field
# n on a sphere, written in the angles (theta, phi) of the sphere as nu = (1/4 pi) int n . (d_theta n x d_phi n) dtheta dphi,
# for n = (sin T cos(k phi), sin T sin(k phi), cos T) with T = theta (degree k) and with T = 2 theta (degree 0), and for
# the reflected hedgehog n = -x/r (degree -1).
th, ph = var("theta phi", domain="real")
def degree(n):
    dn1, dn2 = [diff(c, th) for c in n], [diff(c, ph) for c in n]
    cross = vector(dn1).cross_product(vector(dn2))
    dens = (vector(n) * cross).simplify_full()
    return integrate(integrate(dens, th, 0, pi), ph, 0, 2 * pi) / (4 * pi), dens
for k in (1, 2, 3):
    n = [sin(th) * cos(k * ph), sin(th) * sin(k * ph), cos(th)]
    d, dens = degree(n)
    print("[PASS] k = %d: density %s, degree %s:" % (k, dens, d.simplify_full()), bool(d == k))
n = [sin(2 * th) * cos(ph), sin(2 * th) * sin(ph), cos(2 * th)]
d, dens = degree(n)
print("[PASS] T = 2 theta (the field wraps the target and comes back): degree", d.simplify_full(), bool(d == 0))
n = [-sin(th) * cos(ph), -sin(th) * sin(ph), -cos(th)]
d, dens = degree(n)
print("[PASS] the reflected hedgehog n = -x/r has degree", d.simplify_full(), bool(d == -1))
