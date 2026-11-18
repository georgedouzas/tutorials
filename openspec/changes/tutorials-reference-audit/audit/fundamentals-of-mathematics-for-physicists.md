# Audit record: fundamentals-of-mathematics-for-physicists

Design A9. First pass from `check.py`; chapter tables are filled as each chapter is audited (A1-A7, A10).

## Owner decisions applied (M2-M5, M9), 2026-11-18

fixed (owner, 2026-11-18). Each item is also marked in its chapter subsection below. Line numbers are as of
2026-11-18. `homogeneous-spaces-bundles` was not touched (another agent).

- **M2** (differential-geometry, `def-closed-exact`, line 6541): "(a ball, a chart domain)" became "(a ball, a
  star-shaped set)", citing [lee2013introduction, Thms. 17.13-17.14, pp. 446-447] (re-read: Thm. 17.13 contractible
  manifolds, Thm. 17.14 Poincaré lemma for star-shaped open subsets).
- **M3** (differential-geometry, `def-manifold`, lines 1016-1029): second countability added to the definition, with
  the countable basis defined inline. The lead names both conditions and cites [lee2013introduction, Ch. 1, p. 3;
  godinho2014introduction, Sec. 1.2, p. 7] (both re-read). For consistency, the solution of `exr-manifold-open-subset`
  (line 1121) now says that open subsets inherit second countability. Checked across the tutorial: nothing later
  contradicts the definition. No non-second-countable example appears, open subsets and products keep the property,
  and sets-relations-topology line 2827 only says the definition requires the Hausdorff property.
- **M4** (probability, characteristic-function intro, lines 1520-1522): φ_X is now "the Fourier transform of the
  density evaluated at −t: under the site's convention f̂(k) = ∫f(x)e^(−ikx)dx, φ_X(t) = p̂_X(−t)", as on the
  notation page.
- **M5**, removals and narrowings:
  - differential-equations: line 35 (`sec-odes`) drops arrigo2023introduction [Ch. 5] and borodzik2019problems [Ch. 5].
    Line 1055 (`sec-linear-systems`) drops arrigo2023introduction [Ch. 3] and the "Ch. 2-4" of aliev2024mathematical,
    keeping [Secs. 1.1-1.2].
  - probability: line 3752 (`sec-statistics`) drops gasinski2014exercises [Ch. 3].
  - real-analysis:
    - line 30: Radożycki [Ch. 3-5] became [Ch. 5];
    - line 2228: Radożycki [Ch. 14] narrowed to "For antiderivatives and indefinite integrals";
    - line 1506: Cheung [Ch. 2, Ch. 4] became [Ch. 2];
    - line 3768: Gasiński [Ch. 1] became [Sec. 1.1.7].
  - complex-analysis:
    - line 941: Yu [Ch. 4] narrowed to the derivative, Cauchy-Riemann and harmonic functions;
    - line 2420: Magnus [Ch. 3] became [Sec. 3.1.1, pp. 91-93], with Yu split into Ch. 5 (power series) and Ch. 9
      (singularities, Laurent);
    - `sec-analytic-continuation`: the line Yu [Ch. 7-8] was removed, because its supported part (Thm. 7.1, p. 125) is
      already cited at the Analytic continuation unit.
  - hilbert-spaces-operators: line 1059 (`exm-fan-stone-weierstrass-fails`) drops arcozzi2025 [Sec. 1.4].
  - lie-groups-algebras: line 22, Mukunda [Ch. 4, Ch. 7-8] became [Chs. 4, 8].
  - differential-geometry:
    - line 27: Torres del Castillo [Ch. 1, Ch. 5-6] became [Ch. 1, Ch. 6];
    - line 14512 (`exr-sff-paraboloid` lead): Blennow Problem 2.41 now cited for the intrinsic route only (the problem
      asks for the Riemann tensor);
    - lines 14552-14553 (`exr-sff-codazzi` lead): Boskoff [Sec. 4.10, p. 94] moved onto the Codazzi-Mainardi equations.
      The Bonnet clause is now uncited.
  - spinors-dirac-operator: the six unsupported co-citations.
    - `thm-spin-obstruction` (line 2552): trautman1995 [Sec. 4.1 and Sec. 6.1] removed.
    - `prp-spinor-curvature` (line 2837): zhelnorovich2019spinors [Sec. 2.3] removed.
    - Hodge numbers (line 5013): dolan2003 [Sec. 2, example iii] removed.
    - orbifold fixed points (line 5294): chatzistavrakidis2010orb [Sec. 2] removed.
    - `thm-monopole-index` (line 5722): bilal2008 [App. 14] removed.
    - The generations solution (line 6971): chatzistavrakidis2009nk [Sec. 4.3] moved from the Weyl-group clause to the
      count ½χ = 3, which it supports. This one sits alone, so it was moved instead of removed.
  - sets-relations-topology: line 27 (`sec-sets`) drops Komjáth [Ch. 6] (M9). Line 979 (`sec-relations-products`)
    narrows Komjáth [Ch. 2-3] to "[Ch. 2, Problem 2; Ch. 3, Problem 12] for products" (re-read: the product of
    finitely many countable sets is countable; C^(A×B) ~ C^A × C^B).
- **New sources** (both already in the bib, PDFs read with `pdftotext`):
  - `radozycki2020solvingII` (Part II, printed = PDF − 10), cited in real-analysis `sec-riemann-integral`:
    - the section line (line 2229);
    - "The integral as a limit of sums" (line 2238);
    - "The fundamental theorem" (line 2532);
    - "Improper integrals" (lines 2654-2656).
  - `ivrii2016weyl` (printed = PDF), cited in hilbert-spaces-operators at `thm-laplacian-discrete-spectrum` (line 7843)
    and in the lead of `exr-hta-weyl-law` (line 9595). Details are in the chapter rows.

### Accepted exception (owner, 2026-11-18): `sagemath`

fixed (owner, 2026-11-18) (M9). `sagemath` (SWN4REIN) is software. It has no pages, sections or equations, so no
locator applies. The owner accepts it without a locator wherever it is cited. `check.py` keeps counting each
occurrence as "no locator".

| Chapter | Location | Use |
|---|---|---|
| linear-algebra | line 1207, `sec-linear-maps-dual` | names the tool that runs `exm-sage-matrices` |
| real-analysis | line 2469, "Calculus in SageMath" | names the tool of the unit |
| differential-equations | line 736, `sec-odes` | symbolic solution of a linear first-order equation |
| differential-geometry | line 7991, `sec-metrics` | SageManifolds computations |
| group-theory | line 2922 | lists the groups of order at most eight |

### Counts after the decisions (`check.py`, 2026-11-18)

| Chapter | Works | Textbooks | No locator | Sections citing nothing |
|---|---|---|---|---|
| sets-relations-topology | 8 | 8 | 0 | 0 |
| linear-algebra | 8 | 6 | 1 (sagemath) | 0 |
| real-analysis | 9 | 8 | 1 (sagemath) | 0 |
| complex-analysis | 9 | 7 | 0 | 0 |
| differential-equations | 12 | 11 | 1 (sagemath) | 0 |
| fourier-analysis | 8 | 8 | 0 | 0 |
| hilbert-spaces-operators | 21 | 13 | 0 | 0 |
| probability | 8 | 8 | 0 | 0 |
| differential-geometry | 12 | 11 | 1 (sagemath) | 0 |
| group-theory | 8 | 7 | 1 (sagemath) | 0 |
| lie-groups-algebras | 11 | 11 | 0 | 0 |
| spinors-dirac-operator | 18 | 4 | 1 (Witten:1983ux, no PDF) | 0 |

No work count fell. Every work that lost a citation is still cited elsewhere in the same chapter. Real-analysis gained
`radozycki2020solvingII` and hilbert-spaces-operators gained `ivrii2016weyl`.

## Mechanical findings (first pass)


| Chapter | Works | Textbooks | Meets A10 | Citations without locator | Sections citing nothing |
|---|---|---|---|---|---|
| notation | 0 | 0 | exempt | 0 | 10 |
| sets-relations-topology | 5 | 5 | no | 0 | 0 |
| linear-algebra | 3 | 2 | no | 2 | 0 |
| real-analysis | 5 | 4 | no | 1 | 0 |
| complex-analysis | 2 | 2 | no | 0 | 0 |
| differential-equations | 10 | 9 | yes | 7 | 0 |
| fourier-analysis | 5 | 5 | no | 9 | 1 |
| hilbert-spaces-operators | 16 | 11 | yes | 15 | 1 |
| probability | 6 | 6 | no | 4 | 0 |
| differential-geometry | 12 | 11 | yes | 4 | 0 |
| group-theory | 4 | 3 | no | 2 | 0 |
| lie-groups-algebras | 11 | 11 | yes | 3 | 0 |
| homogeneous-spaces-bundles | 6 | 3 | no | 1 | 0 |
| spinors-dirac-operator | 18 | 4 | yes | 39 | 0 |
| glossary | 0 | 0 | exempt | 0 | 24 |

### notation

Works cited: none.

| Section | Works cited |
|---|---|
| Sets and logic (``) | **none** |
| Linear algebra (``) | **none** |
| Analysis (``) | **none** |
| Probability and statistics (``) | **none** |
| Geometry and spacetime (``) | **none** |
| Curvature and gravity (``) | **none** |
| Groups and algebras (``) | **none** |
| Fields and particles (``) | **none** |
| Units (``) | **none** |
| Conventions specific to this tutorial (``) | **none** |

### sets-relations-topology

Works cited: `cheung2024metric`, `chirivi2020selected`, `gasinski2014exercises`, `komjath2006problems`, `radozycki2020solving`.

| Section | Works cited |
|---|---|
| Sets and maps (`sec-sets`) | chirivi2020selected, komjath2006problems, radozycki2020solving |
| Relations, quotients and products (`sec-relations-products`) | komjath2006problems, radozycki2020solving |
| Topological spaces (`sec-topology`) | gasinski2014exercises |
| Compact and connected spaces (`sec-compact-connected`) | cheung2024metric, gasinski2014exercises, radozycki2020solving |
| Exercises (`sec-sets-topology-exercises`) | **none** |

### linear-algebra

Works cited: `axler2024linear`, `sagemath`, `scott2023problems`.

| Section | Works cited |
|---|---|
| Vector spaces (`sec-vector-spaces`) | axler2024linear |
| Linear maps and dual spaces (`sec-linear-maps-dual`) | axler2024linear, sagemath, scott2023problems |
| Bilinear forms (`sec-bilinear-forms`) | axler2024linear |
| Multilinear maps and tensor products (`sec-tensor-products`) | axler2024linear |
| Exercises (`sec-linear-algebra-exercises`) | **none** |

Citations without a locator: `sagemath` (line 1205), `axler2024linear` (line 2535).

### real-analysis

Works cited: `cheung2024metric`, `gasinski2014exercises`, `lee2013introduction`, `radozycki2020solving`, `sagemath`.

| Section | Works cited |
|---|---|
| Real numbers, sequences and limits (`sec-sequences-limits`) | radozycki2020solving |
| Series (`sec-series`) | radozycki2020solving |
| Continuity and differentiability (`sec-continuity-differentiability`) | cheung2024metric, radozycki2020solving |
| The Riemann integral (`sec-riemann-integral`) | radozycki2020solving, sagemath |
| Calculus on $\mathbb{R}^n$ (`sec-calculus`) | lee2013introduction |
| Multiple integrals and convergence of functions (`sec-multiple-integrals`) | cheung2024metric, gasinski2014exercises |
| Exercises (`sec-real-analysis-exercises`) | **none** |

Citations without a locator: `sagemath` (line 2461).

### complex-analysis

Works cited: `magnus2023essential`, `yu2022problems`.

| Section | Works cited |
|---|---|
| Complex numbers and functions (`sec-complex-numbers`) | yu2022problems |
| Holomorphic functions (`sec-holomorphic`) | yu2022problems |
| Contour integration (`sec-contour-integration`) | yu2022problems |
| Series and residues (`sec-residues`) | magnus2023essential, yu2022problems |
| Analytic continuation and special functions (`sec-analytic-continuation`) | yu2022problems |
| Exercises (`sec-complex-analysis-exercises`) | **none** |

### differential-equations

Works cited: `aliev2024mathematical`, `arrigo2023introduction`, `axler2024linear`, `borodzik2019problems`, `das2023quantum`, `foulaadvand2023computational`, `knauf2018mathematical`, `magnus2023essential`, `picard2020primer`, `sagemath`.

| Section | Works cited |
|---|---|
| Ordinary differential equations (`sec-odes`) | arrigo2023introduction, borodzik2019problems, knauf2018mathematical, magnus2023essential, sagemath |
| Linear systems and the matrix exponential (`sec-linear-systems`) | aliev2024mathematical, arrigo2023introduction, axler2024linear, das2023quantum, foulaadvand2023computational, knauf2018mathematical, magnus2023essential |
| Boundary value and Sturm-Liouville problems (`sec-sturm-liouville`) | das2023quantum, magnus2023essential |
| Partial differential equations (`sec-pdes`) | borodzik2019problems, foulaadvand2023computational, picard2020primer |
| Green's functions (`sec-greens-functions`) | aliev2024mathematical |
| Exercises (`sec-differential-equations-exercises`) | **none** |

Citations without a locator: `sagemath` (line 736), `foulaadvand2023computational` (line 2178), `foulaadvand2023computational` (line 2192), `das2023quantum` (line 3220), `foulaadvand2023computational` (line 5028), `foulaadvand2023computational` (line 5185), `foulaadvand2023computational` (line 5201).

### fourier-analysis

Works cited: `aliev2024mathematical`, `arrigo2023introduction`, `borodzik2019problems`, `izaac2018computational`, `maggiore2023electrodynamics`.

| Section | Works cited |
|---|---|
| Fourier series (`sec-fourier-series`) | arrigo2023introduction |
| The Fourier transform (`sec-fourier-transform`) | aliev2024mathematical, arrigo2023introduction, borodzik2019problems, izaac2018computational |
| Distributions (`sec-distributions`) | **none** |
| Harmonic analysis on the sphere and on compact groups (`sec-harmonic-analysis`) | aliev2024mathematical, maggiore2023electrodynamics |
| Exercises (`sec-fourier-analysis-exercises`) | **none** |

Citations without a locator: `izaac2018computational` (line 1869), `izaac2018computational` (line 1913), `izaac2018computational` (line 1993), `izaac2018computational` (line 2103), `maggiore2023electrodynamics` (line 3770), `maggiore2023electrodynamics` (line 3820), `maggiore2023electrodynamics` (line 3836), `maggiore2023electrodynamics` (line 3861), `maggiore2023electrodynamics` (line 3909).

### hilbert-spaces-operators

Works cited: `arcozzi2025`, `axler2024linear`, `borodzik2019problems`, `buchbinder2021introduction`, `cheung2024metric`, `das2023quantum`, `derezinski2022mathematics`, `gasinski2014exercises`, `izaac2018computational`, `landsman1998`, `picard2020primer`, `ramesh2020weak`, `scott2023problems`, `tornetta2022mathematical`, `waterstraat2016`, `zhou2024bulkedge`.

| Section | Works cited |
|---|---|
| Normed and Banach spaces (`sec-banach-spaces`) | arcozzi2025, cheung2024metric, das2023quantum, picard2020primer, waterstraat2016 |
| The four principles (`sec-four-principles`) | arcozzi2025, gasinski2014exercises, picard2020primer, ramesh2020weak, waterstraat2016 |
| Weak topologies and reflexivity (`sec-weak-topologies`) | arcozzi2025, borodzik2019problems, gasinski2014exercises, ramesh2020weak |
| Inner product and Hilbert spaces (`sec-hilbert-spaces`) | axler2024linear, derezinski2022mathematics |
| Bounded operators (`sec-bounded-operators`) | scott2023problems |
| Spectral theory (`sec-spectral-theory`) | scott2023problems |
| Compact and Fredholm operators (`sec-fredholm-operators`) | arcozzi2025, waterstraat2016, zhou2024bulkedge |
| Unbounded operators and the Laplacian (`sec-unbounded-operators`) | **none** |
| Sobolev spaces (`sec-sobolev-spaces`) | borodzik2019problems, waterstraat2016 |
| Traces, determinants and heat kernels (`sec-traces-heat-kernels`) | buchbinder2021introduction |
| Banach and C\*-algebras (`sec-banach-algebras`) | arcozzi2025, derezinski2022mathematics, izaac2018computational, landsman1998, tornetta2022mathematical |
| Exercises (`sec-hilbert-spaces-operators-exercises`) | **none** |

Citations without a locator: `arcozzi2025` (line 192), `waterstraat2016` (line 1591), `picard2020primer` (line 2209), `waterstraat2016` (line 2284), `arcozzi2025` (line 2285), `arcozzi2025` (line 2286), `ramesh2020weak` (line 2448), `arcozzi2025` (line 6278), `arcozzi2025` (line 6282), `arcozzi2025` (line 6382), `waterstraat2016` (line 6748), `landsman1998` (line 10105), `landsman1998` (line 10227), `landsman1998` (line 10680), `landsman1998` (line 10707).

### probability

Works cited: `baldi2023probability`, `bricmont2022statistical`, `capinski2001probability`, `cufaropetroni2020probability`, `foulaadvand2023computational`, `gasinski2014exercises`.

| Section | Works cited |
|---|---|
| Probability spaces (`sec-probability-spaces`) | baldi2023probability, bricmont2022statistical, capinski2001probability |
| Random variables and distributions (`sec-random-variables`) | baldi2023probability, bricmont2022statistical, capinski2001probability, cufaropetroni2020probability |
| Limit theorems (`sec-limit-theorems`) | baldi2023probability, bricmont2022statistical, foulaadvand2023computational |
| Statistics and estimation (`sec-statistics`) | gasinski2014exercises |
| Exercises (`sec-probability-exercises`) | **none** |

Citations without a locator: `bricmont2022statistical` (line 220), `bricmont2022statistical` (line 2021), `foulaadvand2023computational` (line 3249), `foulaadvand2023computational` (line 3546).

### differential-geometry

Works cited: `blennow2022relativity`, `boskoff2024journey`, `emam2021covariant`, `gadea2013analysis`, `godinho2014introduction`, `gray2019student`, `keskivakkuri2022mathematical`, `lee2013introduction`, `needham2021visual`, `rudolph2013differential`, `sagemath`, `torresdelcastillo2020differentiable`.

| Section | Works cited |
|---|---|
| Charts and manifolds (`sec-charts-manifolds`) | gadea2013analysis, godinho2014introduction, lee2013introduction, rudolph2013differential, torresdelcastillo2020differentiable |
| Vector fields, forms and tensors (`sec-vector-fields-forms-tensors`) | emam2021covariant, gadea2013analysis, godinho2014introduction, gray2019student, keskivakkuri2022mathematical, lee2013introduction, rudolph2013differential, torresdelcastillo2020differentiable |
| Metrics (`sec-metrics`) | boskoff2024journey, sagemath |
| Connections and curvature (`sec-connections-curvature`) | blennow2022relativity, boskoff2024journey, godinho2014introduction, gray2019student, needham2021visual |
| Flows and Killing vectors (`sec-flows-killing`) | torresdelcastillo2020differentiable |
| Exercises (`sec-differential-geometry-exercises`) | **none** |

Citations without a locator: `sagemath` (line 7979), `blennow2022relativity` (line 14178), `boskoff2024journey` (line 14286), `blennow2022relativity` (line 14357).

### group-theory

Works cited: `chirivi2020selected`, `keskivakkuri2022mathematical`, `mukunda2022continuous`, `sagemath`.

| Section | Works cited |
|---|---|
| Groups (`sec-groups`) | mukunda2022continuous |
| Cosets and quotient groups (`sec-cosets-quotients`) | chirivi2020selected |
| Homomorphisms (`sec-homomorphisms`) | chirivi2020selected, keskivakkuri2022mathematical, sagemath |
| Representations and Schur's lemma (`sec-representations-schur`) | keskivakkuri2022mathematical, mukunda2022continuous |
| Exercises (`sec-groups-exercises`) | **none** |

Citations without a locator: `sagemath` (line 2916), `keskivakkuri2022mathematical` (line 2917).

### lie-groups-algebras

Works cited: `boudreau2018applied`, `gadea2013analysis`, `keskivakkuri2022mathematical`, `lee2013introduction`, `lee2018global`, `mukunda2022continuous`, `pal2015introductory`, `rudolph2013differential`, `scott2023problems`, `sinha2023rigid`, `torresdelcastillo2020differentiable`.

| Section | Works cited |
|---|---|
| Lie groups and Lie algebras (`sec-lie-groups-algebras`) | boudreau2018applied, gadea2013analysis, lee2013introduction, lee2018global, mukunda2022continuous, pal2015introductory, rudolph2013differential, scott2023problems, sinha2023rigid, torresdelcastillo2020differentiable |
| Representations of Lie algebras (`sec-lie-representations`) | boudreau2018applied, keskivakkuri2022mathematical, mukunda2022continuous |
| Exercises (`sec-lie-groups-algebras-exercises`) | **none** |

Citations without a locator: `sinha2023rigid` (line 3819), `sinha2023rigid` (line 3902), `boudreau2018applied` (line 4714).

### homogeneous-spaces-bundles

Works cited: `chatzistavrakidis2007consistency`, `chatzistavrakidis2009nk`, `gadea2013analysis`, `lee2013introduction`, `manolakos2016`, `rudolph2013differential`.

| Section | Works cited |
|---|---|
| Coset spaces (`sec-coset-geometry`) | chatzistavrakidis2007consistency, chatzistavrakidis2009nk, gadea2013analysis, lee2013introduction, manolakos2016, rudolph2013differential |
| Fibre bundles (`sec-fibre-bundles`) | gadea2013analysis, lee2013introduction, rudolph2013differential |
| Exercises (`sec-homogeneous-spaces-bundles-exercises`) | **none** |

Citations without a locator: `chatzistavrakidis2009nk` (line 271).

### spinors-dirac-operator

Works cited: `Witten:1983ux`, `aspinwall1996`, `bilal2008`, `braun2009`, `camporesi1995`, `chatzistavrakidis2009nk`, `chatzistavrakidis2010orb`, `derezinski2022mathematics`, `dolan2003`, `dolan2009`, `greene1997`, `hull2005`, `krasnov2020formulations`, `manousselis2000`, `mukunda2022continuous`, `trautman1995`, `vanproeyen1999`, `zhelnorovich2019spinors`.

| Section | Works cited |
|---|---|
| Clifford algebras (`sec-clifford-algebras`) | derezinski2022mathematics, trautman1995, vanproeyen1999, zhelnorovich2019spinors |
| Spin groups and spinor representations (`sec-spin-groups`) | aspinwall1996, krasnov2020formulations, mukunda2022continuous, trautman1995, vanproeyen1999, zhelnorovich2019spinors |
| Spin structures and the spin connection (`sec-spin-structures`) | aspinwall1996, dolan2003, greene1997, trautman1995, zhelnorovich2019spinors |
| The Dirac operator on flat spaces and spheres (`sec-dirac-spheres`) | camporesi1995, dolan2003, hull2005, trautman1995 |
| Dirac operators on compact spaces (`sec-dirac-compact-spaces`) | aspinwall1996, camporesi1995, chatzistavrakidis2009nk, chatzistavrakidis2010orb, dolan2003, greene1997, trautman1995, zhelnorovich2019spinors |
| Twisted Dirac operators and index theorems (`sec-dirac-index`) | aspinwall1996, bilal2008, braun2009, chatzistavrakidis2009nk, dolan2003, greene1997 |
| The chirality problem (`sec-chirality-problem`) | Witten:1983ux, aspinwall1996, bilal2008, dolan2003, dolan2009, manousselis2000 |
| Exercises (`sec-spinors-dirac-operator-exercises`) | aspinwall1996, chatzistavrakidis2009nk |

Citations without a locator: `zhelnorovich2019spinors` (line 32), `vanproeyen1999` (line 33), `trautman1995` (line 33), `camporesi1995` (line 34), `dolan2003` (line 34), `bilal2008` (line 35), `aspinwall1996` (line 35), `vanproeyen1999` (line 845), `zhelnorovich2019spinors` (line 1139), `vanproeyen1999` (line 1165), `vanproeyen1999` (line 1219), `vanproeyen1999` (line 1253), `zhelnorovich2019spinors` (line 1611), `vanproeyen1999` (line 1955), `trautman1995` (line 2502), `dolan2003` (line 2558), `zhelnorovich2019spinors` (line 2676), `zhelnorovich2019spinors` (line 2722), `dolan2003` (line 3007), `dolan2003` (line 3033), `dolan2003` (line 3045), `dolan2003` (line 3228), `trautman1995` (line 3782), `dolan2003` (line 4224), `zhelnorovich2019spinors` (line 4264), `chatzistavrakidis2009nk` (line 5492), `dolan2003` (line 5535), `dolan2003` (line 5563), `dolan2003` (line 5879), `dolan2003` (line 5892), `bilal2008` (line 6174), `bilal2008` (line 6189), `dolan2003` (line 6389), `dolan2003` (line 6522), `Witten:1983ux` (line 6535), `bilal2008` (line 6552), `dolan2009` (line 6676), `dolan2003` (line 6677), `dolan2003` (line 6688).

### glossary

Works cited: none.

| Section | Works cited |
|---|---|
| A (``) | **none** |
| B (``) | **none** |
| C (``) | **none** |
| D (``) | **none** |
| E (``) | **none** |
| F (``) | **none** |
| G (``) | **none** |
| H (``) | **none** |
| I (``) | **none** |
| J (``) | **none** |
| K (``) | **none** |
| L (``) | **none** |
| M (``) | **none** |
| N (``) | **none** |
| O (``) | **none** |
| P (``) | **none** |
| Q (``) | **none** |
| R (``) | **none** |
| S (``) | **none** |
| T (``) | **none** |
| U (``) | **none** |
| V (``) | **none** |
| W (``) | **none** |
| Z (``) | **none** |

## Chapter audits

Per chapter: one row per "##" section — works cited with locators, pages verified, verdict (supported / unsupported / disagreement / not machine-readable), gap, resolution.

### sets-relations-topology

Task 5.1. PDFs read with `pdftotext`. Page offsets (PDF − printed): Chirivì 13, Komjáth 10, Radożycki 12, Cheung 18,
Gasiński 10-11, Lee 15, Keski-Vakkuri 11, Starkovich 20. No result changed by the 2026-11-18 notation conversion
occurs in this chapter. There are no multipole formulas, no D = ∂ + iqa gluing and no Laplacian formula. The Laplacian
is mentioned only qualitatively, as having a discrete spectrum on a compact space, which does not depend on its sign.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Sets and maps (`sec-sets`) | chirivi2020selected [Theory Ch. 1-2]; komjath2006problems [Ch. 1, Ch. 3, Ch. 6]; radozycki2020solving [Ch. 1-2]; keskivakkuri2022mathematical [Sec. 2.3]; starkovichStructuresMathematicalPhysics2021 [Secs. 1.1, 1.3] | Chirivì pp. 1-14 (sets, maps, Props. 1.4-1.7; counting Rems. 2.1-2.8); Komjáth pp. 3-7, 13-14, 23-26; Radożycki pp. 1-2, 31-32; Keski-Vakkuri pp. 9-10; Starkovich pp. 1-16 | Chirivì Theory Ch. 1: supported. Komjáth Ch. 1: supported (set operations). Komjáth Ch. 6: **weak**, since ordered sets and order types are not used in the section. The only contact is Problem 2 (open intervals are order-similar), which bears on the bijections of the line. Radożycki Ch. 1: supported for sets only. Maps are in its Ch. 2. | Maps, injectivity and the counting of maps (`prp-count-maps`) had no located source. Komjáth Ch. 6 is barely relevant. | Added locators Chirivì Theory Ch. 2 (counting maps, pp. 12-14), Komjáth Ch. 3 (bijections, Problems 3 and 10) and Radożycki Ch. 2. Added Keski-Vakkuri Sec. 2.3 and Starkovich Secs. 1.1, 1.3. **Owner:** keep or drop Komjáth "Ch. 6". fixed (owner, 2026-11-18) (M9): Komjáth Ch. 6 dropped; the line now reads komjath2006problems [Ch. 1, Ch. 3]. |
| Relations, quotients and products (`sec-relations-products`) | komjath2006problems [Ch. 2-3]; radozycki2020solving [Ch. 1]; chirivi2020selected [Theory Sec. 1.3, Theory Secs. 3.2-3.3]; keskivakkuri2022mathematical [Sec. 2.3]; starkovichStructuresMathematicalPhysics2021 [Secs. 1.2, 1.4-1.5] | Komjáth pp. 9-14; Radożycki pp. 2, 21-24; Chirivì pp. 5-6, 17-21; Keski-Vakkuri pp. 9-10; Starkovich pp. 5-9, 16-19 | Komjáth Ch. 2-3: **partly supported**. These chapters cover countability and equinumerosity ("equivalence" of sets), which touch only products (Ch. 2 Problem 2, Ch. 3 Problem 12). They do not cover equivalence relations or quotients. Radożycki Ch. 1: supported (Cartesian product p. 2; Sec. 1.4 equivalence relations and classes). | Equivalence relations, quotient sets, descent of maps and Z/nZ had only Radożycki. | Added Chirivì Theory Sec. 1.3 (Thm. 1.8, quotient map, maps passing to the quotient) and Secs. 3.2-3.3 (Z/nZ and its operations). Added Keski-Vakkuri Sec. 2.3 (Thm. 2.1, X/~) and Starkovich Secs. 1.2, 1.4-1.5. fixed (owner, 2026-11-18) (M5): Komjáth narrowed to "[Ch. 2, Problem 2; Ch. 3, Problem 12] for products" (products of countable sets; C^(A×B) ~ C^A × C^B). |
| Topological spaces (`sec-topology`) | gasinski2014exercises [Ch. 1, Sec. 2.1]; cheung2024metric [Secs. 1.2, 2.3]; lee2013introduction [App. A, pp. 596-607]; keskivakkuri2022mathematical [Sec. 4.1.1]; starkovichStructuresMathematicalPhysics2021 [Secs. 6.2, 6.7] | Gasiński pp. 1-2, 193-214; Cheung pp. 36-37, 172-173; Lee pp. 596-607; Keski-Vakkuri pp. 99-102; Starkovich pp. 158-162, 177-178 | Gasiński Ch. 1: supported only for open sets of R^n (metric spaces). The abstract topology, subspace, continuity, homeomorphism and quotient topology are in its Sec. 2.1 (Defs. 2.14, 2.37, 2.76). | The section's abstract half (axioms, subspace topology, homeomorphism, quotient topology) had no located source. | Added locator Gasiński Sec. 2.1. Added Cheung Secs. 1.2, 2.3; Lee App. A (topology axioms, continuity, homeomorphism, subspaces, quotients, Thm. A.30); Keski-Vakkuri Sec. 4.1.1 (axioms, trivial and discrete topologies, finer and coarser, subspace topology, continuity, homeomorphism); and Starkovich Secs. 6.2, 6.7 (axioms checked on a four-point set; quotient topology Def. 6.16; circle from [0,1], Ex. 6.9; torus). |
| Compact and connected spaces (`sec-compact-connected`) | cheung2024metric [Ch. 1, Ch. 3]; gasinski2014exercises [Ch. 2]; radozycki2020solving [Ch. 6]; lee2013introduction [App. A, pp. 599-611]; keskivakkuri2022mathematical [Sec. 4.1.1]; starkovichStructuresMathematicalPhysics2021 [Secs. 6.4-6.5] | Cheung pp. 85-108, 233-236; Gasiński pp. 194-195, 213-219; Radożycki pp. 131-132; Lee pp. 599, 607-611; Keski-Vakkuri pp. 102-103; Starkovich pp. 163-172 | All supported. Cheung covers compactness (Secs. 1.3-1.4) and connectedness (Ch. 3). Gasiński covers Hausdorff (Def. 2.4, Rem. 2.5), compactness (Sec. 2.1.7) and connectedness (Sec. 2.1.8). Radożycki gives the definitions of compact and connected and Heine-Borel. | None. The Hausdorff spaces were thin, being covered only in Gasiński. | Added Lee (Hausdorff p. 599, Props. A.39 and A.45, Lemma A.52), Keski-Vakkuri (connected, Hausdorff, open covers) and Starkovich (Defs. 6.9-6.11, T2 spaces). |
| Exercises (`sec-sets-topology-exercises`) | gasinski2014exercises [Def. 2.76, Prop. 2.83, Thm. 2.84]; lee2013introduction [Thm. A.30, Prop. A.45, Lemma A.52] | Gasiński pp. 213-214; Lee pp. 605, 608-610 | Supported. A quotient of a compact space is compact: Gasiński Prop. 2.83(e), Lee Prop. A.45(i). A continuous bijection from a compact space to a Hausdorff space is a homeomorphism: Gasiński Thm. 2.84 (all spaces Hausdorff by Rem. 2.6), Lee Lemma A.52(d). Descent and continuity: Lee Thm. A.30, Gasiński Def. 2.76. | The section cited nothing. | Added the line "For more on this topic, see …" under the heading, before the exercise callout. |

