# Reading notes: differential-geometry (task 4.9, sec-charts-manifolds raised, sec-submanifolds new)

## lee2013introduction
- Ch. 1, Problem 1-1 (line with two origins) -> exm-manifold-two-origins, exr-manifold-two-origins.
- Ch. 1, Problem 1-7 (stereographic projection of S^n) -> prp-stereographic, exm-atlas-sn, exr-transition-sn.
- Ch. 4, Thm. 4.12 (rank theorem) and its proof -> thm-constant-rank (proof adapted: straighten source with the inverse function theorem, then target).
- Ch. 4, Example 4.2, Example 4.19 (figure-eight curve) -> def-immersion examples, exm-immersion-figure-eight, prp-level-set-examples (4).
- Ch. 5, Thm. 5.8 (local slice criterion), Prop. 5.2 -> def-embedded-submanifold (1), (2).
- Ch. 5, Cor. 5.14 (regular level set theorem) -> thm-regular-value.
- Ch. 5, Prop. 5.38 (tangent space of a level set as a kernel) -> prp-tangent-kernel.
- Ch. 5, Example 5.9, Example 5.17 -> prp-level-set-examples (1), (2).
- Problem 5-1 -> exr-regular-value-lee; Problem 5-7 (x^3 + xy + y^3) -> exm-regular-value-cubic, exr-regular-value-cubic, figure regular_level_set.

## rudolph2013differential
- Sec. 1.2, Exercise 1.2.3 (hyperboloid atlas) -> exr-manifold-hyperboloid.
- Sec. 1.2, Example 1.2.6 / Exercise 1.2.6 (classical matrix sets as level sets) -> prp-level-set-examples (3) (no group language used).
- Sec. 1.5, Exercise 1.5.5 (rank of compositions) -> exm-rank-composition.
- Sec. 1.6, Example 1.6.6 (curves, figure eight), Prop. 1.6.7, Exercise 1.6.1 (graphs) -> exm-submanifold-figure-eight, def-embedded-submanifold, exr-product-graph, exr-submanifold-graph-map.

## Standard material (no source item)
- Most new examples and exercises of sec-charts-manifolds (light-cone and rapidity charts, action-angle chart, Bloch sphere, Mercator chart, loxodrome, Hopf map, Clifford torus, Lorentz matrices as a level set) are standard textbook material written for this tutorial.

# sec-vector-fields-forms-tensors (task 4.9)

## lee2013introduction
- Ch. 3, pp. 51-56 (derivations at a point, locality, Lemma 3.4 / Prop. 3.2 bump and Taylor argument) -> def-tangent-vector (1)-(3), def-coordinate-basis (proof by first-order expansion), def-tangent-space.
- Ch. 3, Prop. 3.14 (tangent space of a product) -> exr-basis-product-manifold, exr-velocity-product.
- Ch. 3, pp. 55-63, Prop. 3.6 (differential of a smooth map, chain rule) -> def-pushforward.
- Problem 3-1 -> exr-push-zero; Problem 3-6 -> exr-ts-su2-everywhere, exr-push-s3-curve; Problem 3-8 (curve classes) -> def-velocity (3), exr-velocity-relation.
- Ch. 5, Props. 5.37-5.38 -> thm-tangent-submanifold.
- Ch. 8, pp. 174-188, Prop. 8.28 (vector fields as derivations, Lie bracket, naturality) -> def-vector-field, def-lie-bracket; Problem 8-2 -> exm-vf-euler, exr-vf-euler; Problem 8-6 (quaternion frame of S^3) -> exr-vf-s3-frame, exr-bracket-s3, exm-frame-group; Problem 8-10 -> exr-push-quadrant, exr-vf-pushforward; Problem 8-11 -> exr-vf-polar-components; Problem 8-13 -> exr-vf-one-zero; Problem 8-16 -> exr-bracket-r3.
- Ch. 9, pp. 205-212 (integral curves, existence and uniqueness) -> def-integral-curve.
- Ch. 11, pp. 272-293 (covectors, differentials, line integrals) -> def-cotangent-vector, def-coordinate-differentials, def-differential, def-one-form; Problem 11-7 -> exr-pull-substitute; Problem 11-9 -> exr-differential-chain-stereo, exr-pull-stereo-df; Problem 11-10 -> exr-differential-critical-sphere; Problem 11-11 -> exr-differential-lagrange; Problem 11-13 -> exr-one-form-length; Problem 11-14 -> exr-one-form-two-forms; Problem 11-17 -> exr-one-form-torus-exact (special case).
- Ch. 12, pp. 306-320, Problems 12-8, 12-9 -> def-tensor-field, def-tensor-transformation, def-tensor-product-fields, def-contraction-fields, def-symmetric-tensor-field.
- Ch. 14, eq. (14.3), Props. 14.8-14.11, Thm. 14.24, Prop. 14.26, Prop. 14.29 -> def-differential-form, def-wedge-product, def-exterior-derivative, def-pullback-map, exr-exterior-invariant; Problem 14-1 -> exr-df-wedge-three; Problem 14-6 -> exr-pull-flux-sphere, prp-forms-sphere; Problem 14-7 -> exr-pull-commutes-d.
- Ch. 17, pp. 440-447 (closed and exact forms, Poincare lemma) -> def-closed-exact (one-form case only, via real analysis def-line-integral (4)).

