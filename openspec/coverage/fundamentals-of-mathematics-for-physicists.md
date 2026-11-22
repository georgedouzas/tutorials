# Coverage: Fundamentals of Mathematics for Physicists

Live coverage record (moved from the archived change `2026-11-18-tutorials-missing-chapters` by
`maths-physicists-content`, design M9). The Status column of the proposed chapters and section gaps says whether the
topic is still open or has been written (`done (sec-<id>)` or `written`).

Scope (landing page): "the mathematics that theoretical physics relies on ... starts with sets and topology, moves through
analysis, differential equations and probability, and ends with differential geometry, Lie groups, fibre bundles and
spinors." Chapters checked: all 13 chapter pages, by their `##`/`###` headings and the titles of their `.statement-box`
divs. Section ids below are the `##` ids of the chapter pages (most `###` units have no id).

## Benchmarks

| Key | Title | Why chosen | TOC read via |
|---|---|---|---|
| 9KCJXN49 (Zotero item key; no BBT key, item has no author metadata) | Riley & Hobson, *Student Solutions Manual for Mathematical Methods for Physics and Engineering*, 3rd ed. (2006) | The standard broad mathematical-methods syllabus for physicists (31 chapters, from series to group theory and statistics). The PDF in Zotero is the solutions manual, whose chapters mirror the textbook one to one, so it is used for its table of contents only. No other general methods text in the library has the whole syllabus (Fokas XQ85GLUJ is built around the unified transform). | `zotero_get_pdf_outline` |
| keskivakkuri2022mathematical | Keski-Vakkuri, Montonen & Panero, *Mathematical Methods for Physics: An Introduction to Group Theory, Topology and Geometry* | Already cited. A whole-subject text for the second half of the tutorial: groups, representations, topology, manifolds, Riemannian geometry, Lie algebras. | `zotero_read_pdf_pages` pp. 8-10 (no outline) |
| lee2013introduction | Lee, *Introduction to Smooth Manifolds*, 2nd ed. | Already cited. The standard graduate text for manifolds, forms, integration, de Rham cohomology and Lie groups. | `zotero_get_pdf_outline` |
| axler2024linear | Axler, *Linear Algebra Done Right*, 4th ed. | Already cited. The standard text for linear algebra. | `zotero_get_pdf_outline` |
| mukunda2022continuous | Mukunda & Chaturvedi, *Continuous Groups for Physicists* | Already cited. Group and Lie theory at the tutorial's level, written for physicists. | `zotero_get_pdf_outline` |
| rudolph2013differential | Rudolph & Schmidt, *Differential Geometry and Mathematical Physics*, Parts I and II | Already cited. Covers manifolds, Lie groups and actions (Part I) and fibre bundles, characteristic classes, spin geometry and gauge fields (Part II), the end of the tutorial's scope. The Zotero PDF holds both parts. | `zotero_read_pdf_pages` pp. 12-14 (Part I) and 780-782 (Part II); no outline |

Not chosen: gasinski2014exercises and cheung2024metric (problem books); aliev2024mathematical (problem book); Zhu
WBI8MVKP, Kirkwood X5DG3KDI, Fokas XQ85GLUJ (partial or idiosyncratic syllabi; Zhu and Fokas are still given below as
sources).

## Coverage

