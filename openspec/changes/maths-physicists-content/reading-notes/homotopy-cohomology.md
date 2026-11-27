# Reading notes: homotopy-cohomology

Drafts for the Zotero reading notes (design M8). New chapter (task 4.13), first run: introduction and section 1,
`sec-fundamental-group`.

Note on keys: the coverage record names "rudolph2013differential Part II ch. 3-4". Part II (*Fibre Bundles, Topology and
Gauge Fields*, 2017, Zotero `FW9YK8PR`) has its own bib key `rudolph2017differential`, which is the key cited. Part I
(`rudolph2013differential`, `45BKP4LD`) was not used in this run.

## lee2013introduction

App. A, "Homotopy and the Fundamental Group" and "Covering Maps" (pp. 612-616 of the book). Chapters 17-18 (de Rham
cohomology, de Rham theorem) were not used in this run; they are kept for section 3.

- Homotopy, homotopy relative to a set, path homotopy, path classes: `def-htp-homotopy`.
- Product of paths, fundamental group, simply connected: `def-htp-fundamental-group`.
- Exercise A.61 (simply connected iff paths with the same ends are path-homotopic): `exr-htp-pi1-same-ends`.
- Props. A.62-A.65 (composition, induced homomorphism, functoriality, homeomorphisms): `def-htp-homotopy` (3),
  `def-htp-fundamental-group` (3).
- Exercise A.67 (star-shaped sets are simply connected): `def-htp-homotopy` (4), `exm-htp-pi1-slit-plane`.
- Prop. A.68 (spheres): `thm-htp-circle` (a), `thm-htp-sphere-simply-connected` (b).
- Prop. A.69 (products): `prp-htp-product`.
- Homotopy equivalence and the example $S^{n-1} \hookrightarrow \mathbb R^n \setminus \{0\}$:
  `def-htp-homotopy` (6), `exm-htp-hom-punctured-sphere`.
- Thm. A.71 (homotopy invariance, quoted there without proof): proved in `def-htp-fundamental-group` (4).
- Covering maps, evenly covered sets, sheets; Exercises A.72-A.74: `def-htp-covering-map` (1), (2),
  `exm-htp-cov-homeomorphism`, `exr-htp-cov-injective`.
- Prop. A.77 (unique lifting, path lifting, monodromy; quoted there without proof): proved in `thm-htp-lifting`.
- Prop. A.79 (coverings of simply connected spaces): `exr-htp-lift-simply-connected-base`.
- Prop. A.80 (existence of universal coverings): stated as not proved, after the proof of `thm-htp-double-cover-group`
  and in `exm-htp-dc-universal`.

## keskivakkuri2022mathematical

Sec. 4.2 (pp. 107-117 of the PDF numbering). Secs. 4.2.5-4.2.6 (higher homotopy groups, exact sequences) are kept for
section 2.

- Sec. 4.2.1 (paths, loops, homotopy, Lemma 4.2, Thm. 4.3 with the explicit homotopies for identity and inverse):
  `def-htp-homotopy`, `def-htp-fundamental-group` (1).
- Sec. 4.2.2 (path-connectedness, base-point independence, topological invariance): `def-htp-fundamental-group` (2), (3).
- Sec. 4.2.3 (examples (i)-(iv); winding number in Fig. 4.12; $\mathbb{RP}^2 = S^2/\mathbb Z_2$ and $\pi_1 = \mathbb Z_2$):
  `exm-htp-pi1-convex`, `thm-htp-circle`, `def-htp-winding-number`, `prp-htp-product` (2), `def-htp-covering-map`
  (remark on $\mathbb{RP}^n$), `thm-htp-double-cover-group` (2).
- Sec. 4.2.4 (retractions, deformation retracts, contractible spaces, $S^n \subset \mathbb R^{n+1} \setminus 0$):
  `exm-htp-hom-punctured-sphere`, `exr-htp-hom-retract`, `exr-htp-pi1-retraction`, `thm-htp-circle-consequences` (1).
- Problem 4.3 (homeomorphisms induce isomorphisms): `def-htp-fundamental-group` (3).
- Problem 4.7 (ii) ($\mathbb R^3$ minus a line): `exm-htp-circ-line-complement`; (iii) (two lines) in the planar form
  `exr-htp-circ-two-punctures`.
- Problem 4.8 (torus as a rectangle with sides identified): `exm-htp-cov-torus`.
- Not used: roses and free groups (Figs. 4.19-4.20), whose fundamental groups need the general union theorem, not proved.

