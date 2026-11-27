# Reading notes: homogeneous-spaces-bundles (task 4.12, sec-coset-geometry raised and split into sec-coset-geometry, sec-reductive, sec-coset-vielbeins)

## lee2013introduction
- Ch. 21, Thm. 21.17 (homogeneous space construction) -> def-coset-space (1)-(5); proof rebuilt without the closed subgroup theorem (R assumed embedded; local diffeomorphism (X, h) -> e^X h).
- Ch. 21, Thm. 21.18 (characterisation, orbit map G/G_p -> M) -> def-coset-space (6), with the infinitesimal action assumed onto (Sard not used); def-homogeneous-space (4) makes G_p a regular level set.
- Ch. 21, Examples 21.15, 21.19 (spheres, E(n), SL(2,R) on the half-plane, odd spheres) -> def-homogeneous-space examples (exm-cos2-hs-halfplane), exr-cos2-hs-halfplane, exr-cs-euclidean-plane, exr-cos2-hs-unitary-spheres, prp-cos2-classical (1), (2), exm-cos2-cs-halfplane.
- Ch. 21, Exercise 21.16 -> exr-cos2-hs-unitary-spheres.
- Ch. 21, Example 21.21 (Grassmannians via GL(n,R)) -> prp-cos2-classical (4), exm-cos2-cl-gl.
- Problem 21-5 (local sections) -> def-coset-representative (3).
- Problem 21-7 (invariant metrics, discrete case) -> cited at def-invariant-metric.
- Problem 21-10 (CP^n under U(n+1)) -> prp-cos2-classical (5), exr-cpn.
- Problem 21-11 (a) (components of a homogeneous space) -> exr-cos2-hs-components.
- Problem 21-15 (complex Grassmannians) -> exr-cos2-cl-complex-grassmannian.

## hamilton2017mathematical
- Secs. 3.8-3.9 (homogeneous spaces, Stiefel and Grassmann manifolds) -> def-coset-space, prp-cos2-classical, exr-cos2-cs-stiefel.

## gadea2013analysis
- Ch. 5, reductive homogeneous spaces -> cited at def-reductive-decomposition; Problem 6.101 kept at exm-symmetric-sphere.

## kobayashi1969foundations, rudolph2017differential, chatzistavrakidis2007consistency, dolan2003, manolakos2016, chatzistavrakidis2009nk
- Existing citations kept at def-invariant-metric, def-reductive-decomposition, def-symmetric-coset (rudolph2017differential Sec. 2.5 added), def-coset-structure-constants, def-coset-vielbein, def-r-connection, def-vielbein-metric, exm-coset-list.

## Standard material (no source item)
- Most new examples and exercises (exponential charts, dense line on the torus, U(n)/SU(n), isotropy representations of the half-plane, CP^n and Grassmannians, Inönü-Wigner contraction, SU(3)/SO(3), so(2,1) and so(3,1) analogues, the half-plane vielbein and connection, compensating transformations) are standard material written for this tutorial.
- keskivakkuri2022mathematical and rudolph2013differential Part II were not reached for this run; no items adapted from them.

# Task 4.12, fibre-bundle part (sec-fibre-bundles, sec-fib-vector-principal, sec-connections, sec-hopf) and closing Exercises

## lee2013introduction
- Ch. 10, Fiber Bundles and Problem 10-19 (projection is an open submersion; E compact iff M, F compact) -> def-fibre-bundle (1), (2); exr-fib-compact-total.
- Example 10.37 (d) (coverings as bundles with discrete fibre) -> def-fibre-bundle (5), exm-fib-covering, exr-fib-covering-powers.
- Example 10.3, Problem 10-1 (Möbius bundle, not trivial) -> exm-bundle-mobius, prp-mobius.
- Lemma 10.5, Lemma 10.6 (chart lemma), Problems 10-5, 10-6, 10-12 (cocycle condition, construction theorem, isomorphic cocycles) -> def-transition-function (1)-(5).
- Problem 10-7 (transition function of TS^2 from stereographic charts) -> exr-fbun-transition-s2-tangent.
- Problem 10-13 (Möbius bundle from its cocycle) -> exr-fib-reconstruct-mobius.
- Sec. 10.2, Local and Global Sections, Prop. 10.19 (frames and triviality), Prop. 10.4 (TM as a vector bundle) -> def-section, def-vector-bundle (1)-(3).
- Example 10.7 (Whitney sum) -> def-vector-bundle (4), exr-fib-vb-direct-sum.
- Problems 10-15, 10-16, 10-17 (tautological bundle, Möbius, ambient = tangent + normal) -> exm-fib-vb-tautological, exr-fbun-tautological-line, exr-fbun-normal-frame.