### 9KCJXN49: Riley & Hobson, Mathematical Methods for Physics and Engineering

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Preliminary algebra | Polynomials, trigonometry, partial fractions, induction | out of scope | | School-level prerequisites; the tutorial assumes them. |
| 2 Preliminary calculus | Differentiation and integration | covered | real-analysis `sec-continuity-differentiability`, `sec-riemann-integral` | |
| 3 Complex numbers and hyperbolic functions | Complex numbers, exponential, logarithm | covered | complex-analysis `sec-complex-numbers` | |
| 4 Series and limits | Convergence tests, power series, Taylor | covered | real-analysis `sec-series`, `sec-continuity-differentiability` | |
| 5 Partial differentiation | Partial derivatives, chain rule, Jacobians | covered | real-analysis `sec-calculus` | |
| 5 Partial differentiation | Stationary values under constraints (Lagrange multipliers); implicit functions | section gap | real-analysis | Only used inside an exercise of hilbert-spaces-operators; no statement. |
| 6 Multiple integrals | Multiple integrals, change of variables | covered | real-analysis `sec-multiple-integrals` | |
| 7 Vector algebra | Vectors, scalar and vector products | covered | linear-algebra `sec-vector-spaces`; cross and triple products in real-analysis `sec-vector-calculus` (def-cross-product) | |
| 8 Matrices and vector spaces | Vector spaces, linear maps, inner products | covered | linear-algebra `sec-vector-spaces`, `sec-linear-maps-dual`; hilbert-spaces-operators `sec-hilbert-spaces` | |
| 8 Matrices and vector spaces | Determinants, trace, eigenvalues, diagonalisation | section gap | linear-algebra | No determinant statement anywhere; eigenvalues only as def-eigenvalue in differential-equations `sec-linear-systems` and the Hermitian spectral theorem in `sec-spectral-theory`. |
| 9 Normal modes | Normal modes of coupled oscillators | belongs to fundamentals-of-theoretical-physics | classical-mechanics `sec-small-oscillations` | Taught there with statements; the linear algebra is in differential-equations `sec-linear-systems`. |
| 10 Vector calculus | grad, div, curl, curvilinear coordinates | covered | real-analysis `sec-vector-calculus` (def-grad-div-curl, prp-curvilinear-operators) | Forms and exterior derivative stay in differential-geometry. |
| 11 Line, surface and volume integrals | Line and surface integrals, divergence and Stokes theorems | covered | real-analysis `sec-vector-calculus` (def-line-integral, def-surface-integral, thm-green, thm-divergence, thm-stokes-surface); differential-geometry `sec-vector-fields-forms-tensors` (thm-stokes) | |
| 12 Fourier series | Fourier series, Parseval | covered | fourier-analysis `sec-fourier-series` | |
| 13 Integral transforms | Fourier transform, convolution | covered | fourier-analysis `sec-fourier-transform` | |
| 13 Integral transforms | Laplace transform | done (sec-laplace-transform) | fourier-analysis `sec-laplace-transform` (def-laplace-transform, prp-laplace-rules, thm-laplace-inversion, thm-laplace-limit-values, prp-laplace-ode) | Formerly mentioned only in passing (hilbert-spaces-operators heat-kernel heuristic). |
| 14 First-order ODEs | Separable, linear first-order equations | covered | differential-equations `sec-odes` | |
| 15 Higher-order ODEs | Linear equations, Wronskian, constant coefficients | covered | differential-equations `sec-linear-systems` | |
| 16 Series solutions of ODEs | Frobenius method | covered | differential-equations `sec-sturm-liouville` | |
| 17 Eigenfunction methods | Sturm-Liouville theory, orthogonal functions | covered | differential-equations `sec-sturm-liouville` | |
| 18 Special functions | Legendre, Bessel, spherical harmonics, Gamma, Beta | covered | differential-equations `sec-sturm-liouville`; fourier-analysis `sec-harmonic-analysis`; complex-analysis `sec-analytic-continuation` | |
| 18 Special functions | Hermite, Laguerre, Chebyshev, hypergeometric and confluent hypergeometric functions | covered | differential-equations `sec-special-functions` | done (sec-special-functions); Hermite and Laguerre are used by quantum-mechanics in the physics tutorial. |
| 19 Quantum operators | Operator algebra, commutators, ladder operators | covered | hilbert-spaces-operators `sec-bounded-operators`, `sec-unbounded-operators`; lie-groups-algebras `sec-lie-representations` | |
| 20 PDEs: general and particular solutions | Classification, second-order equations | covered | differential-equations `sec-pdes` | |
| 20 PDEs: general and particular solutions | First-order PDEs and the method of characteristics | covered | differential-equations `sec-characteristics` | done (sec-characteristics). |
| 21 PDEs: separation of variables and other methods | Separation of variables, Green's functions | covered | differential-equations `sec-pdes`, `sec-greens-functions` | |
| 22 Calculus of variations | Euler-Lagrange equation, constraints, Rayleigh-Ritz | proposed chapter | calculus-of-variations | No statement in this tutorial; the physics tutorial's classical-mechanics states the Euler-Lagrange equations for particles only. |
| 23 Integral equations | Fredholm equations, separable kernels, Neumann series | covered | hilbert-spaces-operators `sec-fredholm-operators`, `sec-banach-algebras` | |
| 24 Complex variables | Holomorphic functions, contour integrals, residues | covered | complex-analysis `sec-holomorphic`, `sec-contour-integration`, `sec-residues` | |
| 25 Applications of complex variables | Conformal maps, evaluation of integrals | covered | complex-analysis `sec-holomorphic`, `sec-residues` | |
| 25 Applications of complex variables | Steepest descent, stationary phase, WKB | done (sec-asymptotics) | complex-analysis `sec-asymptotics` (thm-watson-lemma, thm-laplace-method, thm-steepest-descent, thm-stationary-phase) | WKB is an ODE method and is not part of that section. |
| 26 Tensors | Tensors, components, contraction, transformation law | covered | linear-algebra `sec-tensor-products`; differential-geometry `sec-vector-fields-forms-tensors` | |
| 27 Numerical methods | Root finding, quadrature, ODE and PDE schemes | partly covered | differential-equations `sec-linear-systems` (time stepping), `sec-pdes` (finite differences); probability `sec-statistics` (Monte Carlo) | A numerical-analysis chapter is out of scope: the landing page does not name it. |
| 28 Group theory | Groups, subgroups, cosets, classes, homomorphisms | covered | group-theory `sec-groups`, `sec-cosets-quotients`, `sec-homomorphisms` | |
| 29 Representation theory | Representations, reducibility, Schur | covered | group-theory `sec-representations-schur` | |
| 29 Representation theory | Characters, orthogonality theorem, character tables | section gap | group-theory | Character tables appear only in Sage exercises; no statement. |
| 30 Probability | Probability, random variables, distributions | covered | probability `sec-probability-spaces`, `sec-random-variables`, `sec-limit-theorems` | |
| 31 Statistics | Estimators, maximum likelihood, tests | covered | probability `sec-statistics` | |

