# Reading notes: lie-groups-algebras (task 4.11, sections sec-lie-groups-algebras, sec-lie-algebras, sec-exponential, sec-maurer-cartan)

## lee2013introduction

- Ch. 7, Problems 7-2, 7-4, 7-17, 7-22, 7-23 (pp. 171-173 of the book): derivative of multiplication and inversion
  (exr-lie-group-dm), derivative of det (exr-lie-group-det), compactness of classical groups (exr-lie-group-compact),
  quaternions (exm-lie-group-quaternions).
- Ch. 8, Problems 8-3, 8-6, 8-19 to 8-23, 8-28, 8-31 (pp. 199-203): vector fields infinite-dimensional
  (exm-lie-algebra-vector-fields), frame of S^3 by quaternions (exr-lie-lif-quaternion-fields), cross product
  (exr-lg-cross-product), rotation fields (exm-lie-algebra-rotation-fields, exr-lie-algebra-rotation-fields), small Lie
  algebras (exr-lie-algebra-small), derivations (exr-lie-algebra-derivations), direct sums (exr-lie-algebra-direct-sum),
  d det = tr (exr-lie-algebra-of-det), ideals (exr-lie-algebra-ideals).
- Ch. 20, Problems 20-6, 20-7, 20-9, 20-21 (pp. 536-539): non-surjective exponential and square roots
  (exr-lg-exp-not-surjective, exr-lie-expmap-square-roots), commuting exponentials (exr-lie-algebra-of-commuting),
  second-order BCH (exr-lg-exp-noncommuting), kernel of Ad on GL(n) (exm-lie-adjoint-gl).
- Ch. 21, pp. 551-553 (transitive actions of SO(n), U(n), SU(n); SL(2,R) on the half-plane): exr-lie-action-sn,
  exr-lie-action-u-n, exr-lg-mobius-action (cited by page, the coset-space language not used).

## keskivakkuri2022mathematical

- Sec. 6.1-6.2 and 6.2.1, pp. 233-238 (Lie algebra of a Lie group, left-invariant fields on GL(n), classical algebras,
  exponential map, BCH eq. (6.28)): section bibliographies; exr-lie-exp-bch3 (third-order BCH). Note: p. 238 lists
  GL(n, R) among groups with surjective exponential; this is false (det e^X > 0), and exm-lie-expmap-gl states the
  correct fact without citing the book.

## mukunda2022continuous

- Secs. 8.1-8.2, eqs. (8.6), (8.40), (8.63)-(8.64): symplectic group and algebra (exr-lg-symplectic, exr-lg-sp2-algebra;
  kept from the earlier version).

## Already cited and kept

- gadea2013analysis Problems 4.42, 4.58 (exr-lg-heisenberg-group, exr-lg-two-dim-algebras); scott2023problems
  Problems 3.47, 3.51, 3.59; torresdelcastillo2020differentiable Example 7.44, Sec. 7.3.2 eq. (7.48), Exercise 7.32;
  sinha2023rigid Secs. 1.1.4-1.1.6, 1.1.28-1.1.33; boudreau2018applied Sec. 14.2.2; lee2018global Sec. 2.7.9.

## Standard material without a library source

- Lie product formula with proof (def-lie-algebra-of-group (1)); classical groups as regular level sets
  (def-matrix-lie-group (3), (4)); Thomas-Wigner rotation (exr-lie-subgroup-thomas); Bianchi-type structure constants
  (exr-lie-structure-bianchi); cyclotron motion, Larmor precession, Earth's rotation examples.

# Run 4.11, sec-lie-representations (split into sec-lie-representations, sec-weights-su2, sec-roots-su3, sec-branching)

## hall2013quantum

