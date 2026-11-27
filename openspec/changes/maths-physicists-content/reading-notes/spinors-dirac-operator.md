# Reading notes: spinors-dirac-operator (task 4.14, run spin-1: sec-clifford-algebras, split into sec-clifford-algebras, sec-clf-gamma-matrices, sec-clf-reality)

Lawson-Michelsohn is not in the library; Rudolph-Schmidt Part II Ch. 5 was used in its place for the algebraic theory.

## rudolph2017differential

- Sec. 5.1 (pp. 354-364): Def. 5.1.1 and Prop. 5.1.2 (universal property), Cor. 5.1.3 (uniqueness) -> def-clifford-algebra
  (2), (3) and its proof; Props. 5.1.4, 5.1.5, Rem. 5.1.6 (parity automorphism, canonical anti-automorphism, grading) ->
  def-clf-involutions (1)-(5); Cor. 5.1.8, Rem. 5.1.9 (dimension 2^n, basis) -> prp-clifford-basis (1); Prop. 5.1.10
  (exterior-algebra model eps(v) + iota(v)) -> the model W in the proof of def-clifford-algebra and exm-clf-exterior;
  Props. 5.1.16, Rem. 5.1.17 (Cl^0(r+1,s) = Cl(s,r), Cl^0(r,s+1) = Cl(r,s)) -> def-clf-involutions (7); Ex. 5.1.13
  (Cl for r+s <= 2) -> thm-clf-classification (1), exm-clf-class-two, exr-clf-class-two-check (Exercise 5.1.2);
  Prop. 5.1.15 (tensor isomorphisms, Exercise 5.1.3) -> thm-clf-classification (2), in the form M_2(Cl(p,q)); Rem.
  5.1.18 and Exercise 5.1.5 (periodicity) -> thm-clf-classification (3), (4), proved here with the omega_4 change of
  generators instead of H (x) H = M_4(R); Prop. 5.1.19 -> thm-clf-classification (5); Rem. 5.1.20 (explicit gammas by
  tensor products) -> def-gamma-matrices-general; Ex. 5.1.21 (Minkowski gammas with sigma, sigma-tilde; Exercise 5.1.6)
  -> prp-clf-gamma-traces (2), exm-spd-minkowski-cl.
- Lemma 5.2.1 (2) (twisted adjoint of a vector is a reflection) -> exr-clf-reflection.
- Sec. 5.3, Lemma 5.3.4 (chirality element) -> def-chirality-matrix; Prop. 5.3.6 and the discussion of irreducible
  modules (cited to simple-algebra theory there) -> thm-pauli-uniqueness, proved here directly with the J_k eigenspaces.

## zhelnorovich2019spinors

- Sec. 1.1 items 1-11, eqs. (1.1)-(1.29) (pp. 1-11): trace and independence of the gamma products (prp-clifford-basis (3)-(5),
  exr-spd-trace-zero, exr-spd-centre), the Fierz expansion and Pauli identity (eq-spd-fierz, exm-spd-basis-two), the
  commutant (exr-spd-commutant), Pauli's theorem with the averaging formula (thm-pauli-uniqueness, exr-spd-pauli-average);
  eq. (1.21) normalisation of gamma_{2nu+1} (def-chirality-matrix remark); eqs. (1.38)-(1.43) recursion (exr-spd-recursion);
  eqs. (1.44)-(1.55), (1.127) (exm-spd-transpose-sets, def-charge-conjugation-matrix, exr-spd-charge-basis).
- Sec. 1.6.2-1.6.3, eqs. (1.120), (1.135)-(1.142): real and imaginary representations (exm-spd-majorana-four,
  exr-spd-imaginary-rep, def-majorana-condition).

## keskivakkuri2022mathematical

- Sec. 2.8.1, eqs. (2.80)-(2.82) (Pauli matrices, product rule, completeness relation) -> prp-clf-gamma-traces (1),
  exr-clf-tr-pauli-check. Sec. 6.12.1 (Lorentz group, mostly-minus metric) consulted for conventions only. The book has no
  Clifford-algebra chapter.