### keskivakkuri2022mathematical: Mathematical Methods for Physics

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Overview | out of scope | | No content. |
| 2.1-2.4, 2.9 Groups, subgroups, homomorphisms, small finite groups, group actions | Group basics | covered | group-theory `sec-groups`, `sec-homomorphisms`, `sec-cosets-quotients` | |
| 2.5-2.6 Permutations, symmetric group, Cayley's theorem, partitions, Young diagrams | Symmetric group | section gap | group-theory | $S_3$ facts and the sign homomorphism only; no cycle types, conjugacy classes of $S_n$ or Young diagrams. |
| 2.7 Free groups, presentations, braid groups | Presentations, braids | out of scope | | Not used by the later chapters or tutorials. |
| 2.8 Continuous groups, matrix Lie groups | Matrix Lie groups | covered | lie-groups-algebras `sec-lie-groups-algebras` | |
| 3.1-3.3 Representations, reducibility, irreducible representations | Representations | covered | group-theory `sec-representations-schur` | |
| 3.4-3.5 Characters, regular representation | Characters | section gap | group-theory | As Riley ch. 29. |
| 3.6 Dual vectors and tensors (tensor products, Kronecker products) | Tensors | covered | linear-algebra `sec-linear-maps-dual`, `sec-tensor-products` | |
| 3.6.5 Traces, partial traces, determinants | Trace and determinant | section gap | linear-algebra | As Riley ch. 8. |
| 3.7 A spin-chain example | Physics application | out of scope | | An application, not a method. |
| 4.1 Topology, manifolds | Topological spaces, manifolds | covered | sets-relations-topology `sec-topology`; differential-geometry `sec-charts-manifolds` | |
| 4.2 Homotopy: fundamental group, retracts, higher homotopy groups, exact sequences | Homotopy | proposed chapter | homotopy-cohomology | No statement on homotopy anywhere in the tutorial. |
| 4.3 Differentiable manifolds: tangent vectors, one-forms, tensors, pullback, flows, Lie derivative | Calculus on manifolds | covered | differential-geometry `sec-vector-fields-forms-tensors`, `sec-flows-killing` | |
| 4.4 Differential forms, exterior derivative, closed and exact forms | Forms | covered | differential-geometry `sec-vector-fields-forms-tensors` | |
| 4.4.4 Integration of differential forms | Integration on manifolds | covered | differential-geometry done (sec-integration-manifolds) | Orientation, the integral of a form and Stokes' theorem (proved). |
| 4.5 Classical mechanics and symplectic geometry | Symplectic geometry | covered | differential-geometry done (sec-symplectic) | Approved by the owner; Darboux proved in dimension two only (general case stated). |
| 5.1-5.2 Metric, lengths, induced metric | Metrics | covered | differential-geometry `sec-metrics` | |
| 5.3-5.10 Connections, parallel transport, holonomy, geodesics, curvature, torsion | Connections and curvature | covered | differential-geometry `sec-connections-curvature` | |
| 5.11 Non-coordinate basis | Frames and vielbeins | covered | differential-geometry `sec-vector-fields-forms-tensors` (def-frame); homogeneous-spaces-bundles `sec-coset-geometry`; spinors-dirac-operator `sec-spin-structures` | |
| 5.12 Hypersurfaces, extrinsic curvature | Second fundamental form | covered | differential-geometry `sec-connections-curvature` | |
| 5.13-5.14 Isometries, Killing vectors | Killing vectors | covered | differential-geometry `sec-flows-killing` | |
| 6.1-6.4.2, 6.4.4 Lie algebra of a Lie group, exponential map, defining and adjoint representations, su(2) | Lie algebras | covered | lie-groups-algebras `sec-lie-groups-algebras`, `sec-lie-representations` | |
| 6.4.3 Dynkin index, Casimir operators, anomalies | Casimirs and indices | section gap | lie-groups-algebras | Casimirs are used across the tutorial without a statement. |
| 6.5, 6.6.1-6.6.3 Roots, weights, su(3), simple roots, Cartan matrix | Roots | covered | lie-groups-algebras `sec-lie-representations` | |
| 6.6.1 Dynkin diagrams; 6.9 the su(N) algebras | Classification | section gap | lie-groups-algebras | Dynkin diagrams named, no statement; only su(3) worked out. |
| 6.7 Tensor products of su(2) representations | Clebsch-Gordan | covered | lie-groups-algebras `sec-lie-representations` | |
| 6.8, 6.10 Tensor methods and Young tableaux for su(3), su(N) | Young tableaux | section gap | lie-groups-algebras | |
| 6.11 SU(N) x SU(M) x U(1), branching rules | Branching | covered | lie-groups-algebras `sec-lie-representations` | |
| 6.12 Lorentz and Poincaré groups | Spacetime groups | section gap | lie-groups-algebras | The spin groups are in spinors-dirac-operator `sec-spin-groups`, but the Lorentz and Poincaré groups have no unit; the physics tutorial uses them. |

