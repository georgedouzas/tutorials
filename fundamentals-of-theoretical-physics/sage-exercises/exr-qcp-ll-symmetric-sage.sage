# Exercise exr-qcp-ll-symmetric-sage (Galitski et al., Problem 7.1(b)): lowest Landau level in the symmetric gauge, units
# hbar = q = B = m = 1: w^m e^{-|w|^2/4} has energy 1/2 and L_z = m, <rho^2> = 2(m + 1); conj(w) e^{-|w|^2/4} has energy 3/2.
x, y, r = var('x y r'); assume(r > 0)
Ax, Ay = -y/2, x/2
def H(f):
    pix = lambda g: -I*diff(g, x) - Ax*g
    piy = lambda g: -I*diff(g, y) - Ay*g
    return (pix(pix(f)) + piy(piy(f)))/2
Lz = lambda f: -I*(x*diff(f, y) - y*diff(f, x))
g = exp(-(x^2 + y^2)/4)
for mm in range(4):
    psi = (x + I*y)^mm*g
    E = (H(psi)/psi).simplify_full(); L = (Lz(psi)/psi).simplify_full()
    rho2 = (integrate(r^(2*mm + 3)*exp(-r^2/2), r, 0, oo)/integrate(r^(2*mm + 1)*exp(-r^2/2), r, 0, oo)).simplify_full()
    print("m = %d: energy %s, L_z %s, <rho^2> = %s" % (mm, E, L, rho2))
psi = (x - I*y)*g
print("conj(w) e^{-|w|^2/4}: energy", (H(psi)/psi).simplify_full(), ", L_z", (Lz(psi)/psi).simplify_full())
