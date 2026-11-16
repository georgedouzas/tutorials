# Exercise exr-chs-pc-drift: the massless charge L = (qB/2)(x ydot - y xdot) - V(x, y): Hessian, primary constraints and the E x B drift.
var('m q B E'); x, y, vx, vy, t = var('x y vx vy t')
Lm = m/2*(vx^2 + vy^2) + q*B/2*(x*vy - y*vx)
W = matrix(SR, 2, 2, lambda i, j: diff(Lm, [vx, vy][i], [vx, vy][j]))
print('Hessian with mass m: det W =', W.det())
L0 = Lm.subs(m=0) + q*E*x                    # V = q*phi with phi = -E x
print('momenta at m = 0: p_x =', diff(L0, vx), '; p_y =', diff(L0, vy))
# Euler-Lagrange equations of L0 (first order)
X = function('X')(t); Y = function('Y')(t)
L0t = L0.subs({x: X, y: Y, vx: diff(X, t), vy: diff(Y, t)})
def EL(L, f):
    s = SR.var('s'); ds = SR.var('ds')
    Ls = L.subs({diff(f, t): ds}).subs({f: s})
    return (diff(diff(Ls, ds).subs({s: f, ds: diff(f, t)}), t) - diff(Ls, s).subs({s: f, ds: diff(f, t)})).expand()
print('EL for x:', EL(L0t, X), '= 0'); print('EL for y:', EL(L0t, Y), '= 0')
print('drift velocity (xdot, ydot) = (0,', -E/B, '), the E x B / B^2 velocity for E = E e_x, B = B e_z:', vector([E, 0, 0]).cross_product(vector([0, 0, B]))/B^2)