## rudolph2017differential

- Sec. 3.1 (homotopy classes $[X, Y]$, concatenation of homotopies (3.1.2), Cor. 3.1.3 on products):
  `def-htp-homotopy` (2), remark after `prp-htp-product`.
- Sec. 3.3 (covering homotopy theorem for bundles): cited after `thm-htp-lifting` (4) as the general form.
- The rest of chapters 3-4 (fibrations, classifying spaces, characteristic classes) is kept for sections 2 and 3.

## Standard material (no source in the library)

The library has no algebraic-topology textbook (no Hatcher, Massey, Nakahara or Frankel was found by semantic search). The
following standard items were written without a library source: the Lebesgue-number and square-by-square proofs of
`thm-htp-lifting`; the classification of maps $S^1 \to S^1$ and the odd-map lemma in `def-htp-winding-number`; the
Borsuk-Ulam and Lyusternik-Schnirelmann statements in `thm-htp-circle-consequences`; the union lemma in
`thm-htp-sphere-simply-connected` (1); lens spaces and $SU(2)/Q_8$ in `thm-htp-double-cover-group`; the physics examples
(vortex charge, SSH winding, Brillouin zone, belt trick, nematic defects).

## Section 2 (sec-higher-homotopy), fibrations part (task 4.13, resumed run)

### rudolph2017differential

- Sec. 3.2, Def. 3.2.1 (Serre fibration), Prop. 3.2.3 (lifting on $(K \times I, K \times 0 \cup L \times I)$), Example
  3.2.2 (1) (products): `def-hhg-fibration` (definition with the lift prescribed on $J_n$, retraction (1), products (2)).
- Prop. 3.2.14 (pullbacks): `exr-hhg-fib-pullback`.
- Prop. 3.2.4 and Cor. 3.2.5 (local Serre fibrations, cell-by-cell induction; topological fibre bundles are Serre
  fibrations): `thm-hhg-local-triviality` (1), rewritten with a grid of faces in place of cells.
- Example 1.1.20 (Hopf bundle): `thm-hhg-local-triviality` (5), explicit trivialisations $h_\pm$.
- Lemma 3.2.7, formula (3.2.5), Thm. 3.2.8 (exact homotopy sequence of a Serre fibration): `thm-hhg-exact-sequence`,
  proved directly by lifting instead of through the sequence of a pair.
- Example 3.2.10 (1) (Hopf: $\pi_i(S^3) \cong \pi_i(S^2)$, $i > 2$), (2) (projective spaces, the undecided case
  $0 \to \mathbb Z \to \pi_1 \to \mathbb Z_2 \to 0$), (3) ($\pi_2(\mathbb{CP}^n) = \mathbb Z$): `prp-hhg-applications` (1),
  (4), `exm-hhg-app-undecided`, `exm-hhg-app-cpn`, `exm-hhg-les-double-covers`. The value $\pi_3(S^3) = \mathbb Z$ stated
  there is not used (not proved in the section).

### keskivakkuri2022mathematical

- Sec. 4.2.6 (homotopy sequence of a bundle, stated): cited after `thm-hhg-exact-sequence` and `prp-hhg-applications`.

### Standard material (no library source)

- The explicit retraction $r_n$ (radial projection from $(\frac12\mathbf 1, 2)$); the generator $\tilde f$ of
  $\pi_2(S^2)$ in `prp-hhg-applications` (1); the induction for $\pi_1(SO(n))$, $\pi_k(SU(n))$ and $U(n) \cong U(1)
  \times SU(n)$; the non-existence of sections of the Hopf map and of $SO(3) \to S^2$ and the hairy ball theorem on
  $S^2$ (`prp-hhg-applications` (5)); the Rodrigues trivialisation of $SO(3) \to S^2$ (`exm-hhg-loc-so3`); the physics
  interpretations (superfluid vortices, Georgi-Glashow monopoles and charge quantisation, nematic defects, magnetic
  skyrmions, Wu-Yang gauges).

## Sections 3-4 (sec-de-rham, sec-characteristic-classes) and the closing exercises (task 4.13, final run)

### lee2013introduction

Ch. 17, "De Rham Cohomology" (book pp. 440-466, PDF pp. 456-481), read in full. Ch. 18 (de Rham theorem) was not used.

- Prop. 17.2, Cor. 17.4, Props. 17.5-17.6 (induced maps, disjoint unions, degree zero); Problem 17-1 (cup product):
  `def-drh-de-rham-cohomology` (1)-(4).
