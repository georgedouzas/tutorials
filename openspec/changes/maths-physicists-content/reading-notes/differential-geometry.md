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
