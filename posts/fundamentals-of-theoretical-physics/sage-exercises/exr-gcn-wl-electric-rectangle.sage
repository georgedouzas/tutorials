# Exercise exr-gcn-wl-electric-rectangle: for a static potential Phi(x) (A_mu dx^mu = Phi dt) the rectangle
# (0,0) -> (R,0) -> (R,T) -> (0,T) -> (0,0) in the (x, t) plane has -q oint A_mu dx^mu = -q T (Phi(R) - Phi(0)); for a
# uniform field Phi = -E x this is q E R T = -q times the integral of F_xt = d_x A_t - d_t A_x over the rectangle.
q, E, R, T, x, t, Q, r0 = var("q E R T x t Q r0", domain="positive")
def loop(Phi):
    legs = [(0, (x, 0, R)), (R, (t, 0, T)), (0, (x, R, 0)), (0, (t, T, 0))]      # spatial legs carry A_x = 0
    tot = integrate(Phi.subs(x=R), t, 0, T) + integrate(Phi.subs(x=0), t, T, 0)
    return -q * tot
w = loop(-E * x)
stokes = -q * integrate(integrate(diff(-E * x, x), x, 0, R), t, 0, T)
print("exponent for the uniform field:", w.simplify_full(), "; by Stokes:", stokes)
print("[PASS] -q oint A = q E R T, as Stokes gives:", bool(w == q * E * R * T), bool((w - stokes).simplify_full() == 0))
Phi_c = Q / (4 * pi * (x + r0))                 # Coulomb potential of a charge Q at distance r0 to the left of x = 0
wc = loop(Phi_c).simplify_full()
print("Coulomb case: exponent =", wc)
print("[PASS] it equals -i T times the difference of potential energies q(Phi(R) - Phi(0)):",
      bool((wc + q * T * (Phi_c.subs(x=R) - Phi_c.subs(x=0))).simplify_full() == 0))