### lee2013introduction: Introduction to Smooth Manifolds

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Smooth manifolds | Charts, atlases, smooth structures | covered | differential-geometry `sec-charts-manifolds` | |
| 1 Smooth manifolds | Manifolds with boundary | covered | differential-geometry done (sec-integration-manifolds) | Needed for Stokes' theorem. |
| 2 Smooth maps | Smooth maps, diffeomorphisms | covered | differential-geometry `sec-charts-manifolds` | |
| 2 Smooth maps | Partitions of unity | covered | differential-geometry done (sec-integration-manifolds) | Needed to integrate on a manifold. |
| 3 Tangent vectors | Tangent spaces, differentials | covered | differential-geometry `sec-vector-fields-forms-tensors` | |
| 4 Submersions, immersions, embeddings | Rank theorem, immersions, submersions | covered | differential-geometry `sec-charts-manifolds` (def-embedding); done (sec-submanifolds) | |
| 5 Submanifolds | Embedded submanifolds, level sets | covered | differential-geometry done (sec-submanifolds) | Same gap as ch. 4; one section. |
| 6 Sard's theorem | Sard, Whitney embedding, transversality | out of scope | | Technical results not used by the later chapters. |
| 7 Lie groups | Lie groups, homomorphisms, covering groups, actions | covered | lie-groups-algebras `sec-lie-groups-algebras` | |
| 8 Vector fields | Vector fields, brackets, Lie algebra of a Lie group | covered | differential-geometry `sec-vector-fields-forms-tensors`; lie-groups-algebras `sec-lie-groups-algebras` | |
| 9 Integral curves and flows | Flows, Lie derivative | covered | differential-geometry `sec-flows-killing` | |
| 9 Integral curves and flows | First-order PDEs | covered | differential-equations `sec-characteristics` | done (sec-characteristics). |
| 10 Vector bundles | Vector bundles, sections, fibre bundles | covered | homogeneous-spaces-bundles `sec-fibre-bundles` | |
| 11 The cotangent bundle | Covectors, differentials, pullbacks | covered | differential-geometry `sec-vector-fields-forms-tensors` | |
| 11 The cotangent bundle | Line integrals, conservative covector fields | covered | differential-geometry done (sec-integration-manifolds) | |
| 12 Tensors | Tensors, symmetric and alternating tensors | covered | linear-algebra `sec-tensor-products`; differential-geometry `sec-vector-fields-forms-tensors` | |
| 13 Riemannian metrics | Metrics, pseudo-Riemannian metrics | covered | differential-geometry `sec-metrics` | |
| 14 Differential forms | Wedge product, exterior derivative | covered | differential-geometry `sec-vector-fields-forms-tensors` | |
| 15 Orientations | Orientations, Riemannian volume form | covered | differential-geometry done (sec-integration-manifolds; sec-metrics: def-volume-element proves the Riemannian volume form and the integral of functions) | Orientation is metric-free and comes first; the volume form is in sec-metrics. |
| 16 Integration on manifolds | Integration of forms, Stokes, divergence theorem | covered | differential-geometry done (sec-integration-manifolds) | Divergence theorem in its R^3 form (thm-stokes (4)); the Riemannian version needs a metric. |
| 17 De Rham cohomology | Cohomology groups, homotopy invariance, Mayer-Vietoris, degree | proposed chapter | homotopy-cohomology | Only def-closed-exact exists; Chern numbers and index theorems later rely on cohomology. |
| 18 The de Rham theorem | Singular homology and cohomology | proposed chapter | homotopy-cohomology | In outline only. |
| 19 Distributions and foliations | Frobenius theorem | covered | differential-geometry done (sec-frobenius) | Integral manifolds are embedded; foliations as level sets of submersions only. |
| 20 The exponential map | One-parameter subgroups, closed subgroup theorem, adjoint representation | covered | lie-groups-algebras `sec-lie-groups-algebras` | |
| 21 Quotient manifolds | Quotients by group actions, homogeneous spaces | covered | homogeneous-spaces-bundles `sec-coset-geometry` | |
| 22 Symplectic manifolds | Symplectic forms, Darboux, Hamiltonian vector fields, Poisson brackets | covered | differential-geometry done (sec-symplectic) | Darboux proved in dimension two and for constant forms; the general case is stated, not proved. |
| App. A Review of topology | Topological spaces, compactness, connectedness | covered | sets-relations-topology `sec-topology`, `sec-compact-connected` | |
| App. A Review of topology | Homotopy, fundamental group, covering maps | proposed chapter | homotopy-cohomology | |
| App. B Review of linear algebra | Vector spaces, linear maps, determinants, inner products | partly covered | linear-algebra `sec-vector-spaces`, `sec-linear-maps-dual`; determinant gap in linear-algebra | |
| App. C Review of calculus | Derivatives, multiple integrals, uniform convergence | covered | real-analysis `sec-calculus`, `sec-multiple-integrals` | |
| App. C Review of calculus | Inverse and implicit function theorems | section gap | real-analysis | No statement. |
| App. D Review of ODEs | Existence and uniqueness | covered | differential-equations `sec-odes` | |

