# Reading notes: hilbert-spaces-operators

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/hilbert-spaces-operators`, for the
owner's review. Each line names the source location and the blocks it became.

## Section "Normed and Banach spaces" (sec-banach-spaces), task 4.7

### reed1980methods

Methods of Modern Mathematical Physics, Vols. I-III (one PDF; Vol. I book page = PDF page - 16). Pages read: PDF 22-27
(Secs. I.2-I.3), PDF ~48-50 (Problems of Ch. I), Problems of Ch. II.

- Thm. I.3 (completion of a metric space, sketch with classes of Cauchy sequences) -> thm-completion (1), proof written out.
- Thm. I.6 (bounded = continuous = continuous at a point) -> def-bounded-linear-map (1).
- Thm. I.7 (B.L.T. extension theorem) -> thm-completion (2), def-continuous-dual (5).
- Sec. I.2, end (Riemann integral as the B.L.T. extension of the integral of step functions) -> exm-fan-integral-extension.
- Sec. I.3 (C[a, b] incomplete in the L^1 metric; completing it; "realisation not noteworthy for its transparency") ->
  the definition of L^p as a completion in def-lp-space, and its intro paragraph.
- Problem I.4 (sub-subsequence criterion) -> exr-fan-sub-subsequence.
- Problem I.5 (details of the completion) -> exr-fan-completion-norm-well-defined.
- Problem II.1 (extend an inner product to the completion, by B.L.T. twice) -> exr-fan-bilinear-extension, and the pairing
  of thm-lp-duality (3).
- Vol. I, Thm. IV.9 and Sec. IV.3 (Stone-Weierstrass; z* not approximable on the disc) -> thm-stone-weierstrass (citation),
  exm-fan-stone-weierstrass-fails.

### gasinski2014exercises

Exercises in Analysis, Part 1, Ch. 5 Problems (text read with pdftotext, PDF of storage item PF6RQ664).

- Problem 5.1 (unit sphere path-connected) -> exr-fan-sphere-path-connected.
- Problem 5.4 (subspace with interior is everything) -> exr-fan-subspace-interior.
- Problem 5.5 (small perturbations keep independence) -> exr-fan-stability-independence.
- Problem 5.9 (compact sets have empty interior in infinite dimension) -> exr-fan-compact-empty-interior.
- Problem 5.10 (best approximation in a finite-dimensional subspace) -> thm-norm-equivalence (2).
- Problems 5.11-5.12 (absolutely convergent series and completeness) -> thm-absolute-series.
- Problem 5.15 (linear maps on finite-dimensional spaces are bounded) -> exr-fan-finite-dim-linear-continuous.
- Problem 5.16 (surjective isometry onto a Banach space) -> exr-fan-banach-isometry.
- Problem 5.20 (composition operators u o xi, isometric iff xi onto) -> exr-fan-composition-isometry.
- Problem 5.21 (differentiation C^1 -> C not continuous for the sup norm) -> exr-fan-ck-derivative.
- Problem 5.28 (Cauchy in norm + pointwise limit gives norm limit) -> exr-fan-bounded-maps-complete.
- Problem 5.31 (continuity iff closed kernel, finite-dimensional target) -> exr-fan-kernel-closed (functional case).
- Problem 5.33 (kernel of a functional closed or dense) -> exr-fan-dual-kernel-dense.

### arcozzi2025

Functional Analysis and Operator Theory, lecture notes (already cited in the chapter; kept): Sec. 1.1.1 (sup and L^1
norms, Hölder), Thm. 1.1 (completion), Sec. 1.2.1 (C(K), C_0), Sec. 3.1-3.2 (finite dimension, duals), Prop. 3.2
(discontinuous functional), Thm. 3.6 and Exercises 1.1, 3.4, 3.5, 3.7, 3.10, 3.11 -> exr-fan-metric-from-norm,
def-bounded-linear-map, exr-fan-completion-functional, exr-fan-dual-ell1, exr-fan-limit-functional, exr-fan-separability,
exm-fan-multiplication-lp, thm-lp-duality (1)-(2).

### Others already cited and kept

- das2023quantum Secs. 2.2.3, 2.8 -> exm-fan-finite-dim-complete, exr-fan-two-completes.
- picard2020primer Lemmas B.1.7, B.4.3 -> exm-fan-inner-product-norm, def-bounded-linear-map.
- waterstraat2016 Lemma 1.1.10 -> exm-fan-unbounded-functional.
- landsman1998 Lemma 2.4.2 -> thm-stone-weierstrass.
- cheung2024metric Sec. 2.2 -> section pointer.

### Standard material without a library source

Bernstein identities and the elementary bounds 1/(4m) <= (binom(2m, m)/4^m)^2 <= 1/(2m + 1) (exr-fan-bernstein-corner),
the hexagonal norm, the norming property of continuous functions in L^p[a, b] (thm-lp-duality (3)) and the injectivity of
L^q -> L^p (exr-fan-lp-inclusion-injective): standard arguments written for this tutorial.

## Task 4.7, section sec-four-principles

### arcozzi2025

Ch. 3 (PDF pp. 53-79): Thm. 3.1 (Zorn's lemma, cited as the source of the axiom), Thm. 3.2 (Hamel basis by Zorn) ->
exm-fan-closed-discontinuous-functional; Thms. 3.4-3.5 (real and complex Hahn-Banach), Cors. 3.1-3.3, Thm. 3.7 ->
thm-hahn-banach (1)-(5), exr-fan-hb-bidual; Thm. 3.8 (separable dual) -> exr-fan-hb-separable-dual; Exercises 3.1, 3.9 ->
exm-fan-hb-euclidean, exr-fan-hb-ell1; Thm. 3.12 (Baire) -> thm-baire; Thm. 3.13, Cor. 3.4 -> thm-uniform-boundedness;
Exercise 3.12 -> exr-fan-weak-lipschitz; Exercise 3.15 -> exr-fan-om-open-iff-ball; Thms. 3.15-3.17 -> thm-open-mapping;
Exercises 3.16, 3.17 -> exr-fan-open-mapping-not-quantitative, exm-fan-comparable-norms.

### reed1980methods

Vol. I, Sec. III.3 (Thms. III.5, III.6, Corollaries 1-3) -> thm-hahn-banach; Sec. III.5 (Thms. III.8-III.12, Hellinger-Toeplitz
corollary) -> thm-baire, thm-uniform-boundedness, thm-open-mapping, def-closed-operator, exm-fan-hellinger-toeplitz (redone on
l^2 with the bilinear pairing, no inner product); Problems III.14, III.16, III.17, III.19, III.20, III.21 ->
exm-fan-closed-discontinuous-functional, exr-fan-weakly-bounded, exr-fan-ubp-bilinear, exm-fan-comparable-norms,
exm-fan-isolated-points and exm-fan-baire-one-point, thm-baire (2).

### gasinski2014exercises

Ch. 1 Problems 1.28-1.30, 1.32-1.35 -> exr-fan-boundary-nowhere-dense, exr-fan-nowhere-dense-dense-complement,
exr-fan-closed-nowhere-dense-balls, exm-fan-reals-uncountable, exr-fan-baire-isolated-point,
exr-fan-baire-closed-cover-interior, exm-fan-c0-nowhere-dense (adapted from c to c_0); Thm. 1.26 -> thm-baire.
Ch. 5 Thms. 5.28, 5.39-5.43, 5.47, 5.50 -> thm-hahn-banach (6), thm-uniform-boundedness, thm-open-mapping; Problems 5.7,
5.19, 5.24, 5.27, 5.35, 5.40, 5.42, 5.44, 5.51, 5.61, 5.72 -> exr-fan-baire-subspace-union, exr-fan-hb-kernel-distance,
exr-fan-ubp-bilinear, exr-fan-baire-nilpotent, exr-fan-hb-convex-extensions, exr-fan-ubp-xn-to-x,
exr-fan-om-symmetric-dual, exr-fan-om-preimage-bound, exr-fan-ubp-compact-uniform, exr-fan-om-weakly-continuous,
exr-fan-hb-bidual.

### Others already cited and kept

- ramesh2020weak Thms. 2.15, 2.16 -> thm-hahn-banach (6), thm-uniform-boundedness.
- picard2020primer Def. B.4.1, Lemma B.4.2 -> def-closed-operator, exm-fan-not-closable (now inside L^1[0, 1]). The weighted
  time-derivative example (Sec. 1.1, Thm. 1.1.4) was dropped: it needs L^2(R) with a weight, not built in this chapter.
- waterstraat2016 Thm. 1.1.3 -> thm-open-mapping.

### Standard material without a library source

The gauge proof of the separation theorem; the Banach limit-style functional on l^infty vanishing on c_0
(exm-fan-hb-ellinfty-dual); spin-1/2 states as norm-one extensions (exm-fan-hb-spin-states); Liouville numbers as a
comeagre set; the Banach-Mazurkiewicz proof that nowhere differentiable functions are generic
(exr-fan-nowhere-differentiable-generic); the upper bound L_N <= 1 + log(2N + 1); Polya's quadrature theorem and the
growth of Newton-Cotes norms (computed); summation methods on c_0; the oscillator evolution in the number basis;
number and position operators; the Dirichlet string and the driven oscillator as bounded inverses; avoided crossings.

## Task 4.7, section sec-weak-topologies

### ramesh2020weak

Def. 2.3, Prop. 2.6, Def. 2.7, Prop. 2.8, Thm. 2.9, Prop. 2.17, Prop. 2.24 -> def-weak-convergence (1)-(4); Exercise 2.11
-> exr-fan-weak-linear; Exercise 2.18 -> exr-fan-weak-plus-norm (in l^2 with the pairing, no inner product); Cor. 2.25 ->
exr-fan-mazur (Mazur's lemma, proved from def-weak-convergence (4)); Thm. 2.26 -> exr-fan-weak-finite-dim-topology; Thm.
2.29 -> exm-fan-weak-nbhd-unbounded; Rem. 2.32 -> exm-fan-weak-closure-not-sequential, exm-fan-ell1-ball (Schur's lemma no
longer quoted; replaced by an explicit sign sequence). Def. 3.1, Rem. 3.2, Props. 3.3, 3.5 -> def-weak-star-convergence
(1)-(3), def-reflexive-space (5). Thm. 4.1 -> thm-banach-alaoglu (3) (stated, not proved: Tychonoff). Thm. 4.2 ->
exr-fan-embedding-ck (isometry into bounded continuous functions; compactness of K left to the unproved part (3)). Cor. 5.3,
Thm. 5.4 -> def-reflexive-space (3), (4) (proved directly with Hahn-Banach, not via weak compactness); Thm. 5.2 (sequential
half) and Cor. 5.5 -> thm-reflexive-weak-compactness, exr-fan-nearest-point; Thm. 5.7 (easy half only) ->
def-reflexive-space (2). Exercises 5, 8, 9, 15, 16 -> exm-fan-weak-star-not-weak, exr-fan-weak-star-pairing,
exr-fan-weak-subspace, exr-fan-weak-ellp-criterion, def-weak-star-convergence (4) and exr-fan-weak-star-dense.

### arcozzi2025

Sec. 3.3 and Exercise 3.7 (iv) -> def-reflexive-space, (6) for l^1. Sec. 3.4.1, Props. 3.3-3.5 -> def-weak-convergence (2),
(3), def-weak-star-convergence (1), (2). Thm. 3.10 -> thm-banach-alaoglu (3) (not proved); Thm. 3.11 (diagonal proof) ->
thm-banach-alaoglu (1), exr-fan-alaoglu-proof. Thm. 4.1 (the idea) -> exr-fan-compact-weak-to-norm (stated for a diagonal
map, no compact operators).

### reed1980methods

Vol. I Sec. IV.5: weak topology, Example 1 (coordinatewise criterion) -> exr-fan-weak-ellp-criterion; Example 6 ->
exm-fan-weak-initial-plane; Thm. IV.20 -> exr-fan-weak-star-continuous; Thm. IV.21 and Thm. IV.5 (Tychonoff) cited for
thm-banach-alaoglu (3). Problems IV.12 -> exm-fan-alaoglu-not-separable; IV.35 -> exr-fan-weak-star-pairing; IV.36 ->
exr-fan-bidual-weak-star-dense. Sec. III.1 definition and Problem III.22 -> def-reflexive-space (4), exr-fan-reflexive-dual.

### gasinski2014exercises

Ch. 5 Problems 5.58 -> exr-fan-weak-cauchy-null; 5.62 -> exr-fan-weak-operators; 5.63 -> exr-fan-weak-subspace; 5.65 ->
def-weak-star-convergence (3) counterexample; 5.73 -> exr-fan-embedding-ck; 5.80 -> thm-reflexive-weak-compactness (2),
exr-fan-nearest-point; 5.81 -> exr-fan-rwc-convex-lsc; 5.82 -> exr-fan-rwc-image-ball-closed; 5.85, 5.86 ->
exr-fan-reflexive-range-closed; 5.87 -> exr-fan-rwc-weakly-sequentially-complete; 5.99, 5.102 -> exr-fan-alaoglu-separating.

### Standard material without a library source

Coherent states of the oscillator (exm-fan-coherent-states-weak); time averages of the oscillator and the arcsine density
(exm-fan-oscillator-time-average, exr-fan-oscillator-moments); high-energy box densities (exm-fan-box-density-weak-star);
dipole limit on C[-1, 1] versus C^1 (exm-fan-dipole-no-limit, exr-fan-weak-star-dipole-c1); Fejer versus Dirichlet functionals
(exm-fan-fejer-weak-star); equidistribution of an irrational rotation (exm-fan-empirical-measures, reworked: no measures, no
Weyl citation); the Bloch ball as the compact set of states (exm-fan-alaoglu-spin-states); smoothed steps converging to a
square wave in (L^1)* (exr-fan-alaoglu-square-wave); c inside c_0, c_0 inside C[0, 1], l^1 inside L^1[0, 1]
(exr-fan-c-not-reflexive, exr-fan-reflexive-c01, exm-fan-l1-not-reflexive); finite-energy oscillator states as a reflexive
weighted l^2 (exm-fan-reflexive-finite-energy, exm-fan-rwc-finite-energy); least-energy kicks of a damped oscillator
(exm-fan-rwc-min-energy-control); the loaded string by the direct method (exr-fan-rwc-string-modes).

Removed: exm-fan-orthonormal-weak and exm-fan-hilbert-reflexive (Hilbert-space notions from later sections); the section's
closing "### Exercises" fold was dissolved, its three exercises kept under statements (exr-fan-compact-weak-to-norm and
exr-fan-weak-products under def-weak-convergence, exr-fan-embedding-ck under thm-banach-alaoglu). The claim that L^p[a, b]
is reflexive was removed (its dual is not decided in this chapter).

## sec-hilbert-spaces (task 4.7, hilbert-spaces run)

### reed1980methods

Vol. I Ch. II. Sec. II.1 axioms -> def-inner-product; Example 3 -> def-hilbert-space (3). Problem II.1 (a) (extending the inner
product to the completion) -> def-hilbert-space (2), def-l2-space (1); Problem II.4 (polarisation, parallelogram law iff inner
product) -> thm-cauchy-schwarz (4), (5) (Jordan-von Neumann proved in full); Problem II.5 -> exr-on-bessel-inequality; Problem
II.6 -> thm-projection (3), exr-proj-double-complement; Problem II.9 -> exr-riesz-extension; Problem II.10 -> exr-on-legendre-p3;
Problem II.11 -> exr-onb-separable-l2. Thm. II.3 and lemma -> thm-projection (1), (2); Thm. II.4 -> thm-riesz-representation (1);
Thm. II.6 -> def-orthonormal-basis (1)-(3); Thm. II.7 -> def-orthonormal-basis (4); Sec. II.3 Example 1 -> thm-trigonometric-basis;
Sec. II.3 (Hermite functions stated complete) -> thm-hermite-basis (proved here differently). Vol. I Sec. IX.1 (Plancherel by
B.L.T.) -> thm-plancherel-l2, in outline only.

### arcozzi2025

Sec. 2.1, Cor. 2.1, Prop. 2.1, Lemma 2.2 -> thm-cauchy-schwarz (1)-(4); Thm. 2.2 -> thm-riesz-representation; Thm. 2.3, Cor. 2.2 ->
def-orthonormal-system (3), (4); Thms. 2.4, 2.6 -> def-orthonormal-basis; Sec. 2.4 -> thm-trigonometric-basis.

### gasinski2014exercises

Remark 5.94 -> thm-cauchy-schwarz (5); Def. 5.95 -> def-hilbert-space; Thm. 5.97 -> thm-projection (1); Thm. 5.100 ->
thm-riesz-representation; Thm. 5.105 -> def-orthonormal-basis. Problems 5.109 -> exr-onb-dense-subspace; 5.111 ->
exr-hs-sup-norm-not-hilbert; 5.120 -> exr-on-orthonormal-weak-null; 5.128 -> exr-proj-cone; 5.129 -> exr-riesz-extension.

### Standard material without a library source

Jordan-von Neumann proof details; completeness of the Hermite functions through Gaussian wave packets and Fejer's theorem on a
long interval (thm-hermite-basis, own proof); Stieltjes' function with vanishing moments (exm-herm-stieltjes, exr-herm-stieltjes);
coherent and squeezed oscillator states (exm-herm-coherent, exm-herm-squeezed, exm-proj-squeezed); Bell basis (exr-onb-bell);
Haar system (exm-on-haar, exm-onb-haar); reversed Cauchy-Schwarz in Minkowski space (exm-cs-reverse-minkowski,
exr-cs-reverse-minkowski); uncertainty from Cauchy-Schwarz (exm-cs-uncertainty); phase-modulation sidebands (exr-trig-sidebands);
hydrogen radial functions (exm-l2-hydrogen-radial, exr-l2-hydrogen); the loaded string by Riesz (exr-riesz-string).

Removed: prp-hilbert-space-computations (a list of computations without content of its own); its examples and exercises were
moved under def-orthonormal-system, thm-projection and thm-trigonometric-basis with their labels.

## sec-bounded-operators (task 4.7, bounded-operators run)

### reed1980methods

Vol. I Ch. VI (text read from the Markdown attachment of storage item LIM2HN62/GIBAVFIC). Sec. VI.1 (norm topology, Example of uniform /
strong / weak convergence on l^2) -> def-bounded-operator (1), exm-adj-strong-not-continuous; Thm. VI.1 (weak limits through bounded
sesquilinear forms) -> exr-sf-weak-limit, exr-bo-weakly-bounded; Sec. VI.2, Thm. VI.3 (adjoint, (TS)* = S*T*, (T^-1)*, ||T*T|| = ||T||^2,
strong discontinuity of the adjoint) -> def-adjoint-operator, exm-adj-strong-not-continuous; the relation T* = C^-1 T' C -> exr-adj-dual-map;
definition of orthogonal projections and the correspondence with closed subspaces -> def-orthogonal-projection (1). Problems VI.5
(translations) -> exm-un-translations-weak, exr-un-translation-weak; VI.7 (non-closed range; isometries have closed range) ->
exr-adj-range-not-closed, def-unitary-operator (1); VI.8 (orthogonality for distinct factors) -> def-normal-operator (4); VI.9 (||A|| =
sup |(Ax, x)| for self-adjoint A, and the counterexample) -> def-self-adjoint-operator (3), exm-sa-norm-nonselfadjoint; VI.13 (positive
matrices with negative entries; criterion) -> exm-sa-positive-matrices, exr-sa-positive-matrix-test. Vol. I Corollary to Thm. III.12 and
Problems III.13, III.18 (Hellinger-Toeplitz; proof by uniform boundedness; pairs A, B) -> thm-sesquilinear-forms (5). Sec. VI.6
(Hilbert-Schmidt operators), only for the continuous-kernel bound -> def-bounded-operator (6).

### arcozzi2025

Sec. 3.8: Props. 3.8, 3.9 (forms <-> operators; separate boundedness by Banach-Steinhaus) -> thm-sesquilinear-forms (2), (3); Thm. 3.18
(Hellinger-Toeplitz via closed graph) -> thm-sesquilinear-forms (5); Thm. 3.19 (Lax-Milgram) -> thm-sesquilinear-forms (4); the real
counterexample to polarisation -> exm-sf-real-polarisation-fails. Sec. 3.9.1, Thm. 3.20 -> def-adjoint-operator (2), (3); Cor. 3.7 ->
exr-sa-commuting-product, def-self-adjoint-operator (3); Exercise 3.22 (i)-(vi) -> def-self-adjoint-operator (2), def-normal-operator (2),
exr-norm-cartesian-norm. Sec. 1.3.1 (translations and the Fourier transform) -> exm-un-phase.

### gasinski2014exercises

Ch. 5 Problems (pdftotext of storage item PF6RQ664): 5.114 -> exr-sa-positive-estimates, exr-sf-cauchy-schwarz-form; 5.116 ->
exr-sa-even-powers; 5.119 -> exr-bo-weakly-bounded; 5.123 -> def-adjoint-operator (3); 5.124 -> def-normal-operator (3); 5.126 ->
def-unitary-operator (2); 5.132 -> def-orthogonal-projection (2), exr-proj-order; 5.135 -> def-orthogonal-projection (1); 5.137, 5.142
(coercive operators are isomorphisms) -> thm-sesquilinear-forms (4); 5.165(a) (backward shift norm) -> def-bounded-operator (4); 5.168
(||A^n|| = ||A||^n, self-adjoint) -> def-self-adjoint-operator (3). Def. 5.108 kept as a citation.

### Others already cited and kept

scott2023problems Ch. 4 (section pointer).

### Standard material without a library source

Wielandt's proof that [A, B] = 1 is impossible for bounded operators and Robertson's inequality (def-commutator (5), (6)); the
idempotent-of-norm-one criterion (def-orthogonal-projection (5)); the Schur test (exr-bo-schur-test); the tight-binding chain; the Green
kernels of a string and of a particle driven from rest; the quarter-period oscillator evolution as the Fourier transform
(exm-un-oscillator-fourier); the Cayley transform; spin-1 matrices; damped-oscillator non-normality; convolution on a ring; the
probabilities of displaced Gaussians in oscillator states.

Removed: prp-bounded-operator-checks (a list of computations without content of its own) and exm-boc-ellipse (its content is in
exm-bo-matrix-norm); the other examples and exercises of the proposition moved with their labels: exr-boc-singular-values and
exr-boc-shift-matrix under def-bounded-operator, exm-boc-unitary-circle under def-unitary-operator, exm-boc-pauli-check and
exr-boc-heisenberg-trace under def-commutator.

## sec-spectral-theory (spectral run, task 4.7)

### reed1980methods

Vol. I Sec. VI.3: Thm. VI.5 and its corollary (resolvent set open, resolvent identity, analyticity, Neumann series, spectrum
non-empty by Liouville) -> def-spectrum (1), thm-resolvent-spectral-radius (1)-(3); Thm. VI.6 (spectral radius formula via the
Laurent series at infinity; r = ||A|| for self-adjoint A) -> thm-resolvent-spectral-radius (5), (6); the example of the shifts on
l^1 / l^infinity (point and residual spectra) -> def-spectrum (7), adapted to l^2. Problems VI.8 (a), (b) (real eigenvalues,
orthogonality; resolvent bound off the real axis) -> def-operator-eigenvalue (3), thm-self-adjoint-spectrum (2), exr-sp-unitary-circle;
VI.10 (Volterra operator has spectral radius 0) -> exm-rsr-volterra (on L^2[0, 1]); VI.11 (subadditivity) -> exr-rsr-subadditive;
VI.14 (a) (continuity of the square root) -> exr-fc-sqrt-continuity. Sec. VII.1: Thm. VII.1 with Lemmas 1-2 (continuous functional
calculus, ||p(A)|| = sup over the spectrum, polynomial spectral mapping) -> def-functional-calculus (1)-(4),
thm-resolvent-spectral-radius (4); Example 2 (||R|| = 1/dist) -> thm-self-adjoint-spectrum (2); Problems VII.2 (projection for a
disconnected spectrum) -> exm-fc-spectral-projection; VII.8, VII.9 (spectral mapping; positivity iff f >= 0) -> def-functional-calculus
(3), exr-fc-positivity-converse; VII.12 -> exr-sas-positive-inverse. Thms. VII.2, VII.3, VII.8 and VIII.8 are cited as not proved
here (Borel calculus, multiplication-operator form, projection-valued form, Stone's theorem).

### arcozzi2025

Sec. 3.9.2, Prop. 3.10 and Cor. 3.9 (point / continuous / residual spectrum, adjoints, no residual spectrum for self-adjoint
operators; the shift on H^2(D) with its three parts) -> def-spectrum (2)-(4), (7); Thms. 3.21, 3.22 (real spectrum; inf and sup of the
quadratic form belong to the spectrum) -> thm-self-adjoint-spectrum (1); Thm. 3.23 (Hausdorff distance of spectra of self-adjoint
operators) -> exr-sas-perturbation; Sec. 6.1.3 (spectrum of a multiplication operator) -> def-spectrum (6); Sec. 6.1.5 (spectral
radius) -> thm-resolvent-spectral-radius (5). Note: Cor. 3.8 of the source asserts that every point of the spectrum of an arbitrary
bounded operator is an approximate eigenvalue; this fails for the shift at 0 (exm-sp-left-inverse, exr-sp-approx-criterion), and the
tutorial states it only for normal operators (def-spectrum (4)).

### gasinski2014exercises

Ch. 5 Problems: 5.165 (backward shift: norm, spectrum, point spectrum) -> def-spectrum (7); 5.166 -> thm-self-adjoint-spectrum (1);
5.167 (rank-one projections and their spectrum) -> exr-ev-rank-one; 5.169 (Volterra-type operator, spectrum {0}) -> exm-rsr-volterra;
5.170 (approximate eigenvalues lie in the spectrum) -> exr-sp-approx-criterion; 5.171 (one of +-||A|| in the spectrum) ->
exr-sas-plus-minus-norm.

### Standard material without a library source

The tight-binding ring, infinite and half-infinite chains (exm-sth-ring, exm-sp-tight-binding-band, exm-sas-half-chain,
exr-sp-tight-binding-finite, exr-sas-half-chain-values); the linear Stark effect (exm-sth-stark); circulants (exr-sth-circulant); Rabi
oscillations, spin precession and the two-level thermal state (exr-sth-rabi, exm-fc-spin-precession, exm-fc-gibbs); the hydrogen
level model (exm-sp-hydrogen); weighted shifts (exr-sp-weighted-shift-zero, exm-rsr-weighted-shift, exr-rsr-weighted-shift-general);
sigma(AB) and sigma(BA) (exr-sp-products); the contour formula for A^n (exr-rsr-contour); Jacobi iteration (exr-rsr-iteration);
numerical range (exr-sas-numerical-range); the uniqueness of positive square roots (def-functional-calculus (4)); the Cayley
transform (exr-fc-cayley); positive and negative parts (exr-fc-abs-value).

Moved, not raised: def-compact-operator and thm-spectral-theorem-compact with their examples and exercises now open
sec-fredholm-operators (see followups.md).

## sec-fredholm-operators (fredholm run)

### reed1980methods

Vol. I, Sec. VI.5: Thms. VI.12, VI.13 (compact operators, limits of finite rank, adjoints, ideal) -> def-compact-operator (1)-(5);
Thm. VI.14 and Problem VI.27 (Riesz theory, Fredholm alternative) -> thm-fredholm-alternative (2)-(4); Thm. VI.15 (Riesz-Schauder)
-> thm-riesz-schauder; Thm. VI.16 (spectral theorem for compact self-adjoint operators) -> thm-spectral-theorem-compact (1)-(3);
Thm. VI.17 (canonical form) -> thm-spectral-theorem-compact (5), exr-fred-stc-svd-matrix. Sec. VI.6, Thm. VI.22 (Hilbert-Schmidt
operators) -> def-compact-operator (6).

### arcozzi2025

Ch. 4: Lemma 4.1, Cor. 4.1 (Riesz lemma, non-compact unit ball) -> def-compact-banach-operator (2), exm-fan-riesz-lemma; Exercise 4.1
(diagonal operators) -> def-compact-operator (5), exm-fan-diagonal-compact; Thm. 4.1 (weak to norm) -> def-compact-operator (4),
def-compact-banach-operator (3); Prop. 4.1 (compact not onto) -> exr-fan-compact-not-onto, thm-riesz-schauder (1); Thm. 4.3 ->
thm-spectral-theorem-compact (5); Thm. 4.4, Cor. 4.2 -> thm-fredholm-alternative; Thm. 4.5 -> thm-riesz-schauder; Thm. 4.6, Cor. 4.3
-> thm-spectral-theorem-compact (3); Prop. 4.4, Thm. 4.7 (Hilbert-Schmidt) -> def-compact-operator (6); Thm. 4.8 (continuous kernels,
Arzela-Ascoli) -> def-compact-banach-operator (4), (5), exm-fan-continuous-kernel; Thm. 4.10 (Volterra operator, V*V kernel) ->
exm-fred-stc-volterra-svd, exr-fan-volterra-singular-values; Sec. 4.5, Thms. 4.12, 4.13 (Sturm-Liouville through the Green's
operator; existence of a non-eigenvalue) -> thm-fred-sturm-liouville-completeness (2)-(5).

### gasinski2014exercises

Thm. 5.160 (variational start of the compact spectral theorem) -> thm-spectral-theorem-compact (1).

### waterstraat2016

Ch. 1: Def. 1.1.4, Lemma 1.1.5 -> def-compact-banach-operator (1); Lemmas 1.1.6, 1.1.9 (complements) -> thm-fredholm-alternative (1);
Lemma 1.1.11, Lemma 1.2.15 (closed range) -> def-fredholm-operator (1), exr-fan-finite-codim-closed; Def. 1.2.14 (Fredholm closed
operators) -> def-fredholm-operator; Exs. 1.2.3, 1.2.7, 1.2.16 (d/dx as a closed operator, index 1 and 0) -> exm-fan-derivative-index,
exr-fred-fo-closed-derivative; Thms. 1.2.17, 1.2.18 (stability) -> thm-index-stability (1), (2), proved here through Atkinson.

### Kirkwood, Mathematical Physics with Partial Differential Equations (Zotero X5DG3KDI; no key in references.bib)

Sec. 6.3 (completeness of Sturm-Liouville eigenfunctions: positivity, Green's function, sum of 1/lambda_n^2 bounded by the double
integral of G^2, Rayleigh-quotient bound; infinitude of eigenvalues left unproved) -> thm-fred-sturm-liouville-completeness (1), (4),
exm-fred-slc-growth. Mentioned in the text by title, not cited with a key.

### derezinski2022mathematics, zhou2024bulkedge

Prop. 2.37 (Hilbert-Schmidt theorem) -> thm-spectral-theorem-compact (6). Sec. III A, eq. 27 (index = winding number for chiral edge
operators) -> thm-toeplitz-index, exm-fred-tp-ssh.

### Standard material without a library source

Hat-function approximation of continuous kernels (def-compact-operator (7)); Dini's argument; the lower bound of the Sturm-Liouville
form (thm-fred-sturm-liouville-completeness (1)); the ring Green's operator and its kernel cosh(pi - |t|)/(2 sinh pi); hydrogen and
oscillator diagonal models; the Susskind-Glogower phase operator (exm-fred-fo-phase, exm-fred-is-phase); Toeplitz factorisation rules,
the SSH edge state, Rayleigh-Ritz bounds; Schauder's theorem (exr-fred-cb-schauder); Riesz's lemma with alpha = 1 failing
(exr-fred-cb-riesz-sharp).

## Unbounded operators run (sec-unbounded-operators, task 4.7)

### reed1980methods

Vol. I, Secs. VIII.1-VIII.2, pp. 249-257 (definitions, symmetric and self-adjoint operators, closures, Thm. VIII.2 on the resolvent set,
Thm. VIII.3 basic criterion and its corollary, Example 5 on spectra C and empty) -> def-unbounded-operator (1)-(5), thm-unb-self-adjointness
(2), (3), exm-unb-spectrum-plane. Vol. II, Sec. X.1, pp. 138-144 (deficiency indices, Thm. X.2 von Neumann, Example 1 momentum on [0, 1],
Thm. X.3 conjugations, Example 2 half-line Laplacian) -> def-self-adjoint-extension (2), (3), exm-sae-periodic, exr-unb-conjugation,
exr-unb-half-line-laplacian.

### arcozzi2025

Sec. 7.3 (Lemmas 7.2-7.4, Remarks 7.2-7.4: closure of symmetric operators, adjoint closed, A** = closure, maximality) -> def-unbounded-operator
(3), exr-unb-double-adjoint, thm-unb-self-adjointness (3). Sec. 7.4 (Lemmas 7.5-7.7, Props. 7.5-7.9, Cor. 7.3) -> thm-unb-self-adjointness
(1)-(4), exr-unb-positive-criterion. Sec. 7.5 (momentum on R via Plancherel, on C^1_c, C^1_per, twisted C^1_lambda, half-line) ->
def-canonical-commutation-relation (1), exm-sae-periodic, exm-unb-periodic-unique, exm-sae-half-line, exm-unb-adjoint-not-symmetric.
Sec. 7.1.4 (uncertainty) -> def-canonical-commutation-relation (3).

### hall2013quantum

Ch. 9 Exercises (book pp. 196-200): Ex. 1-2 (not closable, f(0)1) -> exm-unb-not-closable, exr-unb-not-closable; Ex. 7 -> def-unbounded-operator
(2), (3); Ex. 8 (+- i mu) -> exr-unb-mu-criterion; Ex. 10 (closure of d/dx is i<1_[0,x], chi>) -> exm-unb-closure-derivative,
exr-unb-closure-derivative; Ex. 11 (half-line momentum) -> exm-sae-half-line; Ex. 17-18 (resolvent bounds) -> exr-unb-resolvent-estimates;
Ex. 19 (cores) -> exr-unb-core. Thm. 9.37 (Kato-Rellich), bounded case only -> exr-unb-perturbation-spectrum, exr-unb-anharmonic-bump.
Prop. 9.18 (Weyl's criterion) -> thm-unb-self-adjointness (4).

### galitski2013exploring, ivrii2016weyl, tornetta2022mathematical, gasinski2014exercises

Existing citations kept: Problem 1.29 (boundary conditions), Weyl's law statement (Sec. 1.1), CCR (Sec. 3.1), Defs. 5.115, 5.117.
derezinski2022mathematics and landsman1998 were consulted through semantic search but not used.

### Standard material without a library source

The ran(A - mu) = H criterion with Hellinger-Toeplitz for boundedness of the inverse; diagonal operators and the eigenbasis criterion
(thm-unb-self-adjointness (5)); compact resolvent from thm-spectral-theorem-compact (6); Weyl's law on the circle, sphere and torus by
counting (ellipse sandwich); deficiency computations by solving first- and second-order ODEs with continuous data; coherent states; the
Robin wall bound state; the rotor partition function; r_2 facts mod 4 and mod 8; the twisted-momentum resolvent kernel.