## rudolph2013differential
- Sec. 1.4 (tangent vectors as derivations, tangent maps) -> def-tangent-vector, def-coordinate-basis, def-velocity, def-pushforward.
- Sec. 1.6 (tangent spaces of submanifolds) -> thm-tangent-submanifold.
- Secs. 2.1-2.5 (vector fields, integral curves, covectors, tensor fields) -> def-vector-field, def-integral-curve, def-cotangent-vector, def-tensor-field, def-contraction-fields.
- Secs. 4.1-4.3 (forms, exterior derivative, pullback, closed forms) -> def-differential-form, def-exterior-derivative, def-pullback-map, def-closed-exact.

## keskivakkuri2022mathematical
- Sec. 3.6 (tensors, symmetric and antisymmetric parts) -> def-tensor-product-fields, def-symmetric-tensor-field.
- Secs. 4.3-4.4 (frames, rotation fields on the sphere, differential forms) -> def-frame, prp-brackets-sphere, def-one-form, def-wedge-product.

## Standard material (no source item)
- The hairy ball theorem for smooth fields on S^2 (exr-hairy-ball) is proved with stereographic charts and winding numbers (complex-analysis thm-residue (1)); standard argument written for this tutorial.
- Physics examples (four-velocity and Doppler shift, Hamiltonian field of the oscillator, field strength and F^F, monopole potentials, Liouville volume, angular momentum brackets and ladder fields) are standard material.

# sec-integration-manifolds (task 4.9)

## lee2013introduction
- Ch. 1, pp. 24-29, Thm. 1.46 (manifolds with boundary, smooth invariance of the boundary) -> def-int-manifold-boundary (1)-(2); Prop. 5.47 (regular sublevel sets are regular domains) -> def-int-manifold-boundary (3), exm-int-bdry-interval, exm-int-bdry-ball.
- Ch. 2, Lemmas 2.20-2.22, Thm. 2.23, Prop. 2.25 (bump functions, partitions of unity), Prop. 2.28 (exhaustion functions) -> thm-int-partition-unity, exr-int-pu-exhaustion-function; Lemma 2.26 (extension) -> exr-int-pu-extension; Problem 2-7 -> exr-int-pu-infinite-dimension.
- Ch. 11, Props. 11.34-11.38, Thms. 11.39, 11.42, Cor. 11.50 (piecewise smooth line integrals, conservative covector fields, local exactness) -> thm-int-conservative; Example 11.36 -> exm-int-cons-angle.
- Ch. 15, Props. 15.3, 15.5, 15.6, 15.24, Examples 15.25-15.26, 15.38 (orientations, orientation forms, induced boundary orientation, the Moebius band) -> def-int-orientation; Problem 15-1 -> exr-int-or-union; Problem 15-3 -> exr-int-or-antipodal; Problem 15-12 -> exr-int-or-reversing-line.
- Ch. 16, Props. 16.1-16.8 (integral of compactly supported forms, parametrisations), Thm. 16.11 (Stokes), Thm. 16.17 (Green) -> def-int-integral, thm-stokes; Problem 16-2 -> exr-int-integral-clifford; Problem 16-4 -> exr-int-stokes-no-retraction; Problem 16-9 -> exr-int-stokes-solid-angle; Problem 16-10 -> exr-int-integral-torus, exr-int-stokes-torus.