- Lemma 17.9, Props. 17.8, 17.10, Thm. 17.11 (homotopy operator, homotopy invariance), Thm. 17.13 (contractible),
  Thm. 17.14 (Poincaré lemma), Problem 17-4 (explicit primitive): `thm-drh-homotopy-invariance`; the operator is written as
  an integral over the second factor instead of with Cartan's formula, and homotopies are smooth (Whitney approximation,
  Thm. 6.26, is not proved in the tutorial).
- Thm. 17.20, Lemma 17.40 (zigzag), Cor. 17.42 (connecting map): `thm-drh-mayer-vietoris`, with the diagram chase written
  out.
- Thm. 17.21, Cor. 17.23 (spheres, punctured space), Problem 17-5 (two punctures): `prp-drh-computations` (1), (2),
  `exm-drh-mv-two-punctures`.
- Lemma 17.27, Thms. 17.30-17.31 (top degree): `prp-drh-computations` (5), with the cube lemma proved one variable at a
  time and the chain of charts in place of Lee's induction.
- Thm. 17.35, Prop. 17.36 (degree), p. 460 (Hopf's classification, cited as not proved), Problems 17-10 (polynomials on the
  Riemann sphere), 17-12 (onto maps), 17-13 (not used): `def-drh-degree`, `exm-drh-deg-polynomial`,
  `exm-drh-deg-onto-zero`, `exr-drh-hi-onto`.
- Thm. 17.39 (Brouwer via degree): not used (Brouwer in dimension two is in section 1).

### keskivakkuri2022mathematical

- Sec. 4.4.2 (book pp. 148-149, PDF 159-160): closed and exact forms, Lemma 4.8 (Poincaré, stated without proof), de Rham
  groups and the de Rham complex, the angle form of the punctured plane: section intro of `sec-de-rham`, remark after
  `def-drh-de-rham-cohomology` and `thm-drh-homotopy-invariance`. Its Thm. 4.10 says "contractible ($\pi_1 = \{e\}$)";
  the chapter does not use that wording ($S^2$ is simply connected with $H^2_{\mathrm{dR}} \neq 0$).
- Sec. 4.4.4 (book pp. 157-160, PDF 168-171): integration with a partition of unity on $S^1$, Stokes: background only.
- Sec. 5.11 (book pp. 210-213, PDF 221-224): non-coordinate bases, connection one-forms $\omega^a{}_b = -\omega^b{}_a$,
  Cartan's structure equations, the two-sphere with $\omega^1{}_2 = -\cos\theta\,d\varphi$ and $R^1{}_2 = \sin\theta\,d\theta
  \wedge d\varphi$: `def-chc-euler-class` (3), (4), `exm-chc-eu-sphere-frame`, `exr-chc-eu-sphere-symbols`.

### rudolph2017differential

- Sec. 4.6 (book pp. 313-324, PDF 327-338): Lemma 4.6.4 (closedness via Bianchi), Lemma 4.6.5 (independence, the
  transgression form), Def. 4.6.6 (Weil homomorphism), eqs. (4.6.14)-(4.6.22) (Chern forms), Thm. 4.6.11 (agreement with
  the topological Chern classes, cited only): `thm-chc-chern-weil`, `def-chc-chern-class`.
- Sec. 4.7 (book pp. 336-342, PDF 350-356): genera, Example 4.7.3 (3) ($\hat A$ series and (4.7.15)-(4.7.16)), (4.7.17)-(4.7.18)
  ($\det^{1/2}$ form), (4.7.19) (Chern character): `def-chc-chern-character`, `def-chc-a-hat`, `exm-chc-ah-series`,
  `exr-chc-ah-series`, `exr-chc-ah-degree-eight`.

### Standard material (no library source)

The library has no textbook with the Gauss-Bonnet theorem via vector-field indices. Standard items written without a library
source: the Poincaré-Hopf form of Gauss-Bonnet with the cut-off argument in `thm-chc-gauss-bonnet`; the extension of the
degree to continuous maps of spheres by polynomial approximation and the map $q : I^3 \to S^3$ in `def-drh-degree` (5), (6);
the maps $f_k$ of degree $k$ on $S^3$; the Gauss linking integral, skyrmion number, Berry curvature of a spin one-half, the
two-band lattice model, Helfrich membranes and the Foucault pendulum; the quoted Pontryagin numbers of $\mathbb{CP}^2$ and
K3 (stated as not proved). Vassilevich (`vassilevich2003heat`) was not used.