- Secs. 16.7-16.8 (representations of Lie groups and algebras, new representations from old): def-lrep-representation (sums,
  tensor products, duals, derived representations, Schur's lemma), def-direct-sum-algebras (outer tensor products).
- Props. 16.51-16.52 (unitarity and complete reducibility, averaging over a compact group): thm-lrep-complete-reducibility;
  the average over SU(2) is defined in place by a shell integral in R^4, the general Haar integral is stated as not proved.
- Exercise 16.15 (traces of commutators vanish): exr-lrep-rep-traceless.
- Thm. 17.4, Thm. 17.6, Prop. 17.9 and Exercises 17.2, 17.4 (classification of the irreducible representations of so(3)
  by highest weight, existence of every spin): def-spin-j, thm-lrep-su2-classification, exr-lrep-cls-recursion.
- Exercise 17.3 (the Casimir operator): exr-lrep-ladder-casimir.
- Props. 17.22-17.23, Exercises 17.6, 17.7 (tensor products, uniqueness of couplings): def-clebsch-gordan,
  exr-lrep-cg-one-half, exr-lrep-cg-uniqueness.

## keskivakkuri2022mathematical

- Secs. 6.3-6.7 (irreducible representations, su(2), roots and weights, su(3), simple roots, Cartan matrix, highest
  weights, tensor products of su(2)): section bibliographies; def-cartan-subalgebra, def-weight, def-gell-mann, def-root,
  def-simple-roots, def-cartan-matrix, def-highest-weight.
- Problems 6.3 (Jacobi identity for f_abc): exr-lrep-gm-jacobi; 6.8-6.10 (roots in pairs, brackets of root vectors):
  exr-lrep-root-pairs, exr-lrep-root-brackets, exr-lrep-root-other-bracket; 6.11 (f_147, f_458): exr-lrep-gm-f147,
  exr-su3-structure; 6.12 (lambda_2, lambda_5, lambda_7): exm-lrep-gm-so3, exr-lrep-gm-so3; 6.13 (Schwinger construction):
  exr-lrep-gm-schwinger; 6.14 (tensor products of spins): exr-lrep-cg-three-spinors.
- Sec. 6.11.1 (branching rules): def-branching-rule.

## mukunda2022continuous

- Ch. 5, Sec. 5.6 and Problem P5.2 (so(4) splits into two commuting su(2)): prp-so4-split (now with the bracket formula of
  the generators proved).

## boudreau2018applied

- Secs. 14.2, 14.4, eqs. 14.3, 14.5, Exercises 14.1, 14.3 (kept from the earlier version): def-lrep-rotation-matrix,
  exm-lrep-dj-*, exr-lrep-dj-spin32, exr-lrep-dj-harmonics, exr-lrep-dj-spin-vector.

## Standard material without a library source

- The SU(2) average as a shell integral over R^4 with orthogonal invariance (thm-lrep-complete-reducibility (3)); the
  polynomial model of the rotation matrices (def-lrep-rotation-matrix); the complete highest-weight classification of
  su(3) representations with the uniqueness argument through V + W (def-highest-weight (2)-(7)); crystal field splitting
  under the cube group (exm-lrep-res-crystal); the decuplet branching (exm-lrep-branch-decuplet).

<!-- 4.11 run: sec-casimirs and sec-dynkin (new sections) -->

## keskivakkuri2022mathematical

- Sec. 6.4.3, Eqs. 6.73-6.88 (Dynkin index, quadratic Casimir, lambda_D dim g = C_2(D) dim D, su(2) defining and adjoint
  values 1/2 and 2): sec-casimirs intro, def-cas-casimir, def-cas-dynkin-index (3), (5), exm-cas-ind-su2.
- Problem 6.5 (index of direct sums and tensor products): def-cas-dynkin-index (4), exr-cas-ind-direct-sum,
  exr-cas-ind-tensor. Problem 6.6 (Casimir commutes with the generators): def-cas-casimir (2). Eq. 6.81 (totally
  antisymmetric f_abc in an orthonormal basis): exr-cas-antisymmetric.
- Sec. 6.6, Lemmas 6.3-6.6 and Sec. 6.6.1 (simple roots, Cartan matrix, Dynkin diagram with arrows to the short root):
  prp-dyn-classical-diagrams. Sec. 6.9 and Problems 6.19-6.20 (Cartan generators, weights and simple roots of su(N)):
  prp-cas-highest-weight (setting), exr-cas-hw-delta.

## mukunda2022continuous

- Secs. 5.3-5.6, Eqs. 5.26-5.45 (D_l, B_l, C_l = USp(2l), A_l: Cartan subalgebras, roots, positive and simple roots):
  def-dyn-classical (1)-(3), prp-dyn-classical-diagrams (1). The compact symplectic algebra is written usp(2n) after
  Mukunda's USp(2l).
- Sec. 5.2, Tables 5.1-5.2 (angles and length ratios of roots): thm-dyn-rank-two (1), exm-dyn-r2-angles.
- Sec. 5.7, Table 5.3 (the exceptional algebras, orders and ranks) and Eq. 5.84 / Problem P5.3 (low-rank coincidences
  A1 = B1 = C1, B2 = C2, A3 = D3): the classification paragraph of sec-dynkin, prp-dyn-classical-diagrams (5),
  exm-dyn-rank-one, exm-dyn-so6-su4, exm-dyn-r2-c2.

## guidry2022symmetry

- Sec. 7.4.1 and Example 7.3 (rank-2 root diagrams, G2 built from two roots at 30 degrees with ratio sqrt 3):
  thm-dyn-rank-two, exm-dyn-r2-g2. Sec. 8.2 (SU(3) Casimir operators): sec-casimirs intro.

## Standard material without a library source

- The Casimir from the highest weight, C_2 = (1/2) w.(w + 2 delta), with the completeness relation of the su(N)
  generators (prp-cas-highest-weight, eq-cas-completeness, exr-cas-hw-fierz); the closed form C_2(a, b) of su(3); the
  index from weights of Sym^2 and Lambda^2 (def-cas-dynkin-index (6)); uniqueness of the index from the irreducibility of
  the adjoint of sl(N, C) (def-cas-casimir (6), def-cas-dynkin-index (1)); the Killing form on the Cartan subalgebras of
  so(N) and usp(2n) from the roots (def-dyn-classical (4)); the Weyl groups as (even) signed permutations
  (def-dyn-classical (5)); the complete angle proof of the rank-two classification with the dihedral Weyl groups
  (thm-dyn-rank-two (2)-(4)); determinants of Cartan matrices; the QCD count of exm-cas-ind-qcd (stated, not derived);
  the crystallographic restriction (exm-dyn-r2-lattices). boudreau2018applied and Hall's Lie-groups text were not used:
  the former has no material on Casimirs or root systems, and the latter is not in the library (hall2013quantum is
  Quantum Theory for Mathematicians).

# Section sec-young-sun (task 4.11, Young tableaux and representations of su(N))

## keskivakkuri2022mathematical

- Sec. 6.8, Eqs. 6.258-6.266 (tensor products of the fundamental representation, generators acting slot by slot):
  prp-ysu-tensor-powers intro. Eqs. 6.274-6.280 (3 x 3 = 6 + 3bar, 3 x 3bar = 8 + 1 by traceless tensors, 3 x 3 x 3 =
  10 + 8 + 8 + 1): thm-ysu-products (3), (4), exm-ysu-prod-figure. Eq. 6.278 (traceless part of v^i w_j):
  exm-ysu-dim-p11; the tensor rule (i)-(iii) of p. 280, stated there without proof, is proved here for su(3) as
  thm-ysu-dimension (4) (harmonic polynomials = traceless symmetric tensors).
- Sec. 6.8.1, Eqs. 6.282-6.293 (Young tableaux of (n, m), removal of 3-box columns, conjugate diagrams, the su(3)
  Littlewood-Richardson rule): exm-ysu-hw-su3, exm-ysu-hw-full-columns, exm-ysu-prod-mesons, the LR paragraph after
  thm-ysu-products (stated, not proved).
- Sec. 6.10, Eqs. 6.321-6.327 (Dynkin labels and row lengths, factors-over-hooks rule, dim (2,1) = N(N^2 - 1)/3, the
  su(N) LR rule): thm-ysu-highest-weight (3), (6), thm-ysu-dimension, exm-ysu-dim-21.
- Problem 6.14 (spin tensor products): exr-ysu-prod-four-spins. Problem 6.15 (3 x 6): thm-ysu-products (3).
  Problem 6.17 (su(4) diagrams and dimensions of (1,0,0), (1,1,1), (2,1,2)): exm-ysu-hw-su4, exm-ysu-dim-su4.
  Problem 6.18 (su(5): (0,0,1,0) x (1,0,0,0)): exm-ysu-prod-su5.

## guidry2022symmetry

- Secs. 8.6-8.8, Eqs. 8.18-8.20 and Example 8.4 (Young diagrams for SU(N), columns of N boxes, dimension rule):
  thm-ysu-dimension intro, exm-ysu-dim-two-boxes.
- Sec. 8.9 and Example 8.5 (direct products by diagrams, 8 x 8): the LR paragraph, exm-ysu-prod-octets (Sage only).
- Problem 8.2 (2 x 2 x 2 = 4 + 2 + 2; 3 x 3 x 3, 3bar x 3, 3 x 3): exm-ysu-sa-three-spins, thm-ysu-products (3), (4).

## mukunda2022continuous

- Sec. 5.9, Eqs. 5.125-5.127 (fundamental UIRs of SU(l + 1) are the antisymmetric tensors): prp-ysu-sym-antisym (2)
  intro, thm-ysu-highest-weight intro.
- Sec. 7.1.4, Eq. 7.38 (dimension (p + 1)(q + 1)(p + q + 2)/2 of (p, q), Schwinger construction for SU(3)):
  thm-ysu-dimension (4), exm-ysu-dim-two-oscillators.
- Sec. 2.4 (semistandard tableaux): the remark after thm-ysu-dimension (stated, not proved).

## Standard material without a library source

- The commuting actions and the Casimir as a sum of transpositions (eq-ysu-casimir-transpositions, Dirac exchange
  identity exm-ysu-dirac-exchange, exr-ysu-dirac-identity); the su(N) highest weight theory with the column tensors
  v_lambda (thm-ysu-highest-weight); the hook lemma (row hooks and l_i - l_k fill 1..l_i) and the reduction of the
  hook-content number to the Weyl product (thm-ysu-dimension (1), (2)); the unipotent normal form that finds all
  highest weight vectors of P_{a,b} (thm-ysu-dimension (3)); the Fischer inner product (thm-ysu-dimension (3), (4));
  the Pieri case Lambda^k x V (thm-ysu-products (2)); determination of a unitary representation by its weights
  (thm-ysu-products (1)). Georgi's Lie Algebras in Particle Physics is not in the library.

# Task 4.11, sec-compact-harmonic-analysis (Harmonic analysis on compact groups)

## mukunda2022continuous

- Sec. 1.3, Eqs. 1.61-1.74 (mean value over a finite group, its invariances, the averaged intertwiner T_S, orthogonality of
  UIR matrix elements and characters): thm-cha-schur-orthogonality (1)-(3) and its intro, def-matrix-coefficient intro.
- Sec. 3.3.2, Eqs. 3.33-3.36 (invariant integration over SO(3) in Euler angles; functions independent of the third angle
  integrate over S^2): thm-cha-haar intro, exm-cha-haar-so3, def-coset-mode-expansion (5) intro.
- Secs. 3.3.4-3.3.5, Eqs. 3.49-3.55 (SO(3) characters as geometric series, class-function inner product with sin^2(alpha/2),
  orthogonality and completeness of the D-functions, the spherical harmonics as D-functions): thm-cha-su2-characters (3)-(5),
  exm-cha-su2-so3, exm-cha-pw-so3, def-coset-mode-expansion.
- Sec. 3.5.2, Eqs. 3.87-3.89 (the SU(2) average in Euler angles with 1/16pi^2, on S^3, and the one-dimensional Weyl formula for
  class functions): thm-cha-haar (6), thm-cha-su2-characters (2).
- Sec. 3.5.3 (i) (every representation of SU(2) is equivalent to a unitary one): thm-cha-complete-reducibility intro.
- Sec. 5.11 and Sec. 7.2.1, Eqs. 7.45-7.47 (invariant normalised volume element, orthogonality and completeness of UIR matrix
  elements; stated there without proof): thm-cha-haar, thm-peter-weyl intro. The induced-representation material of Sec. 7.2
  was not used (it belongs to the later homogeneous-spaces chapter).

## keskivakkuri2022mathematical

- Sec. 6.3, Theorems 6.1-6.2 (finite-dimensional representations of a compact Lie group are equivalent to unitary ones;
  Peter-Weyl part II, complete reducibility; both stated with "Proof omitted"): thm-cha-complete-reducibility intro (proved
  here by averaging with thm-cha-haar).

## landsman1998

- Sec. 3.7, Eq. 3.71 and Prop. 3.7.2 (convolution f * g(x) = int f(xy^-1) g(y) dy on a unimodular group with Haar measure, the
  involution f*(x) = f(x^-1)^*): the convolution operators T_k of thm-peter-weyl (1) (kernel condition k(g^-1) = k(g)^*).

## arcozzi2025

- Sec. 4.2.3 (self-adjoint compact operators and their spectral decomposition): cited in the thm-peter-weyl intro; the proof
  uses the tutorial's own thm-spectral-theorem-compact and def-compact-operator.

## Standard material without a library source

- Haar integral as the normalised integral of the wedge of the left-invariant forms, unimodularity from |det Ad| = 1 on a
  compact group, uniqueness by the interchange of two invariant averages (thm-cha-haar (1)-(5)); the convolution proof of
  Peter-Weyl (compactness by finite-rank approximation of the kernel, eigenspaces as translation-invariant spaces of matrix
  coefficients, approximate identity); the derivation of the SU(2) Weyl formula from the Euler-angle integral via polar
  coordinates in the disc; the classification of SU(2) representations by Fejer's theorem on the half angle; the
  identification of D^l_m0 with Y_lm through the Casimir and the rotation weight. Problems: Catalan moments of tr g
  (exr-cha-su2-catalan), plaquette integral 2 I_1(beta)/beta (exm-cha-su2-plaquette, exr-cha-su2-plaquette), rotor partition
  function (exr-cha-pw-rotor), twirling (exr-cha-haar-twirl).

# Lie final run: sec-lorentz-poincare (Poincaré units) and the closing exercises

## mukunda2022continuous

- Sec. 10.5, Eqs. 10.119-10.123 (Poincaré group as the semidirect product of SO(3,1) and the translations, composition
  law, inverse, the normal translation subgroup): prp-lor-poincare (1)-(3), exr-lor-poin-inverse.
- Sec. 10.5, Eqs. 10.124-10.129 (commutation relations in covariant and three-dimensional form): eq-lor-poincare-brackets,
  prp-lor-poincare (4), exm-lor-poin-sage. Rewritten with real (anti-Hermitian) generators; the Hermitian form is
  exr-lor-cas-hermitian.
- Sec. 10.5, Eq. 10.134 (the double cover SL(2,C) semidirect T4): exr-lor-poin-cover.
- Sec. 10.5, Eqs. 10.135-10.137 (Casimirs -P^2 and W^2, Pauli-Lubanski vector, P.W = 0, [P, W] = 0): thm-lor-casimirs
  (definitions and parts (3), (4)); the proofs from the brackets are written out here (the source only states them).
- Sec. 10.5, Eqs. 10.140-10.145 and Table 10.1 (orbit types and representatives, little groups SU(2), E(2), SU(1,1), the
  screw generators K1 + J2, K2 - J1 and their brackets, helicities): thm-lor-little-groups, exm-lor-lg-photon,
  exr-lor-lg-sl2-lifts, exr-lor-lg-null-preimages, exr-lor-lg-helicity. The induced-representation construction
  (Eqs. 10.146-10.155) is not used; the intro of the chapter and of the units say it is not constructed.
- Problem P5.2 (roots of a rank-two algebra): exr-lrep-int-so4 (kept, rewritten).

## keskivakkuri2022mathematical

- Sec. 6.12.2 (Poincaré algebra, Casimirs, little groups): cited in the intros of prp-lor-poincare and thm-lor-little-groups.

## guidry2022symmetry

- Ch. 15 (Poincaré group, Pauli-Lubanski vector, Wigner classification): cited in the intros of thm-lor-casimirs and
  thm-lor-little-groups.

## pal2015introductory, torresdelcastillo2020differentiable

- Kept citations of the old closing exercises: Pal Sec. 10.3.6 (exr-lrep-int-octet, rewritten with Young diagram, Casimir
  and Dynkin index), Torres del Castillo Sec. 7.2.3 (exr-lg-int-su2-so3, rewritten with a complete proof).
  exr-lg-int-affine, exr-lg-int-heisenberg and exr-lrep-int-decuplet were removed (no references).

## Standard material without a library source

- Semidirect products in general (prp-lor-poincare (1), exr-lor-poin-internal), the dihedral group as Z_n semidirect Z_2,
  the 5 x 5 matrix realisation and its Lie algebra, the vector-operator lemma and the epsilon-identity proof of the
  Casimirs, nilpotency of the light-cone momenta in finite dimensions (exr-lor-cas-nilpotent), spin zero of the scalar
  field (exr-lor-cas-scalar-proof), the iso(2) Casimir, the explicit isomorphism of the lifted photon little group with
  C semidirect U(1) via (alpha beta, alpha^2), the Killing-form test separating so(3), iso(2), so(1,2) and so(4), so(1,3),
  the contraction SO(3) -> ISO(2) (exm-lor-lg-contraction), the Wigner-rotation cocycle.
