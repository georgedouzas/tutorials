# Audit record: fundamentals-of-mathematics-for-physicists

Design A9. First pass from `check.py`; chapter tables are filled as each chapter is audited (A1-A7, A10).

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

Works cited: `aliev2024mathematical`, `arrigo2023introduction`, `axler2024linear`, `borodzik2019problems`, `cini2023quantum`, `foulaadvand2023computational`, `knauf2018mathematical`, `magnus2023essential`, `picard2020primer`, `sagemath`.

| Section | Works cited |
|---|---|
| Ordinary differential equations (`sec-odes`) | arrigo2023introduction, borodzik2019problems, knauf2018mathematical, magnus2023essential, sagemath |
| Linear systems and the matrix exponential (`sec-linear-systems`) | aliev2024mathematical, arrigo2023introduction, axler2024linear, cini2023quantum, foulaadvand2023computational, knauf2018mathematical, magnus2023essential |
| Boundary value and Sturm-Liouville problems (`sec-sturm-liouville`) | cini2023quantum, magnus2023essential |
| Partial differential equations (`sec-pdes`) | borodzik2019problems, foulaadvand2023computational, picard2020primer |
| Green's functions (`sec-greens-functions`) | aliev2024mathematical |
| Exercises (`sec-differential-equations-exercises`) | **none** |

Citations without a locator: `sagemath` (line 736), `foulaadvand2023computational` (line 2178), `foulaadvand2023computational` (line 2192), `cini2023quantum` (line 3220), `foulaadvand2023computational` (line 5028), `foulaadvand2023computational` (line 5185), `foulaadvand2023computational` (line 5201).

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

Works cited: `arcozzi2025`, `axler2024linear`, `borodzik2019problems`, `buchbinder2021introduction`, `cheung2024metric`, `cini2023quantum`, `derezinski2022mathematics`, `gasinski2014exercises`, `izaac2018computational`, `landsman1998`, `picard2020primer`, `ramesh2020weak`, `scott2023problems`, `tornetta2022mathematical`, `waterstraat2016`, `zhou2024bulkedge`.

| Section | Works cited |
|---|---|
| Normed and Banach spaces (`sec-banach-spaces`) | arcozzi2025, cheung2024metric, cini2023quantum, picard2020primer, waterstraat2016 |
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

(pending)

### linear-algebra

(pending)

### real-analysis

(pending)

### complex-analysis

(pending)

### differential-equations

(pending)

### fourier-analysis

(pending)

### hilbert-spaces-operators

(pending)

### probability

(pending)

### differential-geometry

(pending)

### group-theory

(pending)

### lie-groups-algebras

(pending)

### homogeneous-spaces-bundles

(pending)

### spinors-dirac-operator

(pending)

## Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
