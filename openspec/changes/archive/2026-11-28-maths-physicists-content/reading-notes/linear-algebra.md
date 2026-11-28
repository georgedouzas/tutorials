# Reading notes: linear-algebra

Additions for the Zotero reading notes of `fundamentals-of-mathematics-for-physicists/linear-algebra`, for the owner's
review. Each line names the source location and the blocks it became.

## Section "Vector spaces" (sec-vector-spaces)

### axler2024linear

Linear Algebra Done Right, Ch. 1-2 (PDF page = printed page + 20). Exercises are cited as "Exercise 1C.5" (section 1C,
exercise 5).

- Sec. 1B, results 1.31-1.32, p. 16: `0v = 0`, `(-1)v = -v` -> exr-vs-zero-rules.
- Exercise 1B.6, p. 17: R with plus and minus infinity is not a vector space -> exr-vs-positive-reals (second half).
- Exercises 1C.3-1C.4, p. 24: linear conditions on functions (derivative and integral) -> exr-vs-function-conditions.
- Exercise 1C.5, p. 24: R^2 is not a subspace of the complex space C^2 -> exm-vs-cn, exr-vs-real-not-complex.
- Exercises 1C.10 and 1C.12, pp. 24-25: intersections and unions of subspaces -> exr-vs-intersection-union.
- Exercise 1C.24, p. 26: even and odd functions -> exr-vs-even-odd.
- Exercise 2A.1, p. 37: four vectors spanning x + y + z = 0 -> exr-span-four-vectors.
- Exercises 2A.2-2A.3, p. 37: spans of differences and of partial sums -> exr-span-partial-sums.
- Exercise 2A.4, p. 37: independence of one and of two vectors -> exr-independence-one-two.
- Exercise 2A.5, p. 37: (3, 1, 4), (2, -3, 5), (5, 9, t) -> exr-combination-parameter (recast as a combination).
- Exercise 2A.6, p. 37: dependence exactly when c = 8 -> exr-independence-parameter.
- Exercise 2A.7, p. 37: 1 + i, 1 - i over R and over C -> exr-independence-complex.
- Exercises 2A.8-2A.9, p. 37: differences and 5v1 - 4v2 stay independent -> exr-independence-differences.
- Exercises 2A.17-2A.19, p. 38: infinite-dimensional spaces (F^infinity, C[0, 1]) -> exm-dimension-infinite.
- Exercise 2B.3, p. 42: basis of {x1 = 3x2, x3 = 7x4} in R^5 and its extension -> exr-basis-subspace-r5.
- Exercise 2B.6, p. 43: basis of P3 without a quadratic -> exr-basis-counter-degree.
- Exercise 2B.7, p. 43: v1 + v2, v2 + v3, v3 + v4, v4 is a basis -> exr-basis-sums.
- Exercise 2C.1, p. 48: subspaces of R^2 -> exr-dimension-subspaces-r2.
- Exercise 2C.3, p. 48: {p in P4 : p(6) = 0} -> exr-dimension-polynomial-root.
- Exercise 2C.7, p. 49: {p in P4 : integral over [-1, 1] = 0} -> exr-dimension-integral-zero.
- Exercise 2C.10, p. 49: Bernstein basis -> exr-dimension-bernstein.
- Exercise 2C.13, p. 49: two five-dimensional subspaces of R^9 meet -> exr-dimension-intersection.

### lee2013introduction

Introduction to Smooth Manifolds, App. B, pp. 617-622 (PDF = printed + 15).

- p. 618: linear combinations, span of the empty set is {0}, sets containing 0 and repeated vectors are dependent ->
  exm-combination-trivial, exm-span-zero, exm-independent-zero.
- p. 621: affine subspaces; S + T is the span of S and T -> exm-vs-lines-plane, exr-span-union-sum.
- Example B.7, p. 621: C^n over C and over R -> exm-vs-cn, exm-dimension-complex-real.
- Exercise B.1, p. 619: subsets of independent sets; dependence means one vector is a combination of others ->
  exr-independence-subsets.
- Lemma B.2, p. 619: more vectors than a spanning set are dependent -> exm-dimension-infinite, exr-dimension-intersection,
  exr-dim-four-dependent.
- Exercise B.4, p. 620: bases from spanning and independent sets, dim of subspaces, dim V = 0 iff V = {0} ->
  exm-dimension-zero-line, exm-dimension-subspace-bound, exr-dimension-bernstein.
- Exercises B.8-B.9, p. 621: dim(S + T) formula and complements -> exr-dim-complement, exr-dim-sum-intersection
  (citation added to the existing exercise).

### scott2023problems

Problems and Solutions on Vector Spaces for Physicists, Ch. 2 (PDF = printed + 12).

- Problem 2.3, p. 9: subspaces of R^3 -> exr-vs-subspace-check (existing citation, kept).
- Problem 2.6, pp. 10-11: the span is a subspace -> exr-span-is-subspace.
- Problem 2.9, p. 11: a basis of the product of two spaces -> exr-basis-product.
- Ch. 1 (sets and maps) and the supplementary problems of Ch. 2 (inner products, norms, multilinear maps) have no
  material for this section.

### keskivakkuri2022mathematical

Not used in this section: its Sec. 3.6 treats dual spaces and tensors, which belong to the later sections of the
chapter.

## Section "Linear maps and dual spaces" (sec-linear-maps-dual)

### axler2024linear