## rudolph2013differential
- Def. 1.3.6, Prop. 1.3.7 (partitions of unity) -> thm-int-partition-unity.
- Sec. 4.2, Defs. 4.2.1, 4.2.3, Prop. 4.2.4, Example 4.2.5 (orientation, volume forms in the sense of orientation forms, the Moebius strip) -> def-int-orientation.
- Sec. 4.2, Defs. 4.2.6-4.2.13, Thm. 4.2.14 (integral, manifolds with boundary, Stokes) -> def-int-manifold-boundary, def-int-integral, thm-stokes.

## keskivakkuri2022mathematical
- Sec. 4.4.4, Thm. 4.14 (integration of forms, Stokes) and Problem 4.26 (vector calculus forms of Stokes and Gauss) -> def-int-integral, thm-stokes (3)-(5).

## Standard material (no source item)
- The cut-off argument for the change of variables on the half-space and the content-zero argument of def-int-integral (5) are written for this tutorial, so that the integral rests on real-analysis thm-change-of-variables (Riemann integral, content zero).
- Physics examples (spacetime slab, monopole flux and patches, Coulomb shell, Ampere inside a wire, conservation of charge, gravity, line current, oscillator action, time reversal and parity) are standard material.

# sec-metrics (task 4.9)

## lee2013introduction
- Ch. 13, pp. 327-329, 343-344 (Riemannian and pseudo-Riemannian metrics, signature, Prop. 13.3 existence by partitions of unity, failure for Lorentz metrics) -> def-metric, def-signature-metric, thm-met-riemannian-existence (1)-(2), exm-met-exist-lorentz-fails.
- Ch. 13, pp. 330-334 (pullback metrics, Riemannian submanifolds) -> def-induced-metric; Problem 13-8 -> exr-met-ind-clifford; Problem 13-9 (helicoid and catenoid) -> exr-met-ind-helicoid, exm-met-iso-helicoid.
- Ch. 13, pp. 337-338, Problem 13-5 (lengths, reparametrisation, unit-speed curves) -> def-curve-length (3)-(4); Problem 13-10 (segments are shortest) -> exr-met-len-shortest-segment.
- Ch. 13, pp. 341-343, Problem 13-21 (musical isomorphisms, gradient, steepest ascent) -> def-lowering, def-raising (1)-(3).
- Ch. 13, Problems 13-6, 13-7 (one-dimensional and product metrics are flat) -> def-flat-metric (2)-(3); Problem 13-4 (round metric in stereographic coordinates) -> prp-sphere-metric (2).
- Ch. 15, Props. 15.29, 15.31, pp. 388-390 (Riemannian volume form, coordinate formula) -> def-volume-element (1)-(2); Exercise 15.30 (local isometries preserve volume forms) -> def-isometry (3), exr-met-vol-pullback.

## rudolph2013differential
- Sec. 4.4, Def. 4.4.1 (metrics, signature, constancy on components), Prop. 4.4.2 (existence of Riemannian metrics), Remark 4.4.3 (index raising and lowering in charts), Def. 4.4.4 (canonical volume form) -> def-signature-metric, thm-met-riemannian-existence, def-lowering, def-raising, def-volume-element.

## carroll1997
- Ch. 1 (Minkowski metric, Lorentz transformations, proper time, index manipulation, energy-momentum tensor of dust) -> prp-minkowski-metric, exm-met-mink-twins, def-lowering, exr-met-low-dust.
- Ch. 2 (the metric, canonical form, volume forms) -> def-line-element, def-volume-element.
- Ch. 7 (Schwarzschild metric, Eddington-Finkelstein coordinates) -> exm-met-schwarzschild, exm-met-schwarzschild-null, exm-met-le-eddington, exr-met-le-eddington, exm-met-inv-eddington, exm-met-raise-eddington.