### axler2024linear: Linear Algebra Done Right

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Vector spaces | Vector spaces, subspaces, direct sums | covered | linear-algebra `sec-vector-spaces` | |
| 2 Finite-dimensional vector spaces | Span, independence, bases, dimension | covered | linear-algebra `sec-vector-spaces` | |
| 3A-3D Linear maps, null space and range, matrices, invertibility | Linear maps | covered | linear-algebra `sec-linear-maps-dual` | |
| 3E Products and quotients of vector spaces | Quotient spaces | partly covered | sets-relations-topology `sec-relations-products` (quotient sets) | Folded into the determinant/eigenvalue gaps of linear-algebra if wanted; not a separate gap. |
| 3F Duality | Dual space and dual map | covered | linear-algebra `sec-linear-maps-dual` | |
| 4 Polynomials | Polynomial factorisation | out of scope | | Algebraic prerequisite; the fundamental theorem of algebra follows from complex-analysis `sec-contour-integration` (Liouville). |
| 5 Eigenvalues and eigenvectors | Invariant subspaces, minimal polynomial, diagonalisation | section gap | linear-algebra | def-eigenvalue lives only in differential-equations `sec-linear-systems`. |
| 6 Inner product spaces | Inner products, orthonormal bases, Gram-Schmidt, orthogonal complements | covered | hilbert-spaces-operators `sec-hilbert-spaces` | Taught in the infinite-dimensional setting, which contains the finite one. |
| 7A-7D Self-adjoint, normal and unitary operators, spectral theorem | Operators on inner product spaces | covered | hilbert-spaces-operators `sec-bounded-operators`, `sec-spectral-theory` | |
| 7C, 7E-7F Positive operators, singular value and polar decomposition | SVD, polar decomposition | section gap | linear-algebra | Low priority; one unit within the eigenvalue section. |
| 8 Operators on complex vector spaces | Generalised eigenvectors, Jordan form, trace | section gap | linear-algebra | |
| 9A Bilinear and quadratic forms | Bilinear forms | covered | linear-algebra `sec-bilinear-forms` | |
| 9B Alternating multilinear forms | Alternating forms | covered | linear-algebra `sec-tensor-products`; differential-geometry `sec-vector-fields-forms-tensors` | |
| 9C Determinants | Determinants | section gap | linear-algebra | |
| 9D Tensor products | Tensor products | covered | linear-algebra `sec-tensor-products` | |

### mukunda2022continuous: Continuous Groups for Physicists

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Basic group theory and representation theory (1.1-1.10, 1.12-1.13) | Groups, representations, Schur's lemma | covered | group-theory `sec-groups`, `sec-representations-schur` | |
| 1.11, 1.14-1.15 Characters, group algebra | Characters | section gap | group-theory | As Riley ch. 29. |
| 2 The symmetric group | Cycles, classes, Young tableaux, irreducible representations of $S_n$ | section gap | group-theory | As Keski-Vakkuri 2.5-2.6; one section. |
| 3 Rotations in 2 and 3 dimensions, SU(2) | SO(2), SO(3), SU(2) | covered | lie-groups-algebras `sec-lie-groups-algebras`, `sec-lie-representations` | |
| 4 General theory of Lie groups and Lie algebras | Local coordinates, one-parameter subgroups, Lie algebras, adjoint | covered | lie-groups-algebras `sec-lie-groups-algebras` | |
| 5 Compact simple Lie algebras: classification and irreducible representations | Roots, the A, B, C, D families, highest weights | partly covered | lie-groups-algebras `sec-lie-representations` (su(3) roots, Cartan matrix); gap: Dynkin diagrams and the classification | |
| 6 Spinor representations of the orthogonal groups | Spinors of SO(2l), SO(2l+1) | covered | spinors-dirac-operator `sec-clifford-algebras`, `sec-spin-groups` | |
| 7 Reducible representations, induced representations, coherent states | Induced representations, reciprocity | partly covered | spinors-dirac-operator `sec-dirac-compact-spaces` (thm-frobenius-reciprocity); fourier-analysis `sec-harmonic-analysis` (Peter-Weyl) | Coherent states belong to fundamentals-of-theoretical-physics (quantum mechanics). |
| 8 The groups Sp(2n, R) | Symplectic groups, metaplectic representation | out of scope | | Specialised (quantum optics); not used downstream. |
| 9 Wigner's theorem, ray representations | Projective representations | belongs to fundamentals-of-theoretical-physics | quantum-mechanics | Symmetries of quantum states are taught with the quantum theory. |
| 10.1 SO(3) and SU(2) | Rotation groups | covered | lie-groups-algebras `sec-lie-groups-algebras` | |
| 10.2-10.5 Euclidean, Galilei, Lorentz and Poincaré groups | Spacetime groups | section gap | lie-groups-algebras | As Keski-Vakkuri 6.12. |