Linear Algebra Done Right, Ch. 3 (PDF page = printed page + 20).

- Example 3.3, pp. 52-53: zero map, identity, differentiation, backward shift -> exm-linear-zero-identity,
  exm-linear-infinite.
- Exercise 3A.1, p. 57: T(x, y, z) = (2x - 4y + 3z + b, 6x + cxyz) is linear iff b = c = 0 -> exr-linear-parameters.
- Exercise 3A.8, p. 57: homogeneous but not additive -> exm-linear-not (own example (x^3 + y^3)^(1/3)).
- Exercises 3B.16-3B.17, p. 67: injective / surjective maps and dimension -> exr-linear-dimension-bounds.
- Exercise 3B.14, p. 66: no map with a prescribed null space -> exr-kernel-prescribed (adapted to R^3).
- Exercise 3B.29, p. 68: 5q'' + 3q' = p is always solvable -> exr-linear-ode-surjective.
- Exercise 3B.30, p. 68: V = null(phi) + span(u) -> exr-functional-complement.
- Exercise 3C.10, p. 80: non-commuting matrices -> exr-linear-composition.
- Exercise 3C.14, p. 80: the transpose is linear -> exr-linear-transpose-map.
- Exercise 3C.16, p. 81: rank one iff A_jk = c_j d_k -> exm-kernel-rank-one-factor, exr-kernel-rank-one.
- Example 3.109, p. 105: linear functionals (4x - 5y + 2z, 3p''(5) + 7p(4), integral) -> exm-functional-evaluation,
  exr-functional-check.
- Sec. 3F, 3.114 and 3.116, pp. 106-107; Exercises 3F.8 and 3F.11, p. 115: expansion in a basis and its dual ->
  exr-dual-basis-expansion, exr-dualbasis-inverse-proof.
- Sec. 3F, Example 3.123 and 3.124-3.125, pp. 109-110: the annihilator and its dimension -> exr-dual-space-annihilator,
  exr-kernel-annihilator.
- Exercise 3F.1, p. 115: a functional is zero or surjective -> exr-functional-surjective.
- Exercises 3F.3-3F.4, p. 115: enough functionals -> exr-functional-extend.
- Exercise 3F.6, p. 115: null(phi) in null(beta) iff beta = c phi -> exr-functional-proportional.
- Exercise 3F.9, p. 115: dual basis of 1, x, ..., x^m -> exm-dual-basis-polynomials.
- Exercise 3F.10, p. 115: dual basis of the powers of x - 5 -> exr-dual-basis-shifted-powers.
- Exercise 3F.14, p. 116: T'(phi_1), T'(phi_2) for T(x, y, z) = (4x + 5y + 6z, 7x + 8y + 9z) -> exr-functional-pullback.
- Exercise 3F.22, p. 117: (U + W)^0 = U^0 cap W^0 -> exr-dual-space-sum-annihilator.
- Exercise 3F.28, p. 117: dimension of the common kernel of independent functionals -> exr-dual-space-independent-kernels.
- Exercise 3F.30, p. 117: every basis of V* is a dual basis -> exr-dual-basis-from-dual.

### scott2023problems

Problems and Solutions on Vector Spaces for Physicists, Ch. 2 (PDF = printed + 12).

- Problem 2.27, p. 18: surjective implies dim W <= dim V -> exr-linear-dimension-bounds.
- Problem 2.33, pp. 19-20: the annihilator W^0 and its dimension -> exr-dual-space-annihilator, exr-kernel-annihilator.
- Problem 2.45, pp. 24-25: images of the complement of a kernel basis form a basis of the range ->
  exr-linear-rank-nullity-proof, exm-kernel-rank-nullity (citation added to the existing example).
- Problem 2.49, p. 27: injective linear maps have zero kernel; the affine map y = 1 + x -> exr-linear-injective-kernel.
- Ch. 5 (matrices) was not used: its problems need determinants, eigenvalues and inner products, which come later.

### keskivakkuri2022mathematical

Mathematical Methods for Physics, Sec. 3.6, pp. 73-75 (PDF = printed + 11).

- eq. (3.80), p. 73: the dual space and its operations -> exr-dual-space-closure.
- Example (bras), pp. 73-74: bras as dual vectors -> exm-dual-space-bras.
- Lemmas 3.11-3.12 and eq. (3.92), pp. 74-75: the dual basis, dim V* = dim V -> exr-dual-dimension,
  exr-dual-basis-expansion, exr-dualbasis-standard-in-f.
- eqs. (3.93)-(3.96), p. 75: spin states and qubits -> exm-dual-basis-spin.

### lee2013introduction

Introduction to Smooth Manifolds (PDF = printed + 15).

- App. B, p. 624: matrix of a composition is the product -> exr-linear-composition.
- Exercise B.14(b), p. 623: injective iff trivial kernel -> exr-linear-injective-kernel.
- Thm. B.20, p. 626 (proof): kernel basis and image basis -> exr-linear-rank-nullity-proof.
- Prop. 11.1, p. 273: the dual basis -> exr-dual-dimension; p. 273, the standard dual basis -> exm-dual-standard.
- Prop. 11.8, p. 274: V -> V** is an isomorphism -> exm-dual-space-dual-dual, exr-dual-double.
- p. 274: no canonical isomorphism V = V*; failure in infinite dimension -> exm-dual-space-not-canonical,
  exm-dual-space-infinite (mentioned only in passing there).