## vanproeyen1999 (already cited by the chapter; not re-read in this run)

- Sec. 3, eqs. (3.3)-(3.28), Tables 1-2: kept citations in def-gamma-matrices-general, def-chirality-matrix,
  def-charge-conjugation-matrix (table of epsilon_C, here proved by a binomial count), def-majorana-condition,
  thm-majorana-classification (here proved by the shifts (p,q) -> (p+1,q+1), (p+8,q), (p,q+8) and eight base cases).

## trautman1995 (already cited; not re-read)

- Prop. 2: kept in thm-pauli-uniqueness and exr-spd-reducible (Cartan spinors).

# Run spin-2 (task 4.14): sec-spin-groups, split into sec-spin-groups and sec-spn-spinors

## rudolph2017differential

- Sec. 5.2 (pp. 365-375, PDF 379-389): Lemma 5.2.1 (twisted adjoint, reflections, kernel K* 1) -> def-spin-group (2), (4) and
  its proof; Rem. 5.2.2 (parity of Clifford-group elements) -> exr-spn-parity; Thm. 5.2.3 and Rem. 5.2.4 (exact sequences,
  special Clifford group; Cartan-Dieudonne cited there, proved here) -> thm-spn-double-cover (1)-(3),
  exr-spn-special-clifford-group; Lemma 5.2.6 (norm on the Clifford group) -> def-spin-group (3), exr-spn-clifford-norm;
  footnote 8 (Pin with N = +-1) -> the convention of def-spin-group; Cor. 5.2.8 (double cover of the identity component,
  path from -1 to 1) -> thm-spn-double-cover (4), thm-spn-topology (4), exr-spn-rudolph-path; Rem. 5.2.9 (fundamental
  groups) -> thm-spn-topology (5); Ex. 5.2.10 (Spin(1,3) = SL(2,C) in two realisations, Spin(3) = SU(2)) ->
  thm-spn-double-cover (5), (6); Ex. 5.2.11 (Spin(2,1) and SL(2,R)) -> exm-spn-spin-two-one (inclusion only);
  Prop. 5.2.15, Rem. 5.2.16, eqs. (5.2.24)-(5.2.31) -> prp-spin-lie-algebra (1), exr-spn-ad-matrix, exr-spn-inverse-ad.

## zhelnorovich2019spinors

- Sec. 1.2.1, eqs. (1.57)-(1.65) (pp. 19-21, PDF 33-35): spinor matrices defined up to sign, normalisation S^T E S = E ->
  exr-spn-charge-conjugation-invariant (S^T C S = N(S) C); kept citations eq. (3.45), Sec. 3.1.3, eqs. (1.66)-(1.69), (3.44),
  Sec. 1.5 in exm-spd-spin-two, exm-spd-spin-lorentz, prp-spin-lie-algebra, def-weyl-representation.

## keskivakkuri2022mathematical

- Sec. 6.12.1 (p. 307, PDF 318): (1/2, 0), (0, 1/2) and (1/2, 0) x (0, 1/2) = vector -> exm-spd-weyl-four,
  exr-spn-vector-from-weyl. Problem 6.4 (p. 309, PDF 320; exponential of sl(2,R) not onto) -> exm-spn-exp-not-onto
  (adapted to Spin+(1,1)).

## Earlier chapters used (no Zotero source)

- thm-hom-double-cover, thm-lor-sl2c, prp-lor-components, prp-hhg-applications (2), thm-htp-lifting,
  thm-htp-double-cover-group, def-htp-covering-map, thm-pauli-uniqueness, prp-clifford-basis, thm-majorana-classification,
  thm-schur. Cartan-Dieudonne, the compactness/covering argument of thm-spn-topology and the irreducibility proof of
  def-weyl-representation are standard material written here without a textbook source.