### rudolph2013differential: Differential Geometry and Mathematical Physics, Parts I and II

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| I.1 Differentiable manifolds | Manifolds, level sets, tangent spaces, submanifolds, transversality | partly covered | differential-geometry `sec-charts-manifolds`, `sec-vector-fields-forms-tensors`; submanifold gap in differential-geometry | |
| I.2 Vector bundles | Tangent bundle, vector bundles, tensor bundles | covered | homogeneous-spaces-bundles `sec-fibre-bundles`; differential-geometry `sec-vector-fields-forms-tensors` | |
| I.3.1-3.4 Vector fields, flows, Lie derivative | Flows | covered | differential-geometry `sec-flows-killing` | |
| I.3.5 Distributions and foliations | Frobenius theorem | covered | differential-geometry done (sec-frobenius) | As Lee ch. 19. |
| I.3.6-3.9 Critical integral curves, Poincaré map, stability, invariant manifolds | Dynamical systems | partly covered | differential-equations `sec-odes` (phase portraits), `sec-linear-systems` (stability) | Nonlinear dynamics beyond this is out of scope. |
| I.4.1-4.2 Differential forms, integration | Forms and integration | partly covered | differential-geometry `sec-vector-fields-forms-tensors`; integration gap | |
| I.4.3 De Rham cohomology | Cohomology | proposed chapter | homotopy-cohomology | |
| I.4.4 Riemannian manifolds | Metrics | covered | differential-geometry `sec-metrics` | |
| I.4.5 Hodge duality | Hodge star, codifferential | section gap | differential-geometry | Used by Maxwell's equations in forms and by the Hodge numbers of spinors-dirac-operator; no statement. |
| I.4.6 Maxwell's equations | Electromagnetism in forms | belongs to fundamentals-of-theoretical-physics | electromagnetism | |
| I.4.7-4.8 Pfaffian systems, constraints in mechanics | Pfaffian systems | out of scope | | Constraints in mechanics are in classical-mechanics `sec-constrained-hamiltonian` of the physics tutorial. |
| I.5 Lie groups | Lie algebra, exponential, adjoint and Killing form, left-invariant forms, homogeneous spaces | covered | lie-groups-algebras `sec-lie-groups-algebras`; homogeneous-spaces-bundles `sec-coset-geometry` | |
| I.6.1-6.2 Lie group actions, Killing vector fields | Actions | covered | group-theory `sec-cosets-quotients`; lie-groups-algebras `sec-lie-groups-algebras`; differential-geometry `sec-flows-killing` | |
| I.6.3-6.8 Proper actions, tubular neighbourhoods, orbit spaces | Orbit spaces | out of scope | | Specialised; the orbifold quotients used later are in spinors-dirac-operator `sec-dirac-compact-spaces`. |
| I.7 Linear symplectic algebra | Symplectic vector spaces, symplectic group | section gap | differential-geometry (symplectic section) | Maslov class and Kashiwara index out of scope. |
| I.8 Symplectic geometry | Darboux, Hamiltonian vector fields, Poisson structures, coadjoint orbits | section gap | differential-geometry (symplectic section) | Reduction, contact structures and Morse theory out of scope. |
| I.9 Hamiltonian systems | Hamiltonian dynamics | belongs to fundamentals-of-theoretical-physics | classical-mechanics `sec-hamiltonian` | |
| I.10 Symmetries | Momentum maps, symplectic reduction | belongs to fundamentals-of-theoretical-physics | classical-mechanics | |
| I.11 Integrability | Action-angle variables, Arnold's theorem | belongs to fundamentals-of-theoretical-physics | classical-mechanics | |
| I.12 Hamilton-Jacobi theory | Hamilton-Jacobi, characteristics, eikonal | belongs to fundamentals-of-theoretical-physics | classical-mechanics `sec-poisson-brackets` | |
| II.1 Fibre bundles and connections | Principal and associated bundles, connections, curvature, holonomy, invariant connections | covered | homogeneous-spaces-bundles `sec-fibre-bundles`, `sec-coset-geometry` | |
| II.2.1-2.5 Linear connections, H-structures, curvature, symmetric spaces | Linear connections | covered | differential-geometry `sec-connections-curvature`; homogeneous-spaces-bundles `sec-coset-geometry` (def-symmetric-coset) | |
| II.2.7 Hodge theory, Weitzenböck formula | Hodge theory | partly covered | spinors-dirac-operator `sec-dirac-spheres` (Lichnerowicz); Hodge star gap in differential-geometry | |
| II.2.8 Four-dimensional geometry, self-duality | Self-duality | belongs to fundamentals-of-theoretical-physics | gauge-theories (instantons) | |
| II.3 Homotopy theory of principal bundles, classification | Fibrations, homotopy exact sequence, classifying spaces | proposed chapter | homotopy-cohomology | Fibrations and the exact sequence only; universal bundles and classification out of scope. |
| II.4 Cohomology of fibre bundles, characteristic classes | Chern classes, Chern-Weil, genera | proposed chapter | homotopy-cohomology | spinors-dirac-operator defines the Chern character and $\hat A$ genus (`sec-dirac-index`) but not Chern classes or Chern-Weil. |
| II.5 Clifford algebras, spin structures, Dirac operators, index theorem | Spin geometry | covered | spinors-dirac-operator `sec-clifford-algebras`, `sec-spin-groups`, `sec-spin-structures`, `sec-dirac-spheres`, `sec-dirac-index` | |
| II.6 The Yang-Mills equation | Instantons | belongs to fundamentals-of-theoretical-physics | gauge-theories `sec-topological-solutions` | |
| II.7 Matter fields and model building | Higgs, monopoles, Standard Model, dimensional reduction | belongs to fundamentals-of-theoretical-physics | gauge-theories; dimensional reduction is in kaluza-klein-theories | |
| II.8 The gauge orbit space | Gauge orbit stratification | out of scope | | Research monograph material. |
| II.9 Elements of quantum gauge theory | Path integrals, Gribov, anomalies | belongs to fundamentals-of-theoretical-physics | quantum-field-theory, gauge-theories | |
| II App. A-G | Field extension, conformal group, root diagrams, zeta regularisation, K-theory, determinant lines, Eilenberg-MacLane spaces | out of scope | | Appendices; zeta regularisation is already in hilbert-spaces-operators `sec-traces-heat-kernels`, root diagrams in lie-groups-algebras `sec-lie-representations`. |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision | Status |
|---|---|---|---|---|---|---|---|
| calculus-of-variations | Calculus of variations | differential-equations | real-analysis, differential-equations, linear-algebra | 9KCJXN49 (Riley & Hobson) ch. 22; XQ85GLUJ (Fokas, *Modern Mathematical Methods*) §2.6; WBI8MVKP (Zhu, *Equations and Analytical Tools in Mathematical Physics*) §3.2 | A whole chapter of the standard methods syllabus (Riley ch. 22) with no statement in this tutorial. The physics tutorial uses the Euler-Lagrange equations in mechanics, field theory, electromagnetism, gravity and gauge theory, and derives them only for particles, so by M5 the maths belongs here. Needs at least two sections: functionals and the Euler-Lagrange equations (several functions, fields, higher derivatives, functional derivatives); constraints and Lagrange multipliers, with the second variation and the Rayleigh-Ritz method. It also gives geodesics in differential-geometry a variational reading. | approved (owner, 2026-11-17) | written |
| homotopy-cohomology | Homotopy and cohomology | homogeneous-spaces-bundles | sets-relations-topology, group-theory, differential-geometry, homogeneous-spaces-bundles | lee2013introduction ch. 17-18 and App. A; keskivakkuri2022mathematical §4.2; rudolph2013differential Part II ch. 3-4 (and Part I §4.3) | A whole chapter in two benchmarks (Lee ch. 17-18; Rudolph II ch. 3-4) and a long section in a third (Keski-Vakkuri §4.2). In scope ("starts with sets and topology ... fibre bundles"). The tutorial uses Chern numbers, Chern characters, the $\hat A$ genus, spin obstructions and index theorems, and the physics and Kaluza-Klein tutorials use homotopy groups (instantons, monopoles) and Chern classes (compactifications), but nothing teaches the fundamental group, homotopy groups, de Rham cohomology or Chern-Weil theory. Needs at least two sections: homotopy (fundamental group, covering spaces, higher homotopy groups, the exact sequence of a fibration); de Rham cohomology (homotopy invariance, Mayer-Vietoris, degree); characteristic classes (Chern-Weil, Chern classes, Euler class). Placed before spinors-dirac-operator, which uses it. | approved (owner, 2026-11-17) | open |