- p. 275: bases and dual bases determine each other -> exr-dual-basis-transform, exr-dual-basis-from-dual.

### carroll1997

Lecture Notes on General Relativity, Ch. 1, pp. 10-12 (PDF = printed + 7).

- eq. (1.32): the dual space is a vector space -> exm-dual-space-sum.
- eq. (1.35): omega(V) = omega_mu V^mu -> exr-dual-basis-expansion, exm-dualbasis-level-functional.
- eq. (1.36): vectors as functionals on dual vectors -> exm-dual-space-dual-dual.
- eqs. (1.37)-(1.38): transformation of dual components and dual basis -> exm-dual-basis-boost,
  exr-dual-basis-transform, exr-dual-basis-boost-doppler.
- eq. (1.39): rows as dual vectors of columns -> exm-dual-space-rows.
- p. 12: bras, and the gradient as a dual vector, eq. (1.40) -> exm-dual-space-bras, exm-functional-work;
  pp. 10-12 -> exm-dual-space-wave.

### Standard material (no mapped source)

exm-linear-shear (with fig-linear-map-grid), exm-linear-oscillator-flow, exm-linear-boost, exm-linear-cross-product,
exm-functional-line, exm-functional-trace, exm-functional-centre-of-mass, exm-functional-oscillator,
exm-functional-not, exm-functional-delta, exr-functional-polynomial-row, exm-kernel-reactions, exr-kernel-beta-decay,
exm-dualbasis-reciprocal-lattice, exm-dual-basis-pauli, exr-dual-basis-pauli, exr-dual-basis-lagrange,
exr-dual-space-evaluations (Simpson's rule).

## Section "Bilinear forms" (sec-bilinear-forms)

### axler2024linear

Linear Algebra Done Right, Sec. 9A, pp. 333-345 (PDF = printed + 20).

- Example 9.2 and result 9.5, pp. 333-335: B_A(v, w) = v^T A w; bilinear forms <-> matrices, dim n^2 ->
  exm-bilinear-matrix-form, exr-bilinear-space-dim.
- Result 9.6, p. 335: matrices of B(u, Tv) and B(Tu, v) -> exr-bilinear-operator.
- Example 9.8, p. 336: p(2) q'(3) on P2 in two bases, A = C^T B C -> exm-bilinear-polynomials,
  exr-bilinear-polynomial-matrix.
- Example 9.10, p. 337: inner product, <u, Tw>, tr(ST) as symmetric forms -> exm-bilinear-trace, exm-symmetric-trace-form.
- Result 9.12, pp. 337-338: symmetric in one basis iff in all; diagonalisation by induction -> exm-symmetric-matrix-test,
  exr-symmetric-basis-independent, exr-signature-sylvester-existence, exr-nondegenerate-orthogonal-complement.
- Result 9.17, p. 340: V(2) = sym + alt -> exr-symmetric-decompose (citation added to the existing exercise).
- Examples 9.19 and 9.22, pp. 341-343: x1^2 - 4x1x2 + 8x1x3 - 3x3^2 from a non-symmetric and a symmetric form ->
  exr-bilinear-evaluate-r3, exm-symmetric-axler-r3, exr-signature-axler-r3 (signature computed here, not in the book).
- Result 9.21, p. 342: characterisation of quadratic forms by Q(2v) = 4Q(v) and polarisation ->
  exr-symmetric-quadratic-characterisation (counterexample x^2 + y|y| is ours).
- Result 9.23, p. 343: diagonalisation of a quadratic form -> exr-signature-axler-r3.
- Exercise 9A.1, p. 344: forms on F are cxy -> exm-bilinear-line, exr-bilinear-line-proof.
- Exercise 9A.2, p. 344: n products of covectors suffice -> exr-bilinear-sum-products.
- Exercise 9A.3, p. 344: bilinear and linear on V x V only for 0 -> exm-bilinear-not, exr-bilinear-not-linear.
- Exercise 9A.6, p. 344: {v : rho(v, v) = 0} is not a subspace -> exm-symmetric-null-not-subspace.
- Exercise 9A.8, p. 344: dimensions of sym and alt forms -> exr-symmetric-dimension.
- Exercise 9A.10, p. 345: int p q'' on {p(0) = p(1), p'(0) = p'(1)} is symmetric -> exr-symmetric-integral-form (done
  for degree 3).
- Not used: 9.13 and Exercises 9A.4-9A.5, 9A.7 (orthonormal bases, spectral theorem, adjoints: later sections).

### knauf2018mathematical

Mathematical Physics: Classical Mechanics, Sec. 6.2.2, pp. 104-106 (PDF = printed + 13).

- Def. 6.12, pp. 104-105: transpose, symmetric/antisymmetric, induced map E -> E*, non-degenerate -> exr-nondegenerate-iso,
  exr-nondegenerate-left-right, exm-nondegenerate-symplectic.
- Thm. 6.13 and its proof, p. 105: Sylvester's normal form by polarisation and splitting off e1; rank of an
  antisymmetric form is even -> exm-signature-xy, exr-symmetric-polarisation-four, exr-signature-sylvester-existence,
  exr-signature-sylvester-invariance, exr-nondegenerate-orthogonal-complement, exr-nondegenerate-odd-antisymmetric.
- Def. 6.14 and Remark 6.15, p. 106: symplectic form, standard omega0 on phase space -> exm-bilinear-symplectic,
  exm-nondegenerate-symplectic.
- eq. (6.2.2), p. 104: linear Hamiltonian flows preserve omega0 -> exr-bilinear-operator.

### gourgoulhon2013special

Special Relativity in General Frames, Sec. 1.3, pp. 6-12 (PDF = printed + 31). Signature (-, +, +, +) converted to
(+, -, -, -) everywhere except in exm-signature-convention and exm-minkowski-convention, which compare the two.

- Sec. 1.3.1, pp. 7-8: metric as a non-degenerate symmetric bilinear form; Sylvester's law -> exm-signature-convention,
  exr-signature-sylvester-invariance.
- Remark 1.7, pp. 8-9: the two sign conventions -> exm-signature-convention, exm-minkowski-convention.
- Sec. 1.3.2, pp. 9-10: proof that the matrix of a non-degenerate form is invertible -> exr-nondegenerate-det-proof.
- Remark 1.11, p. 12: sqrt|g(v, v)| is not a norm (two null vectors) -> exm-minkowski-not-norm.

### keskivakkuri2022mathematical

Mathematical Methods for Physics, Sec. 3.6, p. 76 (PDF = printed + 11).

- eq. (3.100): qubit normalisation |a|^2 + |b|^2 as a sum of four real squares -> exm-signature-qubit.

### lee2013introduction

Introduction to Smooth Manifolds (PDF = printed + 15).

- pp. 341-342: lowering and raising an index (musical isomorphisms), inverse matrix g^ij -> exm-nondegenerate-raising-f.
- p. 343: every non-degenerate symmetric 2-tensor diagonalises to +-1 (Gram-Schmidt adaptation), Sylvester ->
  exm-signature-gram-f.
- p. 344: a positive combination of non-degenerate forms need not be non-degenerate -> exm-nondegenerate-sum.
- Example 13.12, p. 332 (polar coordinates) was read but not used: it needs coordinates on manifolds.

### scott2023problems

Ch. 2 (problems and supplementary problems, pp. 21-42 of the PDF) was read: it has no problems on bilinear or quadratic
forms (Problems 2.36 and 2.48 on skew-symmetric multilinear maps belong to the next section). Not used.

### Standard material (no mapped source)

exm-bilinear-integral, exm-symmetric-small, exm-symmetric-kinetic, exm-symmetric-det-pauli, exm-nondegenerate-line,
exm-nondegenerate-momentum, exm-nondegenerate-sphere, exm-nondegenerate-restriction, exm-signature-plane (with
fig-signature-conics), exm-signature-oscillator, exm-signature-not-invariant, exm-minkowski-timelike-hand,
exm-minkowski-other-nulls, exm-minkowski-four-velocity, exm-minkowski-four-momentum, exm-minkowski-interval,
exr-symmetric-check, exr-symmetric-from-quadratic, exr-nondegenerate-parameter, exr-nondegenerate-general-metric,
exr-nondegenerate-basis-independent, exr-signature-read-diagonal, exr-signature-xyz, exr-signature-two-by-two,
exr-signature-lorentz-subspace, exr-minkowski-pair, exr-minkowski-parameter-null, exr-minkowski-proper-time,
exr-minkowski-unit-hyperboloid, exr-minkowski-null-orthogonal, exr-minkowski-det-boost, exr-minkowski-pauli.

## Section "Multilinear maps and tensor products" (sec-tensor-products)

### axler2024linear

Linear Algebra Done Right, Secs. 9B and 9D (PDF = printed + 20).

- 9.26, p. 346: tr(T1...Tm) is m-linear; product of two bilinear forms -> exm-multilinear-trace.
- 9.28-9.29, p. 347: alternating forms vanish on dependent lists; zero for m > dim V -> exm-multilinear-alternating-zero,
  exr-multilinear-dependent.
- 9.37, p. 351: dim of alternating (dim V)-linear forms is 1 -> exr-tensordim-alternating.
- Exercises 9B.2, 9B.3, 9B.5, 9B.7, pp. 352-353 -> exr-multilinear-six-terms, exr-multilinear-adjacent,
  exr-multilinear-antisymmetrise, exr-multilinear-alternating-r3.
- Sec. 9D, p. 370: dim(V x W) = m + n against dim(V (x) W) = mn -> exm-tensor-space-product-vs-sum.
- 9.70, p. 371 and 9.74(a), p. 373: dimension of bilinear functionals; independence of e_j (x) f_k ->
  exr-tensor-space-spanning, exr-tensor-space-independent.
- 9.73, p. 372: bilinearity of v (x) w -> exm-elementary-bilinearity.
- 9.86, 9.88-9.90, pp. 378-379: products of functionals; tensor product of m spaces and its dimension ->
  exm-multilinear-product, exr-tensor-dim-general, exr-tensordim-general-product.
- Exercises 9D.1-9D.7, pp. 380-381 -> exm-elementary-zero and exr-elementary-zero-proof (9D.1), exr-elementary-cancel
  (9D.2), exr-elementary-independent (9D.3), exm-elementary-not-subspace (9D.4), exr-elementary-rank-criterion (9D.5),
  exr-elementary-rank-two (9D.6-9D.7).
- Not used: inner products on tensor products (9.80-9.83, Exercises 9D.8-9D.13): they need inner product spaces and
  operators S (x) T, which come later.

### lee2013introduction

Introduction to Smooth Manifolds, Ch. 12, pp. 305-313 and Problems pp. 324-325, Ch. 13 p. 329 (PDF = printed + 15).

- Example 12.1, p. 305: dot, cross, determinant as multilinear maps -> exm-multilinear-dot-triple.
- Example 12.2, p. 305: e^1 (x) e^2 on R^2 -> exm-elementary-covectors.
- Exercise 12.3, p. 306: the tensor product of multilinear functions is bilinear -> exr-type-product-bilinear.
- Prop. 12.4, pp. 306-307: basis of multilinear functions, components F(E_i1, ..., E_ik) -> exr-multilinear-basis-values,
  exr-tensor-space-spanning.
- Prop. 12.8, p. 309 -> exr-tensordim-general-product.
- Example 12.11(c), p. 312: the determinant as a covariant 3-tensor -> exm-components-determinant.
- Problems 12-2, 12-4, 12-5, pp. 324-325 -> exm-tensordim-sage (12-2), exr-tensor-space-linear-maps and
  exm-tensordim-linear-maps (12-4), exr-tensordim-symmetric-k (12-5).
- Example 13.2, p. 329: product metric as block sum -> exm-elementary-metric.
- Read, not used: the free-vector-space construction (pp. 307-309) and Problem 12-7 (e^1 (x) e^2 (x) e^3 is not
  symmetric plus alternating): they need symmetric and alternating tensors in general, which this section does not
  define.

### keskivakkuri2022mathematical

Mathematical Methods for Physics, Sec. 3.6, pp. 79-87 (PDF = printed + 11).

- eqs. (3.115)-(3.118), p. 79: (p, q) tensors as multilinear maps, components -> exm-type-small,
  exm-components-evaluation.
- eqs. (3.119), (3.120), (3.168), pp. 79-80, 87: tensor product of tensors, bilinearity, grouping of vector slots ->
  exm-type-product, exr-type-product-bilinear.
- p. 80: components of e_i, e*k and e_i (x) e*k -> exm-components-basis-vectors.
- eqs. (3.123)-(3.124), (3.130): |i><k| as (1, 1) tensors and their action -> exm-contraction-density-matrix,
  exr-type-evaluate.
- eqs. (3.134)-(3.136), pp. 81-82: contraction, Penrose-diagram products -> exr-contraction-basis-free,
  exm-contraction-matrix-product.
- Sec. 3.6.2, eqs. (3.137)-(3.148), pp. 83-84: V (x) W, pure tensors, the Bell state, V (x) W ~ W (x) V, V (x) W* as linear
  maps -> exm-tensor-space-two-spins, exm-elementary-product-state, exr-tensor-space-swap,
  exr-tensor-space-linear-maps.
- eq. (3.153), p. 85 -> exr-components-recover.
- eqs. (3.154)-(3.158), pp. 85-86: n qubits, 2^n, CP^(2^n - 1) -> exm-tensordim-qubits.
- eqs. (3.162)-(3.164), p. 86: transformation of (1, 2) components -> exr-components-transformation-rule.

### carroll1997

Lecture Notes on General Relativity, Ch. 1, pp. 13-18 (PDF = printed + 7). Signature (-, +, +, +) converted to
(+, -, -, -) in exm-type-minkowski-lowering.

- eq. (1.46), p. 13: T (x) S, not commutative -> exm-type-product, exr-type-noncommutative.
- eqs. (1.50)-(1.53), p. 14: action on arguments, transformation law, partial evaluation, U = T S contracted ->
  exm-components-evaluation, exm-components-lorentz, exm-type-partial, exm-contraction-matrix-product.
- eq. (1.54), p. 15: a (1, 1) tensor as row-matrix-column -> exm-type-linear-map.
- p. 16: only delta keeps its components in every basis -> exm-type-not-tensor, exr-components-delta-invariant.
- eqs. (1.59)-(1.60), p. 17: contraction only of an upper with a lower index; order matters ->
  exm-contraction-two-lower, exm-contraction-order.
- eqs. (1.62)-(1.63), pp. 17-18: lowering a four-vector index -> exm-type-minkowski-lowering.

### scott2023problems

Problems and Solutions on Vector Spaces for Physicists, Ch. 2 (PDF = printed + 12).

- Problem 2.36, pp. 21-22: equivalent forms of the alternating property, vanishing on dependent lists ->
  exr-multilinear-dependent.

### Standard material (no mapped source)

exm-multilinear-scalars, exm-multilinear-angular-momentum, exm-multilinear-levi-civita, exm-multilinear-not-linear,
exm-tensor-space-line, exm-tensor-space-polynomials, exm-tensor-space-oscillator, exm-tensor-space-stress,
exm-tensor-space-degenerate, exm-elementary-basis, exm-elementary-hydrogen, exm-type-inertia, exm-components-scaling,
exm-components-oscillator, exm-components-wrong-rule, exm-contraction-vector-covector, exm-contraction-identity,
exm-contraction-minkowski, exm-tensordim-small-types, exm-tensordim-spacetime, exm-tensordim-hydrogen,
exm-tensordim-zero, exm-tensordim-infinite, exr-multilinear-scaling, exr-tensor-space-antisymmetric,
exr-tensor-space-oscillator-levels, exr-tensor-space-bilinear-forms, exr-elementary-expand, exr-elementary-two-by-two,
exr-type-product-types, exr-type-partial-evaluation, exr-type-minkowski-lowering, exr-type-inertia-tensor,
exr-components-outer-f, exr-components-invariant-pairing, exr-components-polar-raising, exr-components-boost-field,
exr-contraction-direct, exr-contraction-composition, exr-contraction-unique,
exr-contraction-symmetric-antisymmetric, exr-contraction-bloch, exr-contraction-dust, exr-tensordim-count-types,
exr-tensordim-basis-sage, exr-tensordim-three-spins, exr-tensordim-traceless.

## Section "Determinants and trace" (sec-determinants-trace)

New section (recorded gap "Determinants and trace (including partial traces)", design M9).

### axler2024linear

Linear Algebra Done Right, Secs. 8D, 9B, 9C (PDF page = printed page + 20).

- Example 9.33, p. 349: signs of (2, 1, 3, 4) and of the cyclic shift -> exm-sign-s3, exm-sign-cyclic-shift.
- 9.34, p. 349: swapping two entries changes the sign -> exr-sign-any-swap.
- 9.35-9.37, pp. 350-351: sign rule for alternating forms, formula for top-degree forms, dimension one ->
  thm-top-forms (statement and proof).
- 9.39, p. 352: non-zero top form vanishes exactly on dependent lists -> exr-topform-dependent.
- 9.40-9.46 and 9.53, pp. 354-356, 359: determinant of an operator, of a matrix, Leibniz formula, matrix in any
  basis -> def-determinant.
- Example 9.42, p. 354: det of identity and scalings -> exm-det-scalings.
- 9.48, p. 356: triangular matrices -> exr-topform-triangular, exm-det-triangular.
- 9.49, p. 357: multiplicativity -> thm-determinant-product.
- 9.50, p. 357: invertible iff det non-zero -> thm-determinant-invertible.
- 9.57, p. 360: row and column operations -> exm-dettrans-row-reduction.
- 9.58, p. 362: unitary operators have |det| = 1 -> exr-dettrans-unitary.
- 9.67, p. 366: Vandermonde determinant (3 x 3 case, own proof by the Leibniz formula) -> exr-det-vandermonde.
- Exercise 9C.1, p. 367: det(S + T) != det S + det T -> exm-det-not-additive.
- Exercise 9C.16, p. 368: derivative of det(1 + xT) at 0 is tr T -> exr-trace-derivative-det.
- 8.47-8.51, pp. 326-327: trace of a matrix and of an operator -> def-trace.
- Example 8.48, p. 326: trace 5 of a 3 x 3 matrix -> exm-trace-small.
- 8.49-8.50 and 8.56, pp. 326-329: tr(AB) = tr(BA), basis independence -> prp-trace-cyclic.
- 8.57, p. 330: no ST - TS = I -> exm-trcyc-commutator.
- Exercise 8D.1, p. 330: trace of u -> <u, v> w -> exr-trace-rank-one.
- Exercise 8D.2, p. 330: trace of a projection -> exm-trace-projection, exr-trace-projection.
- Exercise 8D.8, p. 331: tr(ST) != tr S tr T -> exm-trace-limits.
- Exercise 8D.9, p. 331: tr(ST) = 0 for all S forces T = 0 -> exr-trcyc-nondegenerate.
- Exercise 8D.10, p. 331: uniqueness of the trace -> exr-trcyc-unique.
- Exercises 8D.11-8D.12, p. 331: tr(T*T) and the Frobenius inner product -> exr-trace-frobenius.
- Exercise 8D.13, p. 331: ST - TS = I on all polynomials -> exm-trcyc-infinite.
- Read, not used: Exercises 9B.1-9B.7 (covered by the multilinear section), 9C.2-9C.15 and 9C.17-9C.21 (they need
  eigenvalues, the minimal polynomial, inner products or singular values, not yet defined in the chapter).

### lee2013introduction

Introduction to Smooth Manifolds, App. B, pp. 628-634 (PDF = printed + 15).

- Prop. B.28(g), p. 631: det of the transpose by reindexing the Leibniz sum -> thm-determinant-transpose (proof).
- Prop. B.35, p. 633: expansion by minors -> exr-det-cofactor (own proof by grouping Leibniz terms).
- Prop. B.36, p. 634: Cramer's rule as the cofactor formula for the inverse -> exr-dettrans-adjugate.
- Read, not used: Theorem B.31 (product rule by elementary matrices; the section proves it with alternating forms
  instead), Exercises B.29-B.30.

### keskivakkuri2022mathematical

Mathematical Methods for Physics, Sec. 3.6.5, pp. 93-95 (PDF = printed + 11).

- eq. (3.208), p. 93: tr(A (x) B) = tr A tr B -> exm-ptrace-full.
- eq. (3.209) and Problem 3.8, p. 93: det(A (x) B) = (det A)^M (det B)^N -> exr-detprod-kronecker.
- eqs. (3.214)-(3.215), p. 94: partial traces of product operators -> exm-ptrace-product.
- eqs. (3.216)-(3.218), pp. 94-95: partial trace of a general operator in components -> def-partial-trace.
- eqs. (3.219)-(3.223), p. 95: partial trace of the Bell-state projector -> exm-ptrace-bell.

### scott2023problems

Problems and Solutions on Vector Spaces for Physicists, Ch. 5 (PDF = printed + 12).

- Problem 5.9, p. 91: orthogonal 2 x 2 matrices are rotations or reflections -> exr-dettrans-orthogonal-plane.
- Problem 5.21, p. 99: expansion with the cofactors of another row gives 0 -> exr-dettrans-adjugate.
- Problem 5.24, p. 100: det(AB) = det A det B for 2 x 2 by hand -> exr-detprod-two-by-two.
- Problem 5.39, p. 108: anticommuting invertible matrices: N even, traceless -> exr-detprod-anticommute (a),
  exr-trcyc-anticommute (b).
- Problem 5.42, p. 110: tr M^T = tr M, tr(SA) = 0 -> exr-trace-symmetric-antisymmetric.
- Problem 5.45, p. 112: [A, B] = c1 impossible in finite dimension; position and momentum -> exm-trcyc-canonical.
- Problem 5.57, p. 119: inverse of the transpose -> exr-dettrans-inverse-transpose.
- Read, not used: Problems 5.33 (an own family is used in exm-detinv-parameter), 5.36 (already in the chapter as
  exr-nondegenerate-odd-antisymmetric), 5.47, 5.49, 5.52, 5.54-5.56 (Pauli identities, covered by existing blocks).

### Riley and Hobson, solutions manual (Zotero item 9KCJXN49, no bib key)

Not read for this section; nothing was taken from it.

### Standard material (no mapped source)

The remaining 145 examples and exercises of the section are standard material in the site notation: the sign examples
and exercises other than those above (exm-sign-*, exr-sign-*), the alternating-form examples and exercises
(exm-topform-*, exr-topform-* except exr-topform-triangular, exr-topform-dependent), and the examples and exercises of
the determinant, product, transpose, invertibility, trace, cyclicity and partial-trace units not listed above.

### Figures

- det_area (fig-det-area, in exm-topform-plane): two parallelograms with signed areas 5 and -7.
- det_volume (fig-det-volume, in exm-det-volume, with interactive version): the unit cube and its image of volume 10.

## Section "Eigenvalues and diagonalisation" (sec-eigenvalues)

New section (recorded gap "Eigenvalues, diagonalisation and Jordan form, with singular value and polar decomposition",
design M9). def-eigenvalue was moved here from the differential-equations chapter, which now has
prp-eigen-exponential-solutions in its place.

### axler2024linear

Linear Algebra Done Right, Chs. 5, 7E-7F, 8A-8C (PDF page = printed page + 20).

- 5.5-5.8 and 5.52, pp. 134-135, 164: eigenvalue, eigenvector, eigenspace -> def-eigenvalue.
- Example 5.6, p. 134: T(x, y, z) = (7x + 3z, 3x + 6y + 9z, -6y), eigenvalue 6 -> exm-eig-first.
- Example 5.9, pp. 135-136: quarter turn, eigenvalues +-i -> exm-eig-quarter-turn.
- Example 5.53, p. 164: eigenspaces of diag(8, 5, 5) -> exm-eig-diagonal.
- 5.11, 5.55, 5.58, pp. 136, 165-166: independence of eigenvectors, conditions for diagonalisability, distinct
  eigenvalues -> thm-diagonalisability.
- 5.50-5.51, p. 163: diagonalisable, T(x, y) = (41x + 7y, -20x + 74y) -> def-diagonalisable, exm-diag-first.
- Example 5.57, p. 166: T(a, b, c) = (b, c, 0) -> exm-diagcrit-shift.
- Example 5.59, p. 167: T^100 (0, 0, 1) -> exm-charpoly-triangular, exr-diag-power.
- Example 5.61, p. 168: [[6, 3, 4], [0, 6, 2], [0, 0, 7]] -> exm-charpoly-multiplicity, exm-diagcrit-fail,
  exm-minpoly-repeated, exm-geneig-deficient, exm-jform-three-by-three.
- 5.22-5.29 and 5.62, pp. 143-149, 169: minimal polynomial; diagonalisable iff no repeated root -> def-minimal-polynomial,
  exr-minpoly-diagonalisable (own proof with Lagrange polynomials).
- 5.18, p. 139: null space and range of p(T) invariant -> exr-minpoly-invariant.
- Exercises 5A.6, 5A.7, 5A.8, 5A.10, 5A.13, 5A.19-5A.21, 5A.23, 5A.24, 5A.26, pp. 139-141 -> exr-eig-swap, exr-eig-three,
  exr-eig-projection-values, exm-eig-polynomials, exr-eig-similar, exm-eig-shifts, exr-eig-inverse, exr-eig-st-ts,
  exr-eig-row-sums, exr-eig-every-vector.
- Exercise 5A.30, p. 141: (T - 2)(T - 3)(T - 4) = 0 -> exr-minpoly-roots.
- Exercises 5A.35-5A.36, p. 142: independent exponentials and cosines -> exr-diagcrit-exponentials, exr-diagcrit-cosines.
- Exercises 5B.1, 5B.3, 5B.8, 5B.11, 5B.12, 5B.16, pp. 150-152 -> exr-eig-square, exr-charpoly-all-ones, exr-minpoly-ones,
  exm-minpoly-rotation, exr-minpoly-two-by-two, exr-minpoly-distinct, exm-charpoly-companion, exr-minpoly-companion.
- Exercises 5D.1, 5D.3, 5D.6, 5D.9-5D.11, 5D.13, 5D.21, pp. 172-174 -> exr-minpoly-diagonalisable, exr-diag-kernel-image,
  exr-diagcrit-count, exr-diagcrit-similar, exr-diagcrit-not-similar, exr-diagcrit-six-seven, exr-diag-commuting,
  exr-diag-fibonacci.
- 7.65, 7.70, pp. 271-273: singular values, SVD -> thm-svd (proof adapted to matrices, with the symmetric eigenbasis proved
  inline).
- 7.93, p. 286: polar decomposition -> cor-polar-decomposition.
- Exercises 7E.2-7E.5, 7E.9-7E.11, 7E.14-7E.15, pp. 278-279 -> exr-svd-schmidt-pair, exm-svd-nilpotent, exr-svd-bounds,
  exr-svd-swap-scale, exr-svd-transpose, exr-svd-inverse, exr-svd-frobenius, exr-svd-eigenvalue-bound.
- Exercises 7F.15, 7F.28, 7F.30, pp. 295-296 -> exr-polardec-permutation, exr-polardec-left, exr-polardec-unique.
- 9.60 (cited in 7F, p. 293): |det T| = product of singular values -> exr-svd-det.
- 8.1-8.11, pp. 298-301: null spaces of powers, generalised eigenvectors -> def-generalised-eigenvector,
  exr-geneig-stabilise.
- 8.4, p. 299: V = null T^n (+) range T^n -> exr-jform-fitting.
- 8.22, 8.25-8.26, 8.42-8.46, pp. 308-324: generalised eigenspace decomposition, multiplicity, characteristic polynomial,
  Jordan basis, Jordan form -> def-characteristic-polynomial, prp-trace-det-eigenvalues, thm-jordan-form (proof sketch),
  exm-geneig-shift, exm-geneig-kernels.
- Exercises 8A.2, 8A.10, 8A.14-8A.17, pp. 306-307 -> exr-geneig-chain, exr-geneig-find, exr-diag-nilpotent,
  exr-geneig-diagonalisable, exr-geneig-commuting, exr-geneig-neumann.
- Exercises 8B.12-8B.14, p. 317 -> exr-jform-prescribed.
- Exercises 8C.1, 8C.5-8C.7, 8C.10, pp. 324-325 -> exr-jform-no-root, exr-jform-two-by-two, exm-jform-derivative,
  exr-jform-minpoly, exr-jform-transpose.
- Read, not used: 5C (upper-triangular matrices, covered by the Jordan form), 5D Gershgorin disks, 5E (commuting operators,
  only exr-diagcrit-commuting), 7F norms of maps and low-rank approximation (operator norms are not defined in the chapter).

### scott2023problems

Problems and Solutions on Vector Spaces for Physicists. The eigenvalue problems are in Ch. 6 (spectral decomposition),
not Ch. 5 as the run message said; Ch. 5 has none (PDF = printed + 11 in Ch. 6).

- Problem 6.6, pp. 134-135: leading and constant coefficients of the characteristic polynomial ->
  def-characteristic-polynomial, exr-charpoly-coefficients, prp-trace-det-eigenvalues.
- Problem 6.9, p. 135: similar matrices have the same eigenvalues -> exr-eig-similar.
- Problem 6.12, p. 136: eigenvalues of A1, B1, C1 and of the matrix of ones -> exr-charpoly-compute, exr-charpoly-all-ones.
- Problems 6.15 and 6.40, pp. 142, 164: the exchange of two coordinates, eigenvalues +-1 with multiplicities ->
  exr-charpoly-swap.
- Problem 6.21, p. 144: the Hermitian matrix [[4, i, 1], [-i, 4, -i], [1, i, 4]] -> exr-charpoly-hermitian,
  exm-diagcrit-hermitian.
- Problem 6.27, p. 152: polar decomposition of [[2i, 0], [sqrt7, 3]] -> exr-polardec-complex, cor-polar-decomposition.
- Problem 6.34, p. 161: eigenspaces are invariant -> exr-minpoly-invariant.
- Read, not used: Problems 6.3, 6.24, 6.30 (unitary diagonalisation of Hermitian matrices, which belongs with the spectral
  theorem in the Hilbert-spaces chapter), 6.36-6.39, 6.49.

### knauf2018mathematical

Mathematical Physics: Classical Mechanics, Sec. 6.3.2, pp. 119-120 (PDF = printed + 13).

- eqs. 6.3.10-6.3.12: harmonic chain with periodic boundary conditions, Fourier modes, omega_k^2 = (2/m) sum c_r (1 -
  cos) -> exm-charpoly-chain, fig-chain-spectrum, exm-diagcrit-chain; three masses between walls in the same spirit ->
  exr-diagcrit-three-masses.
- The inertia tensor (eq. 14.3.4, already noted for classical mechanics) underlies exm-diag-inertia and exm-svd-inertia,
  computed for an own example (a dumbbell).

### keskivakkuri2022mathematical

Sec. 3.6.5 (determinants and traces of tensor products) has no eigenvalue material beyond what the determinants section
already took; not used here.

### Standard material (no mapped source)

The physics examples (Pauli matrices, boosts and light rays, null rotations, Galilean boosts, spin one, critical damping,
spinor boosts, simple shear, Schmidt decomposition of two spins), the trace-and-determinant exercises and examples not
listed above, and the remaining examples of every unit are standard material in the site notation.

### Figures

- svd_ellipse (fig-svd-ellipse, in exm-svd-ellipse): the unit circle and its image ellipse under [[3, 0], [4, 5]], with the
  singular axes and the (non-orthogonal) eigenvector lines.
- chain_spectrum (fig-chain-spectrum, in exm-charpoly-chain): normal-mode frequencies of a ring of 12 masses.