# Run spin-3 (task 4.14): sec-spin-structures (frames, spin structures, model spaces, spin connection, curvature, spin-c)

## rudolph2017differential

- Sec. 5.4 (pp. 393-400, PDF 407-414): Def. 5.4.1 and Rem. 5.4.2 (spin structure as a Spin(n)-bundle over the oriented frame
  bundle, equivalence) -> def-spin-structure; Thm. 5.4.3, Cor. 5.4.5 (w2 criterion, H^1(M; Z2) classification; proved there with
  classifying spaces) -> thm-spin-obstruction (5), stated as not proved, while parts (1)-(4) prove the fundamental-group version with
  double covers; Exs. 5.4.8-5.4.10 (2-connected manifolds, S^4 via Sp(2), projective spaces) -> prp-sps-model-spaces, exm-spd-spin-sphere,
  exr-spd-projective (RP^n proved here for odd n by the volume element, not by w1, w2); Ex. 5.4.12 (2^{2g} on surfaces) -> exm-spd-surfaces-spin
  (quoted); Ex. 5.4.13 (complex manifolds, c1 mod 2) -> thm-spin-obstruction (5), exm-spd-cp2-not-spin (quoted); Def. 5.4.14 and eq. (5.4.10)
  (spin connection as the lift of the Levi-Civita form) -> def-spin-connection; Def. 5.4.15, Prop. 5.4.17, Ex. 5.4.18, Ex. 5.4.19, Thm. 5.4.21
  -> def-spinc-structure (1)-(3), (5) (quoted parts), exm-sps-spinc-from-spin, exm-spd-spinc-kahler.
- Sec. 5.5 (pp. 400-406, PDF 414-420): Def. 5.5.3 (spinor bundle), Def. 5.5.9 (Hermitian Clifford module, self-adjoint Clifford
  multiplication), Ex. 5.5.11 (spin connection is Clifford), Rem. 5.5.6 (spin-c spinor bundle) -> def-spin-structure (4)-(6),
  def-spin-connection (4), def-spinc-structure.
- Sec. 5.6 (pp. 410-413, PDF 424-427): eq. (5.6.5) (curvature 1/4 g(R e_k, e_l) c_l c_k), Lemma 5.6.2 ([R, c(Z)] = c(R Z)), proof of Thm. 5.6.4
  (the contraction to Sc/4 with the Bianchi identity), eq. (5.6.12) (spin-c connection with tau/2) -> prp-spinor-curvature (1)-(2),
  exr-spd-ricci-contraction, def-spinc-structure (4). The Lichnerowicz formula itself was not used (it belongs to the next section).

## carroll1997