## hamilton2017mathematical
- Sec. 4.1 (bundle atlases), Exercise 4.8.9 (gluing from transition functions) -> def-transition-function (3), exr-fib-cocycle-equivalence, exr-fib-principal-reconstruct.
- Exercises 4.8.1, 4.8.2 (Möbius strip: sections meet zero section, pullbacks M_n) -> prp-mobius, exm-fib-mobius-edge, exr-fib-mobius-n.
- Exercises 4.8.13, 4.8.14 (L + L trivial; tautological = Möbius) -> exr-fbun-mobius-sum, exr-fbun-tautological-line.
- Sec. 4.2, Thm. 4.2.15, Exercises 4.8.8, 4.8.10 (principal bundles, G -> G/H, Stiefel, frame bundle of spheres) -> def-principal-bundle (4), exm-fib-principal-stiefel, exr-fbun-so3-frames.
- Exercise 4.8.6 (Hopf bundle with reversed action) -> exm-fib-hb-reversed, exr-fib-hb-reversed.
- Exercise 4.8.12, 4.8.18 (tautological line bundle over CP^1, its clutching function) -> exm-fib-vb-tautological, exr-fib-vb-tautological-transition.
- Sec. 4.7, Exercises 4.8.20, 4.8.24, 4.8.25 (associated bundles, sums, induced representations, T(G/H) associated by g/h) -> def-fib-associated-bundle (2), (3), (5), exr-fib-assoc-sum, exr-fib-assoc-induced.
- Secs. 5.1-5.2, Exercises 5.15.1, 5.15.5, 5.15.6 (connections, existence, Maurer-Cartan over a point, reductive coset connection) -> def-bundle-connection (3), (5), exm-fib-conn-point.
- Exercise 5.15.2 (abelian structure group: maps M -> G = invariant maps P -> G) -> exr-fib-principal-invariant-maps.
- Secs. 5.4-5.6 (local forms, gauge transformations, curvature, Bianchi) -> def-gauge-potential, def-gauge-transformation, def-curvature-connection.
- Secs. 5.8, 5.10, 5.11, Exercises 5.15.8-5.15.10 (parallel transport, path-ordered exponentials, holonomy, Wilson loop on the Hopf bundle) -> def-fib-holonomy, exm-hopf-connection-horizontal, exr-fbun-wilson-loops.
- Sec. 5.2.2, 5.6.1, Prop. 5.6.8, Remark 5.6.9 (Hopf connection, its curvature and Chern number) -> def-hopf-connection, def-chern-number, prp-hopf-chern (existing citations kept).

## rudolph2017differential, kobayashi1963foundations, gadea2013analysis, nastase2019classical
- Existing citations kept at the statements (Defs. 1.1.1, 1.2.1, 1.3.2, 1.3.4, 1.4.6, Prop. 1.7.2, Example 1.1.20, Example 1.3.22, Thm. 4.6.11; Kobayashi-Nomizu Ch. II; Gadea Problem 5.28; Nastase Sec. 27). No new items adapted.

## keskivakkuri2022mathematical
- Not used in this run (no outline in the PDF; the material above sufficed).

## Standard material (no source item)
- Most examples and exercises on the Hopf bundle sections s_N, s_S, the Berry phase, the Aharonov-Bohm flux line, Landau gauges, holonomy of squares in a constant SU(2) potential, the quaternionic trivialisation of SO(4) -> S^3, and the Stokes proof that the Hopf bundle has no global section are standard material written for this tutorial.