## keskivakkuri2022mathematical
- Secs. 5.1-5.2, 5.13 (metric, signature, index gymnastics, induced metrics, isometries) -> def-metric, def-signature-metric, def-line-element, def-lowering, def-induced-metric, prp-sphere-metric, def-isometry (kept citations of the existing blocks).

## boskoff2024journey
- Secs. 4.13, 7.1-7.2, Exs. 4.3.3, 4.13.2 (half-plane, disc, pseudosphere, tractrix) -> def-hyp-half-plane, prp-hyp-disc, exm-hyp-pseudosphere, exr-hyp-tractrix (existing blocks, kept).

## Standard material (no source item)
- Constancy of the signature by a continuity argument on positive definite subspaces (def-signature-metric (2)); the Lorentzian metric 2 g(X,.)^2/g(X,X) - g from a vector field without zeros (thm-met-riemannian-existence (3)); reversed Cauchy-Schwarz and the orthogonal complement of a timelike vector (prp-minkowski-metric (2)-(3)); the converse "equal angles imply proportional metrics" (def-angle (3)); the Euler-Lagrange checks for parallels of the sphere and for semicircles of the half-plane (exr-met-len-euler-lagrange, exr-met-hyp-euler-lagrange).
- Physics examples (Rindler, Milne, Schwarzschild, expanding universes, Kaluza-Klein metrics and inverses, Einstein static universe, velocity space as the hyperbolic plane, Euclidean AdS_2) are standard material.

# sec-hodge-star (task 4.9)