Adapted blocks: none was found to be taken from a source. The examples are built on the circle, the sphere and SO(3).
The 29 and 355 topologies on three and four points are standard counts that the chapter checks with Sage. This was
spot-checked, not traced block by block through all 3,400 lines.

Source erratum (not a disagreement with the text): in Gasiński's Def. 2.4(b), p. 194, the extracted text calls T1 "Hausdorff or
separated". Rem. 2.5 and the rest of the book use T2 as the Hausdorff axiom. The chapter's Hausdorff definition is T2,
consistent with Lee, Keski-Vakkuri and Starkovich.

Counts: before, 5 works and 5 textbooks. After, 8 works and 8 textbooks. `check.py` reports 7, because
`starkovichStructuresMathematicalPhysics2021` is pending in the Bib additions. A10 is met.

Bib additions:

```bibtex
@book{starkovichStructuresMathematicalPhysics2021,
  author = {Steven P. Starkovich},
  title = {The Structures of Mathematical Physics: An Introduction},
  publisher = {Springer},
  address = {Cham},
  year = {2021},
  doi = {10.1007/978-3-030-73449-7},
  isbn = {978-3-030-73449-7},
  keywords = {textbook},
  zotero = {HARXXIFM},
  zoteropdf = {LBISCPAB}
}
```

Proposed new references: none. The library covered every section.

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|
| — | — | — | — | — |

Disagreements: none.

| Location | Text | Source (after conversion) | Page |
|---|---|---|---|
| — | — | — | — |

Reading-note additions. Drafts are in `scratchpad/notes5/sets-relations-topology__<ITEMKEY>.html`. Only Starkovich
needs a new full note; the others need an h2 section appended.

- `chirivi2020selected` (4P28AB3M), `fundamentals-of-mathematics-for-physicists/sets-relations-topology`:
  - Theory Secs. 1.1-1.2, pp. 1-5;
  - Theory Ch. 2, pp. 12-14 (Rems. 2.2-2.7);
  - Theory Sec. 1.3, pp. 5-6 (Thm. 1.8);
  - Theory Secs. 3.2-3.3, pp. 17-21.
- `komjath2006problems` (WIA2M77M):
  - Ch. 1, pp. 3-7;
  - Ch. 2, pp. 9-12;
  - Ch. 3, pp. 13-14 (Problems 3, 10, 12);
  - Ch. 6, pp. 23-31 (Problem 2; marginal).
- `radozycki2020solving` (8ZRF3L9K):
  - Ch. 1, pp. 1-30 (Sec. 1.4, equivalence relations);
  - Ch. 2, pp. 31-48;
  - Ch. 6, pp. 131-141.
- `cheung2024metric` (QKHPZ27J):
  - Sec. 1.2, pp. 36-50;
  - Secs. 1.3-1.4, pp. 85-115;
  - Sec. 2.3, pp. 172-193;
  - Ch. 3, pp. 233-281.
- `gasinski2014exercises` (MM7HAG47):
  - Ch. 1, p. 1 onwards;
  - Sec. 2.1, pp. 193-219 (Defs. 2.4, 2.14, 2.37, 2.76, 2.78; Prop. 2.83; Thm. 2.84).
- `lee2013introduction` (5TY4BDVG), App. A:
  - pp. 596-599: topological spaces;
  - p. 599: Hausdorff spaces;
  - pp. 601-607: subspaces and quotients (Thm. A.30, p. 605);
  - pp. 607-611: connectedness and compactness (Props. A.39 and A.45; Lemma A.52, p. 610).
- `keskivakkuri2022mathematical` (NGJFKLIL):
  - Sec. 2.3, pp. 9-10;
  - Sec. 4.1.1, pp. 99-103.
- `starkovichStructuresMathematicalPhysics2021` (HARXXIFM), **new note**:
  - Identity: The Structures of Mathematical Physics: An Introduction; Steven P. Starkovich; Springer, Cham, 2021;
    DOI 10.1007/978-3-030-73449-7; PDF LBISCPAB, 274 pages; printed = PDF − 20.
  - Structure, chapter starts on printed pages: Ch. 1 p. 1; Ch. 2 p. 25; Ch. 3 p. 53; Ch. 4 p. 75; Ch. 5 p. 117;
    Ch. 6 p. 155; Ch. 7 p. 183.
  - Used here:
    - Secs. 1.1, 1.3, pp. 1-16;
    - Secs. 1.2, 1.4-1.5, pp. 5-9, 16-19;
    - Secs. 6.2, 6.7, pp. 158-162, 177-178;
    - Secs. 6.4-6.5, pp. 163-175.

### linear-algebra

Task 5.2. PDFs read with `pdftotext`. Page offsets (PDF − printed): Axler 20, Scott 12, Lee 15, Gourgoulhon 31 (Ch. 1)
and 25 (Ch. 14), Knauf 13, Keski-Vakkuri 11, Carroll 7. No result changed by the 2026-11-18 notation conversion occurs
in this chapter. Sign conventions checked after conversion: Gourgoulhon and Carroll use the signature (−,+,+,+). Under the
site's (+,−,−,−), their timelike/null/spacelike classification agrees with the chapter's (timelike η(v,v) > 0). Carroll's
F_{01} = −E_1 and F_{12} = B_3 (eq. 1.58) match `exr-la-field-strength`. The invariant F_{μν}F^{μν} = 2(B² − E²) does not
depend on the signature. Tensor type convention (r, s) = (contravariant, covariant) agrees with Lee p. 312, Gourgoulhon
p. 474 and Carroll p. 13.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Vector spaces (`sec-vector-spaces`) | axler2024linear [Ch. 1-2]; lee2013introduction [App. B, pp. 617-622]; scott2023problems [Problem 2.3] | Axler pp. 12-51 (Def. 1.20 p. 12, subspaces p. 18, span 2.4 p. 29, independence 2.15 p. 32, basis 2.26 p. 39, dimension 2.35 p. 44); Lee pp. 617-622; Scott p. 9 | Axler Ch. 1-2: supported. Lee App. B: supported (span, dependence, basis, dimension Lemma B.2, Prop. B.3, direct sums). Scott Problem 2.3: supported | One covering work. `exr-vs-subspace-check` is adapted from Scott Problem 2.3 (a homogeneous plane, an inhomogeneous plane and a union-type set; Scott uses x + y − 2z = 0, = 3 and xyz = 0) and had no citation. | Added Lee App. B to the "For more" line. Added "The first exercise is adapted from @scott2023problems [Problem 2.3]" to the exercises intro. |
| Linear maps and dual spaces (`sec-linear-maps-dual`) | axler2024linear [Ch. 3]; scott2023problems [Ch. 2]; sagemath; lee2013introduction [Ch. 11, pp. 272-275]; keskivakkuri2022mathematical [Sec. 3.6, pp. 73-75]; carroll1997 [Ch. 1, pp. 10-12] | Axler pp. 52-118 (3.1, 3.11, 3.21 rank-nullity p. 62, 3.31, 3.84, Sec. 3F 3.108-3.133, double dual Ex. 3F.32 p. 118); Scott pp. 9-30 (Problems 2.27, 2.30, 2.33, 2.45); Lee pp. 272-275; Keski-Vakkuri pp. 73-75; Carroll pp. 10-12 | Axler Ch. 3: supported. Scott Ch. 2: supported (linear maps and kernels, annihilator via the dual basis, rank-nullity via bases of kernel and range). Lee Ch. 11: supported (Prop. 11.1 dual basis and dim V* = dim V; Prop. 11.8 double dual). Keski-Vakkuri: supported (3.83, 3.92). Carroll: supported (dual basis, double dual (1.36)). `sagemath` (line 1207): the citation names the tool that runs the example. The work is software with no pages, so no locator applies (`entries.md`). | 1 citation without locator (`sagemath`); dual spaces were covered only by Axler Sec. 3F. | Added Lee, Keski-Vakkuri and Carroll on a second "For more" line. `sagemath` left without a locator, as not applicable; `check.py` keeps counting it. |
| Bilinear forms (`sec-bilinear-forms`) | axler2024linear [Sec. 9A]; knauf2018mathematical [Def. 6.12 and Thm. 6.13, pp. 104-105]; gourgoulhon2013special [Secs. 1.3 and 1.6.2, pp. 6-12, 23-24] | Axler pp. 333-345 (9.1, 9.4, 9.5, 9.7 p. 336, 9.9, 9.12-9.17, polarisation 9.21 p. 342); Knauf pp. 104-105; Gourgoulhon pp. 6-12, 22-24 | Axler 9A: supported for bilinear forms, components B_ij, change of basis, symmetric forms, the sym + alt decomposition (`exr-symmetric-decompose`) and the polarisation identity in the chapter's form 2B(v,w) = B(v+w,v+w) − B(v,v) − B(w,w) (9.21). Axler 9A does **not** cover non-degeneracy or signature. Knauf: supported (non-degenerate via E → E*, as in `exr-nondegenerate-iso`; Sylvester's law of inertia). Gourgoulhon: supported (non-degenerate symmetric form, signature, Sylvester p. 8, vector classification p. 11, index lowering by metric duality pp. 23-24). | Locator typo "Secs. 9A". The units on non-degenerate forms, signature and the Minkowski form had no covering source. | Locator corrected to "Sec. 9A". Added Knauf and Gourgoulhon. |
| Multilinear maps and tensor products (`sec-tensor-products`) | axler2024linear [Secs. 9B and 9D]; lee2013introduction [Ch. 12, pp. 305-313]; gourgoulhon2013special [Secs. 14.2-14.3, pp. 473-481]; keskivakkuri2022mathematical [Sec. 3.6, pp. 79-87]; carroll1997 [Ch. 1, pp. 13-18] | Axler pp. 346-353 (9.25, 9.27, determinant as an alternating form 9.45), pp. 370-380 (9.71 V⊗W = bilinear functionals on V′×W′, 9.72, 9.74, 9.76 v⊗w as an m×n array, 9.85-9.91); Lee pp. 305-313; Gourgoulhon pp. 473-481; Keski-Vakkuri pp. 79-87; Carroll pp. 13-18 | Axler 9B/9D: supported. `def-tensor-product-space` is Axler's definition 9.71, and the dimension and basis are 9.72 and 9.74. Lee: supported (Props. 12.4, 12.8; mixed tensors T^(k,l) p. 312; Cor. 12.12). Gourgoulhon: supported (type (k,l), (1,1) = endomorphisms p. 475, components p. 476, change of basis (14.18)-(14.19) p. 477, the same rule as `def-tensor-components`, contraction (14.31) p. 480). Keski-Vakkuri: supported (contraction p. 81; a non-elementary tensor of C²⊗C² pp. 83-84). Carroll: supported (contraction (1.59), raising and lowering (1.61), symmetric and antisymmetric tensors). | Citation without locator; only one work. | Locator added to Axler. Added Lee, Gourgoulhon, Keski-Vakkuri and Carroll. |
| Exercises (`sec-linear-algebra-exercises`) | axler2024linear [Sec. 9A, 9.7, p. 336]; gourgoulhon2013special [Secs. 14.2.2-14.3.3, pp. 474-478]; carroll1997 [Ch. 1, eqs. 1.58 and 1.61, p. 17] | as above | Supported. Gram matrix under a change of basis = Axler 9.7. A linear map as a (1,1) tensor and its components in a new basis = Gourgoulhon pp. 475, 477-478. Field strength components and raising both indices = Carroll (1.58), (1.61). | **Section cited nothing.** The three exercises are original combinations of the chapter's units, not adapted. | Added a "For more on these topics" sentence to the exercises intro. |

**Counts.** Before: 3 works, 2 textbooks (`axler2024linear`, `scott2023problems`; `sagemath` is a tool). After: 8 works,
6 textbooks. Added `lee2013introduction`, `gourgoulhon2013special`, `knauf2018mathematical` and
`keskivakkuri2022mathematical`, all textbooks, and `carroll1997` (arXiv lecture notes). All five are already in the bib.
`check.py`: works 8, textbooks 6, 1 citation without locator (`sagemath`, not applicable), 0 sections citing nothing.
A10 is met.

**Citations verified.** 6 existing (work, locator) pairs: 5 supported (Axler Ch. 1-2, Ch. 3, Sec. 9A, the tensor-section
citation once located, and Scott Ch. 2). `sagemath` is a software citation with no locator. Axler "Secs. 9A" is
supported only in part: it does not cover non-degeneracy or signature, and the added Knauf and Gourgoulhon cover these.
None was unsupported or not machine-readable. Added: 13 new (work, locator) citations, all read and supported.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. The library covers every section.

#### Disagreements

None. The statements checked after conversion are the vector classification, the field-strength components and the
tensor component transformation; all agree.

#### Reading-note additions

Drafts are in `scratchpad/notes5/linear-algebra__<ITEMKEY>.html`. Every work except `sagemath` already has a reading
note, so its draft is the h2 section only. `sagemath` gets a full minimal note: software, no PDF.

- `axler2024linear` (YVGPNNLV): Ch. 1-2 pp. 12-51; Ch. 3 pp. 52-118 (Sec. 3F pp. 105-118); Sec. 9A pp. 333-345 (9.7 p. 336, 9.21 p. 342); Secs. 9B pp. 346-353 and 9D pp. 370-380.
- `scott2023problems` (AU8YU6PB): Ch. 2, Problem 2.3 p. 9 (source of `exr-vs-subspace-check`), Problems 2.27-2.33 and 2.45, pp. 18-25.
- `lee2013introduction` (5TY4BDVG): App. B pp. 617-622; Ch. 11 pp. 272-275; Ch. 12 pp. 305-313.
- `gourgoulhon2013special` (27UXIXZD): Sec. 1.3 pp. 6-12; Sec. 1.6 pp. 22-24; Secs. 14.2-14.3 pp. 473-481.
- `knauf2018mathematical` (BGRDQPJ8): Def. 6.12 and Thm. 6.13, pp. 104-105.
- `keskivakkuri2022mathematical` (NGJFKLIL): Sec. 3.6 pp. 73-75 and 79-87.
- `carroll1997` (8XG4E67X): Ch. 1 pp. 10-18, eqs. 1.55-1.61.
- `sagemath` (SWN4REIN): `exm-sage-matrices`; no pages.

### real-analysis

Task 5.3. PDFs read with `pdftotext` (no MCP reads). Page offsets (PDF − printed) are not constant in most of these books:
Radożycki 12 (Ch. 1), 9 (Ch. 5), 7 (Chs. 11-15); Cheung 18; Gasiński 11; Lee 15 (App. C); Karpfinger 22 (Ch. 3), 14
(Chs. 20-32), about 1 (Ch. 47), about −4 (Chs. 58-59); Ventre 15 (Ch. 6), 6 (Chs. 18-20), 3 (Chs. 21-22). Miklavcic is a
reflowed e-book with no printed page numbers and formulas as images, so it is cited by section and verified from the prose.
None of the results changed by the 2026-11-18 notation conversion occurs in this chapter, and nothing here depends on a sign
or unit convention. No statement, example or exercise was found to be adapted from a specific source: the material is
standard and the "running examples" are the chapter's own. The Zotero PDF of `radozycki2020solving` bundles Parts I-III of the
series (1150 pages; Part II starts at PDF 379), but the bib entry and the Zotero item are Part I only; Part I has no
Riemann integral (its Ch. 14 is indefinite integrals). For the owner: Part II (Definite, Improper and Multidimensional
Integrals) would be a separate item. fixed (owner, 2026-11-18): Part II is `radozycki2020solvingII` (XIP4IK24, PDF JRCCIAUH, already in the bib), now cited in `sec-riemann-integral`.