- Sec. 3, pp. 88-95 (PDF 95-102): eqs. (3.114)-(3.123) (vielbeins, inverse vielbeins), (3.125)-(3.127) (local Lorentz transformations),
  (3.128)-(3.133) (spin connection from the Christoffel symbols, tetrad postulate), (3.134) (inhomogeneous law), (3.137)-(3.138) (structure
  equations), (3.142)-(3.144) (antisymmetry, solving de^a = -omega^a_b ^ e^b) -> def-spin-connection (1)-(3), eq-sps-vielbein,
  exr-sps-vielbein-check, exr-sps-tetrad-postulate, exm-sps-rindler (frame of Carroll's method, Rindler coframe chosen here).

## keskivakkuri2022mathematical

- Sec. 5.11 (pp. 210-214, PDF 221-225): eqs. (5.282)-(5.288) (sphere of radius r, non-coordinate basis, its commutator) ->
  exr-sps-gram-schmidt; eqs. (5.289)-(5.297) (connection one-forms, antisymmetry, Cartan's equations) -> def-spin-connection (3);
  eqs. (5.298)-(5.312) (sphere: omega^2_1 = cos(theta) dphi, curvature forms, R = 2/r^2) -> exm-spd-sphere-spin-connection,
  exm-sps-sphere-radius, exm-sps-radius-curvature, exm-spd-sphere-spinor-curvature.

## trautman1995, dolan2003, aspinwall1996, zhelnorovich2019spinors (existing citations, not re-read)

- Kept: trautman1995 Secs. 4.1, 4.3, 6.1 (circle, spheres, projective spaces) in def-spin-structure, exm-spd-spin-circle,
  exm-spd-spin-sphere, exr-spd-circle-bounding, prp-sps-model-spaces; dolan2003 Sec. 2, eqs. (4), (55)-(56) in prp-spinor-curvature,
  exm-spd-spinc-cp2, exr-spd-cp2-index-table, fig-sd-cp2-index; aspinwall1996 eq. (10), Sec. 2.2 in exm-spd-cp2-not-spin,
  exm-spd-spinc-kahler; zhelnorovich2019spinors Sec. 2.2, eqs. (2.56), (2.61), (2.68) in def-spin-connection, exm-spd-frame-change.

## Earlier chapters used (no Zotero source)

- def-principal-bundle, def-fib-associated-bundle, exr-fbun-so3-frames, exm-principal-coset (bundles); def-htp-covering-map, thm-htp-lifting,
  thm-htp-circle, prp-htp-product, thm-htp-sphere-simply-connected, thm-htp-double-cover-group, def-chc-euler-class (3) (frame connection
  forms and their gauge law), def-chc-chern-class (homotopy-cohomology); def-levi-civita, def-riemann, def-riemann-lowered (differential
  geometry); thm-spn-topology, thm-spn-double-cover, prp-spin-lie-algebra (this chapter). The classification by double covers and monodromy,
  the volume-element proof for RP^n (n odd), the Spin(n+1) -> S^n structure and the Spin^c(2) = U(1)^2 degree argument on S^2 are standard
  material written here without a textbook source.

# Run spin-4 (task 4.14): sec-dirac-spheres (Dirac operator, Lichnerowicz, tori, spheres, vanishing)

The Zotero server refused connections during this run, so no new pages were read; the citations below are of pages read in run
spin-3 (rudolph2017differential PDF 414-427) or are existing citations kept from the earlier text.

## rudolph2017differential

- Sec. 5.5, Def. 5.5.12 and footnote 30 (p. 406, PDF 420: D = i c o g^-1 o nabla, the factor i for self-adjointness) -> def-dirac-operator.
- Sec. 5.6, Thm. 5.6.1 (Weitzenboeck formula, frame proof), Lemma 5.6.2, Thm. 5.6.4 and Cor. 5.6.5 (Lichnerowicz, Rg = Sc/4) (pp. 410-413,
  PDF 424-427) -> thm-lichnerowicz (1)-(2), thm-lichnerowicz-vanishing.

## Existing citations kept, not re-read in this run

- trautman1995 Sec. 8.1, Prop. 8 (spin-orbit operator on S^n) -> thm-sphere-dirac-spectrum (1), (5), exm-spd-sn-from-laplacian.
- camporesi1995 eqs. (3.9)-(3.10), (3.44), (3.58), (5.35), (5.44)-(5.48) -> def-dirac-operator, thm-sphere-dirac-spectrum (5),
  exm-spd-sn-representations, exm-dsp-s3-quoted.
- dolan2003 eq. (2), eq. (5), after eqs. (26), (32) -> def-dirac-operator, exm-spd-lichnerowicz-twisted, thm-lichnerowicz-vanishing,
  exr-spd-zero-mode-balance.
- hull2005 Sec. 3.1, eqs. (3.1)-(3.2) -> def-scherk-schwarz-twist.

## Earlier chapters used

- thm-stokes, def-christoffel (3), def-metric-compatible, def-levi-civita (uniqueness, scaling), thm-parseval, def-spherical-laplacian,
  def-spherical-harmonic (2), (6), thm-heat-trace-asymptotics (2), (3) (scalar Laplacians of T^2 and S^2 only), thm-chc-gauss-bonnet,
  def-zeta-regularisation. The trivialised form D = -iXK of the sphere operator, the trace argument for the S^2 multiplicities, and the
  frame-free proof of the Lichnerowicz formula are standard material written here without a textbook page read in this run.

# Run spin-5 (task 4.14): sec-dirac-compact-spaces, and the sec-dirac-spheres citation check

Zotero MCP was down; PDFs were read with pdftotext from ~/Zotero/storage (read-only).

## Citation check for sec-dirac-spheres (followups item resolved)

- trautman1995 (PDF "The Dirac operator on hypersurfaces", Sec. 8.1 and Prop. 8, journal pp. 1305-1308): spin-orbit operator, (D - m/2)(D + m/2 - 1) + Delta = 0,
  spectrum +-(l + m/2) with multiplicity 2^nu binom(m+l-1, l); Sec. 8.2 projective spaces. Matches.
- camporesi1995: eq. (3.9) (spin connection and Dirac operator), (3.10) (polar form on S^N), (3.44), (3.58) (degeneracies), (5.34) (spinor representations of
  Spin(N+1)), (5.35) (D^2 = sum nabla nabla - R/4 in their sign), (5.44)-(5.48) (Casimirs, lambda^2 = (n + N/2)^2). The citation eqs. (3.9)-(3.10) in def-dirac-operator
  was narrowed to eq. (3.9).
- dolan2003: eq. (2) (iD with spin and gauge connection), eq. (5) (Lichnerowicz with Zeeman term), after eq. (26) (no zero modes for M = 0 by Lichnerowicz), after eq.
  (32) (|M| = 1: gauge connection cancels the spin connection). Matches.
- hull2005: Sec. 3.1, eqs. (3.1)-(3.2) (twisted reduction psi(x, y) = gamma_y[psi], gamma = exp(My)). Matches.

## sec-dirac-compact-spaces

- dolan2003 eqs. (13)-(16) (Laplacian as a difference of Casimirs, C2(H, T) = R/8, eq. (16)), (28)-(31) (monopole spectrum and |M| zero modes), (36)-(37), (43) (SO(5)
  Casimirs, S^4), (59), (67) (nearly-Kahler), (69)-(70) (flag manifold charges) -> thm-parthasarathy (3) (quoted), exm-dcs-parthasarathy-monopole, exr-spd-s4-casimirs,
  exm-spd-nearly-kahler, exr-spd-flag-restriction.
- camporesi1995 eqs. (5.3), (5.34), (5.44)-(5.48) -> def-homogeneous-spinor-bundle, thm-frobenius-reciprocity, exm-spd-sn-frobenius, exm-spd-parthasarathy-sn,
  exr-dcs-freudenthal.
- trautman1995 Sec. 8.2 (RP^3) -> prp-s3-dirac (4), exm-dcs-rp3-bottom, exr-spd-rp3-spectrum.
- aspinwall1996 Sec. 2.2 (holonomy: U(d/2) iff Kahler, SU(d/2) iff Ricci-flat Kahler), Sec. 2.6 (orbifolds), Sec. 4.1, eq. (89) (K3: 16 -> (4,2,1) + (4,1,2))
  -> prp-calabi-yau-spinors (2) (quoted), def-orbifold-projection (4), exm-spd-t4-k3.
- greene1997 Secs. 2.8-2.13 (holonomy, Dolbeault cohomology, Calabi-Yau manifolds, invariants; table of contents and section headings read) -> def-dolbeault-dirac (3)
  (quoted), prp-calabi-yau-spinors (2).
- rudolph2017differential Ex. 5.4.9 (S^4 = Sp(2)/(Sp(1) x Sp(1)) spin structure), Ex. 5.4.19 (canonical spin-c structure from a U(k) reduction), read in run spin-3 ->
  exm-dcs-s4-coset, def-dolbeault-dirac (3).
- Proved here without a textbook source: the left-invariant Dirac operator and its curvature from structure constants, the SU(2) spectrum by Peter-Weyl, the frame
  and spin-structure description of homogeneous spinor bundles, Frobenius reciprocity by averaging over R, the spinor Casimir n(n-1)/8, D^2 = C2 + R/8 on S^2, the flat
  Dolbeault identification on C, the SU(m)-invariant spinor count by weights, and the commutation of lifted isometries with D.

## sec-dirac-index

Run spin-6 (raising sec-dirac-index, prefix `dix-`). Zotero MCP was down; the PDFs were read read-only with pdftotext from ~/Zotero/storage.

- dolan2003 eqs. (28)-(32) (monopole spectrum j = (|M| - 1)/2 + k, E = k(k + |M|), |M| zero modes, nu = -M in Dolan's labels), (44), (46) (instanton zero modes and
  representation factor), (55), (70)-(71) -> thm-monopole-index (4) (quoted), exr-spd-index-sign, exm-spd-as-four, exr-spd-cp2-two-views, exr-spd-flag-index.
- bilal2008 eqs. (3.46)-(3.47), (11.15)-(11.16) (A-hat with 1/(4pi)^2 1/12 tr R^2), (11.25) (index = int A-hat ch with the sign (-)^(r+1)), (10.53), (A.1)-(A.2) ->
  def-a-hat-genus (2), thm-atiyah-singer (1), exr-spd-index-density.
- rudolph2017differential eqs. (4.7.15)-(4.7.16) (A-hat_1, A-hat_2), Remark 4.6.10, eq. (5.8.52) (ch), Thm. 5.8.14 (Atiyah-Singer, with a heat-kernel proof) ->
  def-chern-character, thm-atiyah-singer (1) (stated, not proved here).
- Proved here without a textbook source: the monopole zero modes by Fourier separation and boundedness at the poles (thm-monopole-index (1)-(3), including CP^1
  Riemann-Roch as polynomials of degree <= d); the index cases of thm-atiyah-singer (3): flat tori with twists, round spheres, S^2 with a monopole, S^2 x S^2 by the
  product operator; the square torus with flux N by Fourier series and quasi-periodicity (exr-dix-torus-zero-modes); the A-hat series coefficients and Bernoulli
  formula; Newton's identity for ch_3.
- Quoted, not proved here: the general Atiyah-Singer theorem, the SU(2) content and non-zero spectrum of the monopole (Dolan), Hirzebruch's signature theorem,
  Chern-Gauss-Bonnet int c_3 = chi, adjunction for the quintic and the bicubic.

## sec-chirality-problem and the closing exercises

Run spin-7 (raising sec-chirality-problem, prefix `chp-`, and the closing exercises of the chapter).

- Proved here without a textbook source: the counting of massless four-dimensional spinors by the chiral kernels (thm-chirality-no-go (1)); the antilinear map
  J = T o (complex conjugation), T from Pauli's theorem with T gamma^{a*} = gamma^a T, which commutes with Spin(n) and the spin connection, anticommutes with D and
  satisfies J gamma_* = (-1)^{n/2} gamma_* J, so that n_R = n_L for n = 2 mod 4 (thm-chirality-no-go (2)); the product rule for the index (4); and the counts on
  S^2 and S^2 x S^2 with monopoles (prp-chiral-zero-modes-gauge (2)-(3)).
- Quoted, not proved here: n_R - n_L = A-hat[K] and int A-hat ch(E) (thm-atiyah-singer (1)); the SU(2) representation content (dolan2003 eqs. (28)-(32)); the coset rule
  (dolan2009 Sec. 2.3, eqs. (2.45)-(2.47); dolan2003 eqs. (16), (31)-(32), (44)-(47)); the counting rule of manousselis2000 eqs. (12)-(15); Landau levels on the
  torus; adjunction for hypersurfaces.
- Bicubic in CP^2 x CP^2 (exm-dix-gen-bicubic): chi = -162 is not in greene1997, braun2009 or aspinwall1996 (searched the local PDFs and the Zotero semantic index);
  marked as quoted without a source read.