## rudolph2013differential
- Part I, Sec. 4.4, Eq. (4.4.7) and Remark 4.4.5 (inner product of forms, volume form in a chart) -> def-hod-inner-product, exm-hod-ip-volume.
- Part I, Sec. 4.5, Def. 4.5.1, Eqs. (4.5.4)-(4.5.5), Prop. 4.5.3 (Hodge star, coframe and chart formulas, the square, the isometry property; their star is (-1)^q times the one used here) -> def-hod-star (1)-(4), exr-hod-star-square-signs.
- Part I, Sec. 4.5, Def. 4.5.5, Prop. 4.5.6 (codifferential as the adjoint of d, its sign) -> def-hod-codifferential (1)-(2), exr-hod-cod-sign.
- Part I, Ex. 4.5.8 and Problems 4.5.4-4.5.5 (grad, div, curl from d and the star; the Laplacian on R^n) -> prp-hod-vector-calculus, def-hod-laplacian (2).
- Part I, Ex. 4.5.9 (Hodge Laplacian on Minkowski space, the wave operator, same signature) -> def-hod-laplacian (2), exm-hod-lap-minkowski.
- Part I, Sec. 4.6, Eqs. (4.6.1)-(4.6.25), Remark 4.6.1 (Maxwell's equations df = 0, d*f = -j; continuity; the invariants f^*f and f^f; Lorenz condition; variational principle; isotropic fields) -> prp-hod-maxwell (2)-(5), exm-hod-cod-minkowski, exm-hod-mx-plane-wave, exr-hod-mx-components, exr-hod-mx-continuity, exr-hod-mx-wave, exr-hod-mx-action. The sign d*F = -*J agrees with Rudolph's (4.6.8) in the convention F_{0i} = E_i.
- Part II, Sec. 2.7, Remark 2.7.1 and Thm. 2.7.2 (Hodge Laplacian, harmonic forms, the Hodge decomposition) -> def-hod-laplacian (4); the decomposition is stated as not proved.

## lee2013introduction
- Problem 16-18 (a)-(e) (inner product on Lambda^k, determinant formula, orthonormal basis e^I, Hodge star by alpha ^ *beta = <alpha, beta> dV_g, ** = (-1)^{k(n-k)}) -> def-hod-inner-product (2)-(3), def-hod-star.
- Problem 16-19 (stars of dx^i on R^n, of dx^i ^ dx^j on R^4) -> exr-hod-star-r4.
- Problem 16-20 (self-dual and anti-self-dual two-forms on a 4-manifold) -> exm-hod-star-euclidean-four, exr-hod-star-self-dual-split.
- Problem 16-21 (div X = *d*X^flat, curl X = (*dX^flat)^sharp) -> prp-hod-vector-calculus, exr-hod-vc-general-divergence.
- Problem 16-22 (d* = (-1)^{n(k+1)+1} *d*, adjoint of d on a compact manifold) -> def-hod-codifferential (2), exr-hod-cod-delta-squared.

## keskivakkuri2022mathematical
- Problem 4.21 (electromagnetic duality: Hodge star on Minkowski space, dF = 0, d*F = *J, continuity; different sign conventions) -> prp-hod-maxwell, cited for comparison.

## carroll1997
- Ch. 1, Eqs. (1.87)-(1.94), pp. 23-24 (Hodge dual in components, ** = (-1)^{s + p(n-p)}, the cross product as *(U ^ V), Maxwell's equations dF = 0, d*F = 4 pi *J, duality F -> *F) -> def-hod-star (3)-(4), exm-hod-star-cross-product, prp-hod-maxwell (5), exm-hod-mx-duality.

## Standard material (no source item)
- The nondegeneracy argument of def-hod-codifferential (3) with a bump function, the proof of the divergence formula from the adjointness, the signature count N_k, the commutation of the star with Delta_H in every signature, and the integral identity of def-hod-laplacian (4) are written for this tutorial.
- Examples: harmonic conjugates as *df = dh, the Mobius band, the boundary term on an interval, the tanh form without compact support, the flat and the Lorentzian torus, the line vortex, the vector Laplacian of e_r, the oblique chart, parabolic cylindrical coordinates, the magnetic monopole without potential, constant fields, the boost of a constant field, duality rotations, Gauss's law from a slice: standard material.

# sec-connections-curvature, split into sec-connections-curvature, sec-levi-civita, sec-geodesics, sec-riemann, sec-cur-surfaces, sec-ricci (task 4.9)

## carroll1997
- Ch. 3, pp. 56-58, eqs. (3.1)-(3.17) (covariant derivative, inhomogeneous transformation of the connection, extension to one-forms and tensors) -> def-connection, def-covariant-derivative-vector, def-covariant-derivative-tensor.
- Ch. 3, p. 59, eq. (3.17) (torsion; metric compatibility) -> def-torsion, def-metric-compatible.
- Ch. 3, pp. 59-60, eqs. (3.18)-(3.21) (Christoffel symbols from compatibility and symmetry) -> def-levi-civita, def-christoffel.
- Ch. 3, pp. 63-66, eqs. (3.37)-(3.40) (parallel transport, inner products preserved) -> def-parallel-field, def-parallel-transport.
- Ch. 3, pp. 67-70, eqs. (3.44)-(3.53) (geodesic equation, affine parameter, geodesics as extremals of the proper time) -> def-geodesic (3)-(5); pp. 72-73 (exponential map, normal coordinates) -> def-geodesic-exponential.
- Ch. 3, pp. 73-81, eqs. (3.61)-(3.90) (Riemann tensor as commutator, symmetries, Bianchi identities, flatness iff R = 0 sketched on pp. 76-77) -> def-riemann, def-riemann-lowered, thm-cur-flat (the converse is proved in full here by stagewise integration of the parallel frame and the Poincare lemma for one-forms).
- Ch. 3, pp. 81-85, eqs. (3.90)-(3.95) (Ricci tensor, scalar, Einstein tensor and its conservation, the two-sphere, maximally symmetric form) -> def-ricci-tensor, def-scalar-curvature, def-einstein-tensor, prp-sphere-riemann, prp-sphere-curvature, def-sectional-curvature (3).
- Ch. 7, eq. (7.29) (Schwarzschild) and Ch. 8 (Robertson-Walker) used for the physics examples exm-chr-schwarzschild, exm-chr-frw, exm-rie-frw, exm-ric-schwarzschild, exm-et-frw, exr-geo-schwarzschild-circular.

## keskivakkuri2022mathematical
- Secs. 5.3-5.10 (existing citations kept): connection, covariant derivative, torsion, compatibility, Christoffel symbols, Riemann and Ricci tensors; Problem 5.5 (torus) -> exr-torus-christoffel.

## boskoff2024journey
- Secs. 4.6-4.10, 4.12, 4.15, 7.1 (existing citations kept): second fundamental form, shape operator, Gauss's equation, theorema egregium, sphere symbols, gnomonic chart, half-plane geodesics -> def-sff-second-form, def-sff-shape-operator, thm-sff-gauss-equation (Codazzi-Mainardi now item (3)), exr-gauss-gnomonic, exm-hyp-semicircle.

## godinho2014introduction, gray2019student, torresdelcastillo2020differentiable, blennow2022relativity, emam2021covariant
- Existing citations kept (Thm. 3.2 Levi-Civita; Sec. 3.4 exponential map; Sec. 4.1 symmetries and sectional curvature; Sec. 4.3 Gauss-Bonnet; Einstein metrics and the three-sphere; Problems 2.3, 2.20, 2.41, 2.42, 2.46, 2.48 of Blennow).

## lee2013introduction, rudolph2013differential
- Not used for this section: Lee's Introduction to Smooth Manifolds has no chapter on connections (Lee's Riemannian Manifolds is not in the library); the connection material of Rudolph-Schmidt Part II was not consulted.

## Standard material (no source item)
- Existence of connections by partitions of unity; locality and pointwise dependence; uniqueness of the tensor extension; Koszul formula proof; chart with Gamma(p) = 0; global solvability of linear systems along a curve from Picard-Lindelof; smooth dependence by bootstrapping thm-characteristics-cauchy (1); exponential map and normal coordinates; the polarisation argument for sectional curvature; holonomy of a cap of a surface of revolution; total curvature of closed surfaces of revolution.
- Physics examples (Rindler inertial forces, rotating fluid, stressed disc, tidal tensor, dislocations and torsion, Foucault pendulum, Tomita-Chiao fibre, Thomas precession, freely falling frames, soap films and Young-Laplace, bead on a surface, cosmic string, Kretschmann scalar, Friedmann equation, dust universe, static universe) are standard material.

# sec-flows-killing (task 4.9, flows and Killing vectors)

## lee2013introduction
- Ch. 9, Thm. 9.12 (fundamental theorem on flows, pp. 211-214) -> def-flow (1)-(4), proof of openness and smoothness of the flow domain adapted.
- Ch. 9, Lemma 9.15, Thm. 9.16, Cor. 9.17 (uniform time, compact support, compact manifolds, pp. 215-216) -> def-one-parameter-group (3), (4); Cor. 9.14 (naturality, p. 215) -> exr-flw-naturality; Lemma 9.19 (escape lemma, p. 217) -> exr-flw-escape-lemma.
- Ch. 9, Thm. 9.38 (L_V W = [V, W], p. 229) -> def-lie-derivative (3).
- Ch. 9 Problems 9-1 (constant/injective/periodic) -> exr-flw-periodic; 9-3 (flows of four plane fields) -> exr-flw-lee-fields; 9-16 (L_V W depends on V near p) -> exm-flw-lie-depends; 9-18 (non-commuting flows) -> exr-flw-noncommuting.
- Ch. 12, Props. 12.32, 12.36, Cor. 12.33, Thm. 12.37 (Lie derivatives of covariant tensors, formula for L_{fV}, d/dt of the pullback, pp. 321-324) -> def-lie-derivative (4)-(6), exr-flw-lie-fX; Problem 12-10 (pullback of mixed tensors by diffeomorphisms, p. 326) -> def-pullback; Problem 12-11 (L_[V,W] = [L_V, L_W]) -> def-lie-derivative (7).
- Ch. 14, Lemma 14.13 (interior product is an antiderivation), Thm. 14.35 (Cartan's magic formula), Cor. 14.36 (pp. 358-359, 372-373) -> thm-flw-cartan (1)-(4).

## carroll1997 (lecture notes; the Lie derivative and Killing material is in Ch. 5 of this version)
- Ch. 5, eqs. (5.1)-(5.10), pp. 129-132 (pullbacks and pushforwards) -> def-pullback.
- Ch. 5, eqs. (5.18)-(5.33), pp. 135-138 (Lie derivative, adapted coordinates (5.24), L_V U = [V, U], one-forms, metric 2 nabla_(mu V_nu)) -> def-lie-derivative, exm-flw-lie-adapted, def-killing (1).
- Ch. 5, eqs. (5.39)-(5.42), p. 139 (symmetries, isometries, Killing's equation) -> def-killing (1), (2).
- Ch. 5, eq. (5.43), p. 140 (conserved quantities along geodesics) -> thm-flw-conserved (1).
- Ch. 5, pp. 140-141 (maximal symmetry, n(n+1)/2, Killing fields of R^2, closure under commutators stated as an exercise) -> thm-flw-killing-bound, def-maximally-symmetric, def-isometry-algebra (1), exm-killing-plane.

## keskivakkuri2022mathematical
- Secs. 4.3.6-4.3.8 (pullback, flow, Lie derivative, example of a (1,1) tensor) -> def-pullback, def-flow, def-lie-derivative, exr-lie-derivative-formula.
- Sec. 4.4.3 (interior product and Lie derivative of forms) -> thm-flw-cartan.
- Sec. 5.14, eqs. (5.386)-(5.391), pp. 226-228 (Killing equation, closure, conserved quantity, maximal symmetry, R^m) -> def-killing, def-isometry-algebra, thm-flw-conserved, def-maximally-symmetric (2).
- Problem 4.16 ([L_X, L_Y] = L_[X,Y]) -> def-lie-derivative (7); Problem 5.8 (Killing vectors of S^2 and their commutators) -> prp-sphere-killing, prp-killing-brackets; Problem 5.9 (S^3 and R x S^3) -> exr-flw-sphere-killing-s3, exr-flw-maximal-s3.

## rudolph2013differential
- Sec. 2.2 (integral curves and flows): cited for def-flow and in the section's reading list only; the Part I PDF is not in local Zotero storage, so no further items were adapted from it.

## torresdelcastillo2020differentiable
- Existing citations kept (Ch. 2, Secs. 2.1-2.3; Sec. 6.1, eq. (6.39)).

## Standard material (no source item)
- Determination of a Killing field by its value and derivative at a point via the linear transport system along geodesics in normal coordinates; the invariance identity for the curvature of a maximally symmetric metric and the proof of constant sectional curvature (Riemannian case); conformal Killing fields and null geodesics; boost current of a scalar wave; centre of energy; Clairaut confinement on the torus; logistic flow; Liouville's theorem in the plane; ladder fields; the bracket as a commutator of flows.

# Task 4.9: sec-frobenius and sec-symplectic (new sections)

## lee2013introduction
- Ch. 19, pp. 491-499 (distributions, integral manifolds, involutivity, Props. 19.3, Lemma 19.4, Lemma 19.5, Thm. 19.7, Prop. 19.8, Thm. 19.12 with the projected frame of its proof, Example 19.14) -> def-frb-distribution (1)-(3), thm-frb-frobenius (3), thm-frb-forms (1)-(3), exm-frb-contact (Example 19.1(d)), exm-frb-normalised-frame, exm-frb-saddle-chart (Example 19.14).
- Ch. 9, Thm. 9.44, 9.46 (commuting vector fields, canonical form for commuting fields), pp. 231-236 -> thm-frb-frobenius (1), (2) (proved here with def-lie-derivative (6) and the inverse function theorem).
- Problems 19-2 (dθ^i ∧ θ^1 ∧ ... ∧ θ^{n-k} = 0) and 19-3 (integrating factors) -> thm-frb-forms (3), (4), exr-frb-surface-factor; 19-4 -> exr-frb-octant; 19-5 -> exr-frb-lee-plane; 19-8 (level sets of submersions) -> thm-frb-forms (5); 19-13(a), (b) -> exr-frb-pde-compatible, exr-frb-pde-incompatible.
- Ch. 22, pp. 565-570 (symplectic tensors, Lemma 22.3, Prop. 22.7 canonical form, Prop. 22.8 top power, Example 22.9, tautological form, Prop. 22.11, 22.12) -> def-spl-vector-space (2)-(4), def-spl-manifold (1)-(4), exr-spl-tautological (Prop. 22.12).
- Ch. 22, pp. 571-578 (Darboux Thm. 22.13 with Moser-Weinstein proof: stated only, not proved; Hamiltonian vector fields formula (22.9), Prop. 22.16, Prop. 22.17, Poisson brackets) -> def-spl-hamiltonian, thm-spl-liouville, thm-spl-darboux (5) (stated with its reference).
- Problems 22-1, 22-2 (isotropic, Lagrangian subspaces) -> exr-spl-isotropic, exm-spl-lagrangian; 22-3(b) (Z^T J Z = J) -> def-spl-vector-space (5); 22-5(a) -> exr-spl-not-exact; 22-7(a) -> exr-spl-product; 22-10 (cotangent lift of a diffeomorphism) -> def-spl-manifold (2); 22-16(a) (brackets of Hamiltonian fields) -> def-spl-hamiltonian (4).

## keskivakkuri2022mathematical
- Sec. 4.5, pp. 161-164 (symplectic form, Poisson bracket with the inverse matrix, Darboux coordinates, canonical one-form, L_{X_H}ω = 0, locally Hamiltonian fields) -> section intro of sec-symplectic, def-spl-hamiltonian (4), (6), thm-spl-darboux (4) (bracket matrix -W^{-1}), thm-spl-liouville (1). Its sign convention dH = -ι_{X_H}ω differs from the one used here (ι_{X_H}ω = dH with ω = Σ dq^i ∧ dp_i, as in Lee); the section names the difference.
- Problem 4.13 (Hamilton's equations as a flow) -> def-spl-hamiltonian (1).

## rudolph2013differential
- Part I (Secs. 3.5, 7-8) is not in local Zotero storage (only Part II is), so nothing was adapted from it for these sections.

## Standard material (no source item)
- Commuting flows and the flat chart of a commuting frame built by composing flows; the contact planes of R^3 and the contact form of S^3; the Clifford tori and the circles of S^3 as flows; planes of simultaneity; the ideal and van der Waals gas entropy as integrating factors; the hyperboloids and mass shells; the dense line on the torus (pigeonhole argument).
- Symplectic linear algebra: the standard matrix, the imaginary part of a Hermitian product, reciprocal eigenvalues, the Pfaffian in dimension four, compatibility with multiplication by i; polar and spherical momenta; kick and drift maps, symplectic vs explicit Euler; angular momentum and Laplace-Runge-Lenz brackets; the spin brackets on S^2; Liouville's equation of statistical mechanics; action-angle and time-energy charts of the oscillator; Darboux in dimension two by integrating the coefficient; Archimedes' chart of the sphere.

# Final run (closing `## Exercises`, intro, def-maximally-symmetric)

## carroll1997
- Ch. 5, pp. 140-141 (maximally symmetric spaces, constant curvature R_abcd = K(g_ac g_bd - g_ad g_bc), de Sitter as a quadric) -> exr-dgint-de-sitter; def-maximally-symmetric (4) extended to every signature (proof by an orthonormal basis with signs; no new source).

## keskivakkuri2022mathematical
- Problem 5.5 (torus Christoffel symbols) -> exr-dgint-torus (b).
- Sec. 4.5 (Hamiltonian fields, Poisson brackets) and Sec. 5.14 (Killing fields, conserved quantities along geodesics) -> exr-dgint-sphere-hamiltonian.

## boskoff2024journey
- Secs. 4.6-4.10 (second fundamental form, shape operator, Gauss's equation) -> exr-dgint-torus (c).

## Standard material (no source item)
- Two-dimensional de Sitter space as a quadric in R^{1,2} (geodesics in planes through 0 from the three conserved momenta); Clairaut confinement on the torus; the geodesic flow of S^2 in the phase space of the spherical chart, momentum functions J_X = p_i X^i with {J_X, J_Y} = -J_{[X, Y]}, and the invariant surfaces of (H, J_3) as integral manifolds.