## Section gaps

| Existing chapter | Missing topic | Benchmarks | Status |
|---|---|---|---|
| sets-relations-topology | Metric spaces: metrics, completeness, contraction mapping (also covered by the cited problem book cheung2024metric) | Lee App. A; Keski-Vakkuri §4.1 | done (sec-metric-spaces) |
| linear-algebra | Determinants and trace (including partial traces) | Axler 8D, 9C; Riley ch. 8; Keski-Vakkuri §3.6.5; Lee App. B | done (sec-determinants-trace) |
| linear-algebra | Eigenvalues, diagonalisation and Jordan form (with singular value and polar decomposition as a unit) | Axler ch. 5, 7C-7F, 8; Riley ch. 8 | done (sec-eigenvalues) |
| real-analysis | Inverse and implicit function theorems; constrained extrema and Lagrange multipliers | Lee App. C; Riley ch. 5 | done (sec-inverse-implicit) |
| real-analysis | Vector calculus: grad, div, curl, curvilinear coordinates, line and surface integrals, the classical integral theorems | Riley ch. 10-11; Lee ch. 11, 16 | done (sec-vector-calculus) |
| complex-analysis | Asymptotic evaluation of integrals: steepest descent, stationary phase | Riley ch. 25 | done (sec-asymptotics) |
| differential-equations | Further special functions: Hermite, Laguerre and Chebyshev polynomials, hypergeometric and confluent hypergeometric functions | Riley ch. 18; Zhu WBI8MVKP ch. 7 (supplement) | done (sec-special-functions) |
| differential-equations | First-order PDEs and the method of characteristics | Riley ch. 20; Lee ch. 9; Rudolph I.12.2 | done (sec-characteristics) |
| fourier-analysis | The Laplace transform and its inversion | Riley ch. 13, 25 | done (sec-laplace-transform) |
| differential-geometry | Submanifolds, immersions, submersions and the rank theorem | Lee ch. 4-5; Rudolph I.1.6 | done (sec-submanifolds) |
| differential-geometry | Orientation and integration on manifolds: partitions of unity, manifolds with boundary, integrals of forms, line integrals (Stokes' theorem is already stated) | Lee ch. 1, 2, 11, 15, 16; Keski-Vakkuri §4.4.4; Rudolph I.4.2 | done (sec-integration-manifolds) |
| differential-geometry | Hodge star and codifferential | Rudolph I.4.5, II.2.7 | done (sec-hodge-star) |
| differential-geometry | Distributions and the Frobenius theorem (low priority) | Lee ch. 19; Rudolph I.3.5 | done (sec-frobenius) |
| differential-geometry | Symplectic forms, Darboux's theorem, Hamiltonian vector fields and Poisson brackets (uncertain, see note) | Lee ch. 22; Rudolph I.7-8; Keski-Vakkuri §4.5 | done (sec-symplectic) |
| group-theory | Characters, orthogonality of characters, the regular representation | Riley ch. 29; Keski-Vakkuri §3.4-3.5; Mukunda §1.11, 1.14 | done (sec-characters) |
| group-theory | The symmetric group: cycle types, conjugacy classes, Young diagrams | Keski-Vakkuri §2.5-2.6; Mukunda ch. 2 | done (sec-symmetric-group) |
| lie-groups-algebras | Casimir operators and the Dynkin index | Keski-Vakkuri §6.4.3 | done (sec-casimirs) |
| lie-groups-algebras | Dynkin diagrams and the classification of compact simple Lie algebras; the su(N) algebras | Mukunda ch. 5; Keski-Vakkuri §6.6, 6.9 | done (sec-dynkin) |
| lie-groups-algebras | Young tableaux for su(N) representations | Keski-Vakkuri §6.8, 6.10 | done (sec-young-sun) |
| lie-groups-algebras | The Lorentz and Poincaré groups | Keski-Vakkuri §6.12; Mukunda ch. 10 | open |

### Notes for the owner

- **Symplectic geometry.** Lee ch. 22 and Rudolph I.7-8 are whole chapters, so by M4 it could be a proposed chapter. It is
  recorded as one section of differential-geometry instead: nothing later in this tutorial uses it, and the physics
  tutorial teaches Hamiltonian mechanics with Poisson brackets and canonical transformations in coordinates
  (classical-mechanics `sec-hamiltonian`, `sec-poisson-brackets`). Promote it to a chapter if the physics tutorial is to
  use the geometric form.
- **Linear algebra.** Together, the determinant and eigenvalue gaps add about two sections to linear-algebra. They are
  recorded as section gaps because the chapter's subject contains them (spec, "A topic small enough for a section").
- **Riley & Hobson benchmark.** The Zotero item is the student solutions manual, without author metadata or a BBT key.
  Its chapters match the textbook's, but the textbook itself is not in the library.
- **rudolph2013differential.** The bib key and DOI are those of Part I (2013). Part II (2017, DOI
  10.1007/978-94-024-0959-8) is in the same PDF but has no separate bib entry. Citing Part II chapters may need one
  (`tutorials-reference-audit`).