**Textbooks chosen (A4).** Library textbooks not yet in the bib, all in Zotero Textbooks and read at the cited pages:
`karpfingerCalculusLinearAlgebra2022` (also cited by complex-analysis), `ventreCalculusLinearAlgebra2023`,
`miklavcicIllustrativeGuideMultivariable2020`. Semantic search (three phrasings: real-analysis textbook topics;
differentiation under the integral, Gaussian, Stirling, Wallis; Jacobian, change of variables, inverse function theorem)
returned these plus `100+1ProblemsAdvanced2022` (D8HRKS9F: no authors in Zotero, key starts with a digit) and Riley et al.
(9KCJXN49, whose PDF is the Student Solutions Manual), both passed over.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Real numbers, sequences and limits (`sec-sequences-limits`) | `radozycki2020solving` [Ch. 3-5], [Sec. 1.3, pp. 18-21]; `karpfingerCalculusLinearAlgebra2022` [Sec. 3.6, pp. 25-26], [Chs. 20-21, pp. 201-215], [Sec. 20.2, p. 206]; `ventreCalculusLinearAlgebra2023` [Sec. 6.7, pp. 95-96]; `cheung2024metric` [Sec. 2.2, pp. 145-146] | Radożycki pp. 18-21, 63-129 (all problem statements of Chs. 3-5; Sec. 5.2 p. 102, Sec. 5.3 pp. 113-118); Karpfinger pp. 25-26, 204-215; Ventre pp. 95-96; Cheung pp. 145-146 | Radożycki [Ch. 3-5]: **supported in part**: Ch. 5 covers limits, the ε-N definition (5.2.2), the squeeze theorem and monotone bounded recursive sequences; Ch. 3 is metrics and Ch. 4 induction (only Bernoulli's inequality and the binomial formula bear on the section); Ch. 5's "Cauchy's test" is the root test, not Cauchy sequences. All added citations supported (supremum, completeness, ε-N, monotonicity and Cauchy criteria; convergent ⇒ Cauchy, Cheung Thm. 2.2.2) | suprema and Cauchy sequences had no covering source | Radożycki Sec. 1.3, Karpfinger, Ventre added at the section intro; Cheung and Karpfinger at the Cauchy sequences unit. "Ch. 3-5" left for the owner (more precise: Sec. 1.3 and Ch. 5). fixed (owner, 2026-11-18) (M5): now [Ch. 5]. |
| Series (`sec-series`) | `radozycki2020solving` [Ch. 13 and 15]; `karpfingerCalculusLinearAlgebra2022` [Ch. 22, pp. 217-225; Ch. 24, pp. 241-252] | Radożycki pp. 271-363 (TOC, harmonic, Leibniz, d'Alembert, comparison, power series, radius pp. 343, 358-363); Karpfinger pp. 217-225, 241-249 | supported (series, absolute convergence, geometric/harmonic/alternating harmonic, comparison/ratio/root/Leibniz tests, rearrangement of absolutely convergent series p. 224, radius of convergence and endpoints, exp series) | none | Karpfinger added. |
| Continuity and differentiability (`sec-continuity-differentiability`) | `cheung2024metric` [Ch. 2, Ch. 4]; `radozycki2020solving` [Ch. 7-8, Ch. 9-12]; `karpfingerCalculusLinearAlgebra2022` [Chs. 25-28, pp. 255-308]; `ventreCalculusLinearAlgebra2023` [Chs. 18-21, pp. 291-383] | Cheung pp. 129-232 (Sec. 2.3, Thm. 2.3.15 and IVT remark p. 185), pp. 295-348; Radożycki TOC pp. 143-269; Karpfinger pp. 255-308 (theorems on continuous functions p. 263, chain rule and inverse p. 273, MVT p. 276, Taylor remainder pp. 302-306); Ventre pp. 291-383 (Def. 19.3 p. 322, Bolzano Thm. 19.6 p. 324, Lagrange Thm. 21.3 p. 361, Taylor pp. 374-376) | Cheung Ch. 2 and Radożycki: supported. **Cheung Ch. 4: supported only in part**: it is uniform continuity and Banach's fixed point theorem, neither treated in the section (it only applies the MVT in examples, pp. 301-302). Added: supported | none (Cheung Ch. 4 locator imprecise) | Karpfinger and Ventre added. Cheung "Ch. 4" left for the owner (drop, or keep for uniform continuity if the section adds it). fixed (owner, 2026-11-18) (M5): Cheung Ch. 4 dropped; the line now reads cheung2024metric [Ch. 2]. |
| The Riemann integral (`sec-riemann-integral`) | `radozycki2020solving` [Ch. 14]; `sagemath`; `karpfingerCalculusLinearAlgebra2022` [Ch. 30, pp. 321-333; Ch. 32, pp. 347-352]; `ventreCalculusLinearAlgebra2023` [Ch. 22, pp. 389-421] | Radożycki pp. 299-339 (TOC, Sec. 14.2 statements); Karpfinger pp. 321-333, 347-352; Ventre pp. 389-421 | **Radożycki Ch. 14: supported in part**: it covers antiderivatives, integration by parts and reduction formulas only; Riemann sums, FTC and improper integrals are not in Part I. `sagemath` (line 2461): software, no locator applies. Added: supported (upper/lower sums and integrability of continuous and monotone functions, MVT for integrals, FTC, no elementary antiderivative of e^{-x²} (Karpfinger p. 331), improper integrals and comparison) | the integral as a limit of sums, the FTC and improper integrals had no covering source | Karpfinger and Ventre added at the section intro. fixed (owner, 2026-11-18) (M5): the Radożycki line now reads "For antiderivatives and indefinite integrals, see radozycki2020solving [Ch. 14]". Added `radozycki2020solvingII` (Part II, printed = PDF − 10, read): section line [Ch. 1, pp. 1-2; Ch. 2, pp. 53-61]; "The integral as a limit of sums" [Sec. 1.1, Problem 1, pp. 2-6] (lower and upper sums, x² on [0, 1]); "The fundamental theorem" [Ch. 1, eqs. (1.0.1)-(1.0.5), pp. 1-2]; "Improper integrals" [Ch. 2, eqs. (2.0.1)-(2.0.4), p. 53], [Sec. 2.1, Problem 1, pp. 54-56, and Ch. 2, p. 54] (p-integrals, integral test), [Sec. 2.2, Problem 1, pp. 60-61] (limit comparison test). All supported. Part II has no Gaussian integral. |
| Calculus on $\mathbb{R}^n$ (`sec-calculus`) | `lee2013introduction` [Appendix C], [App. C, pp. 642-648, 657-662]; `karpfingerCalculusLinearAlgebra2022` [Ch. 47, pp. 527-538; Ch. 51, pp. 579-583; Sec. 53.2, pp. 605-606]; `miklavcicIllustrativeGuideMultivariable2020` [Secs. 2.3-2.8] | Lee pp. 642-662 (C.3, C.6, C.8, C.11, C.34, C.37-C.38); Karpfinger pp. 529-537, 579-583, 605-606; Miklavcic PDF 75-150 | supported (partial derivatives, Jacobian, chain rule, mixed partials, inverse function theorem, polar and spherical Jacobians) | locator coarse | page locator for Lee, Karpfinger and Miklavcic added. |
| Multiple integrals and convergence of functions (`sec-multiple-integrals`) | `cheung2024metric` [Ch. 5]; `gasinski2014exercises` [Ch. 1], [Sec. 1.1.7, pp. 16-17]; `karpfingerCalculusLinearAlgebra2022` [Chs. 58-59, pp. 655-671]; `miklavcicIllustrativeGuideMultivariable2020` [Secs. 4.1-4.5, 4.8], [Sec. 2.7, The Leibniz integral rule]; `lee2013introduction` [App. C, pp. 649-656], [App. C, Thm. C.31 and Prop. C.32, pp. 656-657], [App. C, Thm. C.14, p. 648]; `radozycki2020solving` [Secs. 15.1-15.3, pp. 343-357] | Cheung pp. 349-357 (Def. 5.1.4, Thm. 5.1.5, x^n p. 357), M-test pp. 392-403; Gasiński pp. 16-17; Karpfinger pp. 655-669; Miklavcic PDF 134-136, 225-257; Lee pp. 648-657; Radożycki pp. 343-357 | Cheung Ch. 5: supported. **Gasiński Ch. 1: supported in part**: only Sec. 1.1.7 (Def. 1.59, x^n Ex. 1.61, Prop. 1.62) bears on the section. Added: supported. Lee Thm. C.14 covers the compact-interval Leibniz rule only; the domination clause for improper integrals in `thm-differentiation-under-integral` has no read source (it is correct) | multiple integrals, change of variables and differentiation under the integral had no covering source | Karpfinger, Miklavcic, Lee at the intro; Gasiński 1.1.7, Lee C.31-C.32 and Radożycki Ch. 15 at the Uniform convergence unit; Lee C.14 and Miklavcic 2.7 at the Differentiation under the integral unit. fixed (owner, 2026-11-18) (M5): the section line now reads gasinski2014exercises [Sec. 1.1.7]. |
| Exercises (`sec-real-analysis-exercises`) | `karpfingerCalculusLinearAlgebra2022` [Sec. 22.2, p. 224; Sec. 24.3, p. 248] | Karpfinger pp. 224, 248 | supported for `exr-ra-exp-functional` (Cauchy product of absolutely convergent series; e^x e^y = e^{x+y}) | section cited nothing; Stirling (`exr-ra-stirling`) and Wallis (`exr-ra-wallis`) have no source in the library (none of the seven PDFs mentions either) | Karpfinger added under the heading. The three exercises are combinations of the chapter's units, not adapted. Stirling and Wallis left uncited (standard results); no new reference proposed. |

**Counts.** Before: 5 works, 4 textbooks (`sagemath` is a tool). After: 8 works, 7 textbooks (+
`karpfingerCalculusLinearAlgebra2022`, `ventreCalculusLinearAlgebra2023`, `miklavcicIllustrativeGuideMultivariable2020`, all
Zotero Textbooks). `check.py` reports 5/4 until the three keys are merged into the bib; 1 citation without locator
(`sagemath`, not applicable), 0 sections citing nothing. A10 met after the merge.

**Citations verified.** 8 existing (work, locator) pairs: 4 supported (Radożycki Ch. 13 and 15, Ch. 7-12; Cheung Ch. 2,
Ch. 5; Lee App. C), 4 supported in part (Radożycki Ch. 3-5 and Ch. 14; Cheung Ch. 4; Gasiński Ch. 1), 0 unsupported, 0 not
machine-readable; `sagemath` has no locator by nature. Added: 23 (work, locator) citations, all read and supported.

#### Bib additions

```bibtex
@book{karpfingerCalculusLinearAlgebra2022,
  author = {Karpfinger, Christian},
  title = {Calculus and Linear Algebra in Recipes: Terms, Phrases and Numerous Examples in Short Learning Units},
  publisher = {Springer Berlin Heidelberg},
  address = {Berlin, Heidelberg},
  year = {2022},
  doi = {10.1007/978-3-662-65458-3},
  isbn = {978-3-662-65457-6},
  keywords = {textbook},
  zotero = {6QKSIMLF},
  zoteropdf = {MAJXJ7UK}
}
@book{ventreCalculusLinearAlgebra2023,
  author = {Ventre, Aldo G. S.},
  title = {Calculus and Linear Algebra: Fundamentals and Applications},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2023},
  doi = {10.1007/978-3-031-20549-1},
  isbn = {978-3-031-20548-4},
  keywords = {textbook},
  zotero = {KEJW2JYI},
  zoteropdf = {YRPT9JV7}
}
@book{miklavcicIllustrativeGuideMultivariable2020,
  author = {Miklavcic, Stanley J.},
  title = {An Illustrative Guide to Multivariable and Vector Calculus},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2020},
  doi = {10.1007/978-3-030-33459-8},
  isbn = {978-3-030-33458-1},
  keywords = {textbook},
  zotero = {PRFT4NVT},
  zoteropdf = {649XE3G5}
}
```

`karpfingerCalculusLinearAlgebra2022` is also cited by complex-analysis; merge one entry.

#### Proposed new references

None. The library covers every section; Stirling's formula and Wallis's product in the exercises are left uncited.

#### Disagreements

None. Nothing in this chapter depends on the 2026-11-18 conversion, and no statement read against its source disagrees.

#### Reading-note additions

Drafts are in `scratchpad/notes5/real-analysis__<ITEMKEY>.html`. Karpfinger, Ventre and Miklavcic have no reading note and
get full drafts (Identity, Structure, chapter section); the others get the h2 section only.

- `radozycki2020solving` (8ZRF3L9K): Sec. 1.3 pp. 18-21; Ch. 5 pp. 89-129; Chs. 7-12 pp. 143-269; Ch. 13 pp. 271-297; Ch. 14 pp. 299-339 (indefinite only); Ch. 15 pp. 341-363 (Secs. 15.1-15.3 pp. 343-357). Ch. 3-4 background only.
- `cheung2024metric` (QKHPZ27J): Sec. 2.2 pp. 145-146; Ch. 2 pp. 129-232 (Thm. 2.3.15 p. 185); Ch. 4 pp. 295-348 (in part); Ch. 5 pp. 349-441 (Def. 5.1.4, Thm. 5.1.5 p. 354, p. 357).
- `gasinski2014exercises` (MM7HAG47): Sec. 1.1.7 pp. 16-17 (Def. 1.59, Ex. 1.61, Prop. 1.62).
- `lee2013introduction` (5TY4BDVG): App. C pp. 642-648 (C.3, C.6, C.11, C.14), pp. 649-657 (C.26, C.27, C.31, C.32), pp. 657-662 (C.34, C.37-C.38).
- `karpfingerCalculusLinearAlgebra2022` (6QKSIMLF, new note): Sec. 3.6 pp. 25-26; Chs. 20-22 pp. 201-225; Ch. 24 pp. 241-252; Chs. 25-28 pp. 255-308; Ch. 30 pp. 321-333; Ch. 32 pp. 347-352; Ch. 47 pp. 527-538; Ch. 51 pp. 579-583; Sec. 53.2 pp. 605-606; Chs. 58-59 pp. 655-671. Identity: Christian Karpfinger, *Calculus and Linear Algebra in Recipes*, Springer Berlin Heidelberg, 2022, PDF MAJXJ7UK (1015 pages); offset not constant (above).
- `ventreCalculusLinearAlgebra2023` (KEJW2JYI, new note): Sec. 6.7 pp. 95-96; Chs. 18-21 pp. 291-383; Ch. 22 pp. 389-421. Identity: Aldo G. S. Ventre, *Calculus and Linear Algebra: Fundamentals and Applications*, Springer Cham, 2023, PDF YRPT9JV7 (530 pages).
- `miklavcicIllustrativeGuideMultivariable2020` (PRFT4NVT, new note): Secs. 2.3-2.8 (PDF 75-150), Sec. 2.7 Leibniz integral rule (PDF 134-136), Secs. 4.1-4.5 and 4.8 (PDF 225-257, 266-268). Identity: Stanley J. Miklavcic, *An Illustrative Guide to Multivariable and Vector Calculus*, Springer Cham, 2020, PDF 649XE3G5 (392 pages, no printed page numbers).
- `sagemath` (SWN4REIN): "Calculus in SageMath" unit and the chapter's Sage code; no pages.

### complex-analysis

Task 5.4. Page numbers are printed pages (offsets under "Reading-note additions"). Pages were read with `pdftotext` on the
Zotero PDFs (all have a text layer). Notation: the chapter's `log z` is the multivalued logarithm and `ln x` the real one, with
`Log`, `Arg` principal (Arg in (-pi, pi]). Sources were compared after conversion: Yu writes `log z` (multivalued), `Log z`
and `log|z|` for the real logarithm; Karpfinger writes `Log` (principal, arg in (-pi, pi]) and `ln` (real); Fokas-Kaxiras write
`ln(z)` for the multivalued logarithm and take the argument in [0, 2pi). These are conventions, not disagreements.

**Textbooks chosen (A4).** No complex-analysis textbook besides `yu2022problems` was in the bib. From the Zotero Textbooks
collection: Fokas-Kaxiras (`fokas2023modern`, Part II is a full complex-analysis course), Karpfinger
(`karpfingerCalculusLinearAlgebra2022`, Chs. 7-8 and 80-85), Zhu (`zhuEquationsAnalyticalTools2021`, Gamma function), Riley-Hobson
(`riley2006solutions`, the Student Solutions Manual of Riley-Hobson-Bence, Chs. 18 and 24), Henn-Plefka
(`hennScatteringAmplitudesGauge2014`, Wick rotation). Already in the bib and cited here for the first time: `grozin2005lectures`
(Wick rotation, sphere areas, Beta function) and `vassilevich2003heat` (zeta-function regularisation). Semantic search (three
phrasings each for zeta, Wick rotation, Gamma/Beta, logarithm branches, Laurent series, conformal maps) found nothing better.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Complex numbers and functions (`sec-complex-numbers`) | `yu2022problems` Ch. 1-2, Ch. 4; Sec. 4.1.8 p. 56; Sec. 4.1.7 p. 55; Sec. 3.3 pp. 44-48. `karpfingerCalculusLinearAlgebra2022` Chs. 7-8, Sec. 80.1; Sec. 80.1 pp. 896-898; Sec. 8.2 pp. 70-73. `fokas2023modern` Secs. 4.1-4.2 pp. 119-125; Sec. 4.2.3 p. 124; Sec. 5.6 pp. 181-183 | yu pp. 1-48, 49-56; karp pp. 59-74, 893-900; fk pp. 119-125, 181-184 | yu Ch. 1-2, Ch. 4: **supported** (Defs. 1.1-1.8, De Moivre Thm. 1.10, modulus Thm. 1.6, parallelogram law Fig. 1.3; complex exponential Def. 4.14; branches 4.1.7; principal Log Def. 4.15, log z = Log z + 2k pi i, Log(-1) = i pi). Roots of unity are Yu Ch. 3, outside the old locator. Karpfinger: principal Arg in (-pi, pi] p. 67, Moivre and n-th roots pp. 70-73; Log with k-th branches p. 896, Log(zw) != Log z + Log w with z = -1, w = i p. 898 (the chapter's example). Fokas-Kaxiras: z^(1/n) and w^4 = 16 p. 124, multivalued log (4.25) p. 124, branch cuts p. 181-183: supported | one work; roots of unity outside the locator | Karpfinger and Fokas-Kaxiras at the section intro; Yu, Karpfinger, Fokas-Kaxiras at the logarithm, branches and worked-computations units. |
| Holomorphic functions (`sec-holomorphic`) | `yu2022problems` Ch. 4. `fokas2023modern` Secs. 4.3-4.4 pp. 125-136; Sec. 4.4.2 pp. 130-132; Secs. 6.1-6.4 pp. 196-211. `karpfingerCalculusLinearAlgebra2022` Sec. 80.2 pp. 900-902; Sec. 85.1 pp. 951-954; Ch. 84 pp. 941-948 | yu pp. 49-76; fk pp. 125-136, 196-211; karp pp. 900-902, 941-954 | yu Ch. 4: **supported** for the derivative, holomorphy, Cauchy-Riemann (Thm. 4.7), harmonic functions (Remark 4.6, p. 67); conformal maps only named (p. 52), so **supported in part**. Fokas-Kaxiras: CR (4.36), harmonicity p. 131, conformal theorem p. 209 (f'(z0) != 0), maps by z^n, 1/z, e^z (Secs. 6.1-6.3). Karpfinger: rules and holomorphy criterion p. 901, conformal def. and Möbius Example 84.1 p. 942, harmonic conjugate p. 952: supported | conformal maps not covered by Yu | Fokas-Kaxiras and Karpfinger at the section intro and at the harmonic and conformal units. |
| Contour integration (`sec-contour-integration`) | `yu2022problems` Ch. 6; Thm. 7.6, Cor. 7.8 p. 127. `fokas2023modern` Secs. 4.5-4.6 pp. 136-144. `karpfingerCalculusLinearAlgebra2022` Ch. 81 pp. 905-916; Sec. 81.3 p. 914. `riley2006solutions` Exercise 24.9 p. 390 | yu pp. 95-127; fk pp. 136-144; karp pp. 905-916; rh p. 390 | yu Ch. 6: **supported** (Def. 6.1 line integrals, M-L Thm. 6.5, Cauchy Thms. 6.8-6.13, integral formula Thm. 6.15, Cauchy estimates and Taylor Cor. 6.16-6.17). Liouville and the fundamental theorem of algebra are Yu Thm. 7.6, Cor. 7.8 (Ch. 7), outside the old locator. Fokas-Kaxiras (contour integral, Cauchy's theorem, deformation, integral formula), Karpfinger (Liouville, FTA, identity theorem p. 914), Riley-Hobson Ex. 24.9 (Liouville -> FTA by factoring out roots, cf. `exr-liouville-fta`): supported | Liouville outside the locator | added at the section intro and the Liouville unit. |
| Series and residues (`sec-residues`) | `magnus2023essential` Ch. 3; Sec. 3.1.1 pp. 92-93. `yu2022problems` Ch. 5, Ch. 9. `fokas2023modern` Sec. 4.7, Secs. 5.1-5.4 pp. 144-176; Example 4.8 pp. 149-150; Secs. 5.3-5.4 pp. 162-176. `karpfingerCalculusLinearAlgebra2022` Chs. 82-83 pp. 919-938; Sec. 83.1 pp. 929-934; Sec. 83.2 pp. 934-938. `riley2006solutions` Exercise 24.13 p. 393 | magnus pp. 91-93; yu pp. 77-94, 165-170; fk pp. 144-176; karp pp. 919-938; rh p. 393 | magnus Ch. 3: **supported in part**: Sec. 3.1.1 gives power series, radius of convergence, complex analytic functions and the 1/(1 + x^2) radius-1 example (p. 93, the chapter's `exm-taylor-radius-poles`); the rest of Ch. 3 is ODE series solutions. yu Ch. 5, Ch. 9: **supported in part**: power series, Cauchy-Hadamard (Ch. 5), isolated singularities, Laurent Thm. 9.7, Casorati-Weierstrass (Ch. 9); residues and the residue theorem are not in Yu vol. I. Fokas-Kaxiras: Taylor/Laurent theorems, Example 4.8 = `exm-laurent-three-regions` (same function, same three regions, same expansions, p. 150), singularity types, residue theorem (5.1)-(5.2), rational integrals, Jordan's lemma. Karpfinger: residue recipes, residue theorem, real integrals of p/q and R(cos, sin) types. Riley-Hobson 24.13: residue 1/f'(z0) at a simple zero (the quotient rule of `exm-residue-formulas`): supported | residues and residue theorem not covered; `exm-laurent-three-regions` adapted without citation | Fokas-Kaxiras and Karpfinger at the intro and residue units; Fokas-Kaxiras Example 4.8 inline in `exm-laurent-three-regions`; Magnus Sec. 3.1.1 inline in `exm-taylor-radius-poles`. |
| Analytic continuation and special functions (`sec-analytic-continuation`) | `yu2022problems` Ch. 7-8; Thm. 7.1 p. 125. `karpfingerCalculusLinearAlgebra2022` Sec. 81.3 p. 914. `zhuEquationsAnalyticalTools2021` Sec. 5.1 pp. 175-177; eq. 5.29 p. 176. `riley2006solutions` Exercise 18.15 pp. 306-307; Exercise 18.13 pp. 305-306. `grozin2005lectures` Sec. 2.2 pp. 6-9; Sec. 2.1 eqs. 2.9-2.12 p. 5; Sec. 2.1 p. 4. `hennScatteringAmplitudesGauge2014` Sec. 3.2 pp. 82-84. `vassilevich2003heat` Sec. 2.2 eqs. 2.23-2.33 pp. 15-16 | yu pp. 125-127, 145-148; karp p. 914; zhu pp. 175-177; rh pp. 305-307; grozin pp. 4-9; henn pp. 82-84; vass pp. 15-16 | yu Ch. 7-8: **supported in part**: the identity theorem (Thm. 7.1) and Schwarz reflection (Sec. 8.1.2) support the analytic-continuation unit only; Gamma, Beta, zeta and Wick rotation are not in Yu. Zhu: Gamma def. (5.25), recursion, reflection (5.27), Gamma(n + 1) = n!, Gamma(1/2) = sqrt(pi), (5.29) Gamma(n + 1/2) = (2n)! sqrt(pi)/(2^(2n) n!) = the chapter's (2n)! sqrt(pi)/(4^n n!). Riley-Hobson 18.15: z! continued by the recursion, residue (-1)^(m-1)/(m-1)! at z = -m, i.e. Res_{-n} Gamma = (-1)^n/n! after z! = Gamma(z + 1); 18.13: B = Gamma Gamma/Gamma. Grozin: Wick rotation counter-clockwise for -i0 poles (p. 4), Omega_d = 2 pi^(d/2)/Gamma(d/2) by the Cartesian/spherical Gaussian (eqs. 2.9-2.12, = `exm-beta-ball-volume`, `exm-gamma-sphere-areas`), Feynman parametrisation and Euler B (pp. 6-9). Henn-Plefka: poles at +-(sqrt(k^2 + m^2) - i0), rotation k0 = i k0,E, (3.4); at D = 1, a = 1 it gives the chapter's -i pi/E (`prp-wick-rotation`): supported after converting 1/(-k^2 + m^2 - i0) = -1/(k^2 - m^2 + i0). Vassilevich: zeta function of an operator and zeta-function regularisation, Gamma(s) = 1/s - gamma_E + O(s) (2.30): supported for the regularisation sentence | Riemann zeta (def., Euler product, functional equation, zeta(2), zeta(-1)) has no source in the library | Zhu, Riley-Hobson, Grozin, Henn-Plefka, Vassilevich, Karpfinger at the units; inline at `exm-beta-ball-volume` (Grozin) and `exm-gamma-half-integer-formula` (Zhu). Riemann zeta: **new reference proposed** (below). |
| Exercises (`sec-complex-analysis-exercises`) | `fokas2023modern` Sec. 7.3.1 pp. 236-238; Example 5.7 pp. 183-184; Sec. 5.4 pp. 173-176. `riley2006solutions` Exercise 24.19 p. 398 | fk pp. 173-176, 183-184, 236-238; rh p. 398 | supported: Gaussian Fourier transform by a rectangular contour shift (Fokas-Kaxiras 7.3.1, Fig. 7.1 = `exr-ca-gaussian-fourier`); keyhole integral of x^(-lambda)/(1 + x) = pi/sin(lambda pi) with the cut on the positive axis and arg in (0, 2 pi) (Fokas-Kaxiras Example 5.7 and Riley-Hobson 24.19; with a = 1 - lambda this is `exr-ca-keyhole-beta`); closing in the half-plane fixed by the sign of the exponent (Jordan's lemma, p. 174 for lambda < 0) | **section cited nothing**; the keyhole exercise is the textbook example | citations added in the exercise intros. |

**Counts.** Before: 2 works, 2 textbooks. After: 9 works, 7 textbooks (+ `fokas2023modern`,
`karpfingerCalculusLinearAlgebra2022`, `zhuEquationsAnalyticalTools2021`, `riley2006solutions`,
`hennScatteringAmplitudesGauge2014`, all Zotero Textbooks; + `grozin2005lectures`, `vassilevich2003heat`, already in the bib).
`check.py` reports 4 works, 2 textbooks until the five keys are merged; 0 citations without locator, 0 sections citing nothing.
A10 met after the merge.

**Citations verified.** 6 existing (work, locator) pairs, all with locators: 3 supported (`yu2022problems` [Ch. 1-2, Ch. 4],
[Ch. 4] with conformal maps only named, [Ch. 6]); 3 supported in part (`yu2022problems` [Ch. 5, Ch. 9]: no residues;
[Ch. 7-8]: no special functions or Wick rotation; `magnus2023essential` [Ch. 3]: Sec. 3.1.1 only). 0 unsupported, 0 not
machine-readable. The partial ones were left as they are and completed by the added citations. fixed (owner, 2026-11-18) (M5): `sec-holomorphic` line narrowed to "For the complex derivative, the Cauchy-Riemann equations and harmonic functions, see yu2022problems [Ch. 4]"; `sec-residues` line narrowed to "For power series and the radius of convergence, see magnus2023essential [Sec. 3.1.1, pp. 91-93] and yu2022problems [Ch. 5]; for isolated singularities and Laurent series, see yu2022problems [Ch. 9]"; the `sec-analytic-continuation` line "yu2022problems [Ch. 7-8]" removed, since its supported part, the identity theorem, is already cited at the Analytic continuation unit as [Thm. 7.1, p. 125] (Schwarz reflection, Sec. 8.1.2, is not used in the chapter). 43 citations added: 33 of the 5 new works,
4 of the 2 bib works cited here for the first time, 6 new locators of Yu and Magnus.

**Metadata for the coordinator.**
- `fokas2023modern` (XQ85GLUJ): the Zotero item has no authors and the wrong year. The PDF is A. S. Fokas and
  E. Kaxiras, *Modern Mathematical Methods for Scientists and Engineers: A Street-Smart Introduction*, World Scientific Europe,
  2023 (copyright page; ISBN 978-1-80061-180-1). Fixing the metadata would change the Better BibTeX key (e.g. to
  `fokasModernMathematicalMethods2023`); if so, rename the 13 occurrences in the chapter.
- `riley2006solutions` (9KCJXN49): the Zotero item has no authors, and its title contains Greek capitals (Μ, Ε). The
  PDF is K. F. Riley and M. P. Hobson, *Student Solutions Manual for Mathematical Methods for Physics and Engineering*, 3rd ed.,
  Cambridge University Press, 2006 (546 pp.), not the textbook itself. Same remark on the key (5 occurrences).

#### Bib additions

```bibtex
@book{fokas2023modern,
  author = {Fokas, Athanassios S. and Kaxiras, Efthimios},
  title = {Modern Mathematical Methods for Scientists and Engineers: A Street-Smart Introduction},
  publisher = {World Scientific Publishing Europe},
  address = {London},
  year = {2023},
  isbn = {978-1-80061-180-1},
  keywords = {textbook},
  zotero = {XQ85GLUJ},
  zoteropdf = {67N42TA9}
}
@book{karpfingerCalculusLinearAlgebra2022,
  author = {Karpfinger, Christian},
  title = {Calculus and Linear Algebra in Recipes: Terms, Phrases and Numerous Examples in Short Learning Units},
  publisher = {Springer Berlin Heidelberg},
  address = {Berlin, Heidelberg},
  year = {2022},
  doi = {10.1007/978-3-662-65458-3},
  isbn = {978-3-662-65457-6},
  keywords = {textbook},
  zotero = {6QKSIMLF},
  zoteropdf = {MAJXJ7UK}
}
@book{zhuEquationsAnalyticalTools2021,
  author = {Zhu, Yichao},
  title = {Equations and Analytical Tools in Mathematical Physics: A Concise Introduction},
  publisher = {Springer Singapore},
  address = {Singapore},
  year = {2021},
  doi = {10.1007/978-981-16-5441-1},
  isbn = {978-981-16-5440-4},
  keywords = {textbook},
  zotero = {WBI8MVKP},
  zoteropdf = {67GWFTQ3}
}
@book{riley2006solutions,
  author = {Riley, K. F. and Hobson, M. P.},
  title = {Student Solutions Manual for Mathematical Methods for Physics and Engineering},
  edition = {3},
  publisher = {Cambridge University Press},
  address = {Cambridge},
  year = {2006},
  keywords = {textbook},
  zotero = {9KCJXN49},
  zoteropdf = {BULXN3QY}
}
@book{hennScatteringAmplitudesGauge2014,
  author = {Henn, Johannes M. and Plefka, Jan C.},
  title = {Scattering Amplitudes in Gauge Theories},
  series = {Lecture Notes in Physics},
  volume = {883},
  publisher = {Springer Berlin Heidelberg},
  address = {Berlin, Heidelberg},
  year = {2014},
  doi = {10.1007/978-3-642-54022-6},
  isbn = {978-3-642-54021-9},
  keywords = {textbook},
  zotero = {ZM7YN7FX},
  zoteropdf = {56T9MM9K}
}
```

#### Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Ash, R. B., Novinger, W. P. (2007). *Complex Variables*, 2nd ed. Dover (1st ed. Academic Press 1971). Its last chapters treat the Gamma function and the Riemann zeta function with its continuation and functional equation (chapter numbers to be confirmed on retrieval) | Mathematics; Complex Analysis | Textbooks | Free PDF distributed by the first author (University of Illinois page of R. B. Ash, `faculty.math.illinois.edu/~r-ash/CV.html`; the site refused the connection on 2026-11-18, so the terms and contents were not checked) | `sec-analytic-continuation`: The zeta function (`def-zeta-function`, Euler product, functional equation, zeta(2), zeta(-1)); also the Gamma function | open |

#### Disagreements

None. Checked after conversion: the principal logarithm and argument (Yu Def. 4.15, Karpfinger p. 896), the Laurent
expansions of `exm-laurent-three-regions` (Fokas-Kaxiras p. 150), Gamma(n + 1/2) (Zhu (5.29)), the residues of Gamma (Riley-Hobson
18.15), the sphere area (Grozin (2.11)), the direction of the Wick rotation and the value -i pi/E (Grozin p. 4, Henn-Plefka
(3.4)), the keyhole integral (Fokas-Kaxiras Example 5.7, Riley-Hobson 24.19). Fokas-Kaxiras p. 124 says the principal value
limits phi to "0 <= phi < pi", which contradicts its own Example 4.1 (0 <= phi < 2 pi): a typo in the source, not cited.

#### Reading-note additions

Drafts written to `scratchpad/notes5/complex-analysis__<ITEMKEY>.html` (full notes for the five new works; an h2 section
for the four works that already have a note).

- **`yu2022problems`** (EBXWATLU; printed = PDF - 13). `fundamentals-of-mathematics-for-physicists/complex-analysis`: Chs. 1-2
  (pp. 1-36), Sec. 3.3 roots of unity (pp. 44-48), Ch. 4 incl. Sec. 4.1.7 branches (p. 55), Def. 4.15 Log (p. 56), CR Thm. 4.7
  (p. 52), harmonic Remark 4.6 (p. 67); Ch. 5 power series; Ch. 6 (pp. 95-124); Thm. 7.1 identity (p. 125), Thm. 7.6 Liouville,
  Cor. 7.8 FTA (p. 127); Ch. 8 (Schwarz reflection 8.1.2); Ch. 9 singularities and Laurent Thm. 9.7.
- **`magnus2023essential`** (ZQ5LNU7A; printed = PDF - 9). Same chapter: Sec. 3.1.1, pp. 91-93 (radius of convergence,
  1/(1 + x^2) has radius 1 at 0).
- **`grozin2005lectures`** (4L8BRTIU; printed = PDF). Same chapter: Sec. 2.1 p. 4 (Wick rotation), eqs. 2.9-2.12 p. 5 (Omega_d);
  Sec. 2.2 pp. 6-9 (Feynman parametrisation, Euler B (2.22)-(2.23)).
- **`vassilevich2003heat`** (QLTSJVB9). Same chapter: Sec. 2.2, eqs. 2.23-2.33, pp. 15-16 (spectral zeta function,
  zeta-function regularisation, Gamma(s) near s = 0).
- **`fokas2023modern`** (XQ85GLUJ, new note; printed = PDF - 23). Same chapter: Secs. 4.1-4.2 pp. 119-125;
  Sec. 4.2.3 p. 124; Secs. 4.3-4.4 pp. 125-136; Sec. 4.4.2 pp. 130-132; Secs. 4.5-4.6 pp. 136-144; Sec. 4.7 pp. 144-150,
  Example 4.8 pp. 149-150; Secs. 5.1-5.4 pp. 159-176; Example 5.7 pp. 183-184; Sec. 5.6 pp. 181-183; Secs. 6.1-6.4 pp. 196-211;
  Sec. 7.3.1 pp. 236-238.
- **`karpfingerCalculusLinearAlgebra2022`** (6QKSIMLF, new note; printed = PDF - 21 in Chs. 7-8, PDF + 18 in Chs. 80-85).
  Same chapter: Chs. 7-8 pp. 59-74 (Sec. 8.2 pp. 70-73); Sec. 80.1 pp. 893-900; Sec. 80.2 pp. 900-902; Ch. 81 pp. 905-916
  (p. 914 Liouville, identity theorem, FTA); Chs. 82-83 pp. 919-938; Ch. 84 pp. 941-948; Sec. 85.1 pp. 951-954.
- **`zhuEquationsAnalyticalTools2021`** (WBI8MVKP, new note). Same chapter: Sec. 5.1 "Prerequisite Knowledge" pp. 175-177,
  eqs. 5.25-5.30.
- **`riley2006solutions`** (9KCJXN49, new note; printed = PDF - 12). Same chapter: Exercises 18.13 (pp. 305-306),
  18.15 (pp. 306-307), 24.9 (p. 390), 24.13 (p. 393), 24.19 (p. 398).
- **`hennScatteringAmplitudesGauge2014`** (ZM7YN7FX, new note). Same chapter: Sec. 3.2 pp. 82-84, Fig. 3.1, eqs. 3.1-3.4.

### differential-equations

Task 5.5. Page numbers are printed pages; PDF offsets are under "Reading-note additions". All PDFs were read with
`pdftotext` from `~/Zotero/storage/<zoteropdf>/`; every one has a text layer.

**Metadata finding (for the coordinator).** `das2023quantum` (Q3WIWUT2, PDF 86X6WIQ7) is T. K. Das, *Quantum
Mechanics: Axiomatic Approach and Understanding Through Mathematics*, Vol. 1, UNITEXT for Physics, Springer Singapore
2023, DOI 10.1007/978-981-99-0494-5. The bib `author` field and the Zotero creators list the UNITEXT series editors
(Cini, Forte, Montagna, Nicrosini, Peliti, Rotondi, and in Zotero also Biscari, Manini, Hjorth-Jensen, De Angelis)
before Das. The key name follows the wrong first author. Not changed here; it affects every tutorial that cites the key.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Ordinary differential equations (`sec-odes`) | `arrigo2023introduction` Ch. 5; `borodzik2019problems` Ch. 5; `knauf2018mathematical` Ch. 3; `magnus2023essential` Chs. 2, 4, 6; `sagemath` (tool) | arrigo pp. 1-2, 49-63, 97 (TOC, Ch. 5 opening); borodzik TOC, pp. 179-201; knauf pp. 31-37, Thm. 3.17 (Picard-Lindelöf); magnus TOC, Secs. 2.1, 4.1, 6.1 | knauf, magnus: supported. arrigo Ch. 5 (separation of variables for the heat, Laplace and wave equations) and borodzik Ch. 5 (characteristics, hyperbolic and parabolic PDEs): **unsupported** here; they are PDE chapters. sagemath: tool citation, no locator applies | Two misplaced "for more" pointers | Kept (only additions allowed); both works now cited with these chapters in `sec-pdes`, where they apply. Owner may drop them from `sec-odes`. fixed (owner, 2026-11-18) (M5): both removed from `sec-odes`. |
| Linear systems and the matrix exponential (`sec-linear-systems`) | `aliev2024mathematical` Secs. 1.1-1.2 (added), Ch. 2-4; `arrigo2023introduction` Ch. 3; `axler2024linear` Chs. 5, 8; `knauf2018mathematical` Chs. 4-5; `magnus2023essential` Chs. 1, 5; `das2023quantum` Sec. 7.1.2 (Property 3); `foulaadvand2023computational` Secs. 3.2-3.3, 3.2 Figs. 3.2/3.4, 3.5, 3.5 and Problem 3.1, 3.7 eqs. (3.45)-(3.53) Fig. 3.20 | aliev pp. 1-5; axler pp. 133-139, 298; knauf pp. 61-69, 86-93; magnus pp. 147-156; cini pp. 115-117; foul pp. 45-60, 65-68, 73 | cini Sec. 7.1.2: **supported in part** (Wronskian test and Property 3 on pp. 115-117; Abel's identity W' = -PW is not in the source; the x^3, |x|^3 counterexample of exr-wr-smooth is the text's own, consistent with the source restricting the test to analytic functions, p. 116). foul: supported (Euler (3.8), Euler-Cromer (3.10), velocity Verlet (3.21)/(3.25), ω0 = 3 and T = 20 in Figs. 3.2-3.4, damped oscillator (3.26)-(3.35), Problem 3.1, pendulum (3.45)-(3.53)); the step-matrix analysis is the text's own. aliev Ch. 2-4 (1D-3D strings, bars and membranes) and arrigo Ch. 3 (second-order PDEs): **unsupported** for this section. axler, knauf, magnus: supported | Two misplaced pointers | Added `aliev2024mathematical` Secs. 1.1-1.2 (damped and forced oscillator, linearity) to the section's "for more" line. arrigo Ch. 3 is now also cited in `sec-pdes`. fixed (owner, 2026-11-18) (M5): aliev Ch. 2-4 and arrigo Ch. 3 removed from `sec-linear-systems`; the line keeps aliev Secs. 1.1-1.2. |
| Boundary value and Sturm-Liouville problems (`sec-sturm-liouville`) | `magnus2023essential` Ch. 3 (added), Ch. 7; `aliev2024mathematical` Sec. 2.2 (added); `das2023quantum` Secs. 7.1.1, 7.1.3 (+ Problem 7.3.2), 7.1.3 eqs. (7.11)-(7.18), 7.1.3-7.1.4, 7.1.5 + Sec. 11.2 eq. (11.6) (locator added), 7.2 (Hermite), Problems 7.3.6(a), 7.3.8 | magnus pp. 91-119 (Secs. 3.1-3.2, Legendre project, Frobenius, point at infinity), pp. 233-239; aliev pp. 29-30; cini pp. 113-134, 146-147, 213-219 | supported: definitions of ordinary/regular/irregular points (Defs. 1-4, pp. 114-115), oscillator at infinity (p. 118, Problem 2), Frobenius conclusions 1-5 (p. 122; log forms not given, the text marks them unproved), oscillator series (7.11)-(7.18), Hermite (7.37) and termination (pp. 135-136), Euler equation (Problem 6(a)), hypergeometric (Problem 8(d)). **Supported in part:** Secs. 7.1.3-7.1.4 for the Legendre termination (the termination mechanism is p. 118 and Sec. 7.1.5 Ex. 1, p. 132; the recursion is the text's); Sec. 7.1.5 for exr-frob-radial (only the general radial equation, footnote p. 130, and the Laguerre singularities, p. 133) | Hydrogen exercise needed its equation's locator | Added "Sec. 11.2, eq. (11.6)" to the exr-frob-radial citation. **Heaviside-Lorentz check:** (11.6) is Gaussian, V = -Ze^2/r; with Z = 1, μ → m and e^2_G = e^2_HL/(4π) it is the text's u'' + (2m/ħ^2)(E + e^2/(4πr))u - l(l+1)u/r^2 = 0; exponents l+1 and -l and the factors e^{±√(-2mE) r/ħ} match p. 218 (ρ = αr, α = √(-8μE)/ħ, e^{∓ρ/2}). Supported after conversion; the solution's r^2Q, z = 1/r form and indicial roots were rechecked by hand |
| Partial differential equations (`sec-pdes`) | `borodzik2019problems` Chs. 3, 4, Ch. 5 (added); `arrigo2023introduction` Secs. 3.1-3.3, Ch. 5 (added); `picard2020primer` Secs. 2.1, 2.1.1 eqs. (2.1.7)-(2.1.8), 2.1.2; `foulaadvand2023computational` Secs. 5.2 + Problem 5.3, 5.3 Figs. 5.4-5.5, 5.3-5.4, 5.3/6.2/6.4, 5.5 eqs. (5.53)-(5.66) + Problem 5.7, 6.2.1 eq. (6.6) Fig. 6.1, 6.2.2 and 6.4 eq. (6.10), 6.4 eqs. (6.26)-(6.30), 6.4 eqs. (6.33)-(6.36), 7.2-7.3, 7.2 eq. (7.4), 7.3.1 Fig. 7.3, 7.3.2-7.3.3, 7.3.1-7.3.3 eq. (7.29) | borodzik TOC, pp. 81, 135, 179; arrigo pp. 49-63, 97; picard pp. 32-38; foul pp. 115-136, 137-148, 159-172 | supported: classification and d'Alembert (arrigo (3.1)-(3.58)); heat flux system (2.1.7)-(2.1.8) and MCV law (2.1.9)-(2.1.12) (picard); heat kernel (5.21), images (Problem 5.3), FTCS (5.33) with N = 61, τ = 0.67e-4 and 1.47e-4, bound τ* = Δx^2/2α (p. 126), Crank-Nicolson (5.47), neutron slab (5.53)-(5.66) and mixed-condition critical length (Problem 5.7), upwind (6.6) and its decay (Fig. 6.1), CFL (6.9) and exact Lax step (6.10), leapfrog (6.26)-(6.30), first-order system (6.33)-(6.36), six-point system (7.4), Jacobi (7.25) with 100 × 200 grid and ~5000 sweeps, GS (7.33), SOR (7.37), series (7.29). **Supported in part:** Secs. 5.3/6.2/6.4 for prp-fdm-stability (the leapfrog factors are the text's); Secs. 7.2-7.3 for prp-fdm-relaxation (the discrete maximum principle is the text's); Secs. 7.3.2-7.3.3 for the rates ρ_J^2 and the optimal ω (the source gives only "faster" and 1 < ω < 2, p. 171) | none | Four source errors, which the text already corrects, are listed under Disagreements for information |
| Green's functions (`sec-greens-functions`) | `aliev2024mathematical` Ch. 1; `maggiore2023electrodynamics` Sec. 4.1.2 eqs. (4.12)-(4.15), Sec. 10.1 eqs. (10.1)-(10.24) (added); `williams2023introduction` Sec. 6.2.6 eqs. (6.2.151)-(6.2.162) (added) | aliev pp. 1-18; magg pp. 59-60, 235-238; will pp. 394-398 | supported: Green's function definition and eigenfunction expansion (aliev Secs. 1.3-1.4), G = -1/(4π r) for ∇^2 G = δ (magg (4.15); HL potential ∇^2φ = -ρ is SI with ε0 = 1). Retarded G: Maggiore uses (-,+,+,+), □_M = -□, so G_text = -G_M = δ(t - r)/(4πr), as in the text. Feynman: Williams D_F = i∫e^{-ipx}/(p^2 - m^2 + iε) with (∂^2 + m^2)D_F = -iδ, so the text's G_F = i D_F; pole shifts ±(E_p - iε), positive frequencies forward (pp. 395-397), retarded prescription with both poles below (pp. 397-398) | Only one work before | Added maggiore at exm-fund-laplacian-3d and the retarded subsection, williams at the retarded and Feynman subsections |
| Exercises (`sec-differential-equations-exercises`) | `foulaadvand2023computational` Sec. 3.8 eq. (3.55); `knauf2018mathematical` Sec. 5.3; `aliev2024mathematical` Secs. 1.3-1.4 and 1.9; `maggiore2023electrodynamics` Sec. 10.1 eqs. (10.14)-(10.22); `williams2023introduction` Secs. 6.2.5-6.2.6 eq. (6.2.149) (all added) | foul pp. 69-70; knauf pp. 86-91; aliev pp. 6-8, 16-18; magg pp. 236-238; will pp. 394, 397 | supported: damped pendulum (3.55) with A0 = 0; trace/determinant classification of planar linear flows; piecewise Green's function of a string and its eigenfunction series; Helmholtz Green's functions e^{±ikr}/(4πr), whose decaying continuation is the Yukawa form; Klein-Gordon retarded propagator and the J_0(m√(t^2 - r^2)) form of Δ (6.2.149). The one-dimensional ½Θ J_0 kernel of part (c) is the text's own | **Section cited nothing** | Citations added at the three exercise introductions |

**Counts.** Before: 10 works, 9 textbooks (`sagemath` is the tenth). After: 12 works, 11 textbooks (+ `maggiore2023electrodynamics`,
`williams2023introduction`, both already in the bib with `keywords = {textbook}`). `check.py`: works 12, textbooks 11, no locator 1
(`sagemath`, a tool citation), sections citing nothing 0. A10 met before and after. Six citations broken across a line (lines 2178,
2192, 3220, 5028, 5185, 5201 of the old file) were joined onto one line.

**Citations verified.** 48 distinct (work, locator) pairs: 37 supported, 6 supported in part (`das2023quantum` Secs. 7.1.2, 7.1.3-7.1.4,
7.1.5; `foulaadvand2023computational` Secs. 5.3/6.2/6.4, 7.2-7.3, 7.3.2-7.3.3), 4 unsupported (misplaced "for more" pointers:
`arrigo2023introduction` Ch. 5 in `sec-odes` and Ch. 3 in `sec-linear-systems`, `borodzik2019problems` Ch. 5 in `sec-odes`,
`aliev2024mathematical` Ch. 2-4 in `sec-linear-systems`), 1 not applicable (`sagemath`). 0 not machine-readable. Adapted blocks without
a citation: none found; the blocks that take numbers or problems from a source (Foulaadvand's grids and steps, Das's problems) all cite it.

**Citations added (15 in 10 places).** `aliev2024mathematical` Secs. 1.1-1.2 (sec-linear-systems), Sec. 2.2 (sec-sturm-liouville),
Secs. 1.3-1.4 and 1.9 (exr-de-string-greens); `magnus2023essential` Ch. 3 (sec-sturm-liouville); `das2023quantum` Sec. 11.2 eq. (11.6)
(exr-frob-radial); `arrigo2023introduction` Secs. 3.1-3.3, Ch. 5 and `borodzik2019problems` Ch. 5 (sec-pdes);
`maggiore2023electrodynamics` Sec. 4.1.2 (exm-fund-laplacian-3d), Sec. 10.1 (retarded subsection, exr-de-klein-gordon-modes);
`williams2023introduction` Sec. 6.2.6 (retarded and Feynman subsections), Secs. 6.2.5-6.2.6 (exr-de-klein-gordon-modes);
`foulaadvand2023computational` Sec. 3.8 and `knauf2018mathematical` Sec. 5.3 (exr-de-pendulum-linearised).

#### Bib additions

None: every work cited is already in `references/references.bib`.

#### Proposed new references

None.

#### Disagreements

No disagreement between the text and its sources after conversion. The rows below are errors in the source that the text
already corrects in place (stated in the text); recorded for information, no owner action needed.

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| differential-equations, exm-ts-damped | ω_d = √(9 - 0.0625) = 2.990; computed 2.992 | Foulaadvand quotes ω1 = √(ω0^2 - β^2) = 2.958 for γ = 0.5 (β = 0.25) and a 1.1% error; 2.958 is an arithmetic slip | p. 58 | — |
| differential-equations, exr-ho-complex-fit | x = e^{-γt}(x0 cos ω_d t + (v0 + γx0)/ω_d **sin** ω_d t) | eq. (3.58) prints cos in the second term (fails x'(0) = v0) | p. 73 | — |
| differential-equations, exr-fdm-leapfrog-start | u^{-1} = u^1 - 2τψ, hence u^1 = φ + τψ + (C^2/2)δ^2φ | eq. (6.30) prints u^{-1} = u^0 - 2gτ | p. 145 | — |
| differential-equations, exm-fdm-six-points | matrix block tridiagonal and always invertible | "A is tridiagonal ... for a special choice of β the determinant becomes zero" | p. 162 | — |

#### Reading-note additions

All cited works except `sagemath` already have a reading note (`audit/entries.md`). Drafts of the h2 sections are in
`scratchpad/notes5/differential-equations__<ITEMKEY>.html`.

- `aliev2024mathematical` (TE7TGRTA): Ch. 1 (sec-greens-functions), Secs. 1.1-1.2 pp. 2-5 (sec-linear-systems), Secs. 1.3-1.4 pp. 6-8 and 1.9 pp. 16-18 (exr-de-string-greens), Sec. 2.2 pp. 29-30 (sec-sturm-liouville); Ch. 2-4 (sec-linear-systems, unsupported there).
- `arrigo2023introduction` (MXBR24Z5): Secs. 3.1-3.3 pp. 49-63 and Ch. 5 pp. 97-160 (sec-pdes); Ch. 5 (sec-odes) and Ch. 3 (sec-linear-systems), unsupported there.
- `axler2024linear` (YVGPNNLV): Chs. 5 and 8, pp. 132-180, 297-330 (sec-linear-systems).
- `borodzik2019problems` (VNWT8IQ7): Chs. 3-5, pp. 79-235 (sec-pdes); Ch. 5 (sec-odes), unsupported there.
- `das2023quantum` (Q3WIWUT2; Das): Secs. 7.1.1-7.1.5, 7.2, Problems 7.3.2, 7.3.6(a), 7.3.8, pp. 113-147; Sec. 11.2 eq. (11.6), pp. 217-219 (exr-frob-radial).
- `foulaadvand2023computational` (WHBRCYJA): Secs. 3.2-3.8, Problem 3.1 (pp. 47-73); Secs. 5.2-5.5, Problems 5.3, 5.7 (pp. 119-136); Secs. 6.2-6.4 (pp. 138-147); Secs. 7.2-7.3 (pp. 160-171).
- `knauf2018mathematical` (BGRDQPJ8): Ch. 3 (sec-odes, Thm. 3.17 Picard-Lindelöf), Chs. 4-5 (sec-linear-systems), Sec. 5.3 pp. 86-91 (exr-de-pendulum-linearised).
- `maggiore2023electrodynamics` (JGIWV45B): Sec. 4.1.2 eqs. (4.12)-(4.15), pp. 59-60; Sec. 10.1 eqs. (10.1)-(10.24), pp. 235-238.
- `magnus2023essential` (ZQ5LNU7A): Chs. 1-2, 4-6 (sec-odes, sec-linear-systems), Ch. 3 pp. 91-119 and Ch. 7 pp. 231-239 (sec-sturm-liouville).
- `picard2020primer` (3IN8XYZK): Sec. 2.1 pp. 32-35, Sec. 2.1.1 eqs. (2.1.7)-(2.1.8) pp. 35-36, Sec. 2.1.2 eqs. (2.1.9)-(2.1.12) pp. 37-38.
- `sagemath` (SWN4REIN): tool citation in sec-odes (symbolic solution of a linear first-order equation); Sage runs in most solutions.
- `williams2023introduction` (Z7ZJZZWK): Sec. 6.2.5 eq. (6.2.149) p. 394; Sec. 6.2.6 eqs. (6.2.151)-(6.2.162), pp. 394-398.

### fourier-analysis

Task 5.6. PDFs read with `pdftotext`. Page offsets (PDF − printed): Arrigo 8, Aliev 14, Borodzik 14, Izaac 15, Maggiore
17, Chambert-Loir 12, Boudreau 23, Mukunda 19. Unit conventions: Maggiore uses SI, and Boudreau uses Gaussian units
(Jackson's form). The chapter uses Heaviside-Lorentz units (ε₀ = 1, so ∇²Φ = −ρ). Fourier conventions: Arrigo and Aliev
use the symmetric 1/√2π transform, Chambert-Loir uses e^{−2πixy} and Izaac uses symmetric discretised transforms. The
chapter uses f̂(k) = ∫f e^{−ikx}dx. All of them agree with the chapter after conversion.

**Notation-conversion check (multipole block, Gaussian → Heaviside-Lorentz).**
- `prp-fam-multipole`, eq. `eq-fam-multipole`: the chapter has Φ = Σ q_lm Y_lm/((2l+1) r^{l+1}). This is Boudreau's
  eq. (5.32) line, Φ = Σ 4π/(2l+1) q_lm Y_lm/r^{l+1} (p. 115), divided by 4π. The moments q_lm = ∫ρ r'^l Y*_lm do not
  depend on the units. **Supported.**
- `eq-fam-cartesian`: the chapter has Φ = (1/4π)(q/r + d·n/r² + Q_ij n_i n_j/2r³). This is Maggiore's eq. (6.20)
  (p. 136) with ε₀ = 1. Q_ij matches eq. (6.18). The q_00, q_1m and q_20 relations were checked by hand against the
  explicit Y_lm. **Supported.**
- `exm-fam-point-charges`: Φ = 2ea cos θ/4πr² and ea²(3cos²θ − 1)/4πr³, rechecked from `eq-fam-cartesian`.
  **Supported.**
- `exm-fam-dipole-field`: −∇Φ_dip = (3(d·n)n − d)/4πr³ is Maggiore's eq. (6.13) (p. 135) with ε₀ = 1. The
  Gaussian (×4π) and SI (/ε₀) remarks are consistent. **Supported.**
- `exr-fam-sphere-moments`: hand computation gives d_z = (4/3)πR³σ₀, Q_xz = (8/5)πR⁴σ₀ and Φ = (2/5)σ₀R⁴ sin θ cos θ cos φ/r³.
  q_{2,±1} agrees with Jackson's q_21 = −(1/3)√(15/8π)(Q_13 − iQ_23). The Sage cell was re-run (Sage, 2026-11-18) and
  reproduces the printed output exactly. The parity argument matches Maggiore pp. 136-137 (Fig. 6.3: only Q_xz = Q_zx
  is non-zero). **Supported.**
- `exr-fam-quadrupole-shift`: matches Maggiore eq. (6.24) (p. 137). `exr-fam-external-field`: U = qφ − d·E −
  (1/6)Q_ij∂_iE_j and U_dd = (d₁·d₂ − 3(d₁·n)(d₂·n))/4πr³ match eqs. (6.59), (6.70) and (6.89) (pp. 144-149) with
  ε₀ = 1. The attraction cases match p. 149. **Supported.**

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Fourier series (`sec-fourier-series`) | arrigo2023introduction [Ch. 4]; chambert-loirInformationTheory2022 [Secs. 3.2-3.4; Thm. 3.4.2 and Lemma 3.4.6; Sec. 3.3, Thm. 3.3.9] | Arrigo pp. 69-96 (Fourier series on [−π, π] and [−L, L], even/odd extensions); Chambert-Loir pp. 98-118 (coefficients 3.2, Parseval Thm. 3.3.9 p. 109, Dirichlet Thm. 3.4.2 p. 112 for piecewise C¹ → midpoint, Dirichlet kernel Fig. 3.3 p. 113, Riemann-Lebesgue Lemma 3.4.6 p. 115) | Supported | Arrigo covers only computation, not the convergence theorems or Parseval | Added Chambert-Loir (in bib, textbook) at the section, `thm-fourier-convergence` and `thm-parseval` |
| The Fourier transform (`sec-fourier-transform`) | aliev2024mathematical [Ch. 8]; arrigo2023introduction [Ch. 6]; borodzik2019problems [Ch. 2]; chambert-loirInformationTheory2022 [Secs. 3.5-3.7; Thm. 3.5.5; Thm. 3.6.4; Prop. 3.7.1; Thm. 3.6.1]; izaac2018computational [Secs. 8.3.1-8.3.3; Sec. 8.5.1, eqs. (8.45)-(8.49); Problem P8.2; Sec. 8.5.1 and Problem P8.5; Secs. 8.1-8.1.2, 8.4; Sec. 8.4.2, eq. (8.43), Figs. 8.4-8.6; Secs. 8.1 and 8.3.4, Problem P8.1; Sec. 8.2, eqs. (8.20)-(8.25), Problems P8.3-P8.4] | Aliev pp. 465-510; Arrigo pp. 145-160 (eqs. 6.1-6.2, box example); Borodzik Sec. 2.1 pp. 27-41; Chambert-Loir pp. 119-128 (Plancherel Thm. 3.5.5 p. 121, sampling Thm. 3.6.1 p. 123, Poisson Thm. 3.6.4 p. 125, Heisenberg Prop. 3.7.1 p. 126: ∫x²\|f\|²∫y²\|f̂\|² ≥ (∫\|f\|²)²/16π², i.e. ΔxΔk ≥ 1/2 with k = 2πy); Izaac pp. 309-356 (DFT eq. 8.31 p. 322, Nyquist Thm. 8.1 p. 316, leakage and Hann window pp. 334-336, Cooley-Tukey and Gauss 1805 pp. 337-340, P8.1-P8.5 pp. 354-355) | Supported (all 8 Izaac pairs, Aliev, Arrigo, Borodzik) | Plancherel, uncertainty and Poisson summation had no source | Added Chambert-Loir. Re-flowed 4 Izaac citations that were split over two lines (text unchanged) |
| Distributions (`sec-distributions`) | borodzik2019problems [Sec. 2.2.1, Defs. 2.2.1-2.2.2; Defs. 2.2.3-2.2.4; Defs. 2.2.5-2.2.6] | Borodzik pp. 42-51 (test functions and convergence, distributions, distributional derivative, tempered distributions and their Fourier transform, δ₀, convolution) | Supported | Section cited nothing. Principal value is not covered by Borodzik | Added Borodzik at `def-test-function`, `def-distribution` and `def-distribution-transform`. No library source states PV 1/x and its transform (Boudreau, Galitski and Dereziński mention the term only); acceptable, since the section is covered |
| Harmonic analysis on the sphere and on compact groups (`sec-harmonic-analysis`) | aliev2024mathematical [Ch. 7]; arrigo2023introduction [Secs. 7.3.3, 7.4.2; Sec. 7.3.3, eqs. (7.98)-(7.107)]; mukunda2022continuous [Secs. 3.3.4-3.3.5, 7.2; Secs. 3.3.4-3.3.5, eqs. (3.48)-(3.54); Sec. 7.2.1, eqs. (7.45)-(7.47); Secs. 7.2.2 and 7.3.2, eqs. (7.75)-(7.77)]; maggiore2023electrodynamics [Sec. 6.1, eqs. (6.5)-(6.29); eqs. (6.21)-(6.25); eqs. (6.11)-(6.13); Fig. 6.3; eq. (6.24); Secs. 6.4.1-6.4.2, eqs. (6.59)-(6.70), (6.89)]; boudreau2018applied [Sec. 5.1.5, eqs. (5.30)-(5.32)] | Aliev pp. 383-464 (Laplace problems in spherical coordinates, Legendre polynomials); Arrigo pp. 174-176, 183-186 (Laplacian in spherical coordinates, ρⁿ and ρ^{−n−1}, Legendre's equation; Arrigo swaps θ and φ); Mukunda pp. 64-66 (SO(3) UIRs, characters, D-functions, orthogonality and completeness, Y_lm = √(2l+1) D_{m0}), pp. 170-179 (Haar measure and Peter-Weyl eq. 7.47, Frobenius reciprocity p. 173, harmonics on G/H₀ eqs. 7.75-7.77); Maggiore pp. 133-139, 144-149; Boudreau pp. 115-116 | Supported. Maggiore Sec. 6.1 supports only the Cartesian form: its footnote 4 (p. 139) leaves the Y_lm form out | The Y_lm form of `prp-fam-multipole` and Peter-Weyl/coset expansions had no source | Added Boudreau (Y_lm multipole), Mukunda (Peter-Weyl, matrix coefficients, coset harmonics) and Arrigo Secs. 7.3.3/7.4.2 (sphere Laplacian). Re-flowed 5 Maggiore citations that were split over two lines |
| Exercises (`sec-fourier-analysis-exercises`) | arrigo2023introduction [Ch. 4, pp. 69-72]; chambert-loirInformationTheory2022 [Thm. 3.6.4; Thm. 3.5.5 and its proof]; boudreau2018applied [Sec. 5.1.5, eq. (5.31)] | Arrigo pp. 69-72 (heat equation by Fourier series); Chambert-Loir p. 125 (Poisson summation), pp. 121-122 (Plancherel proved by periodising f on [−T/2, T/2] and letting T → ∞, the route of `exr-fa-series-to-transform`); Boudreau p. 115 (1/\|x − x'\| = 4π Σ r'^l/((2l+1) r^{l+1}) Y*Y) | Supported | Section cited nothing | Added a citation to each exercise's lead paragraph |

**Counts.** Before: 5 works, 5 textbooks. After: 8 works, 8 textbooks. Added `chambert-loirInformationTheory2022`,
`boudreau2018applied` and `mukunda2022continuous`, all three in the bib and tagged textbook. `check.py`: works 8,
textbooks 8, 0 citations without a locator, 0 sections citing nothing. A10 is met.

**Citations verified.** 19 existing (work, locator) pairs: Arrigo Ch. 4, Ch. 6; Aliev Ch. 8, Ch. 7; Borodzik Ch. 2;
Izaac × 8; Maggiore × 6. All are supported. The Maggiore Sec. 6.1, eqs. (6.5)-(6.29) citation supports only the Cartesian
half of `prp-fam-multipole`, and the added Boudreau citation covers the Y_lm half. None was unsupported, a
disagreement or not machine-readable. The 9 "without a locator" findings of the first pass were citations split across
two lines. Each now sits on one line, with the text unchanged. Added: 18 new (work, locator) citations, all read and
supported.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. The library covers every section. The only uncovered sub-topic is the principal value 1/x and its transform in
`sec-distributions`. Semantic searches found Basdevant (Lectures on Quantum Mechanics, App. 3.9) and Cini (Elements of
Classical and Quantum Physics, Ch. 3) on the delta function, which could be cited later if wanted.

#### Disagreements

None. The multipole block converted from Gaussian to Heaviside-Lorentz units agrees with Boudreau (Gaussian, ÷4π) and
Maggiore (SI, ε₀ = 1). The `exr-fam-sphere-moments` Sage output was reproduced.

#### Reading-note additions

Drafts are in `scratchpad/notes5/fourier-analysis__<ITEMKEY>.html`. All eight works already have a reading note, so each
draft is the h2 section only.
- arrigo2023introduction (MXBR24Z5): Ch. 4, pp. 69-96 (PDF 77-104); Ch. 6, pp. 145-160 (PDF 153-168); Sec. 7.3.3,
  eqs. (7.98)-(7.107), pp. 174-176 (PDF 182-184); Sec. 7.4.2, pp. 183-186 (PDF 191-194).
- aliev2024mathematical (TE7TGRTA): Ch. 7, pp. 383-464 (PDF 397-478); Ch. 8, pp. 465-510 (PDF 479-524).
- borodzik2019problems (VNWT8IQ7): Ch. 2 / Sec. 2.1, pp. 27-41 (PDF 41-55); Sec. 2.2.1, Defs. 2.2.1-2.2.6, pp. 42-46
  (PDF 56-60).
- izaac2018computational (UHXQS75P): Secs. 8.1-8.5, pp. 309-348 (PDF 324-363); Problems P8.1-P8.5, pp. 354-355
  (PDF 369-370).
- maggiore2023electrodynamics (JGIWV45B): Sec. 6.1, eqs. (6.5)-(6.29), Fig. 6.3, pp. 133-139 (PDF 150-156); Secs.
  6.4.1-6.4.2, eqs. (6.59)-(6.70), (6.89), pp. 144-149 (PDF 161-166).
- chambert-loirInformationTheory2022 (U5H4HRHV): Secs. 3.2-3.7, pp. 98-128 (PDF 110-140). Thms. 3.3.9, 3.4.2, 3.5.5,
  3.6.1 and 3.6.4, Lemma 3.4.6, Prop. 3.7.1.
- boudreau2018applied (Q3K6KQG8): Sec. 5.1.5, eqs. (5.30)-(5.32), pp. 115-116 (PDF 138-139).
- mukunda2022continuous (2UYSHY8B): Secs. 3.3.4-3.3.5, eqs. (3.48)-(3.55), pp. 64-66 (PDF 83-85); Sec. 7.2.1, eqs.
  (7.45)-(7.47), pp. 170-171 (PDF 189-190); Sec. 7.2.2, p. 173 (PDF 192); Sec. 7.3.2, eqs. (7.75)-(7.77),
  pp. 177-179 (PDF 196-198).

### hilbert-spaces-operators

Task 5.7. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages; page offsets
(PDF − printed): Arcozzi 12, Picard 10, Gasinski 10, Izaac 15, Cini 15, Borodzik 15, Scott 11, Dereziński 13,
Buchbinder 11, Tornetta 8, Cheung 18, Galitski 17, Steeb & Hardy 15; Ramesh, Landsman, Waterstraat, Zhou, Vassilevich
and Alvarez-Gaumé 0. Inner-product convention: Arcozzi (Riesz T(x) = ⟨y_T, x⟩, ⟨x, T*y⟩ = ⟨Tx, y⟩), Landsman and
Dereziński are antilinear in the first slot, as the chapter; Gasinski works mostly over ℝ.

**Notation-conversion check (unitary Fourier transform U = (2π)^{-1/2} f̂).** `exm-un-phase` and
`exr-ccr-fourier-conjugation` (and the CCR definition) use f̂(k) = ∫f e^{−ikx}dx, Plancherel ‖f̂‖² = 2π‖f‖², so
‖Uf‖ = ‖f‖, U T_a U^{-1} = multiplication by e^{−ika}, and U p U^{-1} = M_k for p = −i d/dx. Arcozzi Sec. 1.3.1,
eqs. (1.3.1)-(1.3.4), p. 13, uses exactly this transform (e^{−iωx}, inverse with 1/2π, Plancherel with 1/2π, and
(D φ)^ = ω φ̂ with D = i^{-1}d/dx), and Sec. 7.5.1, p. 201, uses it to make D self-adjoint. **Supported**; citations
added at `exm-un-phase` and at the CCR definition. The notation page entry for U agrees.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Normed and Banach spaces (`sec-banach-spaces`) | arcozzi2025 (Ch. 1 and 3; Sec. 1.1.1; Exercise 1.1 (locator added); Thm. 1.1, Prop. 1.1; Secs. 1.2, 1.2.1, 1.4, 3.1; Props. 3.1-3.2; Exercises 3.5, 3.7, 3.10, 3.11; Thms. 3.6, 3.8; Exercise 3.4); picard2020primer (App. B; Lemmas B.1.5, B.1.7, B.4.3); das2023quantum (Secs. 2.2.3, 2.8); waterstraat2016 (Sec. 1.1, Lemma 1.1.10); cheung2024metric (Sec. 2.2, was Sec. 4.2); landsman1998 Lemma 2.4.2 (added) | Arcozzi pp. 1-8, 13, 16-23, 57, 60-64; Picard pp. 133-134, 146; Cini pp. 23-24, 39-41; Waterstraat pp. 7, 9; Cheung pp. 145, 322; Landsman p. 26 | supported, except two: (1) Arcozzi Sec. 1.4 (harmonic functions) does not state that z* is not a uniform limit of polynomials on the disc (`exm-fan-stone-weierstrass-fails`): **unsupported**; (2) Cheung Sec. 4.2 is the contraction-mapping theorem, which the chapter does not use | (a) 1 citation without a locator (line 192); (b) the Stone-Weierstrass statement had no citation; (c) items (1)-(2) | (a) Exercise 1.1 added (the exercise reproduced at line 199); (b) Landsman Lemma 2.4.2 (C*-form of Stone-Weierstrass) added; (c2) Cheung locator corrected to Sec. 2.2 (complete metric spaces, p. 145); (c1) left in place for the owner: no source in the library states the z* example; the theorem whose hypothesis fails is now cited. fixed (owner, 2026-11-18) (M5): arcozzi2025 Sec. 1.4 removed at `exm-fan-stone-weierstrass-fails`. |
| The four principles (`sec-four-principles`) | arcozzi2025 (Secs. 3.2, 3.5, 3.6; Thms. 3.4-3.5, 3.7, 3.12, 3.13, 3.15-3.17; Cors. 3.1-3.4; Exercises 3.1, 3.6, 3.9, 3.12, 3.16, 3.17; proof of Thm. 3.17); picard2020primer (Sec. B.4; Def. B.4.1; Lemma B.4.2(1),(2); Sec. 1.1 (locator added); Def. 1.1.1; Thm. 1.1.4); waterstraat2016 (Sec. 1.2; Thm. 1.1.3; Ex. 1.2.3, was Ex. 1.2.16); ramesh2020weak (Thms. 2.15, 2.16; Def. 2.22, Rem. 2.23); gasinski2014exercises Ch. 5 | Arcozzi pp. 57-63, 71-72, 78; Picard pp. 2, 5, 144-145; Waterstraat pp. 8, 10-11, 15; Ramesh pp. 9-10; Gasinski pp. 835-850 | supported. Ramesh Thm. 2.15 omits the hypothesis that one convex set is open; the chapter states the correct version. Arcozzi Cor. 3.4 gives boundedness only; the bound ‖T‖ ≤ liminf‖T_n‖ is Ramesh Thm. 2.16, cited beside it | (a) 4 citations split across lines and 1 without a locator (line 2209); (b) Waterstraat Ex. 1.2.16 only refers back to Ex. 1.2.3 for the closedness of d/dx | (a) joined onto one line each; Picard Sec. 1.1 added; (b) locator corrected to Ex. 1.2.3 (p. 11), which proves it |
| Weak topologies and reflexivity (`sec-weak-topologies`) | ramesh2020weak (Secs. 2-5 (locator added); Def. 2.7, Prop. 2.8, Thm. 2.9; Props. 2.17, 2.24; Exercise 2.18; Cor. 2.25; Thm. 2.31; Rem. 2.32; Def. 3.1, Rem. 3.2, Prop. 3.3; Prop. 3.5(3); Sec. 3; Thms. 4.1, 4.2, 5.2, 5.7; Cors. 5.3, 5.5; Thm. 5.4; Exercises 5, 8, 15, 16); arcozzi2025 (Secs. 3.3, 3.4; Props. 3.4, 3.5; eq. 3.4.2; Thms. 3.10, 3.11, 4.1); borodzik2019problems Sec. 3.1 (was Ch. 4); gasinski2014exercises Secs. 4.1.9, 5.1.6-5.1.8 (was Ch. 4) | Ramesh pp. 8-20; Arcozzi pp. 62-69, 94; Borodzik pp. 80-82, 135-178; Gasinski pp. 649, 846-850 | supported. Ramesh Exercise 15 asks only for weak ⇒ coordinatewise convergence and leaves the converse as a question; the chapter's exercise adds it | (a) 1 citation without a locator (line 2448); (b) Borodzik Ch. 4 is on elliptic equations, not weak convergence; (c) Gasinski Ch. 4 (measures and topology) covers only weak convergence in L^p (Sec. 4.1.9); weak, weak* and reflexive spaces are Secs. 5.1.6-5.1.8 | (a) Ramesh Secs. 2-5 added; (b) locator corrected to Sec. 3.1 (weak convergence, Def. 3.1.6); (c) locator refined to Secs. 4.1.9, 5.1.6-5.1.8 |
| Inner product and Hilbert spaces (`sec-hilbert-spaces`) | axler2024linear (Ch. 6, Ch. 7); derezinski2022mathematics (Ch. 1-2); added: arcozzi2025 (Cor. 2.1, Prop. 2.1; Exercise 2.2, Lemma 2.2; Thm. 2.3, Cor. 2.2; Thms. 2.2, 2.4, 2.6), gasinski2014exercises (Def. 5.95; Thms. 5.100, 5.105), das2023quantum Sec. 2.9 | Axler Ch. 6 (6A p. 182 to 6C) and Ch. 7 (7A p. 228 to 7F p. 280), TOC and section heads; Dereziński pp. 8-56; Arcozzi pp. 39-49; Gasinski pp. 854-858; Cini p. 41 | supported | only two "for more" pointers; Cauchy-Schwarz, polarisation, Bessel, ONB, three-characterisations and Riesz units had no citation | citations added at each of these units |
| Bounded operators (`sec-bounded-operators`) | scott2023problems Ch. 4; added: arcozzi2025 (Thm. 3.6, Exercise 3.4; Thm. 3.20; Thm. 2.1, Prop. 2.3; Sec. 1.3.1, eqs. 1.3.1-1.3.3), gasinski2014exercises (Def. 5.108(a),(b),(d); Prop. 5.161) | Scott pp. 63-90; Arcozzi pp. 13, 42-43, 60, 85; Gasinski pp. 859, 869 | supported (unitary Fourier transform: see the notation check above) | one "for more" pointer; the definitions of bounded, adjoint, self-adjoint, unitary and projection operators had no citation | citations added at the five definitions and at `exm-un-phase` |
| Spectral theory (`sec-spectral-theory`) | scott2023problems Ch. 6; added: gasinski2014exercises (Prop. 5.151; Thm. 5.160), arcozzi2025 (Thms. 3.21, 4.6; Sec. 7.8), derezinski2022mathematics (Prop. 2.37; Sec. 2.3) | Scott pp. 133 ff.; Gasinski pp. 868-869; Arcozzi pp. 88, 99, 221; Dereziński pp. 43, 45-52 | supported | one "for more" pointer; the spectrum, compact spectral theorem and functional calculus (with Stone's theorem) had no citation | citations added at the three statements |
| Compact and Fredholm operators (`sec-fredholm-operators`) | arcozzi2025 (Ch. 4; Sec. 4.1.2; Lemma 4.1, Cors. 4.1-4.2; Props. 4.1; Thms. 4.1, 4.3, 4.4, 4.5, 4.8, 4.10; Exercise 4.1; proof of Thm. 4.4); waterstraat2016 (Ch. 1; Def. 1.1.4; Lemmas 1.1.5, 1.1.11, 1.2.15; Def. 1.2.14; Ex. 1.2.16; Thms. 1.2.17, 1.2.18, 1.3.5); zhou2024bulkedge Sec. III A, eq. 27 | Arcozzi pp. 93-99, 107-109; Waterstraat pp. 8-9, 14-15, 19; Zhou pp. 5-6 | supported. Arcozzi Thm. 4.8 is for continuous kernels; the Volterra kernel is discontinuous and the chapter cites it for the Arzelà-Ascoli method, which is the same. Zhou eq. 27 gives ind = +deg for its edge orientation; the chapter states −wind and says the edge orientation fixes the sign | 5 citations split across lines | joined onto one line each |
| Unbounded operators and the Laplacian (`sec-unbounded-operators`) | none before; added: gasinski2014exercises Defs. 5.115 and 5.117; picard2020primer Def. B.4.11; arcozzi2025 (Sec. 7.3; eq. 1.3.4; Secs. 7.5.2, 7.5.2.3, 7.5.2.5); tornetta2022mathematical Sec. 3.1; galitski2013exploring Problem 1.29; waterstraat2016 Thm. 1.3.5; vassilevich2003heat eq. 2.2 | Gasinski p. 861; Picard p. 151; Arcozzi pp. 13, 191-192, 201-205; Tornetta pp. 47-50; Galitski pp. 15-18; Waterstraat p. 19; Vassilevich pp. 11-12 | supported. Galitski's twisted condition ψ(b) = e^{iβ}ψ(a) on (a, b) gives eigenvalues (β + 2πn)/(b − a), which for b − a = 2π is the chapter's n + α/2π | the section cited nothing (A1 gap); Weyl's law in `thm-laplacian-discrete-spectrum` has no source in the library (two semantic searches) | citations added at the unbounded-operator, CCR, self-adjoint-extension and Laplace-Beltrami definitions, the twisted and half-line examples, and the discrete-spectrum theorem (Waterstraat, compact resolvent). Weyl's law: new reference proposed (Ivrii). fixed (owner, 2026-11-18): Ivrii is in the bib as `ivrii2016weyl` (B7FD8KDI, PDF UXDYIMYY, printed = PDF), read and cited at `thm-laplacian-discrete-spectrum` [Sec. 1.1, eq. (1.1.1), pp. 2-4, and Sec. 3.1.1, eqs. (3.1.1), (3.1.3), p. 32] and in the lead of `exr-hta-weyl-law` [Sec. 1.1, eq. (1.1.1), pp. 2-3]. Supported: (1.1.1) N(λ) = (2π)^(-d) ω_d vol λ^(d/2) for the positive Laplacian, and (2π)^(-d) ω_d = 1/((4π)^(d/2) Γ(d/2 + 1)), the chapter's constant; p. 4 extends it to closed manifolds (Levitan, Avakumovič); (3.1.3) is the general κ0. Ivrii does not treat the heat-trace (Tauberian) derivation (p. 5), so he is cited for the law, not the exercise's route. |
| Sobolev spaces (`sec-sobolev-spaces`) | borodzik2019problems Ch. 2; waterstraat2016 Thm. 1.3.5 | Borodzik pp. 27-76 (Sec. 2.3, Def. 2.3.3, pp. 52-53); Waterstraat p. 19 | supported | none | none needed |
| Traces, determinants and heat kernels (`sec-traces-heat-kernels`) | buchbinder2021introduction Sec. 13.4; added: derezinski2022mathematics (Defs. 2.38-2.39; Thm. 2.45, Prop. 2.47), arcozzi2025 Sec. 4.3.3, vassilevich2003heat (eqs. 1.9-1.11, 2.18-2.20; 2.21, 4.26-4.27; 4.28; 2.23-2.27, 2.33), alvarezgaume2005 Sec. 3.2, eqs. 3.65-3.66 | Buchbinder pp. 342-361; Dereziński pp. 43-44; Arcozzi p. 106; Vassilevich pp. 6, 11-16, 34, 40; Alvarez-Gaumé pp. 19-21 | supported. Heat-trace coefficients: Vassilevich a_2 = (4π)^{-n/2}(1/6)∫R with R = 2 on the unit S² (p. 12) is the chapter's a_1 = (1/6)∫R; Vassilevich eq. 4.28 with E = 0 gives (5R² − 2Ric² + 2Riem²)/360 = 1/15 on the unit S², the chapter's t/15; eq. 4.4 is the circle's √(π/t). Casimir plates: E/S = −π²/720d³, P = −π²/240d⁴ (ħ = c = 1) | one "for more" pointer; trace class, Fredholm determinant, heat kernel, heat-trace asymptotics, zeta regularisation and Casimir statements had no citation. The interval value −π/(24L) and the periodic and mixed values are computations, not quoted from a source | citations added at the six statements and at the sphere example |
| Banach and C\*-algebras (`sec-banach-algebras`) | arcozzi2025 (Secs. 6.1, 6.1.1 (item 3), 6.1.2, 6.1.3, 6.1.5; Exercise 6.1; Thms. 6.1-6.4, 6.7); landsman1998 (Secs. 2.1-2.5, 2.8; Defs. 2.1.8-2.1.10, 2.2.2, 2.8.1; Prop. 2.2.1, 2.2.7; Lemmas 2.2.4, 2.2.5, 2.2.8; Thm. 2.2.3, 2.4.1, 2.5.1, 2.8.2; Cors. 2.2.6, 2.5.2, 2.5.3; eqs. 2.14, 2.17, 2.78); izaac2018computational (Ch. 7; Sec. 7.2, 7.2.1; eqs. 7.19-7.21; Problems P7.1, P7.6); derezinski2022mathematics Secs. 6.1-6.2 (was Ch. 4-6); tornetta2022mathematical Ch. 1 | Arcozzi pp. 135-143; Landsman pp. 14-18, 25-30, 35; Izaac pp. 269-274, 304-305; Dereziński pp. 142-150; Tornetta pp. 1-25 | supported, with one remark: Landsman Thm. 2.5.1, Cors. 2.5.2-2.5.3 and eq. 2.78 treat self-adjoint elements only; `thm-fan-continuous-calculus` also states the normal case and ‖a‖ = r(a) for normal a, which these pages do not cover. Arcozzi Thm. 6.7 gives the limit form of Gelfand's formula, not the "= inf" | (a) 4 citations split across lines; (b) Dereziński Chs. 4-5 (Weyl operators, measures) are not about Banach algebras | (a) joined; (b) locator narrowed to Secs. 6.1-6.2 |
| Exercises (`sec-hilbert-spaces-operators-exercises`) | none before; added: scott2023problems Problem 4.21; arcozzi2025 Sec. 7.1.4, eq. 7.1.9; steebProblemsSolutionsQuantum2018 Ch. 3, Problem 13 (bib addition); vassilevich2003heat eq. 4.4 | Scott pp. 70-74; Arcozzi pp. 170-171; Steeb & Hardy p. 78; Vassilevich p. 34 | supported | the section cited nothing (A1 gap) | citations added at the three exercises |

Verification summary: 152 distinct (work, locator) pairs with a locator were read, plus the 4 without one. Verdicts: 148
supported (8 of them with the remarks in the table); 1 **unsupported** (arcozzi2025 Sec. 1.4 at
`exm-fan-stone-weierstrass-fails`, left for the owner; fixed (owner, 2026-11-18): removed); 3 off-target locators corrected within the same work (Cheung
Sec. 4.2 → 2.2, Borodzik Ch. 4 → Sec. 3.1, Dereziński Ch. 4-6 → Secs. 6.1-6.2), one imprecise locator corrected
(Waterstraat Ex. 1.2.16 → Ex. 1.2.3 at `exm-fan-derivative-closed`), and one refined (Gasinski Ch. 4 → Secs. 4.1.9,
5.1.6-5.1.8). None not machine-readable. The 15 first-pass "without a locator" findings were 12 citations split across
lines (now joined) and 3 bare citations (locators added). Added: 53 new (work, locator) citations, all read and supported.
`check.py` now reports no citation without a locator and no section citing nothing.

Counts: before 16 works, 11 textbooks; after 20 works, 13 textbooks (new: vassilevich2003heat, alvarezgaume2005,
galitski2013exploring (textbook), steebProblemsSolutionsQuantum2018 (Textbooks collection, pending bib addition);
`check.py` shows 19 and 12 until the addition is merged). Meets A10.

Other finding for the owner (not a source disagreement): `def-bounded-operator` and `def-adjoint` write the conjugate
transpose as "$A^\dagger = (A^\dagger)^\top$", which is circular; presumably $(A^*)^\top$ (entrywise conjugate) was
meant, and the notation conversion may have turned the conjugate into a dagger. Not changed.

#### Bib additions

```bibtex
@book{steebProblemsSolutionsQuantum2018,
  author = {Steeb, Willi-Hans and Hardy, Yorick},
  title = {Problems and Solutions in Quantum Computing and Quantum Information},
  edition = {4},
  publisher = {World Scientific},
  address = {Hackensack, New Jersey},
  year = {2018},
  isbn = {978-981-323-840-4},
  keywords = {textbook},
  zotero = {G2TILKMZ},
  zoteropdf = {58QRNSS4}
}
```

#### Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Ivrii, V., "100 years of Weyl's law", Bull. Math. Sci. 6 (2016) 379-452, arXiv:1608.03963 | Mathematics (main); Partial Differential Equations | Publications | arXiv:1608.03963 (open access; journal also open access) | `sec-unbounded-operators` (`thm-laplacian-discrete-spectrum`, Weyl's law), `sec-traces-heat-kernels` (`exr-hta-weyl-law`) | fixed (owner, 2026-11-18): already in the bib as `ivrii2016weyl`; cited at both places |

#### Disagreements

None after conversion. The unitary Fourier transform, the momentum operator and the heat-trace coefficients agree with
Arcozzi and Vassilevich. The one unsupported citation (Arcozzi Sec. 1.4) is a missing support, not a disagreement.

#### Reading-note additions

Drafts are in `scratchpad/notes5/hilbert-spaces-operators__<ITEMKEY>.html`. Every work except Steeb & Hardy already has
a reading note, so those drafts are the h2 section only; Steeb & Hardy gets a full note (Identity, Structure, chapter).
- arcozzi2025 (YCZC5683): Ch. 1 and 3; Sec. 1.1.1, Exercise 1.1, Thm. 1.1, Prop. 1.1, pp. 1-5; Secs. 1.2, 1.2.1,
  pp. 6-8; Sec. 1.3.1, eqs. 1.3.1-1.3.4, p. 13; Sec. 1.4, pp. 16-23 (unsupported use); Ch. 2, pp. 39-49 (Cor. 2.1,
  Prop. 2.1, Exercise 2.2, Lemma 2.2, Thms. 2.1-2.4, 2.6, Cor. 2.2, Prop. 2.3); Ch. 3, pp. 57-88 (Props. 3.1-3.5,
  Cors. 3.1-3.4, Thms. 3.4-3.8, 3.10-3.13, 3.15-3.17, 3.20, 3.21, eq. 3.4.2, Exercises 3.1, 3.4-3.7, 3.9-3.12, 3.16,
  3.17); Ch. 4, pp. 93-109 (Lemma 4.1, Cors. 4.1-4.2, Props. 4.1, Thms. 4.1, 4.3-4.6, 4.8, 4.10, Exercise 4.1, Sec.
  4.3.3); Ch. 6, pp. 135-143 (Secs. 6.1.1-6.1.5, Exercise 6.1, Thms. 6.1-6.4, 6.7); Sec. 7.1.4, eq. 7.1.9, pp. 170-171;
  Secs. 7.3, 7.5.1-7.5.2.5, 7.8, pp. 191-192, 201-205, 221.
- ramesh2020weak (QZPWSVLT): Secs. 2-5, pp. 8-19; Def. 2.7-Thm. 2.9 p. 8; Thms. 2.15-2.16, Prop. 2.17 p. 9; Exercise
  2.18, Def. 2.22-Prop. 2.24 p. 10; Cor. 2.25 p. 11; Thm. 2.31, Rem. 2.32 p. 13; Def. 3.1-Prop. 3.3 p. 14; Prop. 3.5
  p. 15; Thms. 4.1-4.2 p. 16; Thm. 5.2-Cor. 5.5 p. 18; Thm. 5.7 p. 19; Exercises 5, 8, 15, 16, pp. 19-20.
- landsman1998 (A39U4N2M): Secs. 2.1-2.5, 2.8; Defs. 2.1.8-2.1.10, eqs. 2.14, 2.17, pp. 14-15; Prop. 2.2.1-Lemma
  2.2.8, pp. 16-18; Thm. 2.4.1, Lemma 2.4.2, pp. 25-26; Thm. 2.5.1, Cors. 2.5.2-2.5.3, eq. 2.78, pp. 28-30; Def.
  2.8.1, Thm. 2.8.2, p. 35.
- picard2020primer (3IN8XYZK): App. B, Lemmas B.1.5, B.1.7, pp. 133-134; Sec. B.4, Def. B.4.1, Lemmas B.4.2-B.4.3,
  Def. B.4.11, pp. 144-151; Sec. 1.1, Def. 1.1.1, Thm. 1.1.4, pp. 2-5.
- waterstraat2016 (KWWRI8E7): Ch. 1; Sec. 1.1, Thm. 1.1.3, Def. 1.1.4, Lemmas 1.1.5, 1.1.10, 1.1.11, pp. 7-9; Sec.
  1.2, Ex. 1.2.3, Def. 1.2.14, Lemma 1.2.15, Ex. 1.2.16, Thms. 1.2.17-1.2.18, pp. 10-15; Thm. 1.3.5, p. 19.
- izaac2018computational (UHXQS75P): Ch. 7; Sec. 7.2, eqs. 7.19-7.21, p. 273; Sec. 7.2.1, p. 274; Problems P7.1,
  P7.6, pp. 304-305.
- das2023quantum (Q3WIWUT2): Sec. 2.2.3, pp. 23-24; Sec. 2.8, pp. 39-40; Sec. 2.9, p. 41.
- cheung2024metric (QKHPZ27J): Sec. 2.2, p. 145.
- gasinski2014exercises (MM7HAG47): Ch. 5, pp. 835-1003; Sec. 4.1.9, p. 649; Secs. 5.1.6-5.1.8, pp. 846-850; Def.
  5.95, Thms. 5.100, 5.105, Def. 5.108, pp. 855-859; Defs. 5.115, 5.117, p. 861; Prop. 5.151, Thm. 5.160, Prop.
  5.161, pp. 868-869.
- borodzik2019problems (VNWT8IQ7): Ch. 2, Sec. 2.3, pp. 52-53; Sec. 3.1, pp. 80-82.
- axler2024linear (YVGPNNLV): Ch. 6 (6A p. 182, 6B p. 197, 6C p. 211); Ch. 7 (7A p. 228 to 7F p. 280).
- scott2023problems (AU8YU6PB): Ch. 4, pp. 63-90, Problem 4.21, pp. 70-74; Ch. 6, from p. 133.
- derezinski2022mathematics (QXAFEK2G): Chs. 1-2; Prop. 2.37, Defs. 2.38-2.39, p. 43; Thm. 2.45, Prop. 2.47, pp.
  43-44; Sec. 2.3, pp. 45-52; Secs. 6.1-6.2, pp. 142-150.
- buchbinder2021introduction (MSWD9GKH): Sec. 13.4, pp. 342-361.
- tornetta2022mathematical (VI3SLD4R): Ch. 1, pp. 1-25; Sec. 3.1, pp. 47-50.
- zhou2024bulkedge (2XFL6ZP2): Sec. III A, eqs. 22-27, pp. 5-6.
- vassilevich2003heat (QLTSJVB9): eqs. 1.9-1.12, p. 6; eq. 2.2, p. 11; p. 12 (R = 2 on S²); eqs. 2.18-2.27, pp. 14-15;
  eq. 2.33, p. 16; eq. 4.4, p. 34; eqs. 4.26-4.28, p. 40.
- alvarezgaume2005 (JF6SI39M): Sec. 3.2, eqs. 3.59-3.66, pp. 19-21.
- galitski2013exploring (EKIZE3IG): Problem 1.29, pp. 15-18.
- steebProblemsSolutionsQuantum2018 (G2TILKMZ, new note): Identity (World Scientific 2018, 4th ed., attachment
  58QRNSS4, 554 pp., printed = PDF − 15); Structure (Part I; Ch. 3 Matrix Properties p. 65); Ch. 3, Problem 13, p. 78.

### probability

Task 5.8. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages; page offsets
(PDF − printed): Baldi 9, Bricmont 11, Capiński 9, Cufaro Petroni 12, Foulaadvand 15, Gasiński 10 (Ch. 3), Aggarwal
14, Boudreau 23.

**Stated deviation (characteristic function φ_X(t) = 𝔼e^{+itX}).** Every source that defines it uses the same + sign:
Baldi Sec. 2.6, eq. (2.36), p. 69; Capiński p. 213 (φ_X(t) = E cos tX + iE sin tX); Cufaro Petroni Def. 4.7, p. 102;
Bricmont Exercise 2.3, p. 31 (E exp(ikx)). No conversion is needed, and nothing disagrees. Two consequences were
rechecked against the sources: the Gaussian φ = e^{iμt − σ²t²/2} (Bricmont Ex. 2.3; Cufaro eq. 4.13 and Prop. 4.18)
and the cumulant generating function (Cufaro App. E, p. 320: η = ln φ, η = ibu − a²u²/2 for N(b, a²) and
α(e^{iu} − 1) for Poisson; the chapter's K(s) = log 𝔼e^{sX} is η at u = −is). *Remark for the owner (not a source
disagreement):* the subsection intro calls φ_X "the Fourier transform of the density", as Cufaro (p. 102) and Baldi
(p. 70) do. Under the site convention f̂(k) = ∫f e^{−ikx}, the notation page states φ_X(t) = p̂_X(−t), so "the Fourier
transform at −t" would be exact. Text unchanged. fixed (owner, 2026-11-18) (M4): the intro now says φ_X is the Fourier transform of the
density evaluated at −t, φ_X(t) = p̂_X(−t) under the site convention f̂(k) = ∫f e^(−ikx) dx.

**Other checks.** `exr-pbr-stirling`: P(N = n/2 + √n x) ≈ (2/√(2πn))e^{−2x²} is the Bin(n, ½) local limit (variance n/4).
Correct. Coin-flip CLT: n log cos(t/√n) = −t²/2 − t⁴/12n + …, correct. Random walk: the chapter's Var X_N = 4pqNa² and
D = 2pqa²/Δt are Foulaadvand eqs. (10.10)-(10.11). The diffusion limit (`prp-rw-diffusion-limit`) is the 1D reduction of
eqs. (10.18)-(10.23) (2D, a²/Δt → 4D). The source's drift C_x = (p_l − p_r)a/Δt enters as +C_x∂_xP, which is −v∂_xρ
with v = (p − q)a/Δt, as in the chapter. Mean first passage τ = x₀(L − x₀)/2D with D = 2pq = ½ (p. 285) gives the
chapter's τ(x) = x(L − x). The chapter's two documented corrections of Foulaadvand were confirmed in the source. (1) In
Sec. 10.2, p. 266, the update rule "one segment is chosen at random" is inconsistent with rate eq. (10.3), p. 268. (2) In
Sec. 10.6, p. 296, eq. (10.26) has the boundary P(±L, n) = 0, which describes absorbing walls, although the text says
reflecting. Both are corrections of the source, not disagreements with it.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Probability spaces (`sec-probability-spaces`) | baldi2023probability [Ch. 1, Secs. 2.1-2.2 and 4.1]; capinski2001probability [Ch. 1-7]; cufaropetroni2020probability [Ch. 1, Defs. 1.1-1.19; Prop. 1.17]; bricmont2022statistical [Sec. 2.2.5; Exercise 2.2; Sec. 2.2.3, eq. (2.2.7); Exercises 2.14, 2.15] | Baldi pp. 1-40 (σ-algebras, measures), p. 41 (probability space), pp. 44-53 (independence), p. 177 (conditional probability); Capiński TOC and Chs. 1-7 pp. 5-116 (Bayes formula Thm. 7.2, p. 91); Cufaro pp. 3-18 (sample space Def. 1.1, σ-algebra of a decomposition Def. 1.6, Kolmogorov axioms Def. 1.12, conditional probability Def. 1.13, total probability Prop. 1.14, Bayes Prop. 1.17, independence Defs. 1.18-1.19 incl. pairwise vs mutual); Bricmont pp. 13-14 (Bayesian updating, false-positive test), pp. 16-18 (Bertrand answers ½, ⅓, ¼ and Jaynes' invariance argument), pp. 31-34 (Exercises 2.2, 2.14, 2.15) | Supported. Baldi Ch. 1 alone is general measure theory: the probability space, independence and conditioning are in Secs. 2.1-2.2 and 4.1 | Baldi locator too narrow; Bayes' rule and the birthday exercise had no source | Extended Baldi's locator; added Cufaro Ch. 1 at the section line, Bricmont Sec. 2.2.3 and Cufaro Prop. 1.17 at the Bayes' rule subsection, Bricmont Ex. 2.2 at `exr-prob-birthday`. Re-flowed the Bertrand citation that was split over two lines |
| Random variables and distributions (`sec-random-variables`) | baldi2023probability [Ch. 2; Sec. 2.6, eq. (2.36)]; capinski2001probability [Ch. 8-12]; cufaropetroni2020probability [Ch. 1-4; Sec. 4.2.1, Def. 4.7, Thms. 4.11-4.12]; bricmont2022statistical [Exercises 2.1, 2.3, 2.5, 2.8, 2.9, 2.12] | Baldi pp. 41-114 (laws, expectation, variance, CF p. 69); Capiński Chs. 8-12 pp. 117-260 (CF p. 213); Cufaro pp. 19-106 (distributions, random variables, expectation, CF Def. 4.7 p. 102, Thm. 4.11 moments, Thm. 4.12 uniqueness p. 106); Bricmont pp. 31-33 (Ex. 2.1: at least 4 heads in 6 tosses; 2.3: Gaussian CF and moments; 2.5: Poisson mean and variance; 2.8: first person more unlucky; 2.9: St Petersburg; 2.12: multinomial) | Supported. The Cufaro "Ch. 1-4" line locator is broad (Ch. 1 is probability spaces) but contains the section's material | St Petersburg, Gaussian-CF and Poisson-moment exercises adapted from Bricmont had no citation | Added Bricmont Exs. 2.9, 2.3, 2.5 at the lead paragraphs; added Baldi Sec. 2.6 and Cufaro Sec. 4.2.1 at the characteristic-function subsection (same sign convention). Re-flowed the Ex. 2.12 citation that was split |
| Limit theorems (`sec-limit-theorems`) | baldi2023probability [Ch. 3]; cufaropetroni2020probability [Secs. 4.1, 4.3-4.6]; aggarwalProbabilityStatisticsMachine2024 [Secs. 11.3-11.4.1, Thms. 11.2-11.6]; gasinski2014exercises [Thm. 3.107; Problem 3.14]; bricmont2022statistical [Sec. 2.3 and Exercise 2.10; Secs. 2.3.1-2.3.2; Exercises 2.11, 2.13; Exercises 2.3-2.4, eqs. (2.8.1)-(2.8.2)]; foulaadvand2023computational [Sec. 10.3; Sec. 10.3.1, eqs. (10.6)-(10.11); eq. (10.12); Sec. 10.3.2, eq. (10.15); Sec. 10.2, eqs. (10.2)-(10.5); Problem 10.11; Sec. 10.5, eqs. (10.18)-(10.23); Sec. 10.5, and Problem 10.4; Sec. 10.5, eq. (10.23); Sec. 10.6, eqs. (10.24)-(10.26); Problems 10.2-10.4; Sec. 10.4.4, Fig. 10.25; Problem 10.12] | Baldi pp. 115-176; Cufaro pp. 99-101, 113-126 (WLLN Thm. 4.23, SLLN Thm. 4.25, CLT Thms. 4.27-4.28, Poisson Thms. 4.30-4.33, Cauchy failure Sec. 4.6); Aggarwal pp. 490-499; Gasiński p. 435 (Chebyshev), p. 462 (Borel-Cantelli); Bricmont pp. 19-23 (typicality, weak/strong LLN eqs. 2.3.1-2.3.13, CLT Thm. 2.1), pp. 31-33 (Exs. 2.3, 2.4 with the pairing formula 2.8.2, 2.10, 2.11, 2.13); Foulaadvand pp. 265-300 | Supported (all 13 Foulaadvand pairs, the 4 existing Bricmont pairs, Baldi) | Chebyshev/Markov/Chernoff, Borel-Cantelli and Wick's theorem had no source; the Cauchy and Poisson limits were covered only by the line citation | Added Cufaro Secs. 4.1, 4.3-4.6 at the section line, Aggarwal and Gasiński at the Chebyshev subsection, Gasiński Problem 3.14 at `exr-lt-borel-cantelli`, Bricmont Exs. 2.3-2.4 at Wick's theorem. Re-flowed 2 Foulaadvand citations split over two lines |
| Statistics and estimation (`sec-statistics`) | gasinski2014exercises [Ch. 3]; aggarwalProbabilityStatisticsMachine2024 [Chs. 5-6; Secs. 6.2-6.3, 6.6.1; Secs. 5.3-5.4.2; Sec. 5.6.2]; baldi2023probability [Secs. 2.9, 3.9 and 6.1; Sec. 3.9, Thm. 3.42 and Example 3.43; Sec. 6.1, Examples 6.2-6.4]; boudreau2018applied [Ch. 7; Secs. 7.2.7-7.2.9 and 7.4-7.4.1, eq. (7.7)] | Gasiński Ch. 3 pp. 403-632 (searched: no estimator, likelihood, confidence interval, χ² or Monte Carlo content); Aggarwal pp. 193-222 (standard error Def. 5.3, 1.96σ/√n interval, t-interval, χ² goodness of fit with k − 1 dof, binning of continuous data, Example 5.14, critical value 11.07 at 5 dof), pp. 247-262 (MLE; Poisson λ̂ = x̄; normal σ̂² without Bessel correction, biased), p. 276 (Table 6.2: Var σ̂² = 2(n − 1)σ⁴/n², consistent with the chapter's Var s² = 2σ⁴/(n − 1)); Baldi pp. 90-96 (Cochran Thm. 2.42, Σ(X_i − X̄)² ~ χ²(m − 1) eq. 2.73, Student t), pp. 154-158 (Pearson Thm. 3.42, fair-die Example 3.43), pp. 241-243 (inversion, Box-Muller); Boudreau pp. 207-221 (inversion, sum of uniforms, polar Gaussian, Monte Carlo π with σ_r² = r(1 − r)/N eq. 7.7, 1/√N independent of dimension, importance sampling) | **gasinski2014exercises [Ch. 3]: unsupported** (Ch. 3 is measure, integral and martingales). All added citations supported | The only citation did not cover the section | Added Aggarwal (in bib, textbook), Baldi Secs. 2.9/3.9/6.1 and Boudreau (in bib, textbook) at the section line and at the maximum-likelihood, confidence-interval, χ² and Monte Carlo subsections. The Gasiński citation is left in place for the owner (suggest removing it here; Gasiński is now cited where it supports, at Chebyshev and Borel-Cantelli). fixed (owner, 2026-11-18) (M5): gasinski2014exercises [Ch. 3] removed from the section line. |
| Exercises (`sec-probability-exercises`) | cufaropetroni2020probability [App. E]; aggarwalProbabilityStatisticsMachine2024 [Sec. 5.6.2] | Cufaro pp. 319-321 (cumulants as coefficients of ln φ; Gaussian, Cauchy, Poisson); Aggarwal pp. 220-222 | Supported | Section cited nothing. Gambler's ruin has no direct library source | Added both at the lead paragraph. Gambler's ruin: Shiryaev, Problems in Probability (in bib) Sec. 1.9 "Probability of ruin … in coin tossing" (pp. 46-47) only states problems on the main text's ruin probabilities, so it was not cited. The section is covered without it |

**Counts.** Before: 6 works, 6 textbooks. After: 8 works, 8 textbooks. Added `aggarwalProbabilityStatisticsMachine2024` and
`boudreau2018applied`, both in the bib and tagged textbook. `check.py`: works 8, textbooks 8, 0 citations without a
locator, 0 sections citing nothing. A10 is met.

**Citations verified.** There were 30 existing (work, locator) pairs: Baldi Ch. 1, 2, 3; Capiński Ch. 1-7, 8-12; Cufaro
Ch. 1-4; Gasiński Ch. 3; Bricmont × 10 (Sec. 2.2.5; Exs. 2.14, 2.15, 2.8, 2.1, 2.12, 2.11, 2.13; Sec. 2.3 and Ex. 2.10;
Secs. 2.3.1-2.3.2); Foulaadvand × 13. Verdicts: 29 supported and 1 unsupported (`gasinski2014exercises` [Ch. 3] in
`sec-statistics`). None was a disagreement or not machine-readable. The 4 "without a locator" findings of the first
pass were citations split across two lines. Each now sits on one line, with the text unchanged. Added: 25 new (work,
locator) citations, all read and supported. One of them is Baldi's section-line locator, extended from Ch. 1 to Ch. 1,
Secs. 2.1-2.2 and 4.1.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. The library covers every section. The one sub-topic without a direct source is the gambler's ruin
(`exr-pr-gamblers-ruin`). The ruin probability r_k = ((q/p)^k − (q/p)^N)/(1 − (q/p)^N) is in Shiryaev's main
textbook *Probability-1*, Sec. 1.9, which is not in the library. It could be proposed later if the owner wants the
exercise sourced.

#### Disagreements

None. The stated deviation φ_X = 𝔼e^{+itX} agrees with all four sources that define a characteristic function. The two
Foulaadvand corrections that the chapter already states (the Ehrenfest rule, and reflecting versus absorbing walls)
were confirmed against pp. 266-268 and p. 296. They correct the source and are not text-versus-source disagreements.

#### Reading-note additions

Drafts are in `scratchpad/notes5/probability__<ITEMKEY>.html`. All eight works already have a reading note, so each
draft is the h2 section only.

- baldi2023probability (Q5ZUX3KQ): Ch. 1, pp. 1-40; Secs. 2.1-2.2, pp. 41-53; Sec. 2.6, eq. (2.36), p. 69; Sec. 2.9,
  Thm. 2.42, eq. (2.73), pp. 90-96; Ch. 3, pp. 115-176; Sec. 3.9, Thm. 3.42, Example 3.43, pp. 154-158; Sec. 4.1, p. 177;
  Sec. 6.1, Examples 6.2-6.4, pp. 241-243.
- bricmont2022statistical (KAGHBX2W): Sec. 2.2.3, eq. (2.2.7), pp. 13-14; Sec. 2.2.5, pp. 16-18; Secs. 2.3-2.3.3,
  pp. 19-23; Exercises 2.1-2.5, 2.8-2.15, pp. 31-34.
- capinski2001probability (A66N4I5H): Chs. 1-7, pp. 5-116; Chs. 8-12, pp. 117-260 (CF p. 213).
- cufaropetroni2020probability (789IXIC2): Ch. 1, Defs. 1.1-1.19, Prop. 1.17, pp. 3-18; Chs. 2-4; Sec. 4.2.1, Def. 4.7,
  Thms. 4.11-4.12, pp. 102-106; Secs. 4.1, 4.3-4.6, pp. 99-101, 113-126; App. E, pp. 319-321.
- foulaadvand2023computational (WHBRCYJA): Secs. 10.2-10.6, eqs. (10.2)-(10.26), pp. 265-297; Problems 10.2-10.4,
  10.11, 10.12, pp. 297-300.
- gasinski2014exercises (MM7HAG47): Ch. 3 (section line, unsupported); Thm. 3.107, p. 435; Problem 3.14, p. 462.
- aggarwalProbabilityStatisticsMachine2024 (ZVVSSS7W): Secs. 5.3-5.4.2, pp. 194-204; Sec. 5.6.2, pp. 220-222;
  Secs. 6.2-6.3, pp. 247-262; Sec. 6.6.1, Table 6.2, p. 276; Secs. 11.3-11.4.1, pp. 490-499.
- boudreau2018applied (Q3K6KQG8): Secs. 7.2.7-7.2.9, pp. 207-212; Secs. 7.4-7.4.1, eq. (7.7), pp. 216-221.

### differential-geometry

Task 5.9. PDFs read with `pdftotext`. Page offsets (PDF − printed): Lee 15, Godinho 11 (10 from Ch. 3), Torres del
Castillo 9 (4 in App. B), Rudolph 14, Gadea 18, Keski-Vakkuri 11, Gray 12, Emam 19, Needham 29, Blennow 10, Boskoff 24.
Conventions checked (A6): Keski-Vakkuri (5.217)/(5.222), Torres (5.16)/(6.95), Godinho Def. 4.1.1, Boskoff Sec. 4.9,
Gray (4.16) and Blennow all use R(X,Y) = ∇X∇Y − ∇Y∇X − ∇[X,Y], R^ρ_σμν = ∂_μΓ^ρ_νσ − … and R_σν = R^ρ_σρν, as the
chapter does. Keski-Vakkuri's mostly-plus signature converts to the chapter's (+,−,−,−) by g → −g. Lee's determinant
convention for ∧ is the chapter's 1/(p!q!) Σ sgn σ; the component formula of `def-exterior-derivative` was checked by
hand against it.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Charts and manifolds (`sec-charts-manifolds`) | gadea2013analysis [Ch. 1]; godinho2014introduction [Ch. 1, Ch. 3; Sec. 1.2, Exercises 6-7; Sec. 1.2, Def. 2.1; Sec. 1.5; Sec. 3.1, Prop. 1.4]; lee2013introduction [Ch. 1-3; Ch. 1, pp. 3-4, 12-13; Problem 1-7; Example 1.8; Ch. 4, pp. 85-86]; rudolph2013differential [Ch. 1]; torresdelcastillo2020differentiable [Ch. 1, Ch. 5-6; Sec. 1.1, pp. 2-4; Example 1.5; Example 7.7; Example 6.4, eq. (6.5)]; boskoff2024journey [Sec. 4.3, p. 73] | Gadea TOC (Secs. 1.1-1.10); Godinho pp. 7, 11, 22, 96-97; Lee pp. 3-4, 7, 12-13, 30-31, 85-86 and TOC; Rudolph TOC (Secs. 1.1-1.8); Torres pp. 2-6, 143-144, 207-208 and TOC; Boskoff pp. 73-74 | Supported, except **Torres Ch. 5 (Connections): unsupported here** (no charts or embeddings in it). Torres Ch. 6 supported by Sec. 6.1 (Example 6.4) | Only chapter-level "For more" pointers; no locator at any statement | Added 10 located citations (chart and atlas, stereographic proposition, manifold, SU(2) = S³, product, embedding, Gram matrix, sphere Gram matrix). Torres Ch. 5 kept (only additions allowed); the owner may drop it. fixed (owner, 2026-11-18) (M5): dropped; the line now reads torresdelcastillo2020differentiable [Ch. 1, Ch. 6]. |
| Vector fields, forms and tensors (`sec-vector-fields-forms-tensors`) | emam2021covariant [Ch. 1-2, Ch. 9]; gadea2013analysis [Ch. 2]; godinho2014introduction [Ch. 2; Sec. 2.5]; gray2019student [Ch. 2; Sec. 2.2, eqs. (2.17), (2.19), (2.24)]; keskivakkuri2022mathematical [Ch. 4]; lee2013introduction [Ch. 8-9, Ch. 11-14; pp. 54-55; eqs. (3.11)-(3.12); pp. 185-188, Prop. 8.28; pp. 205-207; eqs. (11.6)-(11.7); eq. (14.3) and Prop. 14.11; Thm. 14.24; p. 367 and Thms. 17.13-17.14; Thm. 16.11]; rudolph2013differential [Ch. 3, Ch. 4]; torresdelcastillo2020differentiable [Ch. 3; Sec. 1.2] | Lee pp. 54, 64, 185-188, 205-207, 276, 355-356, 365-367, 411, 446-447; Gray pp. 33-34; Godinho p. 81; TOCs of Emam (Secs. 9.1-9.6), Gadea, Godinho, Keski-Vakkuri (Secs. 4.3-4.4), Rudolph, Torres | Supported. Lee Ch. 13 (in the "Ch. 11-14" range) is metric material, partial here | Statements had no located source | Added 11 located citations at the leads of def-tangent-vector, def-components, def-lie-bracket, def-integral-curve, def-coordinate-differentials, def-tensor-transformation, def-wedge-product, def-exterior-derivative, def-closed-exact, thm-stokes. One disagreement candidate (D-DG1) |
| Metrics (`sec-metrics`) | boskoff2024journey [Secs. 4.13 and 7.1; Ex. 4.13.2; Ex. 4.3.3; Sec. 7.1; Sec. 7.2; Ex. 4.13.1; Ex. 4.3.2]; sagemath (no locator applies); keskivakkuri2022mathematical [Secs. 5.1-5.2, 5.13; Sec. 5.1, pp. 170-172; Sec. 5.1.1; Sec. 5.1.2; Sec. 5.2, p. 178; Sec. 5.13]; lee2013introduction [Ch. 13; pp. 327-328, 343; pp. 337-338; pp. 341-342; Ch. 15, pp. 389-390; pp. 333-334; p. 332; Example 13.2]; torresdelcastillo2020differentiable [Sec. 6.1; eq. (6.6); eqs. (6.6)-(6.9); Example B.7, pp. 328-329]; godinho2014introduction [Sec. 3.1]; needham2021visual [Chs. 4-6] | Boskoff pp. 76-77, 104-106, 154-165; Keski-Vakkuri pp. 170-178, 225-226; Lee pp. 327-345, 389-390; Torres pp. 144-145, 328-329; Godinho pp. 96-97; Needham TOC (Act II) | Supported. Torres Example B.7 gives exactly ¼(dθ² + dφ² + dψ² + 2cos θ dφdψ) as the pullback of the R⁴ metric, so det = sin²θ/64 | Only Boskoff (hyperbolic plane) and the tool were cited; no textbook for the metric itself | Added a "For more" line and 17 located citations (metric, signature, inverse, length, lowering, raising, volume element, induced, flat, product, isometry, polar, Minkowski, sphere and SU(2) metrics) |
| Connections and curvature (`sec-connections-curvature`) | godinho2014introduction [Ch. 4; Sec. 3.3, Thm. 3.2; Sec. 3.4; Sec. 4.1, Props. 1.3-1.4; Sec. 4.1, Def. 1.5; Sec. 4.3, Thm. 3.3]; gray2019student [Ch. 3; Exercise 3.16; Sec. 4.2.1, eqs. (4.16), (4.19)-(4.23)]; needham2021visual [Acts II-III, Act IV, Act V]; blennow2022relativity [Problems 2.3, 2.20, 2.41, 2.42, 2.46, 2.48]; boskoff2024journey [Sec. 7.1; Sec. 4.15; Secs. 4.6-4.10; Exs. 4.6.1-4.6.2; Problem 4.7.2; Sec. 4.6; Ex. 4.10.4; Sec. 4.8; Thms. 4.10.1 and 4.10.3; Ex. 4.10.5; Sec. 4.10; Sec. 4.12; Secs. 4.7 and 4.10]; keskivakkuri2022mathematical [Secs. 5.3-5.10 and the located eqs. (5.63), (5.65)-(5.67), (5.109)-(5.135), (5.148)-(5.162), (5.201), (5.107)-(5.108), (5.208)-(5.223); Sec. 5.5; Problem 5.5]; torresdelcastillo2020differentiable [Ch. 5, Secs. 6.2-6.3; App. B, p. 328; Example B.7]; emam2021covariant [eqs. (3.37)-(3.38)] | Godinho pp. 103-110, 124-127, Sec. 4.3; Gray pp. 79, 94; Needham TOC; Blennow pp. 43, 46, 51-52, 232-233; Boskoff pp. 83-102, 118-119, 154-157; Keski-Vakkuri pp. 179-203, 229; Torres pp. 121-122, 176-178, 328-329; Emam p. 87 | Supported. **Blennow Problem 2.41** (exr-sff-paraboloid): the problem asks for the Riemann tensor only; "compares the two routes, as … asks" overstates it (partial). **Boskoff Sec. 4.10** (exr-sff-codazzi): Codazzi-Mainardi supported (p. 94); the claim that Gauss and Codazzi are the conditions for (g, h) to come from a surface (Bonnet) is not in Boskoff (partial). Blennow 2.48: R_μν = −Λg_μν with Λ = 1 is the chapter's λ = −1: supported | Only Godinho, Gray and Needham at chapter level for the general theory; Boskoff and Blennow cover surfaces and exercises | Added a "See also" line (Keski-Vakkuri, Torres) and 23 located citations (connection, covariant derivative, torsion, compatibility, Levi-Civita, first kind, polar and sphere symbols, parallel transport, geodesic, exponential map, sphere geodesics, Riemann, symmetries, sectional and Gauss curvature, Ricci, scalar, Einstein metric and tensor, SU(2) curvature, Gauss-Bonnet, torus symbols). Re-flowed 3 citations split over two lines (text unchanged). fixed (owner, 2026-11-18) (M5): Blennow narrowed at `exr-sff-paraboloid` to "the intrinsic one, the Riemann tensor of the paraboloid's induced metric, is blennow2022relativity [Problem 2.41]"; Boskoff moved at `exr-sff-codazzi` onto "the Codazzi-Mainardi equations [boskoff2024journey, Sec. 4.10, p. 94]", leaving the Bonnet clause uncited. |
| Flows and Killing vectors (`sec-flows-killing`) | torresdelcastillo2020differentiable [Ch. 2; Sec. 2.1; Sec. 2.3, eq. (2.21); Secs. 2.2-2.3, eqs. (2.20) and (2.33); eq. (2.34); Sec. 6.1, eq. (6.39)]; lee2013introduction [Ch. 9 and Ch. 12, pp. 319-322; Thm. 9.12; p. 319]; keskivakkuri2022mathematical [Secs. 4.3.6-4.3.8, 5.13-5.14; Sec. 4.3.7; Sec. 4.3.8; eqs. (5.386)-(5.389); p. 227; pp. 227-228; Problem 5.8] | Torres pp. 37, 49-55, 155-157; Lee pp. 212, 319-322; Keski-Vakkuri pp. 137-139, 226-230 | Supported. Torres (6.39) gives K₁, K₂, K₃ exactly; [K₃, K₁] = −K₂ rechecked by hand | One chapter-level citation only | Extended the "For more" line; added 9 located citations (flow, one-parameter group, pullback, Lie derivative, Killing, sphere Killing fields, isometry algebra, brackets, maximal symmetry) |
| Exercises (`sec-differential-geometry-exercises`) | lee2013introduction [Problem 1-7; Example 13.18(a); Thm. 14.35; Thm. 16.11; Example 13.2; Problem 13-4]; torresdelcastillo2020differentiable [Example B.7]; gray2019student [Exercise 3.16(d); Sec. 2.2, eq. (2.24)]; keskivakkuri2022mathematical [Problem 5.1; Sec. 4.4.3; Sec. 5.2 and Problem 5.1; Sec. 5.1; Problem 5.2; Sec. 5.5.1; Sec. 5.14 and Problem 5.8; Secs. 5.13-5.14; Sec. 5.14, eq. (5.390)]; godinho2014introduction [Sec. 2.5; Sec. 4.3, Thm. 3.3]; needham2021visual [Ch. 24, eq. (24.2); Ch. 24] | Lee pp. 30, 329, 334, 345, 372, 411; Gray p. 79; Keski-Vakkuri pp. 151, 184-186, 226-230; Godinho p. 81, Sec. 4.3; Needham pp. 245-251 | Supported | Section cited nothing | Added a citation to the lead paragraph of each of the 15 integrative exercises |

**Counts.** Before: 12 works, 11 textbooks (`sagemath` is the twelfth). After: 12 works, 11 textbooks; no work added,
since A10 was already met and every section is covered by works already cited. `check.py`: works 12, textbooks 11, 1
citation without a locator (`sagemath`, software, not applicable), 0 sections citing nothing.

**Citations verified.** 41 existing (work, locator) pairs: 39 supported; Torres "Ch. 5-6" in `sec-charts-manifolds`
supported only for Ch. 6 (Ch. 5 unsupported there); `sagemath` not applicable. Two existing citations are partial:
Blennow Problem 2.41 at `exr-sff-paraboloid` and Boskoff Sec. 4.10 at `exr-sff-codazzi` (see the table). None was a
disagreement or not machine-readable. The 3 "without a locator" findings for Blennow and Boskoff were citations split
across two lines; each now sits on one line, text unchanged. Added: about 120 citation occurrences (about 110 distinct
(work, locator) pairs: Keski-Vakkuri 39, Lee 28, Torres 17, Godinho 12, Gray 7, Boskoff 5, Needham 3, Emam 1), all
read and supported. Adapted blocks: the torus Christoffel exercise and example follow Keski-Vakkuri Problem 5.5 and
now cite it. Other examples and exercises are the chapter's own Sage computations; none other was found adapted
without a citation.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. The library covers every section.

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `def-closed-exact` (D-DG1) | "on a contractible region (a ball, a chart domain) every closed form is exact" | Lee: closed forms are exact on star-shaped open subsets of Rⁿ (Thm. 17.14) and on contractible manifolds (Thm. 17.13). A chart domain need not be contractible (an annulus is one). | Lee pp. 446-447 | fixed (owner, 2026-11-18) (M2): now "(a ball, a star-shaped set)", with [lee2013introduction, Thms. 17.13-17.14, pp. 446-447] after "Poincaré lemma" |
| `def-manifold` (note, not a disagreement in the mathematics used) | Hausdorff space with a smooth atlas | Lee and Godinho also require second countability | Lee p. 3; Godinho p. 7 | fixed (owner, 2026-11-18) (M3): `def-manifold` now requires a Hausdorff and second-countable space (countable basis defined inline); the lead paragraph names both conditions and cites [lee2013introduction, Ch. 1, p. 3; godinho2014introduction, Sec. 1.2, p. 7]; the solution of `exr-manifold-open-subset` now says second countability is inherited by open subsets. Nothing later in the tutorial contradicts it (no non-second-countable example; `exm-manifolds-list`, products and open subsets are second countable) |
| `sec-charts-manifolds` "For more" | Torres del Castillo [Ch. 1, Ch. 5-6] | Ch. 5 is on connections and does not support this section | Torres TOC, pp. 113-140 | fixed (owner, 2026-11-18) (M5): Ch. 5 dropped |

#### Reading-note additions

Drafts are in `scratchpad/notes5/differential-geometry__<ITEMKEY>.html`. Every work already has a reading note, so each
draft is the h2 section only.
- lee2013introduction (5TY4BDVG): Ch. 1 pp. 3-13, Example 1.8, Problem 1-7 (p. 30); Ch. 3 pp. 54, 64; Ch. 4 pp. 85-86;
  Ch. 8 pp. 185-188; Ch. 9 pp. 205-212; Ch. 11 p. 276; Ch. 12 pp. 319-322; Ch. 13 pp. 327-345 (Examples 13.2, 13.18,
  Prop. 13.25, Problem 13-4); Ch. 14 pp. 355-367, Thm. 14.35; Ch. 15 pp. 389-390; Thm. 16.11 p. 411; Thms. 17.13-17.14.
- godinho2014introduction (5VBNBTT4): Def. 2.1 p. 7; Sec. 1.2 Exercises 6-7 p. 11; Sec. 1.5 p. 22; Sec. 2.5 p. 81;
  Sec. 3.1 Prop. 1.4 p. 96; Thm. 3.2 p. 103; Sec. 3.4 pp. 109-110; Sec. 4.1 pp. 124-127; Sec. 4.3 Thm. 3.3.
- torresdelcastillo2020differentiable (IGFIL5QW): Sec. 1.1 pp. 2-6; Secs. 2.1-2.3 pp. 37-55, eqs. (2.20)-(2.34);
  Ch. 5 eq. (5.16); Sec. 6.1 pp. 143-145, 155-157, eq. (6.39); Sec. 6.3 eqs. (6.95)-(6.96); Example 7.7 pp. 207-208;
  App. B Example B.7 pp. 328-329.
- keskivakkuri2022mathematical (NGJFKLIL): Secs. 4.3.6-4.4.3 pp. 135-151; Secs. 5.1-5.10 pp. 170-203; Secs. 5.13-5.14
  pp. 225-228; Problems 5.1, 5.2, 5.5, 5.8 pp. 228-230.
- gray2019student (S7QLP5P4): Sec. 2.2 eqs. (2.17)-(2.24) pp. 33-34; Exercise 3.16 p. 79; Sec. 4.2.1 eqs. (4.16)-(4.23)
  p. 94.
- boskoff2024journey (8QTLZVEC): Secs. 4.3, 4.6-4.10, 4.12, 4.13, 4.15 (pp. 73-119), Ch. 7 Secs. 7.1-7.2 (pp. 154-165).
- blennow2022relativity (RGFY73YW): Problems 2.3, 2.20, 2.41, 2.42, 2.46, 2.48 (pp. 43-52), solution 2.48 pp. 232-233.
- emam2021covariant (MV8JU3AT): Chs. 1-2, Ch. 9 (contents); eqs. (3.37)-(3.38) p. 87.
- needham2021visual (RVPZ3KEV): Chs. 4-6 (Act II), Acts III-V (contents); Ch. 24 eq. (24.2) pp. 245-251.
- gadea2013analysis (QN39H3US): Ch. 1 and Ch. 2 (contents).
- rudolph2013differential (45BKP4LD): Ch. 1, Ch. 3, Ch. 4 (contents).
- sagemath (SWN4REIN): SageManifolds computations of the chapter; no pages.

### group-theory

Task 5.10. PDFs read with `pdftotext`. Page offsets (PDF − printed): Mukunda 19, Keski-Vakkuri 11, Chirivì 13, Guidry 34,
Talagrand 16, Starkovich 19 in Ch. 2, Al Subaiei not constant (16 in Chs. 5-6, 15 in Ch. 7, 14 in Ch. 8, 13 in Ch. 10).
No result changed by the 2026-11-18 notation conversion occurs in this chapter except the character scalar product.

**Character scalar product (notation change).** `exr-repn-tensor-s3` now writes
⟨χ, ψ⟩ = (1/\|G\|) Σ_g χ(g)^\* ψ(g), antilinear in the first slot (site rule, `_notation/linear-algebra.qmd`). Sources:
Mukunda eq. 1.71 (f₁, f₂) = M_g(f₁(g)^\* f₂(g)), p. 20, and the multiplicity ν_α = (χ^(α), χ) eq. 1.76, p. 21; Keski-Vakkuri
eq. 3.58 n_α = (1/\|G\|) Σ χ_α^\*(g) χ(g), p. 66; Guidry eq. 2.32, p. 32. All three conjugate the first (irreducible)
character, the chapter's convention. **Supported.** Sage's `scalar_product` (GAP `ScalarProduct`) conjugates the second
argument instead, but the solution only uses it for multiplicities, which are real, so the printed output is the same
under either convention. No disagreement.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Groups (`sec-groups`) | mukunda2022continuous [Ch. 2]; added: mukunda2022continuous [Secs. 1.1-1.3]; keskivakkuri2022mathematical [Secs. 2.1-2.2 and 2.5]; chirivi2020selected [Theory Secs. 4.1-4.2 and 4.5-4.6]; guidry2022symmetry [Secs. 2.2-2.4 and 2.11-2.12]; starkovichStructuresMathematicalPhysics2021 [Secs. 2.2-2.6]; alsubaieiGentleIntroductionGroup2023 [Chs. 5-6, Secs. 7.1, 7.3, 7.5; Prop. 5.4.4] | Mukunda pp. 1-8, 27-30; Keski-Vakkuri pp. 4-9, 15-20; Chirivì pp. 24-30; Guidry pp. 7-13, 22-25; Starkovich pp. 25-42; Al Subaiei pp. 149-263 (Prop. 5.4.4 p. 160) | Mukunda Ch. 2: **supported in part**. It covers S_n (cycles, sign, A_n normal), not groups, orders, subgroups or generated subgroups, which are in Mukunda Ch. 1. All added citations supported. | The existing citation covered only the S_n half. | Added a second "for more" line with Mukunda Secs. 1.1-1.3 and five works; `exr-grp-square-identity` (exponent two ⇒ abelian) located at Al Subaiei Prop. 5.4.4. |
| Cosets and quotient groups (`sec-cosets-quotients`) | chirivi2020selected [Theory Ch. 4]; added: keskivakkuri2022mathematical [Sec. 2.9, pp. 37-45]; mukunda2022continuous [Secs. 1.3, 1.5]; guidry2022symmetry [Sec. 2.14]; starkovichStructuresMathematicalPhysics2021 [Sec. 2.7]; alsubaieiGentleIntroductionGroup2023 [Thm. 7.4.17; Sec. 8.5, Prop. 8.5.12] | Chirivì pp. 24-33 (Secs. 4.4-4.5, Thm. 4.10, Thm. 4.13); Keski-Vakkuri pp. 37-46 (Thm. 2.3, Thm. 2.4, eq. 2.98, D4/Z(D4) p. 45); Mukunda pp. 4-10; Guidry pp. 26-29; Starkovich pp. 42-45; Al Subaiei p. 248, pp. 310-315 | Chirivì Theory Ch. 4: supported for cosets, Lagrange, normal subgroups, quotients; it has no group actions. Added citations supported, including A4 without a subgroup of order 6 (`exr-cosq-a4-no-6`, Al Subaiei p. 248) and D4/Z ≅ Klein four-group (`exr-cosq-quotient-d4`, Keski-Vakkuri p. 45). | Group actions, orbits and stabilisers (a third of the section) had no source. | Added a "for more" line covering cosets/quotients and actions/orbit-stabiliser. |
| Homomorphisms (`sec-homomorphisms`) | chirivi2020selected [Theory Ch. 1 → Theory Secs. 4.7-4.8]; keskivakkuri2022mathematical [no locator → Secs. 2.4-2.5 and 2.7.1]; sagemath (tool); added: keskivakkuri2022mathematical [Secs. 2.3 and 2.9]; mukunda2022continuous [Secs. 1.3-1.4, Sec. 2.2]; guidry2022symmetry [Secs. 2.5, 2.11, 2.14.2]; starkovichStructuresMathematicalPhysics2021 [Secs. 2.4, 2.7]; alsubaieiGentleIntroductionGroup2023 [Secs. 8.1-8.4, Thm. 8.4.1; Secs. 10.2.3-10.2.4] | Chirivì pp. 1-11 (Theory Ch. 1) and pp. 30-33; Keski-Vakkuri pp. 10-25, 40, 44-46; Mukunda pp. 4-8, 29-30; Guidry pp. 13-15, 22-24, 28-29; Starkovich pp. 37-39, 44-45; Al Subaiei pp. 283-310, 379-401 | Chirivì "Theory Ch. 1": **unsupported** (sets, maps, relations, induction, numbers; no groups). Its homomorphism material is Theory Secs. 4.7-4.8 (Props. 4.15-4.17, Thm. 4.18, Cor. 4.19). Keski-Vakkuri "broadly following": supported; Sec. 2.4 lists the groups of order ≤ 8 with Cayley tables, Q8 subgroups (2.15)-(2.18); Sec. 2.5 Cayley's theorem; Sec. 2.7.1 presentations, matching the Sage subsection. `sagemath`: tool, no locator applies. | Off-target locator; Keski-Vakkuri without locator; first isomorphism theorem, conjugation and SU(2)/{±1} ≅ SO(3) had no located source. | Locator corrected to Theory Secs. 4.7-4.8 (same work). Locator added to Keski-Vakkuri. Added a "for more" line and a sentence citing Al Subaiei's Sage chapter. |
| Representations and Schur's lemma (`sec-representations-schur`) | keskivakkuri2022mathematical [Ch. 3]; mukunda2022continuous [Ch. 1]; added: keskivakkuri2022mathematical [Secs. 3.1-3.3, Thm. 3.6; Sec. 3.4, eqs. 3.54, 3.58]; mukunda2022continuous [Secs. 1.5-1.13, eqs. 1.46-1.51; eqs. 1.71, 1.76, 1.82]; talagrand2022what [Sec. 4.5, Lemma 4.5.7, Cor. 4.5.8]; guidry2022symmetry [Secs. 2.6-2.7, 2.16; Sec. 2.17, eq. 2.32, Table 2.4] | Keski-Vakkuri pp. 52-73; Mukunda pp. 9-23; Talagrand pp. 115-117; Guidry pp. 15-18, 31-35 | All supported. `thm-schur` matches Keski-Vakkuri Thm. 3.6 and corollary, Mukunda (1.46)-(1.51) and Talagrand Lemma 4.5.7 (eigenspace proof, as in the chapter). The S3 character table and the decompositions 2⊗2 = 1⊕1'⊕2, regular = 1⊕1'⊕2⊕2 agree with Guidry Table 2.4 and Ex. 2.21 and Mukunda (1.82). Character scalar product: see above. | Only chapter-level pointers. | Added a "for more" line with section and equation locators. |
| Exercises (`sec-groups-exercises`) | none before; added: keskivakkuri2022mathematical [Secs. 2.4 and 2.9, Thm. 2.4]; mukunda2022continuous [Sec. 1.13, eqs. 1.83 and 1.86]; alsubaieiGentleIntroductionGroup2023 [Sec. 8.5, Prop. 8.5.8] | Keski-Vakkuri pp. 14-15 (D4), 37-45; Mukunda pp. 22-23; Al Subaiei pp. 310-314 | Supported: D4 structure and centre quotient (Keski-Vakkuri), Σ dim² = \|G\| and number of irreducibles = number of classes (Mukunda), action on cosets as a homomorphism to permutations (Al Subaiei Prop. 8.5.8, Keski-Vakkuri Thm. 2.4). The three exercises are original combinations, not adapted. | **Section cited nothing.** | Added a "for more" sentence to the exercises intro. |

**Counts.** Before: 4 works, 3 textbooks (`sagemath` is a tool). After: 8 works, 7 textbooks. Added `guidry2022symmetry`
and `talagrand2022what` (in the bib, textbooks), `starkovichStructuresMathematicalPhysics2021` (pending in the
sets-relations-topology Bib additions, Zotero Textbooks) and `alsubaieiGentleIntroductionGroup2023` (Bib addition below,
Zotero Textbooks). `check.py` reports works 6, textbooks 5, no locator 1 (`sagemath`, a tool citation), sections citing
nothing 0; the two pending keys bring this to 8 and 7. A10 is met once the Bib additions are merged.

**Citations verified.** 6 existing (work, locator) pairs: 3 supported (Chirivì Theory Ch. 4, Keski-Vakkuri Ch. 3, Mukunda
Ch. 1), 1 supported in part (Mukunda Ch. 2 in `sec-groups`, S_n only), 1 **unsupported** and corrected within the same work
(Chirivì Theory Ch. 1 → Theory Secs. 4.7-4.8 in `sec-homomorphisms`), 1 without locator located and supported
(Keski-Vakkuri, Secs. 2.4-2.5 and 2.7.1). `sagemath`: not applicable. None not machine-readable. Added: 27 new (work,
locator) citations in 7 places, all read and supported. Adapted blocks without a citation: none found; the chapter's
examples and exercises on S3, Z_n, D4 and Q8 are standard and computed with Sage.

#### Bib additions

```bibtex
@book{alsubaieiGentleIntroductionGroup2023,
  author = {Bana Al Subaiei and Muneerah Al Nuwairan},
  title = {A Gentle Introduction to Group Theory},
  publisher = {Springer Nature Singapore},
  address = {Singapore},
  year = {2023},
  doi = {10.1007/978-981-99-0147-0},
  isbn = {978-981-99-0147-0},
  keywords = {textbook},
  zotero = {WV38GDQK},
  zoteropdf = {EUFPDRPH}
}
```

`starkovichStructuresMathematicalPhysics2021` is also cited here; its entry is already in the sets-relations-topology
Bib additions.

#### Proposed new references

None. The library covers every section.

#### Disagreements

None. The character scalar product (antilinear in the first slot) agrees with Mukunda eq. 1.71, Keski-Vakkuri eq. 3.58
and Guidry eq. 2.32.

#### Reading-note additions

Drafts are in `scratchpad/notes5/group-theory__<ITEMKEY>.html`. Every work except `alsubaieiGentleIntroductionGroup2023`
has a reading note (or a drafted one, Starkovich), so its draft is the h2 section only. Al Subaiei gets a full note.

- `chirivi2020selected` (4P28AB3M): Theory Secs. 4.1-4.2, 4.4-4.8, pp. 24-33.
- `keskivakkuri2022mathematical` (NGJFKLIL): Secs. 2.1-2.5, 2.7.1, 2.9, pp. 4-25, 37-46; Secs. 3.1-3.4, pp. 52-70 (eq. 3.58 p. 66).
- `mukunda2022continuous` (2UYSHY8B): Secs. 1.1-1.13, pp. 1-23 (eqs. 1.46-1.51, 1.71, 1.76, 1.82-1.86); Secs. 2.1-2.2, pp. 27-30.
- `guidry2022symmetry` (B7NKMAZQ): Secs. 2.2-2.7, 2.11-2.17, pp. 7-18, 22-35 (eq. 2.32, Table 2.4).
- `talagrand2022what` (BTZ2R2W4): Sec. 4.5, pp. 115-117 (Lemma 4.5.7, Cor. 4.5.8).
- `starkovichStructuresMathematicalPhysics2021` (HARXXIFM): Secs. 2.2-2.7, pp. 26-45.
- `alsubaieiGentleIntroductionGroup2023` (WV38GDQK, new note): Identity (Springer Nature Singapore 2023, attachment
  EUFPDRPH, 429 pp., offset not constant); Structure (10 chapters); Prop. 5.4.4 p. 160, Chs. 5-7, Thm. 7.4.17 p. 248,
  Secs. 8.1-8.5 pp. 283-315, Secs. 10.2.3-10.2.4 pp. 379-401.
- `sagemath` (SWN4REIN): tool citation in the Sage subsection; no pages.

### lie-groups-algebras

Task 5.11. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages; page offsets (PDF −
printed): Gadea 18, Keski-Vakkuri 11, Lee (2013) 15, Lee-Leok-McClamroch 26, Mukunda 19, Pal 29, Rudolph 14, Scott 12,
Sinha 9, Torres del Castillo 6, Boudreau 23. Generator conventions: Keski-Vakkuri, Pal and Mukunda use Hermitian
generators (X = λ/2 or σ/2 with tr = ½δ, [J_a, J_b] = iε_abc J_c, S ≈ 1 − iJ); the chapter uses anti-Hermitian
T = −iX. Sinha labels the z-y-z Euler angles (ψ, θ, φ) in the opposite order.

**Notation-conversion checks.**
- `prp-su2-structure`: T_a = −(i/2)σ_a, [T_1, T_2] = T_3, tr(T_aT_b) = −½δ_ab. Keski-Vakkuri eq. (6.95), p. 249, has
  [J_a, J_b] = iε_abc J_c with J = σ/2; with T = −iJ, [T_a, T_b] = −iε_abc J_c = ε_abc T_c and tr(TT) = −tr(JJ) = −½δ
  (Pal eq. (10.15), p. 259: tr(T_aT_b) = ½δ_ab for Hermitian T). **Supported.**
- `def-gell-mann`, `exr-lrep-gm-trace`: the eight matrices and tr(λ_Aλ_B) = 2δ_AB are Keski-Vakkuri eqs. (6.170)-(6.172),
  p. 260 (X_a = λ_a/2, tr = ½δ). T_A = −iX_A gives tr(T_AT_B) = −½δ_AB and [T_A, T_B] = f_ABC T_C from
  [λ_A, λ_B] = 2if_ABC λ_C (Keski eq. 6.174). **Supported.** Pal eq. (10.13), p. 259, orders λ₄-λ₇ differently (Pal's
  λ₄, λ₅ are the standard λ₆, λ₇); Pal is not cited for the matrices, so this is a remark only.
- su(3) subalgebras: `exm-gell-mann-su2` and `exr-lrep-gm-su2s` (λ₄, λ₅, ½(λ₃ + √3λ₈) and λ₆, λ₇, ½(−λ₃ + √3λ₈)) are
  Keski-Vakkuri p. 261 (½λ₄, ½λ₅, ¼λ₃ + (√3/4)λ₈, …), which is the chapter's triples times ½. The branching subalgebra
  su(2) ⊕ u(1) = span(T₁, T₂, T₃) ⊕ span(T₈) (`sec-branching`) is Pal Sec. 10.3.6, pp. 267-268 (generators λ₁₋₃/2 and
  λ₈/2). The chapter's λ₈-charges are √3 times Pal's hypercharge (eqs. 10.47-10.55): 3 → charges 1/√3, −2/√3; 8 →
  doublets ±√3; 6 → 2/√3, −1/√3, −4/√3; 10 → √3, 0, −√3, −2√3, matching Pal's (10.54)-(10.55). **Supported.**
- Clebsch-Gordan with V_j labels (`def-clebsch-gordan`, `eq-clebsch-gordan`): Keski-Vakkuri eq. (6.251), p. 277,
  D(j₁) ⊗ D(j₂) = D(j₁+j₂) ⊕ … ⊕ D(|j₁−j₂|). Only the label changes. **Supported.**
- Euler's kinematic equations (`prp-lg-euler-kinematic`, `exm-lg-ek-pole`): the chapter's converted z-y-z body
  components ω₁ = θ̇ sin ψ′ − φ̇′ sin θ cos ψ′, ω₂ = θ̇ cos ψ′ + φ̇′ sin θ sin ψ′, ω₃ = ψ̇′ + φ̇′ cos θ equal Sinha Sec.
  1.1.30, p. 27, with his ψ, φ as the chapter's φ′, ψ′; the space components agree with Sinha Sec. 1.1.31, p. 29, under
  the same relabelling and φ = φ′ + π/2. Rechecked by hand. **Supported.**
- Spherical components of a vector (`sec-weights-su2`, second D¹ example): x^{±1} = ∓(x₁ ∓ ix₂)/√2 is Boudreau Sec.
  14.4.1, p. 463, ((−x+iy)/√2, z, (x+iy)/√2) with rows m = +1, 0, −1. **Supported.**

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Lie groups and Lie algebras (`sec-lie-groups-algebras`), with subsections `sec-lie-groups`, `sec-lie-algebras`, `sec-exponential`, `sec-maurer-cartan` | Chapter lead: gadea2013analysis [Ch. 4]; lee2013introduction [Ch. 7, Ch. 8, Ch. 20]; lee2018global [Ch. 1-2]; mukunda2022continuous [Ch. 4, Ch. 7-8]; pal2015introductory [Ch. 3]; rudolph2013differential [Ch. 5]; scott2023problems [Ch. 3]; torresdelcastillo2020differentiable [Ch. 7]. In the text: boudreau2018applied [Sec. 14.2.2 (×2)]; sinha2023rigid [Secs. 1.1.4, 1.1.5, 1.1.6, 1.1.28-1.1.31, 1.1.33, 1.1.30-1.1.31, 1.1.29, 1.1.30]. Added: lee2013introduction [Ch. 7, pp. 150-173; Ch. 8, pp. 185-199; Ch. 20, pp. 516-522]; rudolph2013differential [Secs. 5.1; 5.2 and 5.4; 5.3; 5.5, eq. (5.5.4)]; gadea2013analysis [Sec. 4.1; Problems 4.42, 4.58, 4.64]; torresdelcastillo2020differentiable [Secs. 7.2-7.2.1; 7.2.3; 7.3-7.3.2; 7.3.2, eq. (7.48); 7.4; Example 7.44; Exercise 7.32]; keskivakkuri2022mathematical [Secs. 6.1-6.2 and 6.4.2-6.4.4]; lee2018global [Sec. 1.1.5, eq. (1.11); Sec. 2.7.9, eqs. (2.16)-(2.17)]; scott2023problems [Problems 3.47, 3.51, 3.59]; mukunda2022continuous [Secs. 8.1-8.2, eqs. (8.6), (8.40); Sec. 8.2.3, eqs. (8.63)-(8.64)] | Gadea pp. 149-262 (TOC and Sec. 4.1 pp. 151-152), pp. 169-171, 185-187, 192; Lee (2013) pp. 150-173, 185-199, 515-537 (TOC, chapter openings, p. 516); Lee-Leok-McClamroch pp. 1-8, 25-27, 73-75; Mukunda pp. 81-106 (TOC), 159-213 (TOC, pp. 186-187, 193, 200-201); Pal pp. 35-60 (TOC, p. 42); Rudolph pp. 219-268 (TOC, pp. 221, 235, 243, 248-250); Scott pp. 31-62 (Problems 3.47, 3.51, 3.59 at pp. 54, 56, 59-60); Torres pp. 203-256 (TOC, pp. 216, 219-221, 225-226, 234); Keski pp. 233-252; Boudreau pp. 456-459; Sinha pp. 2-5, 22-31 | Supported. One weak locator: mukunda2022continuous Ch. 7 (Schwinger representation, induced representations, coherent states) fits the representations material, not this section; Ch. 4 (Lie groups and algebras) and Ch. 8 (Sp(2n, R)) do support it. Not changed: a "for more" pointer, not a disagreement. fixed (owner, 2026-11-18) (M5): now mukunda2022continuous [Chs. 4, 8] | (a) 2 citations split across lines (first pass: no locator); (b) the four subsections had only chapter-level pointers; many adapted exercises (Heisenberg group, two-dimensional algebras, cross product, upper triangular matrices, change of basis, symplectic group and algebra, Maurer-Cartan on the affine group, d² = 0 and Jacobi, angular velocity) had no citation | (a) joined onto one line each (Sinha Secs. 1.1.28-1.1.31, Sec. 1.1.33); (b) a "For more on this topic" paragraph with section locators added to each subsection, and a citation added to the lead of each of the 11 adapted blocks |
| Representations of Lie algebras (`sec-lie-representations`), with subsections `sec-weights-su2`, `sec-roots-su3`, `sec-branching` | Chapter lead: keskivakkuri2022mathematical [Ch. 6]; mukunda2022continuous [Ch. 5]. In the text: boudreau2018applied [Secs. 14.2 and 14.4; Sec. 14.4.1; eq. 14.3; Exercise 14.3; Exercise 14.1; eq. 14.5]. Added: keskivakkuri2022mathematical [Secs. 6.3, 6.4.4 and 6.7; Sec. 6.7, eq. (6.251); Secs. 6.5-6.6.3; Sec. 6.5.2, eqs. (6.170)-(6.172); Sec. 6.5.2, p. 261; Problem 6.11; Sec. 6.11.1]; mukunda2022continuous [Secs. 3.5.3-3.5.5; Sec. 5.6; Problem P5.2]; pal2015introductory [Sec. 10.3.6] | Keski pp. 233-311 (TOC; pp. 240, 249-252, 260-262, 274-277, 298-299, 311); Mukunda pp. 74-77, 107-143 (TOC, pp. 124, 142); Pal pp. 254-293 (TOC), 267-270; Boudreau pp. 456-467, 479-480 | Supported (all conversion checks above) | (a) 1 citation split across lines (Boudreau Sec. 14.4.1); (b) the three subsections had only chapter-level pointers; Gell-Mann basis, Clebsch-Gordan rule, the su(2) copies and the su(3) structure constants had no citation | (a) joined; (b) "For more" paragraphs added to the three subsections; citations added at `def-clebsch-gordan`, `def-gell-mann`, `exr-lrep-gm-su2s`, `exr-su3-structure` |
| Exercises (`sec-lie-groups-algebras-exercises`) | none before. Added: torresdelcastillo2020differentiable [Sec. 7.2.3; Sec. 7.3.2 and Example 7.44]; gadea2013analysis [Problems 4.42 and 4.64]; pal2015introductory [Sec. 10.3.6, eqs. (10.51)-(10.53); Sec. 10.3.6, eq. (10.55), and Sec. 10.5, eq. (10.60)]; mukunda2022continuous [Problem P5.2] | Torres pp. 219-221 (two-to-one SU(2) → SO(3)), p. 226 (eq. 7.48), p. 234 (Example 7.44: exp tX = (e^{at}, (b/a)(e^{at} − 1); 0, 1), the chapter's e^{xX+yY}); Gadea pp. 169-171, 192 (Problem 4.64: Lie algebra of H, exp a diffeomorphism); Pal pp. 270, 273 (3 × 3* and 8 branchings, 10 branching, 3×3×3 = 10+8+8+1); Mukunda p. 142 | Supported | The section cited nothing (A1 gap) | A citation added to the lead of each of the six integrative exercises |

**Counts.** Before: 11 works, 11 textbooks. After: 11 works, 11 textbooks (no new work was needed; A10 was already met
and every addition comes from works the chapter already cited). `check.py`: works 11, textbooks 11, 0 citations without
a locator, 0 sections citing nothing.

**Citations verified.** 29 existing (work, locator) pairs: 14 chapter-level pointers (Gadea Ch. 4; Lee (2013) Chs. 7, 8,
20; Lee-Leok-McClamroch Ch. 1-2; Mukunda Ch. 4, Ch. 7-8, Ch. 5; Pal Ch. 3; Rudolph Ch. 5; Scott Ch. 3; Torres Ch. 7;
Keski-Vakkuri Ch. 6), 7 Boudreau and 8 Sinha. All supported; Mukunda Ch. 7 is weak for `sec-lie-groups-algebras` (see
the table). None unsupported, a disagreement or not machine-readable. The 3 first-pass "without a locator" findings were
citations split across two lines; each now sits on one line, text unchanged. Added: 41 citations (40 distinct
(work, locator) pairs), all read and supported.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. Every section is covered by works already cited.

#### Disagreements

None. The anti-Hermitian conventions (T_a = −(i/2)σ_a, T_A = −(i/2)λ_A, tr = −½δ), the V_j labels of the Clebsch-Gordan
rule, the su(3) subalgebras and the converted Euler kinematic equations all agree with their sources after conversion.

#### Reading-note additions

Drafts are in `scratchpad/notes5/lie-groups-algebras__<ITEMKEY>.html`. All eleven works already have a reading note, so
each draft is the h2 section only.
- boudreau2018applied (Q3K6KQG8): Sec. 14.2.2, eqs. (14.2)-(14.3), pp. 458-459 (PDF 481-482); Secs. 14.2 and 14.4,
  pp. 456-467 (PDF 479-490); Sec. 14.4.1, p. 463; Sec. 14.4.2, eq. (14.5), p. 465; Exercises 14.1 and 14.3, pp. 479-480
  (PDF 502-503).
- gadea2013analysis (QN39H3US): Ch. 4, pp. 149-262 (PDF 167-280); Sec. 4.1, pp. 151-164; Problem 4.42, pp. 169-171
  (PDF 187-189); Problem 4.58, pp. 186-187 (PDF 204-205); Problem 4.64, p. 192 (PDF 210).
- keskivakkuri2022mathematical (NGJFKLIL): Ch. 6, pp. 233-311 (PDF 244-322); Secs. 6.1-6.2, 6.3, 6.4.2-6.4.4; Sec.
  6.5.2, eqs. (6.170)-(6.172), pp. 260-261 (PDF 271-272); Secs. 6.5-6.6.3, pp. 252-274; Sec. 6.7, eq. (6.251), p. 277
  (PDF 288); Sec. 6.11.1, eqs. (6.347)-(6.349), pp. 298-299 (PDF 309-310); Problem 6.11, p. 311 (PDF 322).
- lee2013introduction (5TY4BDVG): Ch. 7, pp. 150-173 (PDF 165-188); Ch. 8, pp. 185-199 (PDF 200-214); Ch. 20,
  pp. 516-522 (PDF 531-537).
- lee2018global (W8JPK6PC): Sec. 1.1.5, eqs. (1.10)-(1.11), pp. 7-8 (PDF 33-34); Sec. 1.2.6, p. 25ff (PDF 51); Sec.
  2.7.9, eqs. (2.16)-(2.17), pp. 73-75 (PDF 99-100).
- mukunda2022continuous (2UYSHY8B): Ch. 4, pp. 81-106; Ch. 5, pp. 107-143; Secs. 3.5.3-3.5.5, pp. 74-77 (PDF 93-96);
  Sec. 5.6, pp. 124-129 (PDF 143-148); Problem P5.2, p. 142 (PDF 161); Secs. 8.1-8.2, eqs. (8.6), (8.40), pp. 186, 193
  (PDF 205, 212); Sec. 8.2.3, eqs. (8.63)-(8.64), pp. 200-201 (PDF 219-220).
- pal2015introductory (EVWVUL3H): Ch. 3, pp. 35-60 (PDF 64-89); Sec. 10.3.6, eqs. (10.43)-(10.55), pp. 267-270
  (PDF 296-299); Sec. 10.5, eq. (10.60), p. 273 (PDF 302). Remark on Pal's λ₄-λ₇ ordering, eq. (10.13), p. 259.
- rudolph2013differential (45BKP4LD): Ch. 5, pp. 219-268 (PDF 233-282); Secs. 5.1, 5.2, 5.3, 5.4; Sec. 5.5, eq. (5.5.4),
  p. 250 (PDF 264).
- scott2023problems (AU8YU6PB): Ch. 3, pp. 31-62 (PDF 43-74); Problem 3.47, p. 54 (PDF 66); Problem 3.51, p. 56 (PDF 68);
  Problem 3.59, eqs. (3.120)-(3.122), pp. 59-60 (PDF 71-72).
- sinha2023rigid (9BATZ7D7): Secs. 1.1.4-1.1.6, pp. 3-5 (PDF 12-14); Secs. 1.1.28-1.1.31, pp. 22-29 (PDF 31-38);
  Sec. 1.1.33, p. 31 (PDF 40).
- torresdelcastillo2020differentiable (IGFIL5QW): Ch. 7, pp. 203-256 (PDF 209-262); Secs. 7.2-7.2.1, pp. 210-217;
  Sec. 7.2.3, pp. 219-221 (PDF 225-227); Secs. 7.3-7.3.2, eqs. (7.44), (7.48), pp. 223-226 (PDF 229-232); Exercise 7.32,
  p. 225; Sec. 7.4, pp. 230-239; Example 7.44, p. 234 (PDF 240).

### homogeneous-spaces-bundles

Task 5.12. PDFs read with `pdftotext`. Signs were checked on rendered page images where the text layer drops minus
signs (Hamilton pp. 272, 284-285, 293). Page offsets (PDF − printed): Gadea 17, Lee 15, Rudolph 14, Hamilton 14,
Năstase 20, Dolan 0. The chapter's U(1) convention is A = ia, F = if, D = dΨ + iqaΨ and c₁ = (1/2π)∫f. The source
conventions are:
- Gadea and Hamilton: anti-Hermitian A and c₁ = (i/2π)∫F, which is −(1/2π)∫f for F = if.
- Năstase: real A, Dφ = (d − iqA)φ and c₁ = ∫F/2π. Converting to the chapter means a = −A_Năstase.

**Notation-conversion check (`exr-fbun-charged-matter`, rederived under D = dΨ + iqaΨ).** Inputs:
`exr-fbun-chern-charge-n` has a± = (n/2)(cos θ ∓ 1)dφ, so a₊ − a₋ = −n dφ and α = −nφ.
- **Covariant gluing, supported.** D(e^{−iqα}Ψ₋) = e^{−iqα}DΨ₋ is correct algebra. The convention matches Hamilton:
  Def. 5.9.3 (pp. 292-293) gives ∇φ = dφ + ρ_*(A_s)φ, and with A = ia and ρ(e^{iβ}) = e^{iqβ} this is
  d + iqa. Thm. 5.4.2 (p. 272) gives the local section transforming by ρ(g)⁻¹ under s → sg, hence
  Ψ₊ = e^{−iqα}Ψ₋. It also matches Năstase eq. (27.52) (p. 251), φ^(α) = e^{iqλ}φ^(β), after the conversion
  a = −A, λ = −α.
- **Gluing factor, supported.** e^{−iqα} = e^{iqnφ}, and the transition function e^{−iqnφ}, follow from α = −nφ.
- **Quantisation qn ∈ ℤ, supported.** Single-valuedness on the equator is Năstase's argument, eqs. (27.45)-(27.54)
  (pp. 250-251): qg = 2πN. With g = ∫F_Năstase = −∫f = 2πn this is qn ∈ ℤ.
- **Chern number −qn: disagreement in sign (D1).** The value is consistent with the chapter's own definition, by
  which `exr-fbun-chern-charge-n` gives c₁ = −n. After conversion, however, every source gives +qn for the bundle
  with these potentials:
  - Năstase: c₁ = ∫qF_Năstase/2π = qn.
  - Hamilton (Remark 5.6.9) and Gadea (Problem 5.28): (i/2π)∫(iqf) = −(q/2π)(−2πn) = qn.
  - The transition-function rule gives the same sign. In Gadea, A₁ = A₂ + γ⁻¹dγ with γ = e^{iφ} gives c₁ = −1, so
    c₁ is minus the winding. Here A₊ = A₋ + g⁻¹dg with g = e^{−inφ}, which gives +n.

  The root is `def-chern-number`, whose c₁ = (1/2π)∫f is minus the sources' convention. The Hopf value c₁ = −1 of
  `exm-chern-hopf` agrees with Gadea p. 292 and Hamilton p. 285 only because the chapter's Hopf potential also has
  the opposite sign: ½(cos θ − 1)dφ against Gadea's A₁ = (i/2)(1 − cos θ)dφ. Fixed (owner, 2026-11-18, decision M1);
  see D1.
- The remaining claims are supported. Every field of a non-trivial line bundle vanishes somewhere. The associated
  bundle reading matches Hamilton Sec. 4.7.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Coset spaces (`sec-coset-geometry`) | gadea2013analysis [Sec. 4.8, Ch. 6; Problem 6.101]; lee2013introduction [Ch. 21]; rudolph2013differential [Sec. 5.7, Ch. 6]; chatzistavrakidis2009nk [Sec. 2 and App. B]; manolakos2016 [eqs. 14-15; footnote 1]; chatzistavrakidis2007consistency [eq. 2.4; eqs. 2.1-2.3; eqs. 2.7-2.12]; hamilton2017mathematical [Sec. 3.8; Props. 3.8.2 and 3.8.7, Thm. 3.8.8]; dolan2003 [App. A, eqs. 74-75; eq. 75; eqs. 76-83] | Gadea pp. 247-260 and 432-450, Problem 6.101 p. 445 (Sⁿ symmetric, symmetry diag(1, −1, …, −1)). Lee pp. 540-575 (homogeneous spaces p. 550). Rudolph pp. 260-313. Chatzistavrakidis-Zoupanos Sec. 2.2.2 p. 6 (the four homogeneous nearly-Kähler spaces, first three non-symmetric, footnote 3 on the non-maximal Sp(4)) and App. B pp. 31-35. Manolakos-Zoupanos p. 4 (eqs. 13-15, footnote 1 "symmetric when f_ab^c = 0"). Chatzistavrakidis et al. pp. 3-4 (eqs. 2.1-2.12). Hamilton pp. 162-168. Dolan pp. 17-18 | Supported, with three partial verdicts. (1) manolakos2016 eqs. 14-15 support SU(3)/U(1)² as the coset of the E₈ → E₆ CSDR model (then chiral SU(3)³), but do not mention "three-generation"; three generations appear only in the orbifold section, p. 12. (2) chatzistavrakidis2007consistency eqs. 2.1-2.3 support L⁻¹dL = e^aQ_a + e^iQ_i, but not the Ad-rotation under L → Lh (that is `def-r-connection`, Hamilton Thm. 5.4.2). (3) The old locator eqs. 2.7-2.11 missed the invariant metric (eq. 2.12) and the curvature | Section lead cited textbooks only for coset basics. The reductive/symmetric split, the vielbein curvature and the flag-manifold data had only one paper source. Split citation over two lines (line 271) | Re-flowed the chatzistavrakidis2009nk citation onto one line. Added Hamilton (lead, `def-coset-space`), Dolan (`def-reductive-decomposition`, `def-symmetric-coset`, `def-vielbein-metric`) and Gadea Problem 6.101 (`exm-symmetric-sphere`). Extended the `def-vielbein-metric` locator to eqs. 2.7-2.12. The owner may want a source for "three-generation" or a softened wording (not changed) |
| Fibre bundles (`sec-fibre-bundles`) | gadea2013analysis [Ch. 5; Problem 5.28]; lee2013introduction [Ch. 10]; rudolph2013differential [Ch. 2]; hamilton2017mathematical [Chs. 4-5; Sec. 4.2; Sec. 4.7; Thm. 5.4.2; Secs. 5.5-5.6, Cor. 5.6.4; Example 4.2.14; Secs. 5.2.2 and 5.6.1; Remark 5.6.9; Prop. 5.6.8]; nastase2019classical [Sec. 27.2, eqs. 27.26-27.38; Sec. 27.3, eqs. 27.41-27.49; Secs. 27.2-27.3, eqs. 27.36-27.49] | Gadea pp. 263-342, Problem 5.28 pp. 288-292 (Hopf connection, monopole potentials, c(1)(H) = −1). Lee pp. 249-273. Rudolph pp. 53-92 (vector bundles only). Hamilton pp. 193-318: Ex. 4.2.14 pp. 214-215; Thm. 5.4.2 p. 272; Cor. 5.6.4 p. 281; Props. 5.6.6-5.6.8 pp. 281-284; Remark 5.6.9 p. 285. Năstase pp. 247-251 | Supported, except `def-chern-number`: its sign convention is opposite to Hamilton Remark 5.6.9 and Gadea Problem 5.28 after conversion (D1). Lee Ch. 10 and Rudolph Ch. 2 cover vector bundles only | Principal bundles, connections, gauge transformations, curvature, the Hopf connection, the Dirac monopole and the Chern number had no source with a locator | Added Hamilton at the lead and at `def-principal-bundle`, `exm-vector-bundle-associated`, `def-gauge-transformation`, `def-curvature-connection`, `def-hopf-map`, `def-hopf-connection`, `def-chern-number` and `exm-chern-hopf`. Added Gadea Problem 5.28 at `def-hopf-connection`, `exm-hopf-connection-monopole` and `exm-chern-hopf`. Added Năstase Ch. 27 at `exm-hopf-connection-monopole`, `def-chern-number` and `exr-fbun-chern-charge-n` |
| Exercises (`sec-homogeneous-spaces-bundles-exercises`) | chatzistavrakidis2007consistency [eqs. 2.1-2.7]; dolan2003 [App. C, eqs. 110-113]; gadea2013analysis [Problem 5.28]; nastase2019classical [Sec. 27.3, eqs. 27.45-27.54]; hamilton2017mathematical [Def. 5.9.3] | Chatzistavrakidis et al. pp. 3-4. Dolan pp. 22-23: f₁₂₃ = 1, f₄₅₃ = −f₆₇₃ = ½, f₄₅₈ = f₆₇₈ = √3/2, which matches `exr-cs-integrative-flag` (F(3) ∝ 2e¹²+e⁴⁵−e⁶⁷, F(8) ∝ e⁴⁵+e⁶⁷, proportional to the chapter's F³ and F⁸). Gadea pp. 288-292. Năstase pp. 250-251. Hamilton pp. 292-293 | Supported, except the Chern number −qn of `exr-fbun-charged-matter` and the sign of c₁ in `exr-fbun-hopf-charge-one`, which inherit D1. The gluing factor e^{iqnφ} and qn ∈ ℤ are supported (see the check above) | Section cited nothing | Added a citation to `exr-cs-integrative-s3`, `exr-cs-integrative-flag`, `exr-fbun-hopf-charge-one` and `exr-fbun-charged-matter`. `exr-cs-integrative-hopf` and `exr-fbun-sphere-tangent-chern` were left without one, since they combine chapter results |

**Counts.** Before: 6 works, 3 textbooks. After: 9 works, 5 textbooks. Added `hamilton2017mathematical`,
`nastase2019classical` (both in the bib and tagged textbook) and `dolan2003` (in the bib). `check.py`: works 9,
textbooks 5, 0 citations without a locator, 0 sections citing nothing. A10 is met.

**Citations verified.** 13 existing (work, locator) pairs:
- 10 supported: Gadea Sec. 4.8/Ch. 6 and Ch. 5; Lee Ch. 21 and Ch. 10; Rudolph Sec. 5.7/Ch. 6 and Ch. 2;
  Chatzistavrakidis-Zoupanos Sec. 2 and App. B, and App. B; Manolakos footnote 1; Chatzistavrakidis et al. eq. 2.4.
- 3 partly supported: Manolakos eqs. 14-15 ("three-generation" not stated); Chatzistavrakidis et al. eqs. 2.1-2.3
  (Ad-rotation not stated); Chatzistavrakidis et al. eqs. 2.7-2.11 (metric at eq. 2.12, so the locator was
  extended).

None was unsupported or not machine-readable. Added: 26 new (work, locator) citations, all read and supported. The
`def-chern-number` and Chern-number citations support the construction, and they also expose the sign-convention
difference D1.

#### Bib additions

None. All cited works are already in `references/references.bib`.

#### Proposed new references

None. The library covers every section. If the owner wants the "three-generation" claim at `exm-coset-list` sourced,
the candidates already in the library are Kapetanakis-Zoupanos 1992 (no PDF) and the CSDR papers in the
Kaluza-Klein tutorial. None of them was checked for this claim.

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| D1. `def-chern-number`, with consequences in `exr-fbun-chern-charge-n` (c₁ = −n), `exr-fbun-charged-matter` (Chern number −qn), `exr-fbun-hopf-charge-one` and `exm-chern-hopf` | c₁ = (1/2π)∫f with F = if, i.e. c₁ = (1/2πi)∫F. The monopole a± = (n/2)(cos θ ∓ 1)dφ has c₁ = −n, and the charge-q line bundle has −qn | c₁ = (i/2π)∫F = −(1/2π)∫f (Hamilton Remark 5.6.9; Gadea Problem 5.28 (iv)). Năstase has real F, c₁ = ∫F/2π with D = d − iqA, so a = −A. All three give c₁ = +n for these potentials and +qn for the charge-q bundle. The Hopf value −1 agrees only because the chapter's Hopf potential ½(cos θ − 1)dφ is also minus Gadea's A₁/i = ½(1 − cos θ)dφ | Hamilton p. 285 (Remark 5.6.9), p. 284 (Prop. 5.6.8); Gadea pp. 289-292 (Problem 5.28); Năstase pp. 249-251 (eqs. 27.44-27.54) | fixed (owner, 2026-11-18). Decision M1: the standard c₁ = (i/2π)∫F = −(1/2π)∫f is used site-wide (Rudolph Part II eq. (4.6.21) and Thm. 4.6.11, pp. 322-326, also cited). `def-chern-number` and the notation page changed. `exr-fbun-chern-charge-n`: c₁ −n → +n (the Sage cell and its output were recomputed); `exr-fbun-charged-matter`: −qn → +qn; `exr-fbun-chern-torus`: n → −n. The Hopf value stays −1, the standard value (Gadea p. 292, Hamilton p. 285, Rudolph pp. 325-326). The Hopf connection is now normalised to the phase t = −ψ/2 of (a, b) ↦ (ae^{it}, be^{it}), i.e. −½σ³. Its potential is −½cos θ dφ, with hemisphere potentials ½(±1 − cos θ)dφ, so a₊ is Gadea's A₁/i. It was ½σ³ with fibre angle ψ/2. This changes `def-hopf-connection`, `exm-curvature-hopf`, `exm-chern-hopf`, `prp-hopf-chern`, `exm-hopf-chern-orientation`, `exr-hopf-chern` (Sage), `exr-fbun-hopf-chern-caps` (Sage) and `exr-fbun-hopf-charge-one` (Sage: χ = −ψ/2, transition e^{iφ}, the case n = −1). The direction in `exm-hopf-connection-monopole` is corrected: a₊ = a₋ + d(−2φ), so the factor is e^{−2iφ}. Dependent text converted in gauge-theories (`eq-abm-chern` −n → +n; the Hopf bundle is n = −1), the spinors chapter (superseded by D1a and D1b) and the Kaluza-Klein `exr-vcp-flux-chern` (c₁ = −N) |
| D1a. Follow-up to D1: chirality and Chern character in `spinors-dirac-operator` | γ_* = i^{d(d−1)/2+q}γ¹⋯γ^d (−σ₃ in two dimensions) with ch = tr exp(−iF/2π). With the standard c₁ this gave ind = −c₁ in two dimensions | Complex volume element, +σ₃ in two dimensions (Van Proeyen eq. (3.8)); ch = tr exp(iF/2π) and ind = ∫Â ch (Rudolph Part II Thm. 5.8.14, eq. (5.8.52)) | Rudolph pp. 446-447 | fixed (owner, 2026-11-18). `eq-spd-chirality` → i^{d(d+1)/2+q}γ¹⋯γ^d, Euclidean (−i)^{d/2}γ¹⋯γ^d. It is unchanged for d ≡ 0 mod 4 and for γ₅ in (1, 3), and flips in d ≡ 2 mod 4. `eq-spd-chern-character` and the notation row → tr exp(iF/2π), with ∫ch₁ = c₁. Flipped in 2, 6 and 10 dimensions: Weyl spinors in two dimensions, weights rule γ_* = ∏2h_k (Sage), the Spin(6) colours of `fig-sd-weyl-weights`, the six-plus-four branching, the Spin(10) branching, the CY and orbifold chirality cells (Sage), and the Lorentzian (1, 1) Majorana-Weyl statement. In two dimensions this covers the sphere operator, the monopole index (now M = c₁), the zero-mode solution (upper component, holomorphic in w), the counting cell, the Casimir charges, the torus-flux exercise, the spin-connection exercise, the AS statement and the Dolan comparison. Other chapters: `four-dimensional-theory` CSDR fermions (M = −2q, internal chirality −sign q, s = ±½ on S^±; the model now uses a negative-chirality six-dimensional Weyl spinor so the four-dimensional content is unchanged; caption and interactive figure updated, Sage cells re-run). `compactifications` Γ₇ aligned (output unchanged). `classical-field-theory` (γ⁰γ¹ = −σ₃) and `gauge-tower` (γ_*^K = σ₃) now agree and were not changed; 4D chapters are independent |
| D1b. Follow-up to D1: monopole label in `spinors-dirac-operator` | The monopole of charge M had a_N = (M/2)(1 − cos θ)dφ, c₁ = −M | Charge n has c₁ = +n (bundles chapter, gauge theories) | | fixed (owner, 2026-11-18). Potentials → a_N = (M/2)(cos θ − 1)dφ, a_S = (M/2)(cos θ + 1)dφ, c₁ = M (`exm-spd-monopole-potential`, `exr-spd-monopole-flux` Sage, `exr-spd-gauge-covariance`, `exr-spd-lichnerowicz-check` Sage, `exr-spd-zero-mode-balance`). The Hopf connection is M = −1 |
| D1c. Follow-up to D1: `exm-hopf-euler`, `exr-cs-hopf-fibre` | `exm-hopf-euler` gave π(g) = (sin θ cos φ, sin θ sin φ, cos θ) | `eq-hopf-map` on `eq-euler-matrix` gives (sin θ sin φ, sin θ cos φ, cos θ) (Sage) | | fixed (owner, 2026-11-18). `exm-hopf-euler` corrected. It now states that the chart (θ, φ) is opposite to the outward orientation and agrees with the complex orientation of CP¹ in the chart a/b. `exr-cs-hopf-fibre` compares its Ad-projection n with the Hopf map (reflection y → −y) and checks both orientations in Sage. `exm-chern-hopf` and `prp-hopf-chern` state c₁ = −1 against the orientation dθ∧dφ |
| D1d. Follow-up to D1: gauge-theories `exm-abm-dq-hopf` | Title "The minimal monopole is the Hopf bundle" | The qg = 2π bundle has c₁ = +1, the conjugate of the Hopf bundle | | fixed (owner, 2026-11-18). Retitled "The minimal monopole is the conjugate Hopf bundle". The text states that charge −1 (qg = −2π) is the Hopf bundle, and the lead sentences were adjusted |

#### Reading-note additions

Drafts are in `scratchpad/notes5/homogeneous-spaces-bundles__<ITEMKEY>.html`. All nine works already have a reading
note, so each draft is the h2 section only.
- gadea2013analysis (QN39H3US): Sec. 4.8, pp. 247-260 (PDF 264-277); Sec. 6.11, pp. 432-450 (PDF 449-467),
  Problem 6.101 p. 445 (PDF 462); Ch. 5, pp. 263-342 (PDF 280-359), Problem 5.28 pp. 288-292 (PDF 305-309).
- lee2013introduction (5TY4BDVG): Ch. 21, pp. 540-575 (PDF 555-590); Ch. 10, pp. 249-273 (PDF 264-288).
- rudolph2013differential (45BKP4LD): Sec. 5.7 and Ch. 6, pp. 260-313 (PDF 274-327); Ch. 2, pp. 53-92 (PDF 67-106).
- chatzistavrakidis2007consistency (QBAFAV6E): eqs. (2.1)-(2.12), pp. 3-4 (PDF 4-5).
- chatzistavrakidis2009nk (LB9U3D47): Sec. 2.2.2, p. 6 (PDF 7); App. B, pp. 31-35.
- manolakos2016 (GEP4BT37): eqs. (13)-(15) and footnote 1, p. 4.
- hamilton2017mathematical (4HSGM5RX): Sec. 3.8, pp. 162-168; Sec. 4.2 and Ex. 4.2.14, pp. 207-221; Sec. 4.7,
  pp. 237-248; Sec. 5.2.2, p. 264; Thm. 5.4.2, p. 272; Secs. 5.5-5.6, pp. 273-285 (Cor. 5.6.4, Props. 5.6.6-5.6.8,
  Remark 5.6.9); Def. 5.9.3, pp. 292-293. PDF = printed + 14.
- nastase2019classical (5AXU4FWL): Ch. 27, Secs. 27.2-27.3, eqs. (27.26)-(27.54), pp. 247-251 (PDF 267-271).
- dolan2003 (K8VM6ANY): App. A, eqs. (74)-(83), pp. 17-18; App. C, eqs. (110)-(113), pp. 22-23.

### spinors-dirac-operator

Task 5.13. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Page offsets (printed − PDF): Trautman
+1282 (Acta Phys. Pol. B 26, pp. 1283-1310), Zhelnorovich −13, Aspinwall, Van Proeyen, Chatzistavrakidis (both),
Dolan-Szabo and Hull −1, Bilal −3, Dereziński and Mukunda −13, Krasnov −15; Dolan 2003, Camporesi-Higuchi, Greene,
Manousselis and Braun 0. `Witten:1983ux` has no PDF (entries.md) and is unavailable.

**Notation-conversion checks (E3 and the coset notation).**

- `thm-sphere-dirac-spectrum`: $(K - \tfrac n2)(K + \tfrac n2 - 1) = -\Delta_{S^n}$ with $-\Delta_{S^n} \geq 0$. Trautman
  Sec. 8.1, p. 1305 writes $(D - \tfrac12 m)(D + \tfrac12 m - 1) + \Delta = 0$ with eigenvalues of $\Delta$ equal to
  $-l(l + m - 1)$: the same relation, with $\Delta$ negative semidefinite as in the site notation. **Supported.**
  `exm-spd-s2-spin-orbit`: $(K - 1)K = \mathbf L^2 = -\Delta_{S^2}$ with $\mathbf L = -i\mathbf x \times \nabla$ is
  the $m = 2$ case (Trautman: $r\sum\sigma_{ij}n_i\partial_j$ is the spin-orbit term $\boldsymbol\sigma\cdot\mathbf L$),
  and `exm-spd-sn-from-laplacian` reproduces Trautman's argument (eigenvalue $1 - \tfrac m2$ excluded). **Supported.**
- `thm-parthasarathy`: $D^2 = C_2(\mathfrak s, \lambda) + \tfrac R8$, $\nabla^*\nabla = C_2(\mathfrak s, \lambda) -
  C_2(\mathfrak r, \tau)$, $C_2(\mathfrak r, \tau) = R/8$, and with a gauge representation $t$,
  $C_2(\mathfrak s, \lambda) - C_2(\mathfrak r, t) + R/8$. Dolan eqs. (15)-(16), p. 6 write $\Delta = C_2(G, \cdot) -
  C_2(H, D_i)$, $C_2(H, T_i) = R/8$, $E = C_2(G, \cdot) - C_2(H, t_i) + R/8$, where Dolan's $G/H$ is the site's $S/R$
  and his holonomy group $H$ the isotropy group $R$; eq. (67), p. 14 gives the non-symmetric replacement
  $C_2(H, T_i)$, the chapter's $C_2(\mathfrak r, \tau)$. Camporesi-Higuchi eq. (5.6), p. 21 ($-\omega_\lambda =
  C_2(\tau) - C_2(\lambda)$), eq. (5.37) and eqs. (5.44)-(5.48), p. 28 (in $U/K$ notation) agree. Dolan's eq. (5) and
  Camporesi's eq. (5.35) agree with $D^2 = \nabla^*\nabla + \tfrac14R$. **Supported**, also at `exm-spd-nearly-kahler`
  (eqs. (59)-(67)), `exr-spd-casimir-laplacian` (eq. (15)) and `prp-zero-modes-spin-connection` (eq. (16)).
- `exr-spd-monopole-index-sign`: Dolan uses $\gamma^1 = \sigma_1$, $\gamma^2 = \sigma_2$ and counts $\nu_+$ on
  $\sigma_3 = +1$ (eqs. (23)-(26), (32)); with the chapter's $\gamma_* = i\gamma^1\gamma^2$ (Zhelnorovich eq. (1.21))
  $\gamma_* = -\sigma_3$, so his $\nu = -M$ is the chapter's $+M$. **Supported.**

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Clifford algebras (`sec-clifford-algebras`) | zhelnorovich2019spinors (Ch. 1; Sec. 1.1, items 1-3, 10, 10-11; eqs. (1.4), (1.6)-(1.12), (1.19), (1.21), (1.28)-(1.29), (1.38)-(1.43), (1.44)-(1.55), (1.48), (1.127), (1.135)-(1.142); Sec. 1.6.2, eq. (1.120); Sec. 1.6.3; after eq. (1.142)); vanproeyen1999 (Sec. 3; eqs. (3.3)-(3.5), (3.3), (3.8), after (3.10), (3.11)-(3.16), (3.19)-(3.28), (3.23), (3.25) (added), (3.28); footnote 5; Tables 1-2; Sec. 4.3, Table 3); trautman1995 Prop. 2; derezinski2022mathematics Ch. 15 | Zhelnorovich pp. 2-47 (PDF 16-61); Van Proeyen pp. 16-22, 31; Trautman p. 1290; Dereziński pp. 368-385 | supported | (a) 7 citations split across lines; (b) 2 bare citations (`thm` on the classification, line 1165; exercise, line 1219) | (a) joined; (b) Van Proeyen eq. (3.25), Table 2 and Table 2 added |
| Spin groups and spinor representations (`sec-spin-groups`) | zhelnorovich2019spinors (Sec. 1.2 and 3.1; Sec. 1.2.1, eqs. (1.59)-(1.61); eqs. (1.66)-(1.69), (3.44), (3.45); Secs. 1.5, 3.1.3, 4.1.3); trautman1995 (Secs. 2-3; Sec. 3.1, eqs. (2)-(5); eq. (2); Prop. 2); vanproeyen1999 (Sec. 3.2; eqs. (3.3), (3.8); eq. (3.28); Table 3); aspinwall1996 Sec. 4.1, eq. (89); krasnov2020formulations Sec. 1.16; mukunda2022continuous Ch. 6 | Zhelnorovich pp. 19-22, 33-36, 127-129 (PDF 141-142), Sec. 4.1.3; Trautman pp. 1286-1290; Van Proeyen pp. 16-21, 31; Aspinwall pp. 37-38; Krasnov p. 73 ff.; Mukunda pp. 145-157 | supported | 2 citations split across lines | joined |
| Spin structures and the spin connection (`sec-spin-structures`) | trautman1995 (Sec. 4.1, eqs. (13)-(14); Sec. 4.3; Sec. 6.1; Sec. 4.3, eq. (15), Props. 5 and 7 (was "Sec. 6, Prop. 5")); zhelnorovich2019spinors (Secs. 2.2-2.3; Sec. 2.2.1, eqs. (2.26), (2.35); eqs. (2.56), (2.61), (2.65), (2.68); Sec. 2.3); dolan2003 (Sec. 2; Sec. 2, example iii; eq. (4); eqs. (55)-(56)); aspinwall1996 (eqs. (10), (13); Sec. 2.2; Sec. 2.3, after eq. (22) (added)); greene1997 Sec. 2.11 | Trautman pp. 1292-1296, 1299-1300; Zhelnorovich pp. 94-110; Dolan pp. 4, 11-13; Aspinwall pp. 5-9; Greene pp. 31-33 | supported, except: (1) **unsupported**: Trautman Secs. 4.1/6.1 do not state $w_2 = c_1 \bmod 2$ for complex manifolds (`thm-spin-obstruction` remark); (2) **unsupported**: Zhelnorovich Sec. 2.3 has no spinor-curvature formula (`prp-spinor-curvature`; Dolan eq. (4) supports it) | (a) 5 split, 4 bare citations (lines 2502, 2558, 3007, 3033, 3045); (b) items (1)-(2); (c) Trautman locator for the sphere's spin structure pointed to Sec. 6 | (a) joined; Dolan eqs. (55)-(56), Sec. 2 eqs. (55)-(56) and "after eq. (56)" added; (b1) Aspinwall Sec. 2.3, after eq. (22) ("spin manifold, i.e. $c_1 = 0 \pmod 2$") added beside it; (b2) left for the owner (Dolan carries it); (c) corrected. fixed (owner, 2026-11-18) (M5): Trautman [Sec. 4.1 and Sec. 6.1] removed from the w₂ = c₁ mod 2 sentence of `thm-spin-obstruction` (Aspinwall and Dolan remain); Zhelnorovich [Sec. 2.3] removed at `prp-spinor-curvature` (Dolan eq. (4) remains) |
| The Dirac operator on flat spaces and spheres (`sec-dirac-spheres`) | dolan2003 (eqs. (2), (5); after eq. (26)); camporesi1995 (Secs. 3 and 5; eqs. (3.9)-(3.10) (was (3.9)); eqs. (3.44), (3.58) (added), (5.48); Sec. 5; eqs. (5.35), (5.44)-(5.48)); trautman1995 (Sec. 8.1, Prop. 8); hull2005 Sec. 3.1, eqs. (3.1)-(3.2) | Dolan pp. 3-7; Camporesi pp. 6-12, 27-29; Trautman pp. 1305-1308; Hull pp. 10-11 | supported (E3 check above). Dolan "after eq. (26)" supports only the vanishing (no zero modes for $M = 0$); the bound $\lambda^2 \geq R_0/4$ rests on eq. (5) and Camporesi (5.35). Dolan eq. (2) gives the operator, not its block form; Camporesi (3.10) does | (a) 3 split citations; (b) Camporesi (3.44) is the even-$N$ multiplicity only | (a) joined; (b) eq. (3.58) (odd $N$) added at the theorem |
| Dirac operators on compact spaces (`sec-dirac-compact-spaces`) | zhelnorovich2019spinors (Sec. 6.1, eqs. (6.1)-(6.2); Sec. 6.1, eq. (6.1)); camporesi1995 (Sec. 5; Sec. 5, eq. (5.3) and footnote 3; eq. (5.3); after eq. (5.3); Sec. 5, eq. (5.34) (was "after eq. (5.6)"); eqs. (5.6), (5.37), (5.41)-(5.48), (5.46); eq. (3.58) (was (3.44))); trautman1995 (Prop. 8, Prop. 9, Sec. 3); dolan2003 (Secs. 2-3; App. A; Sec. 2 example iii; Sec. 3; after eq. (32); eqs. (15), (16), (36)-(43), (56), (59)-(67), (69), (70)); greene1997 (Secs. 2.8-2.13, 2.9, 2.11, 2.11-2.12); aspinwall1996 (Secs. 2.2, 2.6; eqs. (9)-(12), (20), (49); Sec. 4.1); chatzistavrakidis2009nk (Secs. 2, 4); chatzistavrakidis2010orb (Sec. 2; eqs. (5)-(9)) | Zhelnorovich pp. 287-289; Camporesi pp. 11-12, 20-29; Trautman pp. 1288, 1307-1308; Dolan pp. 4-19; Greene pp. 25-35; Aspinwall pp. 5-9, 17-18, 37-38; Chatzistavrakidis-Zoupanos pp. 6-7, 17-25, 31-35; Chatzistavrakidis et al. pp. 3-5 | supported, except: (1) **unsupported**: Dolan Sec. 2 example iii says nothing about Hodge numbers (`prp`/Dolbeault statement; Greene Sec. 2.9 carries it); (2) **unsupported**: Chatzistavrakidis et al. Sec. 2 is a field-theory orbifold and does not describe fixed points as local $\mathbb R^n/\Gamma_x$ (Aspinwall Sec. 2.6 carries it). Zhelnorovich eq. (6.1) gives frame derivatives only, not the left-invariant Dirac operator itself; Dolan App. A gives the coset geometry, not the bundle $S \times_R V_\tau$ (Camporesi carries it) | (a) 2 split citations, 1 bare (line 5492); (b) items (1)-(2); (c) 3 locators off-target within the same work (Camporesi (3.44) for $S^3$, "after (5.6)"; Greene p. 32 for the quintic's $h^{2,1}$) | (a) joined; Chatzistavrakidis-Zoupanos Sec. 4 added; (b) left for the owner, each statement has a supporting co-citation (fixed (owner, 2026-11-18) (M5): Dolan [Sec. 2, example iii] removed at the Hodge-number sentence, Greene Sec. 2.9 remains; chatzistavrakidis2010orb [Sec. 2] removed at the fixed-point sentence, Aspinwall Sec. 2.6 remains); (c) corrected to (3.58), (5.34) and Secs. 2.11-2.12, pp. 32-35 |
| Twisted Dirac operators and index theorems (`sec-dirac-index`) | dolan2003 (Sec. 1; Sec. 1 and eqs. (29)-(31); Sec. 2; eqs. (2), (5); eqs. (23)-(26), (32) (added); eqs. (24)-(32), (27)-(31), (28)-(32), (44), (45)-(47), (46), (70), (71), (70)-(73) (added); eq. (32) (added)); bilal2008 (Secs. 3.7, 10, 11; eqs. (3.46), (3.46)-(3.47), (3.47) and (11.25) (added), (10.53), (11.14), (11.15)-(11.16), (11.15), (11.25); App. 14; eqs. (A.1), (A.2), (A.5)-(A.8)); greene1997 Sec. 2.11, pp. 32-33 (was p. 32); braun2009 Sec. 1; chatzistavrakidis2009nk (Sec. 4; Secs. 4.1-4.3); aspinwall1996 eq. (20) | Dolan pp. 2, 4-16; Bilal pp. 17-18, 87-91, 104-105; Greene pp. 32-33; Braun pp. 1-3; Chatzistavrakidis-Zoupanos pp. 17-25; Aspinwall p. 9 | supported, except: **unsupported**: Bilal App. 14 treats zero modes on the plane only; the sphere's non-zero spectrum $k(k + \lvert M\rvert)$ with multiplicity $2(\lvert M\rvert + 2k)$ (`thm-monopole-index`) is Dolan eqs. (28)-(32), cited beside it. Bilal eq. (11.14) gives the curved-space operator, not $D_A^2$ | (a) 3 split citations, 4 bare (lines 5879, 5892, 6174, 6389); (b) item above; (c) quintic $\chi = -200$ is on p. 33 | (a) joined; Dolan eq. (32), eqs. (23)-(26), (32), eqs. (70)-(73) and Bilal eqs. (3.47), (11.25) added; (b) left for the owner, fixed (owner, 2026-11-18) (M5): bilal2008 [App. 14] removed at `thm-monopole-index` (Dolan eqs. (28)-(32) remain; the App. 14 citation for the plane at `exm-spd-plane-versus-sphere` stays); (c) corrected to pp. 32-33 |
| The chirality problem (`sec-chirality-problem`) | Witten:1983ux (no locator); dolan2003 (Sec. 2; after eqs. (26), (32), (47); eqs. (16), (67) (added); eqs. (16), (31)-(32), (44)-(47); eqs. (19)-(21); eqs. (44), (47), (55)); dolan2009 (Sec. 2.3; Sec. 2.3, eqs. (2.45)-(2.47) (added); Sec. 2.4, eqs. (2.48)-(2.49) (was Sec. 2.3)); bilal2008 eqs. (11.15)-(11.17); manousselis2000 eqs. (12)-(15); aspinwall1996 (eqs. (8)-(12), (12); Sec. 4.1, footnote 14); chatzistavrakidis2009nk (Sec. 4.3) | Dolan pp. 6-13; Dolan-Szabo pp. 6-8; Bilal pp. 89-90; Manousselis p. 4; Aspinwall pp. 5-6, 37-38; Chatzistavrakidis-Zoupanos pp. 23-24 | supported; Witten **unavailable (no PDF)**, the section is covered by Bilal, Dolan and Dolan-Szabo. Chatzistavrakidis-Zoupanos Sec. 4.3 gives the three families as the three $\mathbf{27}$ multiplets but does not relate them by the Weyl group (`exr` solution, line 6993): that part **unsupported** | (a) 4 split citations, 3 bare (lines 6535, 6676, 6677); (b) massive modes are in Dolan-Szabo Sec. 2.4 | (a) joined; Dolan-Szabo Sec. 2.3, eqs. (2.45)-(2.47) and Dolan eqs. (16), (67) added; Witten left without locator (unreadable); (b) corrected. fixed (owner, 2026-11-18) (M5): in the solution of the generations exercise, chatzistavrakidis2009nk [Sec. 4.3] moved from the Weyl-group clause to the count "½χ = 3 (@exm-spd-generations-cosets, …)", which it supports; the Weyl-group clause is now uncited |
| Exercises (`sec-spinors-dirac-operator-exercises`) | aspinwall1996 (eq. (89); Sec. 4.1); chatzistavrakidis2009nk Sec. 4.3; dolan2003 (eqs. (44), (55)) | Aspinwall pp. 37-38; Chatzistavrakidis-Zoupanos pp. 23-24; Dolan pp. 11, 13 | supported (Weyl-group remark as above) | none | none needed |

Verification summary: 179 distinct (work, locator) pairs after the edits (178 with a locator, read; 1 Witten without PDF).
Verdicts: 166 supported; 6 **unsupported**, each beside a supporting co-citation and left for the owner (Zhelnorovich
Sec. 2.3 at `prp-spinor-curvature`; Trautman Secs. 4.1/6.1 for $w_2 = c_1 \bmod 2$; Dolan Sec. 2 ex. iii for Hodge
numbers; Chatzistavrakidis et al. Sec. 2 for fixed points; Bilal App. 14 for the sphere's excited spectrum;
Chatzistavrakidis-Zoupanos Sec. 4.3 for the Weyl-group relation); fixed (owner, 2026-11-18) (M5): all six removed or, for the last, moved to the claim it supports; 7 off-target locators corrected within the same work;
1 unavailable (Witten). None not machine-readable. The 39 first-pass "without a locator" findings were 19 citations split
across lines (joined) and 20 bare citations (19 locators added; Witten left). Added: Aspinwall Sec. 2.3, after eq. (22).
`check.py` now reports 1 citation without a locator (Witten) and no section citing nothing.

Counts: before 18 works, 4 textbooks; after 18 works, 4 textbooks (Zhelnorovich, Dereziński, Krasnov, Mukunda). Meets
A10. Semantic searches (spin structures / Dirac operator textbook; Atiyah-Singer index, Â genus, Chern character) found
no further library textbook covering these sections; Vassilevich (already in the bib) is a review, not a textbook.

#### Bib additions

None.

#### Proposed new references

None. Every section is covered by readable sources in the library.

#### Disagreements

None after conversion. The Laplacian sign (E3) and the coset Casimirs agree with Trautman, Camporesi-Higuchi and Dolan
(see the checks above); the index sign agrees with Dolan after the chirality convention is converted.

#### Reading-note additions

Drafts are in `scratchpad/notes5/spinors-dirac-operator__<ITEMKEY>.html` (h2 section only: every work already has a
reading note).

- dolan2003 (K8VM6ANY): Sec. 1, p. 2; eqs. (2), (4), (5), pp. 3-4; eqs. (15)-(16), p. 6; eqs. (19)-(32), pp. 6-8;
  eqs. (36)-(47), pp. 10-11; Sec. 2 ex. iii, eqs. (48)-(56), pp. 11-13; Sec. 3, eqs. (59)-(73), pp. 13-16; App. A,
  pp. 17-19.
- camporesi1995 (AHCKZWRP): eqs. (3.9)-(3.10), p. 7; eq. (3.44), p. 11; eq. (3.58), p. 12; Sec. 5, eq. (5.3),
  footnote 3, pp. 20-21; eq. (5.6), p. 21; eqs. (5.34)-(5.37), p. 27; eqs. (5.41)-(5.48), p. 28.
- trautman1995 (H4FX3PF3): Secs. 2-3, eqs. (2)-(5), pp. 1286-1288; Prop. 2, p. 1290; Sec. 4.1, eqs. (13)-(14), pp.
  1292-1293; Sec. 4.3, eq. (15), Prop. 5, pp. 1294-1296; Sec. 6.1, p. 1299; Prop. 7, p. 1300; Sec. 8.1, Prop. 8,
  pp. 1305-1307; Prop. 9, p. 1308.
- vanproeyen1999 (7N3KUQBJ): Sec. 3.1, eqs. (3.1)-(3.16), Table 1, pp. 16-19; Sec. 3.2, eqs. (3.17)-(3.28),
  footnote 5, Table 2, pp. 19-21; Sec. 4.3, Table 3, pp. 29-31.
- zhelnorovich2019spinors (BC78U3SC): Sec. 1.1 items 1-11, eqs. (1.4)-(1.55), pp. 2-32; Sec. 1.2.1, eqs.
  (1.59)-(1.69); Sec. 1.5; Secs. 1.6.2-1.6.3, eqs. (1.120)-(1.142), pp. 42-47; Sec. 2.2.1, eqs. (2.26), (2.35); eqs.
  (2.56)-(2.68), pp. 103-106; Sec. 3.1.3, eqs. (3.44)-(3.45), pp. 127-129; Sec. 4.1.3; Sec. 6.1, eqs. (6.1)-(6.2),
  pp. 287-288.
- aspinwall1996 (BURT9CR3): eqs. (8)-(13), pp. 5-6; Sec. 2.2, p. 7; Sec. 2.3, eqs. (20), (22), p. 9; Sec. 2.6, eq.
  (49), pp. 17-18; Sec. 4.1, eq. (89), footnote 14, pp. 37-38.
- bilal2008 (AHHZ9GH9): Sec. 3.7, eqs. (3.46)-(3.47), pp. 17-18; eq. (10.53), p. 87; eqs. (11.14)-(11.17), (11.25),
  pp. 89-91; App. (Sec. 14), eqs. (A.1)-(A.9), pp. 104-105.
- greene1997 (W8K52AES): Secs. 2.8-2.9, pp. 25-28; Sec. 2.11, pp. 31-33; Sec. 2.12, p. 35.
- chatzistavrakidis2009nk (LB9U3D47): Sec. 2.2.2, pp. 6-7; Secs. 4.1-4.3, pp. 17-25; App. B, pp. 31-35.
- chatzistavrakidis2010orb (6UBJJ7CF): Sec. 2, eqs. (1)-(11), pp. 3-5.
- dolan2009 (5DPHRBAY): Sec. 2.3, eqs. (2.45)-(2.47), pp. 7-8; Sec. 2.4, eqs. (2.48)-(2.49), p. 8.
- manousselis2000 (7WUPYQEL): eqs. (12)-(15), p. 4.
- hull2005 (GTKBE4MW): Sec. 3.1, eqs. (3.1)-(3.2), p. 10.
- braun2009 (5IKH3YMR): Sec. 1, pp. 1-3.
- krasnov2020formulations (3575F9KG): Sec. 1.16, p. 73 ff.
- mukunda2022continuous (2UYSHY8B): Ch. 6, pp. 145-157.
- derezinski2022mathematics (QXAFEK2G): Ch. 15, pp. 368-385.
- Witten:1983ux (NI5XEC45): no PDF; cited without locator in `sec-chirality-problem`.

## Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
