# Audit record: fundamentals-of-theoretical-physics

Design A9. First pass from `check.py`; chapter tables are filled as each chapter is audited (A1-A7, A10).

## Mechanical findings (first pass)


| Chapter | Works | Textbooks | Meets A10 | Citations without locator | Sections citing nothing |
|---|---|---|---|---|---|
| notation | 0 | 0 | exempt | 0 | 10 |
| classical-mechanics | 13 | 13 | yes | 1 | 0 |
| electromagnetism | 4 | 4 | no | 35 | 0 |
| special-relativity | 19 | 17 | yes | 18 | 0 |
| thermodynamics-statistical-mechanics | 10 | 10 | yes | 7 | 1 |
| quantum-mechanics | 13 | 13 | yes | 5 | 0 |
| classical-field-theory | 6 | 5 | no | 2 | 0 |
| dirac-equation | 14 | 8 | yes | 31 | 0 |
| quantum-field-theory | 14 | 13 | yes | 17 | 0 |
| gauge-theories | 17 | 16 | yes | 17 | 0 |
| renormalisation | 20 | 11 | yes | 46 | 0 |
| general-relativity | 11 | 10 | yes | 14 | 0 |
| supersymmetry-supergravity | 7 | 3 | no | 38 | 0 |
| glossary | 0 | 0 | exempt | 0 | 23 |

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

### classical-mechanics

Works cited: `buchbinder2021introduction`, `emam2021covariant`, `foulaadvand2023computational`, `godinho2014introduction`, `knauf2018mathematical`, `kotkin2020exploring`, `lee2013introduction`, `lee2018global`, `moretti2023analytical`, `rudolph2013differential`, `sinha2023rigid`, `torresdelcastillo2020differentiable`, `williams2023introduction`.

| Section | Works cited |
|---|---|
| Newtonian mechanics (`sec-newtonian-mechanics`) | knauf2018mathematical, kotkin2020exploring, moretti2023analytical |
| Lagrangian mechanics (`sec-lagrangian`) | foulaadvand2023computational, godinho2014introduction, knauf2018mathematical, kotkin2020exploring, lee2018global, moretti2023analytical, sinha2023rigid |
| Hamiltonian mechanics (`sec-hamiltonian`) | knauf2018mathematical, moretti2023analytical, rudolph2013differential, torresdelcastillo2020differentiable, williams2023introduction |
| Poisson brackets and canonical transformations (`sec-poisson-brackets`) | kotkin2020exploring, lee2013introduction, rudolph2013differential |
| Noether's theorem for particles (`sec-noether-particles`) | sinha2023rigid |
| Small oscillations and normal modes (`sec-small-oscillations`) | foulaadvand2023computational, kotkin2020exploring |
| The rigid body (`sec-rgb-rigid-body`) | knauf2018mathematical, kotkin2020exploring, lee2018global, moretti2023analytical, sinha2023rigid |
| Constrained Hamiltonian systems (`sec-constrained-hamiltonian`) | buchbinder2021introduction, lee2018global, moretti2023analytical, williams2023introduction |
| Exercises (`sec-classical-mechanics-exercises`) | **none** |

Citations without a locator: `emam2021covariant` (line 3).

### electromagnetism

Works cited: `macchi2023problems`, `maggiore2023electrodynamics`, `nastase2019classical`, `pierrus2018solved`.

| Section | Works cited |
|---|---|
| Electrostatics and magnetostatics (`sec-em-statics`) | macchi2023problems, maggiore2023electrodynamics, pierrus2018solved |
| Maxwell's equations, potentials and gauge invariance (`sec-em-maxwell`) | macchi2023problems, maggiore2023electrodynamics, nastase2019classical, pierrus2018solved |
| Waves, moving charges and radiation (`sec-em-radiation`) | macchi2023problems, maggiore2023electrodynamics, pierrus2018solved |
| Fields in matter (`sec-em-matter`) | macchi2023problems, maggiore2023electrodynamics, pierrus2018solved |
| Exercises (`sec-electromagnetism-exercises`) | macchi2023problems |

Citations without a locator: `macchi2023problems` (line 842), `maggiore2023electrodynamics` (line 903), `maggiore2023electrodynamics` (line 1444), `macchi2023problems` (line 1754), `pierrus2018solved` (line 2190), `pierrus2018solved` (line 2532), `macchi2023problems` (line 2626), `pierrus2018solved` (line 2726), `pierrus2018solved` (line 3383), `maggiore2023electrodynamics` (line 4100), `maggiore2023electrodynamics` (line 4149), `maggiore2023electrodynamics` (line 4160), `maggiore2023electrodynamics` (line 4781), `nastase2019classical` (line 4979), `macchi2023problems` (line 5205), `pierrus2018solved` (line 5206), `macchi2023problems` (line 5278), `maggiore2023electrodynamics` (line 6276), `macchi2023problems` (line 6298), `maggiore2023electrodynamics` (line 8901), `pierrus2018solved` (line 8902), `maggiore2023electrodynamics` (line 9298), `maggiore2023electrodynamics` (line 9993), `pierrus2018solved` (line 9994), `maggiore2023electrodynamics` (line 11833), `pierrus2018solved` (line 11834), `maggiore2023electrodynamics` (line 12521), `pierrus2018solved` (line 12522), `macchi2023problems` (line 12557), `pierrus2018solved` (line 12558), `maggiore2023electrodynamics` (line 13201), `pierrus2018solved` (line 13202), `macchi2023problems` (line 14033), `maggiore2023electrodynamics` (line 14206), `pierrus2018solved` (line 14206).

### special-relativity

Works cited: `bekaert2006unitary`, `blennow2022relativity`, `boskoff2024journey`, `boudreau2018applied`, `emam2021covariant`, `godinho2014introduction`, `gourgoulhon2013special`, `gray2019student`, `knauf2018mathematical`, `macchi2023problems`, `maggiore2023electrodynamics`, `moretti2023analytical`, `mukunda2022continuous`, `odonnell2011wigner`, `paganini2023fundamentals`, `pal2015introductory`, `pierrus2018solved`, `talagrand2022what`, `tornetta2022mathematical`.

| Section | Works cited |
|---|---|
| Postulates and Lorentz transformations (`sec-sr-postulates`) | blennow2022relativity, boskoff2024journey, macchi2023problems, maggiore2023electrodynamics |
| Minkowski spacetime (`sec-sr-minkowski`) | blennow2022relativity, boskoff2024journey, gourgoulhon2013special, maggiore2023electrodynamics |
| The Lorentz and Poincaré groups (`sec-sr-lorentz-poincare`) | bekaert2006unitary, blennow2022relativity, boudreau2018applied, gourgoulhon2013special, maggiore2023electrodynamics, mukunda2022continuous, odonnell2011wigner, talagrand2022what, tornetta2022mathematical |
| Relativistic kinematics (`sec-sr-kinematics`) | blennow2022relativity, boskoff2024journey, boudreau2018applied, godinho2014introduction, gray2019student, knauf2018mathematical, moretti2023analytical, paganini2023fundamentals, pal2015introductory, pierrus2018solved |
| Relativistic optics (`sec-sr-optics`) | blennow2022relativity, boskoff2024journey, maggiore2023electrodynamics |
| Relativistic dynamics (`sec-sr-dynamics`) | blennow2022relativity, boskoff2024journey, maggiore2023electrodynamics |
| Electrodynamics in covariant form (`sec-sr-electrodynamics`) | blennow2022relativity, emam2021covariant, maggiore2023electrodynamics |
| Exercises (`sec-special-relativity-exercises`) | **none** |

Citations without a locator: `blennow2022relativity` (line 40), `boskoff2024journey` (line 41), `maggiore2023electrodynamics` (line 42), `boudreau2018applied` (line 43), `odonnell2011wigner` (line 44), `bekaert2006unitary` (line 45), `blennow2022relativity` (line 127), `boskoff2024journey` (line 604), `boskoff2024journey` (line 700), `odonnell2011wigner` (line 2179), `blennow2022relativity` (line 4316), `bekaert2006unitary` (line 5622), `blennow2022relativity` (line 6408), `boskoff2024journey` (line 7244), `blennow2022relativity` (line 7425), `blennow2022relativity` (line 7690), `maggiore2023electrodynamics` (line 7824), `blennow2022relativity` (line 8300).

### thermodynamics-statistical-mechanics

Works cited: `bauerschmidt2019renormalisation`, `boudreau2018applied`, `bricmont2022statistical`, `cufaropetroni2020probability`, `gelis2021problems`, `kivelson2024statistical`, `knauf2018mathematical`, `shankar2017quantum`, `skacej2019solved`, `strocchi2021symmetry`.

| Section | Works cited |
|---|---|
| Thermodynamics (`sec-thermodynamics`) | bricmont2022statistical, shankar2017quantum |
| Statistical ensembles (`sec-ensembles`) | boudreau2018applied, bricmont2022statistical, gelis2021problems, kivelson2024statistical, shankar2017quantum, skacej2019solved |
| Partition functions of simple systems (`sec-partition-functions`) | boudreau2018applied, bricmont2022statistical |
| Quantum statistics (`sec-quantum-statistics`) | strocchi2021symmetry |
| Phase transitions and Landau theory (`sec-landau-theory`) | bauerschmidt2019renormalisation, boudreau2018applied, bricmont2022statistical, kivelson2024statistical, shankar2017quantum, skacej2019solved, strocchi2021symmetry |
| Finite temperature as a compact Euclidean time (`sec-thermal-circle`) | **none** |
| Exercises (`sec-thermodynamics-statistical-mechanics-exercises`) | **none** |

Citations without a locator: `cufaropetroni2020probability` (line 3), `knauf2018mathematical` (line 3), `gelis2021problems` (line 946), `bauerschmidt2019renormalisation` (line 4253), `bauerschmidt2019renormalisation` (line 4905), `bauerschmidt2019renormalisation` (line 4984), `bauerschmidt2019renormalisation` (line 5008).

### quantum-mechanics

Works cited: `das2023quantum`, `demilio2017problems`, `derezinski2022mathematics`, `foulaadvand2023computational`, `galitski2013exploring`, `guidry2022symmetry`, `izaac2018computational`, `mukunda2022continuous`, `nastase2023quantum`, `svanberg2022spectroscopy`, `talagrand2022what`, `tornetta2022mathematical`, `zettili2009quantum`.

| Section | Works cited |
|---|---|
| States and observables (`sec-states-observables`) | das2023quantum, demilio2017problems, derezinski2022mathematics, tornetta2022mathematical |
| Measurement and the Schrödinger equation (`sec-schroedinger`) | das2023quantum, demilio2017problems, galitski2013exploring, guidry2022symmetry, izaac2018computational, zettili2009quantum |
| The harmonic oscillator (`sec-harmonic-oscillator`) | das2023quantum, nastase2023quantum |
| Angular momentum and spin (`sec-angular-momentum`) | das2023quantum, demilio2017problems, galitski2013exploring, nastase2023quantum, svanberg2022spectroscopy, zettili2009quantum |
| Symmetries in quantum mechanics (`sec-quantum-symmetries`) | das2023quantum, foulaadvand2023computational, galitski2013exploring, mukunda2022continuous, nastase2023quantum, svanberg2022spectroscopy, talagrand2022what |
| Perturbation theory and the path integral (`sec-path-integral`) | demilio2017problems, galitski2013exploring, izaac2018computational, nastase2023quantum, svanberg2022spectroscopy, zettili2009quantum |
| Scattering (`sec-qm-scattering`) | das2023quantum, galitski2013exploring, zettili2009quantum |
| A charged particle in an electromagnetic field (`sec-qm-charged-particle`) | galitski2013exploring, guidry2022symmetry |
| Exercises (`sec-quantum-mechanics-exercises`) | **none** |

Citations without a locator: `das2023quantum` (line 1603), `das2023quantum` (line 1741), `nastase2023quantum` (line 3347), `das2023quantum` (line 3516), `svanberg2022spectroscopy` (line 5177).

### classical-field-theory

Works cited: `alvarezgaume2005`, `blennow2022relativity`, `buchbinder2021introduction`, `emam2021covariant`, `gourgoulhon2013special`, `maggiore2023electrodynamics`.

| Section | Works cited |
|---|---|
| Fields (`sec-fields`) | emam2021covariant, maggiore2023electrodynamics |
| Actions and symmetries (`sec-actions-symmetries`) | alvarezgaume2005, buchbinder2021introduction, emam2021covariant, gourgoulhon2013special, maggiore2023electrodynamics |
| Exercises (`sec-classical-field-theory-exercises`) | **none** |

Citations without a locator: `blennow2022relativity` (line 3), `alvarezgaume2005` (line 2546).

### dirac-equation

Works cited: `aitchison2024gauge`, `calogeracos1999klein`, `das2023quantum`, `costella1995foldy`, `eides2001hydrogen`, `fan2023electron`, `galitski2013exploring`, `nastase2023quantum`, `pal2011majorana`, `pal2015introductory`, `parthey2011hydrogen`, `shankar2017quantum`, `svanberg2022spectroscopy`, `zhelnorovich2019spinors`.

| Section | Works cited |
|---|---|
| The equation and its covariance (`sec-dirac-covariance`) | aitchison2024gauge, costella1995foldy, galitski2013exploring, nastase2023quantum, zhelnorovich2019spinors |
| Free solutions (`sec-dirac-free-solutions`) | calogeracos1999klein, costella1995foldy, pal2011majorana |
| The non-relativistic limit (`sec-dirac-nonrelativistic`) | das2023quantum, costella1995foldy, eides2001hydrogen, fan2023electron, svanberg2022spectroscopy |
| The Dirac hydrogen atom (`sec-dirac-hydrogen`) | calogeracos1999klein, das2023quantum, eides2001hydrogen, parthey2011hydrogen, svanberg2022spectroscopy, zhelnorovich2019spinors |
| Charge conjugation, Weyl and Majorana fermions (`sec-dirac-majorana`) | pal2011majorana, pal2015introductory, parthey2011hydrogen, shankar2017quantum, svanberg2022spectroscopy, zhelnorovich2019spinors |
| The Klein paradox and the Dirac sea (`sec-klein-paradox`) | aitchison2024gauge, calogeracos1999klein, das2023quantum, costella1995foldy |
| Exercises (`sec-dirac-equation-exercises`) | parthey2011hydrogen |

Citations without a locator: `zhelnorovich2019spinors` (line 27), `das2023quantum` (line 27), `svanberg2022spectroscopy` (line 28), `eides2001hydrogen` (line 29), `costella1995foldy` (line 30), `pal2011majorana` (line 30), `calogeracos1999klein` (line 31), `parthey2011hydrogen` (line 31), `fan2023electron` (line 32), `zhelnorovich2019spinors` (line 203), `zhelnorovich2019spinors` (line 460), `calogeracos1999klein` (line 1976), `costella1995foldy` (line 1988), `eides2001hydrogen` (line 1988), `fan2023electron` (line 2159), `fan2023electron` (line 2190), `fan2023electron` (line 2222), `eides2001hydrogen` (line 2740), `svanberg2022spectroscopy` (line 2895), `eides2001hydrogen` (line 3591), `parthey2011hydrogen` (line 3603), `eides2001hydrogen` (line 3793), `pal2011majorana` (line 3851), `parthey2011hydrogen` (line 4043), `parthey2011hydrogen` (line 4051), `pal2011majorana` (line 4557), `calogeracos1999klein` (line 4899), `costella1995foldy` (line 4900), `calogeracos1999klein` (line 5059), `parthey2011hydrogen` (line 5645), `parthey2011hydrogen` (line 5652).

### quantum-field-theory

Works cited: `aitchison2024gauge`, `alvarezgaume2005`, `boudreau2018applied`, `buchbinder2021introduction`, `derezinski2022mathematics`, `galitski2013exploring`, `gelis2021problems`, `nastase2023quantum`, `paganini2023fundamentals`, `shankar2017quantum`, `strocchi2021symmetry`, `talagrand2022what`, `tornetta2022mathematical`, `williams2023introduction`.

| Section | Works cited |
|---|---|
| Quantisation in outline (`sec-quantisation`) | alvarezgaume2005, derezinski2022mathematics, galitski2013exploring, talagrand2022what, williams2023introduction |
| Canonical quantisation of the free scalar (`sec-canonical-quantisation`) | aitchison2024gauge, buchbinder2021introduction, derezinski2022mathematics, gelis2021problems, talagrand2022what |
| Propagators and Green's functions (`sec-propagators`) | buchbinder2021introduction, paganini2023fundamentals |
| Canonical quantisation of the Dirac field (`sec-qdm-dirac`) | williams2023introduction |
| Quantisation of the Maxwell field (`sec-qdm-maxwell`) | williams2023introduction |
| The path integral and Euclidean field theory (`sec-field-path-integral`) | boudreau2018applied, derezinski2022mathematics, gelis2021problems, nastase2023quantum, shankar2017quantum, strocchi2021symmetry, tornetta2022mathematical |
| Perturbation theory and Feynman diagrams (`sec-feynman-diagrams`) | buchbinder2021introduction, talagrand2022what, williams2023introduction |
| The S-matrix and cross sections (`sec-qdm-s-matrix`) | williams2023introduction |
| Renormalisation, effective actions and anomalies (`sec-renormalisation`) | alvarezgaume2005 |
| Exercises (`sec-quantum-field-theory-exercises`) | **none** |

Citations without a locator: `gelis2021problems` (line 845), `williams2023introduction` (line 2944), `williams2023introduction` (line 3162), `williams2023introduction` (line 3247), `williams2023introduction` (line 3540), `williams2023introduction` (line 3554), `williams2023introduction` (line 3601), `williams2023introduction` (line 3866), `strocchi2021symmetry` (line 3897), `boudreau2018applied` (line 4773), `boudreau2018applied` (line 4962), `williams2023introduction` (line 5779), `williams2023introduction` (line 5965), `williams2023introduction` (line 6009), `williams2023introduction` (line 6483), `williams2023introduction` (line 6762), `alvarezgaume2005` (line 7532).

### gauge-theories

Works cited: `aitchison2024gauge`, `alvarezgaume2005`, `boudreau2018applied`, `buchbinder2021introduction`, `gelis2021problems`, `guidry2022symmetry`, `hamilton2017mathematical`, `hosotani2025introduction`, `kivelson2024statistical`, `maggiore2023electrodynamics`, `nastase2019classical`, `nastase2023quantum`, `nath2017supersymmetry`, `paganini2023fundamentals`, `pal2015introductory`, `strocchi2021symmetry`, `williams2023introduction`.

| Section | Works cited |
|---|---|
| Gauge theories (`sec-gauge-theories`) | aitchison2024gauge, alvarezgaume2005, hamilton2017mathematical, maggiore2023electrodynamics, nastase2019classical, nath2017supersymmetry, paganini2023fundamentals, pal2015introductory, strocchi2021symmetry |
| Gauge fields as connections (`sec-gauge-connections`) | guidry2022symmetry, hamilton2017mathematical |
| The Aharonov-Bohm effect and the Dirac monopole (`sec-aharonov-bohm-monopole`) | guidry2022symmetry, hamilton2017mathematical, nastase2019classical |
| Topological solutions (`sec-topological-solutions`) | guidry2022symmetry, nastase2019classical, nastase2023quantum |
| Symmetry breaking (`sec-symmetry-breaking`) | alvarezgaume2005, hamilton2017mathematical, hosotani2025introduction, nath2017supersymmetry, paganini2023fundamentals, pal2015introductory, strocchi2021symmetry |
| Quantisation of gauge fields (`sec-gauge-quantisation`) | buchbinder2021introduction, gelis2021problems, strocchi2021symmetry, williams2023introduction |
| Lattice gauge theory (`sec-lattice-gauge`) | boudreau2018applied, guidry2022symmetry, kivelson2024statistical, nastase2019classical, williams2023introduction |
| The Standard Model (`sec-standard-model`) | nath2017supersymmetry, paganini2023fundamentals, pal2015introductory |
| Exercises (`sec-gauge-theories-exercises`) | pal2015introductory |

Citations without a locator: `nath2017supersymmetry` (line 949), `nath2017supersymmetry` (line 1329), `nath2017supersymmetry` (line 1572), `nath2017supersymmetry` (line 1757), `nath2017supersymmetry` (line 6488), `alvarezgaume2005` (line 6606), `nath2017supersymmetry` (line 6768), `williams2023introduction` (line 7042), `boudreau2018applied` (line 9100), `boudreau2018applied` (line 10436), `boudreau2018applied` (line 11158), `boudreau2018applied` (line 11350), `boudreau2018applied` (line 12261), `boudreau2018applied` (line 13278), `nath2017supersymmetry` (line 13521), `pal2015introductory` (line 14316), `nath2017supersymmetry` (line 14892).

### renormalisation

Works cited: `aitchison2024gauge`, `arkanihamed1998`, `balduf2024dyson`, `bauerschmidt2019renormalisation`, `boudreau2018applied`, `bricmont2022statistical`, `buchbinder2021introduction`, `dienes1998grand`, `fan2023electron`, `gelis2021problems`, `grozin2005lectures`, `kivelson2024statistical`, `kompaniets2017minimally`, `manohar2018introduction`, `nath2017supersymmetry`, `ponton2001casimir`, `sartore2021pyrate`, `shankar2017quantum`, `talagrand2022what`, `vassilevich2003heat`.

| Section | Works cited |
|---|---|
| Regularisation (`sec-regularisation`) | balduf2024dyson, bauerschmidt2019renormalisation, boudreau2018applied, grozin2005lectures, vassilevich2003heat |
| Power counting and renormalisability (`sec-power-counting`) | balduf2024dyson, buchbinder2021introduction, dienes1998grand, manohar2018introduction, talagrand2022what |
| Renormalised perturbation theory (`sec-renormalised-perturbation`) | aitchison2024gauge, balduf2024dyson, grozin2005lectures, kompaniets2017minimally |
| Renormalisation schemes (`sec-renormalisation-schemes`) | balduf2024dyson, grozin2005lectures, kompaniets2017minimally |
| BPHZ and forests (`sec-bphz`) | balduf2024dyson, kompaniets2017minimally |
| Ward identities and QED at one loop (`sec-qed-one-loop`) | balduf2024dyson, fan2023electron, gelis2021problems, grozin2005lectures |
| The renormalisation group (`sec-renormalisation-group`) | balduf2024dyson, buchbinder2021introduction, dienes1998grand, grozin2005lectures, kivelson2024statistical, kompaniets2017minimally, manohar2018introduction, nath2017supersymmetry, sartore2021pyrate, shankar2017quantum |
| Dyson-Schwinger equations (`sec-dyson-schwinger`) | balduf2024dyson |
| The Wilsonian renormalisation group (`sec-wilsonian-rg`) | balduf2024dyson, bauerschmidt2019renormalisation, boudreau2018applied, bricmont2022statistical, kivelson2024statistical, kompaniets2017minimally |
| Effective field theories (`sec-effective-field-theories`) | grozin2005lectures, manohar2018introduction, nath2017supersymmetry |
| Renormalisation in higher dimensions (`sec-renormalisation-higher-dimensions`) | arkanihamed1998, dienes1998grand, nath2017supersymmetry, ponton2001casimir |
| Exercises (`sec-renormalisation-theory-exercises`) | **none** |

Citations without a locator: `balduf2024dyson` (line 41), `bauerschmidt2019renormalisation` (line 42), `bricmont2022statistical` (line 43), `boudreau2018applied` (line 43), `nath2017supersymmetry` (line 44), `grozin2005lectures` (line 45), `manohar2018introduction` (line 46), `vassilevich2003heat` (line 47), `kompaniets2017minimally` (line 47), `dienes1998grand` (line 47), `ponton2001casimir` (line 48), `vassilevich2003heat` (line 523), `boudreau2018applied` (line 818), `bauerschmidt2019renormalisation` (line 819), `balduf2024dyson` (line 1094), `manohar2018introduction` (line 1095), `balduf2024dyson` (line 1164), `kompaniets2017minimally` (line 2086), `grozin2005lectures` (line 2264), `balduf2024dyson` (line 2265), `balduf2024dyson` (line 2292), `balduf2024dyson` (line 2913), `balduf2024dyson` (line 3068), `grozin2005lectures` (line 3298), `gelis2021problems` (line 3301), `grozin2005lectures` (line 3306), `nath2017supersymmetry` (line 4178), `grozin2005lectures` (line 4179), `nath2017supersymmetry` (line 4224), `sartore2021pyrate` (line 4526), `balduf2024dyson` (line 5071), `boudreau2018applied` (line 5339), `bauerschmidt2019renormalisation` (line 5340), `bricmont2022statistical` (line 5340), `boudreau2018applied` (line 5563), `bauerschmidt2019renormalisation` (line 5698), `kompaniets2017minimally` (line 5819), `bauerschmidt2019renormalisation` (line 5985), `bauerschmidt2019renormalisation` (line 5993), `bauerschmidt2019renormalisation` (line 6010), `manohar2018introduction` (line 6296), `dienes1998grand` (line 6773), `ponton2001casimir` (line 6774), `dienes1998grand` (line 6930), `dienes1998grand` (line 6945), `nath2017supersymmetry` (line 7149).

### general-relativity

Works cited: `blennow2022relativity`, `boskoff2024journey`, `buchbinder2021introduction`, `carroll1997`, `emam2021covariant`, `godinho2014introduction`, `gray2019student`, `krasnov2020formulations`, `nastase2019classical`, `needham2021visual`, `plebanski2024introduction`.

| Section | Works cited |
|---|---|
| The Einstein-Hilbert action (`sec-einstein-hilbert`) | blennow2022relativity, carroll1997, emam2021covariant, gray2019student, needham2021visual |
| The Einstein equations (`sec-einstein-equations`) | blennow2022relativity, carroll1997, nastase2019classical, plebanski2024introduction |
| Black holes and cosmology (`sec-schwarzschild-flrw`) | blennow2022relativity, boskoff2024journey, buchbinder2021introduction, carroll1997, emam2021covariant, godinho2014introduction, plebanski2024introduction |
| Gravitational waves (`sec-grf-gravitational-waves`) | blennow2022relativity, boskoff2024journey, carroll1997, gray2019student, plebanski2024introduction |
| Exercises (`sec-general-relativity-exercises`) | **none** |

Citations without a locator: `krasnov2020formulations` (line 3), `carroll1997` (line 35), `carroll1997` (line 342), `carroll1997` (line 662), `carroll1997` (line 665), `carroll1997` (line 799), `carroll1997` (line 968), `carroll1997` (line 1226), `carroll1997` (line 1438), `carroll1997` (line 2128), `plebanski2024introduction` (line 3871), `plebanski2024introduction` (line 4930), `gray2019student` (line 5814), `carroll1997` (line 5818).

### supersymmetry-supergravity

Works cited: `cecotti2023introduction`, `duff2025`, `manousselis2000`, `martin1997`, `nath2017supersymmetry`, `tanii1998`, `zhelnorovich2019spinors`.

| Section | Works cited |
|---|---|
| Supersymmetry (`sec-supersymmetry`) | martin1997, nath2017supersymmetry, tanii1998 |
| Supergravity (`sec-supergravity`) | duff2025, manousselis2000, martin1997, nath2017supersymmetry, tanii1998, zhelnorovich2019spinors |
| Exercises (`sec-supersymmetry-supergravity-exercises`) | **none** |

Citations without a locator: `cecotti2023introduction` (line 3), `martin1997` (line 30), `tanii1998` (line 30), `tanii1998` (line 51), `martin1997` (line 272), `nath2017supersymmetry` (line 626), `martin1997` (line 955), `martin1997` (line 1224), `martin1997` (line 1524), `martin1997` (line 1947), `martin1997` (line 2399), `martin1997` (line 2478), `martin1997` (line 2755), `nath2017supersymmetry` (line 2756), `nath2017supersymmetry` (line 2757), `nath2017supersymmetry` (line 2776), `nath2017supersymmetry` (line 2892), `nath2017supersymmetry` (line 2972), `nath2017supersymmetry` (line 3038), `martin1997` (line 3089), `martin1997` (line 3286), `martin1997` (line 3549), `nath2017supersymmetry` (line 4065), `nath2017supersymmetry` (line 4274), `tanii1998` (line 4411), `zhelnorovich2019spinors` (line 4582), `zhelnorovich2019spinors` (line 4589), `tanii1998` (line 5099), `tanii1998` (line 5374), `tanii1998` (line 5437), `martin1997` (line 5537), `manousselis2000` (line 5572), `nath2017supersymmetry` (line 5657), `nath2017supersymmetry` (line 5687), `duff2025` (line 5985), `duff2025` (line 6331), `duff2025` (line 6994), `manousselis2000` (line 7191).

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
| Y (``) | **none** |

## Chapter audits

Per chapter: one row per "##" section — works cited with locators, pages verified, verdict (supported / unsupported / disagreement / not machine-readable), gap, resolution.

### classical-mechanics

PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages. Offsets (printed = PDF − n):
Knauf 11, Kotkin 3, Moretti 23 (21 from Ch. 10), Sinha 9, Lee 2018 23, Williams 22, Buchbinder 11, Foulaadvand 15,
Godinho 10, Emam 19, Lee 2013 15, Rudolph 13, Torres del Castillo 6. About 159 distinct (work, locator) pairs were
checked. The notation change (bold vectors, Φ for the scalar potential, Θ for the step function) affects no verified
result: the Maxwell momentum π = −E agrees with Williams eq. 3.3.28 and, after A_i = −A^i, with Buchbinder eq. 5.41; the
gauge transformation δA = ∇λ, δΦ = −λ̇ is Williams eq. 3.3.62 (A^μ → A^μ + ∂^μω, signature +−−−) with λ = −ω; the impulse
response G(t) = Θ(t) sin ωt/(mω) is correct.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Newtonian mechanics (`sec-newtonian-mechanics`) | knauf2018mathematical Ch. 11; kotkin2020exploring §1, §2; moretti2023analytical Ch. 3-4; emam2021covariant Secs. 3.1 and 3.3 (added) | Knauf TOC and Sec. 11.3.1 pp. 256-258; Kotkin §1-2 titles; Moretti TOC pp. 69-128; Emam pp. 78-92, 96-100 | supported (chapter-level further reading) | emam2021covariant was only a `nocite` entry (no locator) | cited here with a locator; the `nocite` front matter removed |
| Lagrangian mechanics (`sec-lagrangian`) | godinho2014introduction Ch. 5; knauf2018mathematical Ch. 8; kotkin2020exploring §4, §9; lee2018global Ch. 3, 4-5, 9; moretti2023analytical Ch. 7-9, 5; sinha2023rigid Secs. 2.4.1, 2.4.2-2.4.3, 2.4.6, 2.4.8, 2.4.11, 7.1.5, 7.2.11, 7.2.13, 5.2.14 (added); foulaadvand2023computational Problems 3.2, 3.3, 3.4 | Sinha pp. 223-244, 634-636, 809-810, 868, 872; Foulaadvand p. 74; TOCs for chapter pointers | supported, except Sinha Sec. 7.1.5 at exr-clb-ladder-dynamics: **unsupported** (7.1.5 covers the centrodes only, not when the ladder leaves the wall) | the ladder dynamics | added Sinha Sec. 5.2.14 (rod against a wall pivoted to a wheel: 9M cos³θ + 6m cos θ − 4m cos α = 0, which gives cos θ = ⅔ cos α for M = 0). Sinha 7.2.11 covers the sphere only; the κ-generalisation in exr-clb-rolling-race is the author's |
| Hamiltonian mechanics (`sec-hamiltonian`) | knauf2018mathematical Ch. 6; moretti2023analytical Ch. 11-13; rudolph2013differential Ch. 7-8, Ch. 9; torresdelcastillo2020differentiable Ch. 8; williams2023introduction Sec. 2.9 | TOCs (Knauf p. 97; Moretti pp. 429-620; Rudolph pp. 315-490; Torres pp. 257-318) | supported (chapter-level further reading; Williams Sec. 2.9 is constrained systems, a weak fit here but correct) | none | none |
| Poisson brackets and canonical transformations (`sec-poisson-brackets`) | kotkin2020exploring §10-13; lee2013introduction Ch. 22; rudolph2013differential Ch. 10, Secs. 8.2 and 8.8 (added); moretti2023analytical Secs. 12.1-12.4 (added); knauf2018mathematical Secs. 10.2, 10.3, 10.5 (added) | Kotkin titles; Lee 2013 p. 564; Rudolph pp. 360, 403, 491; Moretti pp. 487-570; Knauf pp. 222-240 | supported; Rudolph Ch. 10 (momentum maps, reduction) only partly covers the section | the section's Poisson algebra, canonical transformations, Liouville and Hamilton-Jacobi had no specific textbook locator | three locators added (above) |
| Noether's theorem for particles (`sec-noether-particles`) | sinha2023rigid Secs. 8.2.1, 8.2.2, 8.2.4, 8.2.12, 8.2.18, 3.4.3, 3.4.12; added: moretti2023analytical Secs. 8.1-8.2, kotkin2020exploring §4, knauf2018mathematical Thm. 13.22 | Sinha pp. 368, 377, 900-920; Moretti pp. 269-290 (Noether, elementary local form p. 280); Knauf p. 351 | supported, except Sinha 8.2.4: **disagreement** (below) | no source for the theorem itself (only Sinha's examples) | "For more" line added with the three locators |
| Small oscillations and normal modes (`sec-small-oscillations`) | kotkin2020exploring §5-8; foulaadvand2023computational Problems 4.1-4.3, 4.4, 4.7, 4.8, 4.9, 4.12; added: moretti2023analytical Secs. 9.3-9.4, knauf2018mathematical Sec. 6.3.2 | Foulaadvand pp. 111-114; Moretti pp. 332-355; Knauf p. 119 | supported (Foulaadvand's problems pose the questions, the chapter supplies the answers) | no textbook treatment of equilibria and normal modes | two locators added |
| The rigid body (`sec-rgb-rigid-body`) | moretti2023analytical Ch. 5, Sec. 6.2.3, Def. 5.10, eqs. 5.5-5.14, Ex. 5.16(1)-(2), Prop. 5.11, Def. 5.12, Remarks 5.15, eqs. 5.10, 5.22, 5.23, 5.28, 5.29, 5.35, 5.40-5.41, 5.43, Prop. 5.19, Remarks 5.20(2), Secs. 5.3.1, 5.3.5; knauf2018mathematical Ch. 14, Lemma 14.6, eq. 14.3.4, Exs. 14.10, 14.11, 14.17, Figs. 14.3.1, 14.3.3(c)-(d), Thm. 14.14, Remark 14.15, Secs. 14.3.1-14.3.2, eqs. 14.3.5-14.3.7; lee2018global Ch. 6, Prop. 6.1, eqs. 6.8, 6.18, 6.20, Secs. 6.3.1, 6.4, 6.6.2; kotkin2020exploring §9, Problems 9.2, 9.3, 9.5-9.8, 9.10, 9.12, 9.13, 9.17-9.19; sinha2023rigid Secs. 3.2.16-3.2.21, 7.1.34, 7.2.3, 7.2.4, 7.2.6, 7.2.7; added: godinho2014introduction Sec. 5.3, emam2021covariant Sec. 3.2 | Moretti pp. 135-157, 183-185; Knauf pp. 371-383; Lee pp. 276-290; Kotkin pp. 48-51, solutions 9.3 p. 278, 9.17 p. 286; Sinha pp. 303-310, 849-859; Godinho p. 179; Emam pp. 92-96 | supported, with partial support: Knauf Fig. 14.3.3(d) (exm-rgb-lt-shapes) shows one nutation path, the waves/loops/cusps classification is not in Knauf; Lee Sec. 6.6.2 (line "nutation", exr on the integrals) gives two of the three integrals and no symmetric top; Lee Sec. 6.4 (exr-rgb-eu-brackets) gives Hamilton's equations on SO(3), not the Euler-angle brackets; Knauf Ex. 14.17 poses the fast-top question, the criterion is the chapter's answer | the cusps classification | no source in the cited works (searched Sinha, Kotkin, Moretti, Knauf, Godinho, Lee, Torres for "cusp"/"loops"); left for the owner |
| Constrained Hamiltonian systems (`sec-constrained-hamiltonian`) | williams2023introduction Secs. 2.9.1-2.9.4 (about 30 equation locators), Sec. 3.3.2 eqs. 3.3.26-3.3.82; lee2018global Sec. 3.5, eqs. 3.16-3.18, Secs. 5.4, 5.4.2, 5.6.1 (added); moretti2023analytical Secs. 10.5.3 eq. 10.74, 10.5.4 eq. 10.86; buchbinder2021introduction Sec. 5.2, eq. 5.41 | Williams pp. 126-153, 189-199; Lee pp. 105-108, 222-225, 233; Moretti pp. 408, 413; Buchbinder p. 77 | supported, except: Williams eqs. 2.9.104-2.9.115 are in Sec. 2.9.2, not 2.9.1 (**locator error**, 3 citations); Williams Sec. 2.9.2 on L = aq̇ + V: **disagreement** (below); Lee Sec. 5.4 at exr-chs-th-pendulum-tension: partial (no multiplier or tension); Lee Sec. 3.5 at exm-chs-th-sphere: general multiplier statement only (the centripetal force is the author's) | section labels; the spherical pendulum | "Sec. 2.9.1" → "Sec. 2.9.2" for eqs. 2.9.104-2.9.115 (lines with eqs. 2.9.106-2.9.108, 2.9.111-2.9.115 and the gauge-generator proof); Lee Sec. 5.6.1 (spherical pendulum) added |
| Exercises (`sec-classical-mechanics-exercises`) | added: kotkin2020exploring Problems 2.18, 5.5; knauf2018mathematical Sec. 11.3.1 and Ex. 11.22 | Kotkin pp. 8, 25, solutions pp. 103, 175 (Problem 5.5's answer ω² = g(1 + 3cos²θ₀)/(l cos θ₀) matches the chapter); Knauf pp. 256-258 | supported | the section cited nothing | Kepler exercise: Kotkin 2.18 (Laplace vector gives the conic) and Knauf 11.3.1, Ex. 11.22; spherical pendulum: Kotkin 5.5. The free particle on SU(2) has no source (author's) |

Adapted blocks without their own citation: none found beyond the exercises fixed above; the free particle on $SU(2)$
(exr-clm-int-su2) reads as the author's own construction.

Observation for the owner (notation, not a source disagreement): in sec-constrained-hamiltonian Φ is both the scalar
potential (Maxwell examples) and the vector of constraints (`{Φ_a, Φ_b}` in exm-chs-fc-combination and the
first-class definition), in the same section.

Counts: before 13 works, 13 textbooks (emam2021covariant only through `nocite`); after 13 works, 13 textbooks, every
work cited with a locator. A10 met. `check.py`: works 13, textbooks 13, no locator 0, sections citing nothing 0.

Bib additions: none.

Proposed new references: none (every section is covered by works already in the bib).

Disagreements:

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| classical-mechanics, exr-clb-insect-ring (sec-noether-particles), cites sinha2023rigid Sec. 8.2.4 | the ring's centre moves on a circle of radius ma/(M + m) with angular velocity (M + m)v/((M + 2m)a) | Sinha states the angular velocity of the centre as m v/((M + 2m)a); his solution derives this as θ̇, the ring's own rate of turning. The radius agrees. An independent check (CM fixed, total angular momentum zero) gives the chapter's value for the centre; Sinha's value is the ring's spin | Sinha pp. 902-904 | |
| classical-mechanics, exm-chs-pc-linear (sec-constrained-hamiltonian), cites williams2023introduction Sec. 2.9.2 | L = a(q)q̇ − V(q): the equation V′(q) = 0 confines q to the critical points of V, or leaves q arbitrary for constant V | Williams: L = aq̇ + V(q) gives dV/dq = 0 "and so the system only has solutions if V(q) is a constant" | Williams p. 146 | |

Reading-note additions (drafts in
`/private/tmp/claude-501/-Volumes-T7-Projects-Personal-tutorials/d12581c1-96bc-4f35-b368-837e4047ec83/scratchpad/notes6/classical-mechanics__<ITEMKEY>.html`;
every work already has a note, so only the h2 section `fundamentals-of-theoretical-physics/classical-mechanics` is drafted):

- knauf2018mathematical (BGRDQPJ8): Ch. 6, 8, 11 (Sec. 11.3.1, Ex. 11.22, pp. 256-258), Secs. 10.2, 10.3, 10.5 (pp. 222-240), Sec. 6.3.2 (p. 119), Thm. 13.22 (p. 351), Ch. 14 (Lemma 14.6 p. 371; eq. 14.3.4, Exs. 14.10-14.11, Fig. 14.3.1 pp. 375-376; Sec. 14.3.1 pp. 375-380; Thm. 14.14, Remark 14.15 p. 380; Sec. 14.3.2, eqs. 14.3.5-14.3.7, Fig. 14.3.3 pp. 381-382; Ex. 14.17 p. 383).
- kotkin2020exploring (SIL9SYKG): §1-2, §4, §5-8, §9, §10-13; Problems 2.18 (p. 8, sol. p. 103), 5.5 (p. 25, sol. p. 175), 9.2-9.19 (pp. 48-51; sols. 9.3 p. 278, 9.17 p. 286).
- moretti2023analytical (G6FDV388): Ch. 3-5, 7-9, 11-13; Secs. 8.1-8.2 (pp. 269-290), 9.3-9.4 (pp. 332-355), 12.1-12.4 (pp. 487-570); Ch. 5 items pp. 135-157; Sec. 6.2.3 pp. 183-185; Secs. 10.5.3-10.5.4, eqs. 10.74, 10.86 (pp. 408, 413).
- sinha2023rigid (9BATZ7D7): Secs. 2.4.1-2.4.11 (pp. 223-244), 3.2.16-3.2.21 (pp. 303-310), 3.4.3 (p. 368), 3.4.12 (p. 377), 5.2.14 (pp. 634-636), 7.1.5 (pp. 809-810), 7.1.34 (p. 849), 7.2.3-7.2.7 (pp. 854-859), 7.2.11, 7.2.13 (pp. 868, 872), 8.2.1-8.2.18 (pp. 900-920).
- lee2018global (W8JPK6PC): Ch. 3, 4-5, 6, 9; Sec. 3.5 eqs. 3.16-3.18 (pp. 105-108); Secs. 5.4, 5.4.2 (pp. 222-225), 5.6.1 (p. 233); Sec. 6.3.1 (pp. 276-279), Prop. 6.1, eq. 6.8 (pp. 279-281), Sec. 6.4 (pp. 281-283), eq. 6.18 (p. 286), Sec. 6.6.2, eq. 6.20 (pp. 288-290).
- williams2023introduction (Z7ZJZZWK): Sec. 2.9 (pp. 126-153; equation-level map in the draft), Sec. 3.3.2 eqs. 3.3.26-3.3.82 (pp. 189-199).
- buchbinder2021introduction (MSWD9GKH): Sec. 5.2, eqs. 5.40-5.41 (p. 77).
- emam2021covariant (MV8JU3AT): Secs. 3.1, 3.3 (pp. 78-92, 96-100), Sec. 3.2 (pp. 92-96).
- godinho2014introduction (5VBNBTT4): Ch. 5 (p. 165), Sec. 5.3 (p. 179).
- foulaadvand2023computational (WHBRCYJA): Problems 3.2-3.4 (p. 74), 4.1-4.4 (p. 111), 4.7 (p. 112), 4.8-4.9 (p. 113), 4.12 (p. 114).
- lee2013introduction (5TY4BDVG): Ch. 22 (p. 564).
- rudolph2013differential (45BKP4LD): Ch. 7-9 (pp. 315-490), Secs. 8.2, 8.8 (pp. 360, 403), Ch. 10 (p. 491).
- torresdelcastillo2020differentiable (IGFIL5QW): Ch. 8 (p. 257).

### electromagnetism

Task 6.2. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`, split per PDF page. Pages are printed pages,
taken from the running heads. Offsets (printed = PDF − n):
- Maggiore 17, Năstase 20, Pierrus 11 (not 10), Cini 12, Rahaman 6, Stenzel 14 (to p. 357) and 13 (from p. 359),
  Landau-Páez 21.
- Macchi varies by part. Statements: 16 in Chs. 1-2, 15 in Ch. 3, 14 in Chs. 5-6, 13 in Ch. 8. Solutions: S-1 11,
  S-2 to S-4 10, S-5 9, S-6 8, S-8 7, S-10 to S-12 7 to 6.

Notation: Heaviside-Lorentz units with c = 1, Φ the scalar potential, Φ_B the magnetic flux.
- Maggiore, Pierrus, Rahaman, Stenzel and Emam use SI. Macchi uses k_e (Gaussian or SI). Cini uses Gaussian.
- Năstase uses the chapter's own units (Heaviside-Lorentz, c = 1).
- Results were compared after conversion. The multipole expansion is used by reference to @prp-fam-multipole, which
  is not re-verified here; Maggiore's Q_ij (3x_ix_j − r²δ_ij, eq. 11.133) converts to the chapter's 1/720π.

About 290 distinct (work, locator) pairs were verified, section by section: statics ~96, Maxwell ~62, radiation ~52,
matter and exercises ~82.

**Textbooks chosen (A4).**
- In the bib but not cited here before: Emam (`emam2021covariant`, Sec. 4.8).
- From the Zotero Textbooks collection, found by semantic search on Maxwell's equations, retarded and Liénard-Wiechert
  potentials, dielectrics and dispersion, Kramers-Kronig, waveguides and skin depth, images and Laplace's equation,
  induction, and Rayleigh scattering:
  - Cini (`ciniElementsClassicalQuantum2018`, Ch. 4 and Sec. 2.5.4);
  - Rahaman (`rahamanSpecialTheoryRelativity2022`, Chs. 13-14);
  - Stenzel (`stenzelLightMatterInteraction2022`, Chs. 12-15);
  - Landau-Páez (`landau2018computational`, Ch. 5).
- Năstase, previously cited once without a locator, now covers the statics, waves, retarded potentials, dipole
  radiation, energy-momentum, duality and monopole units (Ch. 5, Secs. 13.1, 14.6, 15.1-15.8, 27.1).

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Electrostatics and magnetostatics (`sec-em-statics`) | `maggiore2023electrodynamics` Chs. 4-5, Secs. 3.1.2, 4.1.1-4.2.5, 5.1-5.5, 6.2-6.4, 13.5, Problems 4.1-4.6, 5.1-5.2. `macchi2023problems` Problems 1.1-1.14, 2.1-2.16, 5.1-5.14. `pierrus2018solved` Questions 1.22, 2.4-2.16, 3.4, 3.10-3.17, 3.23, 4.4-4.29. `nastase2019classical` Secs. 15.1-15.4 (added). `ciniElementsClassicalQuantum2018` Sec. 4.1 (added). `emam2021covariant` Sec. 4.8 (added). `landau2018computational` Secs. 5.2.2-5.2.3, 5.5.4 (added) | Maggiore pp. 42-43, 57-131, 139-151, 353-355. Macchi pp. 4-19, 41-46; S pp. 139-206, 257-283. Pierrus pp. 31, 53-83, 119-164, 194-247. Năstase pp. 137-143. Cini pp. 51-52. Emam pp. 159-162. Landau-Páez pp. 170-179, 198-199 | **Supported**, many of them supported in part: the source covers part of the claim, or the chapter supplies its own numbers. Details below the table. **Unsupported:** Macchi Problem 5.1 for the disc's magnetic moment and far field (line 4049): Macchi never computes them. | Thirteen citations were split over two lines. Four locators were incomplete or misplaced: line 165 (single plane only), 541, 576 (tangential continuity), 903. Eight example and exercise blocks were adapted without a citation. | Brackets joined onto one line. Locators fixed: Problems 4.1, 4.3; + Pierrus Q2.6; Secs. 4.1.6 and 13.5; Secs. 4.1.2-4.1.3; Questions 3.10-3.12; Questions 1.22, 4.25; + Pierrus Q2.5 at 1174. Inline citations added in exm-ems-dipole-limit, -potential-dipole, -potential-ball, -potential-line, -conductor-sphere, -ampere-solenoid, -ampere-toroid, -dipole-rotating-shell and exr-ems-uniqueness-square (Landau-Páez eq. 5.19 is the same series). New works added at Gauss's law, the potential, images, Biot-Savart, the vector potential and the magnetic dipole. Line 4049: Macchi Problem 5.1 removed, fixed (owner, 2026-11-18). |
| Maxwell's equations, potentials and gauge invariance (`sec-em-maxwell`) | `maggiore2023electrodynamics` Ch. 3, Secs. 2.2, 3.1-3.4, 4.1.7, 4.2.5, 4.3, 8.6, 8.6.2, 11.1.2. `macchi2023problems` Problems 4.2, 6.3-6.21, 8.1-8.13. `pierrus2018solved` Questions 5.1-5.13, 7.1, 8.1-8.7, 8.16-8.19. `nastase2019classical` Ch. 5, Secs. 13.1, 14.6, 15.8, 27.1 (locators added). `emam2021covariant` Sec. 4.8. `rahamanSpecialTheoryRelativity2022` Secs. 13.3-13.5, 13.10.3, 13.17, 14.5, 14.11. `ciniElementsClassicalQuantum2018` Secs. 2.5.4, 4.1 (all added) | Maggiore pp. 34-35, 39-56, 68-69, 71-73, 82-85, 192-197, 273-274. Macchi pp. 31, 47-60, 71-79; S pp. 240-241, 289-336, 375-401. Pierrus pp. 250-271, 334-348, 373-406. Năstase pp. 46-53, 118-120, 134, 148, 244-245. Rahaman pp. 222-226, 234-236, 255-259, 274-277, 297-298. Cini pp. 32-34, 51-52. Emam pp. 159-162 | **Supported**, many in part. **Weak**: Pierrus Q5.13 at the betatron condition (line 5127): betatrons appear only in Comment (iv), p. 271, and none of the nine books derives the 2:1 condition. Maggiore Sec. 3.3 at line 5500 (that the evolution preserves the divergence constraints) and at line 8522 (no Lagrangian local in E and B): Sec. 3.3 contains neither claim. | Năstase was cited without a locator. Four citations were split over two lines. Six locators were partial: Ch. 3 (no p − qA); Ch. 2 and Sec. 3.1.1; Sec. 3.3 at 7306 (causality is Sec. 11.1.2); Macchi 8.9 (no duality force); Pierrus Q8.16 (no Schrödinger). Five blocks were adapted without a citation. | Năstase given locators. Brackets joined. Locators completed: Ch. 3 and Sec. 8.6.2; Sec. 2.2 eqs. (2.39)-(2.46) and Sec. 3.2.2 eq. (3.43); Secs. 3.3, 11.1.2 + Pierrus Q8.2; + Năstase Sec. 27.1 (eqs. 27.7-27.17) at both monopole citations; Questions 8.16, 8.19; Sec. 3.2.1 added before the equation numbers. Inline citations added in exr-emm-shell-angular-momentum (Macchi 8.13), exr-emm-gauge-landau (Pierrus 8.4), exm-emm-gi-phase and exr-emm-gi-schrodinger (Pierrus 8.19), exr-emm-capacitor-poynting (Macchi 8.2) and exr-emm-wire-surface (Macchi 8.1). The three weak citations were removed (Pierrus Q5.13 at the betatron, Maggiore Sec. 3.3 at 5500 and 8522), fixed (owner, 2026-11-18). |
| Waves, moving charges and radiation (`sec-em-radiation`) | `maggiore2023electrodynamics` Chs. 9-12, Secs. 9.1-9.5, 10.1-10.6.3, 11.1-11.3, 12.1-12.3.5, Problems 10.1-10.2. `macchi2023problems` Problems 7.11-7.12, 8.5, 10.1-10.12, 11.6. `pierrus2018solved` Questions 7.4-7.5, 7.9-7.10, 8.2, 8.8-8.15, 11.2-11.13. `nastase2019classical` Secs. 15.2, 15.5-15.7. `ciniElementsClassicalQuantum2018` Secs. 4.2-4.3. `rahamanSpecialTheoryRelativity2022` Sec. 13.16. `landau2018computational` Sec. 5.3.4. `stenzelLightMatterInteraction2022` Sec. 12.5.3 (all added) | Maggiore pp. 217-266, 269-270, 278-299, 312-343. Macchi pp. 69-70, 73, 89-96, 103; S pp. 372-374, 383, 429-449. Pierrus pp. 340-354, 375-399, 509-530. Năstase pp. 138-148. Cini pp. 53-56. Rahaman pp. 252-255. Landau-Páez p. 188. Stenzel p. 318 | **Supported**, many in part. **Wrong locator**: Pierrus Q8.15 at the potentials of uniform motion (line 10071); the potentials are Q8.13(a). **Unsupported**: Maggiore Sec. 9.5 for measuring the Stokes parameters with polarisers and a retarder (line 9362). Maggiore Secs. 12.3.4-12.3.5 do not mention preacceleration (line 11495). | Three citations were split over two lines. Nine locators were partial (see the resolution). Thirteen blocks were adapted without a citation. | Brackets joined. Locators completed: Questions 7.4-7.5; Secs. 9.3-9.4; Problems 7.11-7.12; + Pierrus Q7.9 at the three Stokes citations; Questions 8.2, 8.8-8.9; Secs. 12.1-12.2; Questions 8.13, 8.15; Questions 11.12-11.13; + Pierrus Q11.9; Problems 10.10-10.11 (twice); + Pierrus Questions 11.2-11.3; Secs. 12.3.3-12.3.4. Inline citations added in exr-emw-pol-build, exm-emw-pol-retarder (+ Landau-Páez 5.3.4), exr-emw-pw-mirror, exr-emw-ret-lorenz, exr-emw-lw-field-uniform, exr-emw-lw-retarded-time, exr-emw-lw-b, exm/exr-emw-dip-same-ratio, exm-emw-zones-near-E/-near-B/-far, exr-emw-dip-quadrupole and "Why the sky is blue" (Stenzel). Line 9362: Maggiore Sec. 9.5 removed, and Pierrus kept only for the statement that the four parameters can be measured (Q7.9, Comment (v), p. 352), fixed (owner, 2026-11-18). Line 11495: narrowed to Maggiore Sec. 12.3.4, placed at the runaway solutions (pp. 332-333); preacceleration is left uncited, fixed (owner, 2026-11-18). |
| Fields in matter (`sec-em-matter`) | `maggiore2023electrodynamics` Chs. 13-16, Secs. 13.1-13.7, 14.1-14.5, 15.1-15.4, 16.1-16.3. `macchi2023problems` Problems 3.1-3.12, 4.3-4.7, 5.5-5.12, 10.14-10.15, 11.2-11.14, 12.1-12.8. `pierrus2018solved` Questions 7.12-7.15, 9.1-9.22, 10.1-10.11. `stenzelLightMatterInteraction2022` Secs. 12.3.3-12.3.4, 13.3.1-13.3.2, 13.5.2, 13.6.1, 14.3.1, 14.3.3, 15.3. `rahamanSpecialTheoryRelativity2022` Secs. 14.6-14.10 (all added) | Maggiore pp. 345-408. Macchi pp. 23-28, 32-33, 42-45, 97, 101-116; S pp. 209-249, 265-277, 450-491. Pierrus pp. 359-370, 415-456, 458-481. Stenzel pp. 305-309, 318, 333-338, 341-349, 360-365, 383-385. Rahaman pp. 277-297 | **Supported**, many in part. **Wrong locators**: Maggiore Sec. 14.2 for the f-sum rule (in Sec. 14.3, eq. 14.53); Sec. 14.1 for the pole at ω = 0 (Secs. 14.2, 14.5). Pierrus Q9.20 for the permanent-magnet H = −M/3 (Q9.19, Comment (i)). | Five citations were split over two lines. Seven locators were partial: 11833, 12188, 13941, 14258, 14499, 13912, 15368. Fifteen blocks were adapted without a citation. | Brackets joined. Locators fixed: Secs. 14.2-14.3; Secs. 14.1-14.2, 14.5 (+ Stenzel 15.3); Questions 9.19-9.20; Secs. 13.2, 13.4; Secs. 13.3-13.4, 13.6.3; Secs. 14.5, 15.3.1; Secs. 15.2, 15.3.1; + Pierrus Q10.11; + Maggiore Sec. 15.3.1; Problems 11.7-11.8. Inline citations added in exr-emx-mm-sphere-check, -image-check, -magnetic-sphere, -refraction, -half-filled, -jumps, exr-emx-en-layers, -slab-charge, -free-charges, exr-emx-mag-equivalence, exr-emx-wg-power, exr-emx-sc-degree, the Clausius-Mossotti exercise and the Debye example (Stenzel), exm-emx-wv-reflection and -metal-mirror (Stenzel). Stenzel and Rahaman were added at polarisation, the boundary conditions, Kramers-Kronig, the oscillator and Drude models, waves in matter, skin depth and waveguides. |
| Exercises (`sec-electromagnetism-exercises`) | `macchi2023problems` Problems 6.14, 7.6, 11.7-11.8, 11.14, 12.1. `pierrus2018solved` Question 10.11. `landau2018computational` Sec. 5.3.5 (added) | Macchi pp. 55, 66, 105, 108, 111; S pp. 313-318, 360, 463-464, 473-479. Landau-Páez pp. 189-192 | supported; Problems 7.6, 12.1 in part (no Z_0 and no load reflection) | exr-emc-ionosphere was adapted without a citation; the transmission-line Z_0 and reflection had no source | Macchi 11.14 added in exr-emc-ionosphere. Landau-Páez Sec. 5.3.5 (telegrapher's equations, 1/√LC, reflection at the end) added at the transmission line. Problems 11.7-11.8. |

**Supported in part: the main cases**
- Chapter numbers with no source. The source has the physics but not the numbers:
  - Macchi 1.4 (n = 10²⁹), 2.1/2.7, 2.12, 5.1 (Rowland: Macchi charges both faces, μ₀σωa; the chapter uses one face,
    μ₀σωa/2), 5.13, 8.5, 8.10, 10.5 (Crab data), 11.14, 12.6-12.8.
  - Pierrus Q5.7, Q5.1, Q8.18, Q9.5.
- Partial derivations:
  - Pierrus Q2.8: Gauss route, not the Coulomb integral.
  - Pierrus Q2.11: far field only.
  - Pierrus Q2.14: definition only.
  - Pierrus Q3.17: numerical only, no symmetry argument.
  - Maggiore Problem 4.6: infinite solenoid only.
  - Maggiore Sec. 5.5.2: no two-wire L₁₂.
  - Pierrus Q4.11: no m/L = Q/2M.
  - Macchi 8.2: B inside only.
  - Macchi 6.6/8.8: coaxial loop or cylinder, not a solenoid.
  - Maggiore Sec. 3.4: no charge conjugation or continuous duality.
  - Maggiore Sec. 8.6.2: no quantum phase; Pierrus Q8.19 added.
  - Macchi 10.4: identical charges only.
  - Maggiore Sec. 11.2.2: no sin²θcos²θ pattern; Pierrus Q11.9 added.
  - Maggiore Sec. 11.3: zones only; Pierrus Q11.2-11.3 added for the full fields.
  - Maggiore Sec. 13.6.3: no material values.
  - Macchi 4.6: a step, not a continuous σ(x).
  - Macchi 3.8: cylindrical, not plane.
  - Macchi 11.4: thin-foil model.
  - Macchi 11.13: magnetic energy in Pierrus Q10.11, now added.
  - Pierrus Q9.8, 9.11, 9.22: energy and L not stated.
  - Maggiore Sec. 15.2: no front velocity.
  - Maggiore Sec. 16.2: no Sun or early universe.
  - Maggiore Sec. 14.3: no δ-line.
  - Maggiore Sec. 14.5: no sodium figures (205/210 nm unsourced).
  - Macchi 12.8: flat model 7.5 Hz; the √(l(l+1)) value 10.6 Hz and the lossy-ionosphere explanation (line 14609)
    are not in Macchi. The citation now sits on the cavity sentence before the example (line 14603); the 10.6 Hz and
    the lossy-ionosphere explanation are left uncited, fixed (owner, 2026-11-18).

**Counts.**
- Before: 4 works, 4 textbooks (A10 not met), 35 citations without a locator (all of them split over two lines, or
  the bare Năstase citation).
- After: 9 works, 9 textbooks:
  - existing: `macchi2023problems`, `maggiore2023electrodynamics`, `nastase2019classical`, `pierrus2018solved`;
  - added from the bib: `emam2021covariant`;
  - added from Zotero: `ciniElementsClassicalQuantum2018`, `rahamanSpecialTheoryRelativity2022`,
    `stenzelLightMatterInteraction2022`, `landau2018computational`, all in the Zotero Textbooks
    collection.
- `check.py` reports 5 works, 5 textbooks, 0 citations without a locator and 0 sections citing nothing until the
  four keys are merged. A10 is met after the merge.
- Citation occurrences: 342 → 446. Citations added per work:
  - Pierrus +37, Năstase +17, Macchi +14, Stenzel +11, Rahaman +10, Cini +6, Landau-Páez +4, Emam +3, Maggiore +2.
  - About 40 existing locators were corrected or completed.

**Metadata for the coordinator.**
- `landau2018computational` (3H3XXVUZ). The Zotero item has year 2024 and no publisher.
  - The PDF is R. H. Landau and M. J. Páez, *Computational Problems for Physics: With Guided Solutions Using Python*,
    CRC Press (Taylor & Francis), Boca Raton, 2018 (copyright page; ISBN 978-1-1387-0591-3 hardback,
    978-1-1387-0541-8 paperback).
  - Fixing the year would change the Better BibTeX key, to `landauComputationalProblemsPhysics2018`. If so, rename
    the 4 occurrences in the chapter.
- Side finding, not edited (outside the audit's scope). Lines 12952-12953 contain a literal TAB where `\t` of
  `\times` was eaten: `$2<TAB>imes10^{-5}$`, `$4<TAB>imes10^{-7}$`, `$-9<TAB>imes10^{-6}$`. They should read `\times`.

#### Bib additions

```bibtex
@book{ciniElementsClassicalQuantum2018,
  author = {Cini, Michele},
  title = {Elements of Classical and Quantum Physics},
  series = {UNITEXT for Physics},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2018},
  doi = {10.1007/978-3-319-71330-4},
  isbn = {978-3-319-71329-8},
  keywords = {textbook},
  zotero = {J3SLFK8Y},
  zoteropdf = {3Y2D66H8}
}
@book{rahamanSpecialTheoryRelativity2022,
  author = {Rahaman, Farook},
  title = {The Special Theory of Relativity: A Mathematical Approach},
  series = {UNITEXT},
  publisher = {Springer Singapore},
  address = {Singapore},
  year = {2022},
  doi = {10.1007/978-981-19-0497-4},
  isbn = {978-981-19-0496-7},
  keywords = {textbook},
  zotero = {47QXN3QK},
  zoteropdf = {6UBI7M9G}
}
@book{stenzelLightMatterInteraction2022,
  author = {Stenzel, Olaf},
  title = {Light--Matter Interaction: A Crash Course for Students of Optics, Photonics and Materials Science},
  series = {UNITEXT for Physics},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2022},
  doi = {10.1007/978-3-030-87144-4},
  isbn = {978-3-030-87143-7},
  keywords = {textbook},
  zotero = {B22F9VWC},
  zoteropdf = {CKU3MY9H}
}
@book{landau2018computational,
  author = {Landau, Rubin H. and P{\'a}ez, Manuel Jos{\'e}},
  title = {Computational Problems for Physics: With Guided Solutions Using Python},
  publisher = {CRC Press},
  address = {Boca Raton},
  year = {2018},
  isbn = {978-1-138-70591-3},
  keywords = {textbook},
  zotero = {3H3XXVUZ},
  zoteropdf = {5M9QF3MQ}
}
```

#### Proposed new references

None. Every section is covered from the library.

The only material with no source among the nine books is:
- the betatron 2:1 condition (line 5127);
- the claim that the evolution preserves the divergence constraints (line 5500);
- the no-Lagrangian-in-E-and-B remark (line 8522);
- preacceleration (line 11495);
- the measurement of Stokes parameters (line 9362);
- exr-emc-london.

These are short remarks inside covered sections, so they are listed for the owner rather than proposed as new
references. The owner chose to remove or narrow the citations at these points; the remarks stay uncited, fixed (owner, 2026-11-18).

#### Disagreements

None after converting conventions. Checked after conversion:
- Coulomb's law, Gauss's law and the Heaviside-Lorentz conversion (Maggiore Sec. 2.2).
- The gauge transformation: Maggiore θ = −λ, Pierrus χ, Rahaman ψ.
- Duality E → B, B → −E: Maggiore (3.99), Năstase (15.73).
- The monopole Faraday sign: Macchi S-8.124, Năstase (27.7).
- The stress tensor: Maggiore (3.64), Năstase (14.51).
- The Liénard-Wiechert potentials: Cini (4.8)-(4.9) → q/4πκR.
- The dipole pattern: Năstase (15.66).
- The ALD sign: Maggiore uses (−,+,+,+); the chapter's sign is correct for (+,−,−,−).
- Copper: Pierrus 10.8 vs Maggiore p. 388.

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| line 9279, circular polarisation (naming, not physics) | (e_x + i e_y)/√2 is "positive helicity, called left circular in optics" | Maggiore calls the same vector "right circular"; Pierrus Q7.9 agrees with the chapter, and Landau-Páez Sec. 5.3.3 states no handedness | Maggiore p. 228; Pierrus pp. 350-352 | Clause added: Pierrus Q7.9 for "left circular in optics", and Maggiore [p. 228] calls the same vector right circular, so the naming conventions differ; fixed (owner, 2026-11-18) |
| line 10726, short-dipole antenna (different model) | R = (2π/3)Z₀(ℓ/λ)² ≈ 789 Ω (ℓ/λ)², uniform current | Pierrus Q11.13 uses a triangular current: (π/6)Z₀(d/λ)² ≈ 197 Ω (d/λ)², one quarter. The cited source does not give the chapter's number | Pierrus pp. 528-530 | Clause added: the chapter's uniform-current model differs from Pierrus's triangular current (≈ 197 Ω (ℓ/λ)²); Pierrus cited for the method only; fixed (owner, 2026-11-18) |

Errors in the sources, not in the chapter. They should not be cited for these points:
- Maggiore Problem 10.2, eq. 10.216, p. 266: a sin²θ pattern for the rotating dipole. The chapter's 1 + cos²θ (line
  10081) is right.
- Macchi S-10.6, p. 430: τ = 5.2×10⁵/B₀² s should be 5.2×10⁸/B₀² s.
- Macchi S-10.120, p. 448: 2e²/3mc² should be 2e²/3mc³.
- Macchi S-11.5, p. 461: n₂ = √n₁ should be n₂ = n₁².
- Macchi S-2.142, p. 200: the wire capacitance is printed inconsistently; S-2.138 agrees with the chapter (line 2380).
  Check the printed page.
- Năstase (15.67), p. 147: the total power is inconsistent with (15.66). Only (15.62)-(15.66) are cited.
- Emam (4.174), p. 160: sign of ∂A/∂t. Not cited.
- Rahaman (14.139)-(14.140), p. 296: Neumann conditions printed for the TM E_z. Only the section is cited.

Numerical near-misses, not errors:
- Copper relaxation time: chapter 1.5×10⁻¹⁹ s, Macchi 1.4×10⁻¹⁹ s.
- Tether emf: chapter 256 V, Macchi ≈ 250 V.

#### Reading-note additions

Drafts are in `scratchpad/notes6/electromagnetism__<ITEMKEY>.html`:
- full notes (Identity, Structure, chapter section) for the four works new to the bib;
- an h2 section for the five works that already have a note.

Chapter: `fundamentals-of-theoretical-physics/electromagnetism`.

- **`macchi2023problems`** (36YCVRVE). Offsets as above. The problems used, with printed pages:
  - Ch. 1: 1.1-1.14.
  - Ch. 2: 2.1-2.16.
  - Ch. 3: 3.1-3.12.
  - Ch. 4: 4.2-4.7.
  - Ch. 5: 5.1-5.14.
  - Ch. 6: 6.3-6.21.
  - Ch. 7: 7.6, 7.11-7.12.
  - Ch. 8: 8.1-8.13.
  - Ch. 10: 10.1-10.15.
  - Ch. 11: 11.2-11.14.
  - Ch. 12: 12.1-12.8.
  - Statement pages: 4-19, 23-33, 41-60, 66-79, 89-116. Solution pages: 139-249, 257-336, 360-401, 429-491.
- **`maggiore2023electrodynamics`** (JGIWV45B; printed = PDF − 17):
  - Sec. 2.2: p. 34.
  - Ch. 3: pp. 39-56.
  - Chs. 4-5 and Problems 4.1-4.6, 5.1-5.2: pp. 57-131.
  - Secs. 6.2-6.4: pp. 139-151.
  - Sec. 8.6: pp. 192-197.
  - Chs. 9-12: pp. 217-343. This includes Problems 10.1-10.2 and Sec. 11.1.2, pp. 273-274.
  - Chs. 13-16: pp. 345-408.
- **`pierrus2018solved`** (RX7KDAJK; printed = PDF − 11):
  - Q1.22: p. 31.
  - Ch. 2: pp. 53-83.
  - Ch. 3: pp. 119-164.
  - Ch. 4: pp. 194-247.
  - Ch. 5: pp. 250-271.
  - Ch. 7: pp. 334-370.
  - Ch. 8: pp. 373-406.
  - Ch. 9: pp. 415-456.
  - Ch. 10: pp. 458-481.
  - Ch. 11: pp. 509-530.
- **`nastase2019classical`** (5AXU4FWL; printed = PDF − 20):
  - Ch. 5: pp. 46-53.
  - Sec. 13.1: pp. 118-120.
  - Sec. 14.6: p. 134.
  - Secs. 15.1-15.8: pp. 137-148.
  - Sec. 27.1: pp. 244-245.
- **`emam2021covariant`** (MV8JU3AT): Sec. 4.8, eqs. 4.168-4.180, pp. 159-162.
- **`ciniElementsClassicalQuantum2018`** (J3SLFK8Y, new note; printed = PDF − 12):
  - Sec. 2.5.4: pp. 32-34.
  - Sec. 4.1: pp. 51-52.
  - Sec. 4.2: pp. 53-55.
  - Sec. 4.3, eqs. 4.8-4.9: pp. 55-56.
- **`rahamanSpecialTheoryRelativity2022`** (47QXN3QK, new note; printed = PDF − 6):
  - Secs. 13.3-13.5: pp. 222-226.
  - Sec. 13.10.3: pp. 234-236.
  - Sec. 13.16: pp. 252-255.
  - Sec. 13.17: pp. 255-259.
  - Sec. 14.5: pp. 274-277.
  - Sec. 14.6: pp. 277-282.
  - Secs. 14.7-14.8: pp. 283-291.
  - Sec. 14.9: pp. 291-292.
  - Sec. 14.10: pp. 292-297.
  - Sec. 14.11: pp. 297-298.
- **`stenzelLightMatterInteraction2022`** (B22F9VWC, new note):
  - Sec. 12.3.3: pp. 305-307.
  - Sec. 12.3.4: pp. 307-309.
  - Sec. 12.5.3: p. 318.
  - Sec. 13.3.1: pp. 333-335.
  - Sec. 13.3.2: pp. 336-338.
  - Sec. 13.5.2: pp. 341-345.
  - Sec. 13.6.1: pp. 346-349.
  - Sec. 14.3.1: pp. 360-362.
  - Sec. 14.3.3: pp. 363-365.
  - Sec. 15.3: pp. 383-385.
- **`landau2018computational`** (3H3XXVUZ, new note; printed = PDF − 21):
  - Secs. 5.2.2-5.2.3, eq. 5.19: pp. 173-179.
  - Sec. 5.3.4: p. 188.
  - Sec. 5.3.5: pp. 189-192.
  - Sec. 5.5.4: pp. 198-199.

### special-relativity

Task 6.3. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages; offsets (PDF −
printed): Blennow 10, Boskoff 23, Maggiore 17, Boudreau 23, Macchi 12, Paganini 21, Gourgoulhon 26-30 (colour inserts);
Bekaert and O'Donnell-Visser are arXiv preprints, cited by PDF page. Chapter conventions: signature (+,−,−,−),
ε_{0123} = +1. Blennow uses (+,−,−,−) (p. 12), so its problems need no conversion. Maggiore, Bekaert-Boulanger and
Gourgoulhon use (−,+,+,+) and were converted by η → −η.

**Conversion checks (A6).**
- Field tensor and Lorentz force: Maggiore has F^{0i} = E^i/c (eq. 8.16) and dp^μ/dτ = qF^{μν}u_ν (eq. 8.62, p. 193).
  Under η → −η this becomes the chapter's F^{i0} = E^i and m du^μ/dτ = qF^μ{}_ν u^ν. **Supported.**
- Quadratic Lagrangian with +q ẋ·A: Blennow, Problem 1.150 b, eqs. (3.781)-(3.784), p. 184, gives
  mẍ^μ = q ẋ_ν F^{μν}, which is the chapter's mẍ_μ = qF_{μν}ẋ^ν. **Supported.**
- Casimirs: Bekaert gives C₂ = −P² and W² = m²s(s+1) (eqs. 5-6, pp. 4-5). After conversion these are P² = m² and
  W² = −m²s(s+1), as in the chapter. The overall sign of W depends on the ε convention, and the chapter fixes it with
  ε_{0123} = 1. W² and the helicity classification do not depend on that sign. **Supported.**
- Orthochronous condition (Gourgoulhon, p. 173) and ω_{μν} = −ω_{νμ} (Maggiore, eq. 7.86) do not depend on the signature.

None of the results changed by the 2026-11-18 notation conversion appears in this chapter: those are all in the
Kaluza-Klein tutorial.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Chapter intro (before the first `##`) | blennow2022relativity [Ch. 1], boskoff2024journey [Ch. 9], maggiore2023electrodynamics [Chs. 7-8], boudreau2018applied [Ch. 14], odonnell2011wigner [Secs. 4-5], bekaert2006unitary [Secs. 1-3] (all without locators before; their chapters were in parentheses) | as in the rows below | Supported | Six citations had no locator. | Changed "(Chapter n)" to bracketed locators and added locators for O'Donnell and Bekaert. |
| Postulates and Lorentz transformations (`sec-sr-postulates`) | maggiore [Secs. 7.1-7.2; Sec. 7.1]; boskoff [Secs. 9.1-9.3; Sec. 9.1; Thm 9.1.7; Ex. 9.1.8; Exs. 9.1.11-9.1.12; Example 9.2.10]; blennow [Secs. 1.1-1.4; Problems 1.3, 1.6, 1.7, 1.8 (+ d, + solution), 1.9, 1.10, 1.13, 1.15, 1.16, 1.20, 1.24, 1.25, 1.31, 1.32, 1.34, 1.37, 1.46, 1.57, 1.59, 1.64 a, 1.72]; macchi2023problems [Ch. 9] | Maggiore pp. 155-165 (postulates p. 156; proof of ds'² = ds², eqs. 7.3-7.12, pp. 157-158); Boskoff pp. 218-232 (Michelson-Morley pp. 218-221; Thm 9.1.7 pp. 223-224; Ex. 9.1.8 pp. 224-225; Exs. 9.1.11-12 p. 226; Ex. 9.2.10 p. 232); Blennow problem statements pp. 14-29 and solutions (1.8 a-d pp. 81-82); Macchi p. 81 | All supported except Macchi Ch. 9, **supported in part**: it gives the four-vector Lorentz transformation (eq. 9.2, p. 81) but is mainly about field transformations. Blennow 1.20 is generalised from rest lengths L and 2L to L_s and L_f. Boskoff Ex. 9.2.10 matches the chapter's numbers (125 m, v = 3/5, 100 m). | Five citations were split across lines (Problem 1.8 d, Ex. 9.1.12, Example 9.2.10). | Rejoined each on one line. Macchi Ch. 9 is also cited in the electrodynamics part (below). |
| Minkowski spacetime (`sec-sr-minkowski`) | maggiore [Secs. 7.2.2-7.2.3; Sec. 7.2.1]; boskoff [Secs. 9.2-9.3; Examples 9.1.4-9.1.6; Example 9.2.8]; blennow [Secs. 1.1-1.4; Problems 1.1 b, 1.2, 1.2 c, 1.38 b, 1.43, 1.58, 1.66]; gourgoulhon2013special [Ch. 1-5, Ch. 12-13] | Maggiore pp. 159-164 ("hyperbolic rotation" p. 160); Boskoff p. 222, p. 231, pp. 226-239; Blennow pp. 14, 22-27; Gourgoulhon TOC | Supported. Boskoff Example 9.2.8 is adapted: same v = 4/5 and starting age 20, but 3 + 3 years of travel in place of 15. | None | None |
| The Lorentz and Poincaré groups (`sec-sr-lorentz-poincare`) | maggiore [Sec. 7.3; Sec. 7.3.1; Sec. 7.3.5; Sec. 7.3.6, note 17; eq. (7.86); eq. (7.106)]; boudreau [Secs. 14.3-14.5; Sec. 14.3; Sec. 14.5.2, eqs. (14.7)-(14.9); eq. (14.9) → eq. (14.8); eq. (14.15)]; odonnell [no locator → Secs. 4-5; eqs. (38)-(40); Sec. 5; eq. (21)]; bekaert [Secs. 1-3; Secs. 1.1, 1.2, 1.3; Sec. 3; Sec. 3.1, eqs. (9)-(13); Sec. 3.2; Secs. 3.2-3.3; App. B]; blennow [Problems 1.35, 1.112, 1.147-1.148]; gourgoulhon [Ch. 6-8, Ch. 9-11, Ch. 17-20]; mukunda [Ch. 10]; talagrand [Ch. 4, Ch. 8-9]; tornetta [Ch. 2]; added: gourgoulhon [Secs. 6.3.1-6.3.2] | Maggiore pp. 166-177 (det Λ = ±1 p. 168; eq. 7.86 p. 172; Sec. 7.3.5 pp. 172-173; note 17 and eq. 7.106 pp. 174-175); Boudreau pp. 460-473 (eq. 14.8 p. 469, eq. 14.9 p. 470, eq. 14.15 p. 473); O'Donnell pp. 11 (eq. 21), 14-20 (eqs. 38-40 p. 17); Bekaert pp. 3-15, 53-58; Blennow pp. 21, 36, 42; Gourgoulhon pp. 172-174; TOCs of Mukunda, Talagrand, Tornetta, Gourgoulhon | Mostly supported. Four exceptions: **(1)** Boudreau eq. (14.9), **unsupported as located**: the chapter's spinor ψ_R ↦ Aψ_R (A = e^{ησ/2}) is Boudreau's R₁ spinor, whose four-momentum (I, σ) is eq. (14.8); eq. (14.9) is the left-handed (I, −σ). **(2)** Maggiore Sec. 7.3.1, **supported in part**: it gives det Λ = ±1 but not Λ⁰₀ ≥ 1 (`prp-sr-det-lambda`). **(3)** Bekaert Sec. 1.1, supported in part: it gives the universal cover; the (j₁, j₂) labels are Boudreau Sec. 14.3, cited in the same bracket. **(4)** Gourgoulhon Ch. 9-11 and 17-20 in the "for more" line: supported in part, since they fit the kinematics, dynamics and electrodynamics parts better. | O'Donnell had no locator in the section intro. Λ⁰₀ ≥ 1 had no source. Two citations were split across lines (Problem 1.35; Bekaert Sec. 3.2). | Locator corrected to eq. (14.8) (same work). Added O'Donnell [Secs. 4-5]. Added Gourgoulhon Secs. 6.3.1-6.3.2 (p. 173: orthochronous iff Λ⁰₀ > 0, hence Λ⁰₀ ≥ 1). Rejoined the split citations. |
| Relativistic kinematics (`sec-sr-kinematics`) | blennow [Secs. 1.4 and 1.6; Problems 1.4, 1.14, 1.38 b, 1.44, 1.45, 1.51, 1.55, 1.73, 1.74, 1.77, 1.78, 1.80, 1.82, 1.84, 1.88 a, 1.88 b, 1.89, 1.93-1.99, 1.102-1.105, 1.107, 1.108, 1.110, 1.133 b]; boskoff [Thm 9.2.14]; boudreau [Exercise 14.6]; godinho [Ch. 6]; gray [Appendix A]; knauf [Ch. 16]; moretti [Ch. 10]; paganini [Ch. 2, Ch. 3]; pal [Ch. 2]; pierrus [Ch. 12]; added: gourgoulhon [Sec. 9.4] | Blennow pp. 14-39, solutions pp. 78-172 (1.98 solution eq. 3.468, p. 145); Boskoff p. 234; Boudreau pp. 480-481; Gourgoulhon pp. 294-319; the "for more" chapters from their TOCs | Supported. Blennow 1.98 is adapted: the chapter has a head-on collision, Blennow a co-moving one, and Blennow's formula (3.468) gives the chapter's result under v → −v. | One citation was split across lines (Problem 1.110). | Rejoined it. Added Gourgoulhon Sec. 9.4 (collisions and thresholds) to the "for more" line. |
| Relativistic optics (`sec-sr-optics`) | blennow [Sec. 1.5; Problems 1.17, 1.23, 1.27, 1.61-1.65, 1.68-1.70]; boskoff [Sec. 9.5; Thm 9.5.2]; maggiore [Sec. 9.6]; added: gourgoulhon [Secs. 5.5-5.7] | Blennow pp. 17-29; Boskoff pp. 245-247; Maggiore pp. 229-233; Gourgoulhon pp. 148-166 | Supported | Two citations were split across lines (Thm 9.5.2; Problem 1.27). | Rejoined them. Added a "for more" line. |
| Relativistic dynamics (`sec-sr-dynamics`) | maggiore [Sec. 7.4; Sec. 7.4.2]; boskoff [Sec. 9.6; Section 9.6; Section 9.6.1; Thms 9.6.3, 9.6.4, 9.6.6; Exercise 9.6.5]; blennow [Secs. 1.4, 1.6 and 1.9; Problems 1.18, 1.41, 1.42, 1.47, 1.48 a-c, 1.49-1.54, 1.56, 1.71, 1.111, 1.131, 1.145, 1.150, 1.150 b]; added: gourgoulhon [Sec. 11.2, Ch. 12] | Maggiore pp. 177-182; Boskoff pp. 247-256 (Thm 9.6.3 pp. 249-250, Thm 9.6.4 p. 251, Ex. 9.6.5 p. 252, Thm 9.6.6 p. 253); Blennow pp. 17-42 (Sec. 1.9 p. 42), solution 1.150 p. 184; Gourgoulhon pp. 350-362, 381-427 | Supported, including the sign check of Problem 1.150 (above) | Three citations were split across lines (Secs. 1.4, 1.6 and 1.9; Maggiore Sec. 7.4.2; Problem 1.48 c). | Rejoined them. Added a "for more" line. |
| Electrodynamics in covariant form (`sec-sr-electrodynamics`) | maggiore [Secs. 8.5-8.6; Sec. 8.6.1; Sec. 10.3]; blennow [Sec. 1.7; Problems 1.114, 1.115, 1.117-1.119, 1.121, 1.123 and 1.133 a, 1.124 and 1.125, 1.128-1.130, 1.132, 1.132 b, 1.135, 1.141, 1.143]; emam [Ch. 4]; added: gourgoulhon [Chs. 17-18]; macchi [Secs. 9.1-9.4] | Maggiore pp. 190-193, 245-248; Blennow pp. 36-41; Gourgoulhon pp. 545-629 (Ch. 17 intro p. 546); Macchi pp. 81-83 (9.1, a current-carrying wire, matches `exm-sr-wire`), solutions pp. 403- | Supported, including the conversion of the field tensor (above) | None | Added Gourgoulhon and Macchi to the "for more" line. |
| Exercises (`sec-special-relativity-exercises`) | none before; added: blennow [Problems 1.50 and 1.71]; gourgoulhon [Sec. 9.4.6]; paganini [Sec. 11.7.1] | Blennow pp. 24, 28 (frequency ωe^{−ατ} seen by the accelerating observer); Gourgoulhon pp. 307-310 (threshold (9.91)-(9.94); GZK cut-off from CMB photons); Paganini p. 424 (Landau-Yang theorem excludes a vector Higgs) | Supported. The three exercises are original combinations; the γγ → e⁺e⁻ exercise has no direct source, and Gourgoulhon gives the same threshold method against the CMB. | **The section cited nothing.** | Added one citation per exercise lead-in. |

**Counts.** Before: 19 works, 17 textbooks. After: 19 works, 17 textbooks. Bekaert-Boulanger and O'Donnell-Visser are
papers. A10 was already met, and no work was added. `check.py`: works 19, textbooks 17, no locator 0, sections citing
nothing 0. Before, it reported 18 citations without a locator and 1 section citing nothing.

**Citations verified.** About 185 distinct existing (work, locator) pairs, plus 7 citations without a locator (the six
in the intro and O'Donnell in the Lorentz-Poincaré intro):
- 117 Blennow problem and section locators, read against the problem statements and, where a detail mattered, the
  solutions (1.8, 1.14, 1.98, 1.150). All supported. Three are adapted: 1.20, 1.98, and Boskoff Example 9.2.8.
- 21 Boskoff, 17 Maggiore, 10 Bekaert, 7 Boudreau and 4 O'Donnell locators were read in the text.
- The chapter-level "for more" locators were checked from the tables of contents: Godinho, Gray, Knauf, Moretti,
  Paganini Chs. 2-3, Pal, Pierrus, Emam, Mukunda, Talagrand, Tornetta and Gourgoulhon.

Verdicts:
- Unsupported: 1, Boudreau eq. (14.9). The locator was corrected to eq. (14.8) in the same work.
- Supported in part: 4, Maggiore Sec. 7.3.1, Macchi Ch. 9 in the postulates part, Bekaert Sec. 1.1, and Gourgoulhon
  Ch. 9-11 and 17-20 in the Lorentz-Poincaré part.
- Not machine-readable: none.
- Disagreements: none.
- Adapted blocks without a citation: none found. Every example and exercise taken from Blennow carries its problem
  number.

Added citations: 14 new (work, locator) pairs:
- Gourgoulhon: 7, including Secs. 6.3.1-6.3.2.
- Macchi Secs. 9.1-9.4 and Paganini Sec. 11.7.1.
- Blennow Problems 1.50 and 1.71.
- The four chapter locators in the intro: Blennow, Boskoff, Maggiore and Boudreau.
- One corrected locator, Boudreau eq. (14.8).

Locators were also added to the two O'Donnell citations and to the Bekaert citation in the intro. Eleven citations
that were split across lines were rejoined; their text is unchanged.

#### Bib additions

None.

#### Proposed new references

None. The library covers every section.

#### Disagreements

None. The conversions checked are listed above.

#### Reading-note additions

Drafts are in `scratchpad/notes6/special-relativity__<ITEMKEY>.html`. Every cited work already has a reading note, so
each draft is the h2 section for this chapter only.

- `blennow2022relativity` (RGFY73YW): Ch. 1 problems pp. 14-42 and solutions pp. 77-184, listed by tutorial section
  (about 110 problems).
- `boskoff2024journey` (8QTLZVEC): Ch. 9, pp. 217-256: Sec. 9.1, Thm 9.1.7, Exs. 9.1.8, 9.1.11, 9.1.12, Examples
  9.1.4-9.1.6, 9.2.8, 9.2.10, Thm 9.2.14, Sec. 9.5 and Thm 9.5.2, Sec. 9.6, Thms 9.6.3, 9.6.4, 9.6.6, Ex. 9.6.5.
- `maggiore2023electrodynamics` (JGIWV45B): Secs. 7.1-7.4, eqs. 7.86 and 7.106, note 17, pp. 155-182; Secs. 8.5-8.6,
  pp. 190-196; Sec. 9.6, pp. 229-233; Sec. 10.3, pp. 245-248.
- `boudreau2018applied` (Q3K6KQG8): Secs. 14.3-14.5, eqs. 14.4, 14.7-14.9 and 14.15, pp. 460-474; Exercise 14.6,
  pp. 480-481.
- `bekaert2006unitary` (Z6DDVH4G): Secs. 1.1-1.3, 3.1-3.3 and App. B (PDF pp. 3-15, 53-58).
- `odonnell2011wigner` (R3XX3CZG): eq. 21 (p. 11), Secs. 4-5, eqs. 38-40 (pp. 14-20).
- `gourgoulhon2013special` (27UXIXZD): Chs. 1-13 and 17-20 (for more); Secs. 5.5-5.7, 6.3.1-6.3.2, 9.4 (9.4.6),
  11.2, Ch. 12, Chs. 17-18 with pages.
- `macchi2023problems` (36YCVRVE): Ch. 9, Secs. 9.1-9.4, pp. 81-83 and 403-.
- `paganini2023fundamentals` (HPUQ4JH7): Chs. 2-3, pp. 56-100; Sec. 11.7.1, p. 424.
- Chapter-level "for more" works, checked from their tables of contents:
  - `emam2021covariant` (MV8JU3AT) Ch. 4
  - `godinho2014introduction` (5VBNBTT4) Ch. 6
  - `gray2019student` (S7QLP5P4) App. A, pp. 110-128
  - `knauf2018mathematical` (BGRDQPJ8) Ch. 16
  - `moretti2023analytical` (G6FDV388) Ch. 10
  - `mukunda2022continuous` (2UYSHY8B) Ch. 10, pp. 235-276
  - `pal2015introductory` (EVWVUL3H) Ch. 2, pp. 16-34
  - `pierrus2018solved` (RX7KDAJK) Ch. 12, pp. 553-597
  - `talagrand2022what` (BTZ2R2W4) Chs. 4, 8-9
  - `tornetta2022mathematical` (VI3SLD4R) Ch. 2

### thermodynamics-statistical-mechanics

Task 6.4. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages; page offsets
(PDF − printed): Shankar 15, Bricmont 11 (Chs. 5-6) and 9 (Ch. 9), Gelis 122 in the extracted text of Ch. 5 (the
PDF splits pages), Kivelson 21, Skačej 4, Boudreau 23, Bauerschmidt 11, Cufaro Petroni 8 (Ch. 9), Knauf 11, Pathria &
Beale 28 (Chs. 1-3) to 26 (Chs. 7-8). Units: k_B = 1 and ħ = 1 throughout; every SI-unit source (Pathria, Skačej,
Cufaro) agrees after setting k_B = ħ = 1.

**Conversions checked.** Bauerschmidt's mean-field model puts β only on the coupling and uses a dimensionless field.
With β = J/T and h = h_phys/T, Thm. 1.4.1 (M₊ ~ (3(β − β_c))^{1/2}, M(β_c, h) ~ (3h)^{1/3}, χ = 1/(β_c − β) and
1/(2(β − β_c))) gives the chapter's m₊² ~ 3(T_c − T)/T_c, m(T_c, h) ~ (3h/T_c)^{1/3}, χ = 1/(T − T_c) and
1/(2(T_c − T)) in `thm-curie-weiss` (supported). Shankar defines G = −⟨T c c†⟩ (eq. 6.121); the chapter's
`exm-thc-fermion-sign` uses G = +⟨T c c†⟩, so its (1 − n_F)e^{−ετ} and −n_F e^{−ετ} are Shankar's eq. 6.140 times −1
(supported). Skačej's lattice gas uses s = ±1/2; with s = ±1 its J = w and field μ + zw/2 become the chapter's J = ε/4
and h = zε/4 + μ/2 (supported). Pathria's T_c = (h²/2πmk)(n/ζ(3/2))^{2/3} is the chapter's 2π/m (n/ζ(3/2))^{2/3} at
ħ = k = 1.

**Remarks (not disagreements).** (1) Boudreau Ch. 20, Exercise 17 prints the Glauber rate as W = 1 + σ_i tanh(βE_i),
without the factor ½ and with σ_i the new value. The chapter's flip probability ½(1 − σ_i tanh βE_i) is the normalised
form. (2) Boudreau Ch. 20, Exercise 11 writes Z = (2π)^L K(βJ)^{L−1} with K called "the Bessel function"; the chapter's
(2π)^L I₀(βJ)^{L−1} is the same with K = I₀. (3) Bricmont Exercise 6.9 counts defects as C(N, n), as the chapter does
(n/N = 1/(e^{ε/T} + 1)); Skačej Problem 10.9 counts Schottky vacancies as C(N + n, n) (n/N = 1/(e^{ε/T} − 1)). Both give
e^{−ε/T} for few defects; Skačej was therefore not cited at `exm-ens-defects`. (4) Knauf Examples 9.40 says the return
of all molecules to one half does recur (Poincaré), but after more than the age of the universe; the chapter's "never
happens" is the thermodynamic statement, and the new citation is worded "the recurrence of this return and its time
scale". (5) The YAML `nocite` still lists `cufaropetroni2020probability` and `knauf2018mathematical` without a locator
(check.py's 2 remaining "no locator" findings). Both are now cited in the body with locators, so the owner may drop the
`nocite` block.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Thermodynamics (`sec-thermodynamics`) | shankar2017quantum [Ch. 1]; bricmont2022statistical [Exercises 5.2, 5.3, 5.5, 5.6, 5.7, 5.8, 5.9, 5.11, 5.12]; added bricmont2022statistical [Ch. 5], skacej2019solved [Ch. 1-4], knauf2018mathematical [Examples 9.40] | Shankar pp. 1-19 (TOC and Ch. 1); Bricmont pp. 103-140 (TOC), pp. 133-135 (all nine exercises: heat in three processes, three-step cycle with reversed cycle and "if δQ were exact", F = −CVT⁴ with S, p, U, μ, adiabats, Maxwell relations of Φ, ω₁-ω₄, one-mole Carnot 200/100 K with 1 → 4 l, Legendre transforms of x^α and eˣ, E = aS³/(NV), E = aVT⁴ with P = E/3V); Skačej pp. 3-60 (Chs. 1-4 titles and problems); Knauf p. 214 | Supported (10 pairs). The chapter's extra checks (∮ω₄ = 0 on the square, ⅓ on the triangle; 2305 J, 1153 J) are correct | Only one textbook chapter at the section line | Added Bricmont Ch. 5 and Skačej Ch. 1-4 at the section line; Knauf Examples 9.40 at `exm-thd-free-expansion` |
| Statistical ensembles (`sec-ensembles`) | gelis2021problems [Ch. 5, pp. 277-279] (locator added); kivelson2024statistical [Ch. 2, Ch. 3]; shankar2017quantum [Secs. 1.5-1.8, Ch. 2] (locator extended); skacej2019solved [Ch. 8-10, Ch. 11-12; Problems 10.10, 11.5, 12.24, 12.31]; bricmont2022statistical [Ch. 6; Exercises 6.3-6.5, 6.6-6.8, 6.9, 6.12, 9.10; Sec. 9.7.1]; boudreau2018applied [Sec. 7.5.1; Ch. 7, Exercises 13, 16; Ch. 20, Exercise 17]; pathria2022statistical [Ch. 2-4; Sec. 3.10]; knauf2018mathematical [Example 9.4 and Remark 9.9]; cufaropetroni2020probability [Sec. 9.5, Prop. 9.8 and Example 9.10] | Gelis pp. 276-279 (thermal expectation tr(e^{−βH}O)/Z, k_B = 1, grand-canonical e^{−β(H−μQ)}); Kivelson TOC, Chs. 2-3; Shankar pp. 6-28; Skačej pp. 115-258 (chapter list), pp. 179-181, 199-201, 248, 256-257; Bricmont pp. 143-182 (TOC), pp. 175-177 (Exs. 6.3-6.12), p. 295 (Sec. 9.7.1), p. 309 (Ex. 9.10); Boudreau pp. 223-224 (Metropolis-Hastings), pp. 235-236 (Exs. 13, 16), p. 729 (Ex. 17); Pathria TOC, pp. 77-83; Knauf pp. 193-195; Cufaro pp. 270-272 | Supported. Gelis at the section line is weak: it has no ensemble theory beyond the Ch. 5 introduction, which states the canonical and grand-canonical density operators | Gelis had no locator; microcanonical measure, the barometric formula, negative temperature, the rotor, Langmuir adsorption had no source | Added the Gelis locator, Shankar Secs. 1.5-1.8, Bricmont Ch. 6 and Pathria Ch. 2-4 at the section line; Knauf at the microcanonical subsection; Cufaro at `exm-ens-barometric`; Skačej 10.10 and Pathria 3.10 at `exr-ens-spin-temperature`; Skačej 11.5 at `exr-ens-rotor`; Skačej 12.24 at `exr-ens-langmuir`; Bricmont Sec. 9.7.1 and Skačej 12.31 at `exm-tsb-lattice-gas` |
| Partition functions of simple systems (`sec-partition-functions`) | bricmont2022statistical [Exercises 6.10, 6.11]; boudreau2018applied [Sec. 20.4; Ch. 20, Exercise 11]; added pathria2022statistical [Secs. 3.5-3.9; Sec. 3.7, eqs. 3.7.1-3.7.9], skacej2019solved [Ch. 8, Ch. 11; Problem 11.1] | Bricmont p. 177; Boudreau pp. 720-722 (XY model H = −J Σ cos(θᵢ − θⱼ)), p. 728 (Ex. 11); Pathria pp. 54-77 (TOC), pp. 62-63 (⟨xᵢ ∂H/∂xⱼ⟩ = δᵢⱼkT, ½kT per quadratic term, frozen degrees of freedom); Skačej pp. 195-196 | Supported | No section-line source; the equipartition theorem and the thermal oscillator had no citation | Added Pathria Secs. 3.5-3.9 and Skačej Ch. 8, Ch. 11 at the section line (new lead line), Pathria Sec. 3.7 at `thm-equipartition`, Skačej 11.1 at `def-thermal-oscillator` |
| Quantum statistics (`sec-quantum-statistics`) | strocchi2021symmetry [Ch. 23]; added pathria2022statistical [Ch. 7-8; Sec. 7.3, eqs. 7.3.1-7.3.3, 7.3.8-7.3.11, 7.3.12-7.3.14; Sec. 7.1, eqs. 7.1.17-7.1.22, eq. 7.1.32, p. 204], skacej2019solved [Ch. 12; Problems 12.7, 12.8, 12.22, 12.23] | Strocchi pp. 159-166 (TOC: free Fermi and Bose gases, BEC); Pathria pp. 195-290 (TOC), pp. 198-204 (g₃/₂(1) = 2.612, N_e, N₀, z ≃ 1 − 1/N₀, C_V(T_c)/Nk = 1.925, helium T_c ≈ 3.13 K), pp. 216-219 (Planck, Rayleigh-Jeans, Wien, Stefan-Boltzmann σ = π²k⁴/60ħ³c²); Skačej pp. 226-228, 245-248 | Supported. Pathria's 3.13 K for helium matches the chapter's value exactly | Planck's law, Stefan-Boltzmann, Wien, BEC, helium and 2D condensation had no citation; only one work at the section line | Added Pathria Ch. 7-8 and Skačej Ch. 12 at the section line and at the blackbody definition, the Planck limits, Stefan-Boltzmann, Wien exercise, BEC definition, helium-4, 2D BEC and heat-capacity blocks |
| Phase transitions and Landau theory (`sec-landau-theory`) | kivelson2024statistical [Ch. 4-7]; shankar2017quantum [Ch. 7-8]; skacej2019solved [Ch. 1-5]; strocchi2021symmetry [Ch. 21]; boudreau2018applied [Secs. 8.1 and 8.3; Sec. 20.3 and Ch. 20, Exercise 10; Ch. 20, Exercises 1, 9, 13; Ch. 8, Exercises 4, 5]; bricmont2022statistical [Exercise 9.9]; bauerschmidt2019renormalisation (22 pairs: Secs. 1.2, 1.3, 1.4, 1.4.1, 1.4.2, 1.5, 1.5.2; Lemmas 1.4.2, 1.4.3, 1.4.6; Thms. 1.4.1, 1.4.4; Lemma 1.5.3; Def. 1.5.1; Exercises 1.4.5, 1.4.7, 1.4.8, 1.5.2, 1.5.5, 1.5.6; eqs. 1.2.1-1.2.2, 1.2.5-1.2.10, 1.2.7, 1.4.23, 1.5.3-1.5.4, 1.5.11-1.5.20, 1.6.3-1.6.4, 1.6.8) | Kivelson TOC, Chs. 4-7 pp. 73-183; Shankar TOC Chs. 7-8 pp. 105-142; Skačej Ch. 5 pp. 74-79 (Landau theory, exponents); Strocchi TOC Ch. 21 pp. 139-146; Boudreau pp. 241-265 (percolation, p_c = 0.59275, Table 8.4), pp. 717-722, pp. 726-729, pp. 267-268; Bricmont p. 309; Bauerschmidt pp. 5-28 | Supported, all pairs. Skačej [Ch. 1-5]: Ch. 5 supports the section; Chs. 1-4 are thermodynamics and fit `sec-thermodynamics` (now cited there). Narrowed to [Ch. 5] (line 3359), fixed (owner, 2026-11-18) | 4 citations split over two lines | Re-flowed the 4 split Bauerschmidt citations onto one line each; text unchanged |
| Finite temperature as a compact Euclidean time (`sec-thermal-circle`) | added shankar2017quantum [Sec. 3.2, Sec. 5.3, Sec. 6.10; Sec. 3.2, eqs. 3.19-3.30; Sec. 5.3, eqs. 5.38-5.42; Secs. 6.10.1-6.10.2, eqs. 6.123-6.141; Sec. 6.10.1, eqs. 6.129-6.135], gelis2021problems [Ch. 5, pp. 277-279; Ch. 5, pp. 278-279; Problem 81], strocchi2021symmetry [Ch. 22; Sec. 22.1, Thm. 22.1] | Shankar pp. 30-34, 59-60, 86-93; Gelis pp. 276-279 (KMS, Matsubara 2πnT and 2π(n + ½)T, antiperiodic fermions), pp. 339-346 (Hawking T = 1/8πM); Strocchi pp. 147-150 (Gibbs state, KMS condition, Thm. 22.1) | Supported | Section cited nothing | Added a lead line and citations at `def-euclidean-time`, the Euclidean path-integral exercise, `def-thermal-circle`, `exm-thc-fermion-sign`, `def-matsubara-frequency` and the black-hole exercise. The high-temperature reduction and compact-dimension analogy have no direct library source; covered by the section line |
| Exercises (`sec-thermodynamics-statistical-mechanics-exercises`) | added pathria2022statistical [Sec. 7.3], kivelson2024statistical [Sec. 3.4; Sec. 3.4.2, eqs. 3.21-3.29], skacej2019solved [Problem 12.7], bricmont2022statistical [Exercise 5.5], gelis2021problems [Ch. 5, pp. 278-279] | Kivelson pp. 50-52 (transfer matrix in a field, λ± = e^{βJ}[cosh βh ± (sinh²βh + e^{−4βJ})^{1/2}], m); Skačej pp. 226-227 (photon gas pV = π²VT⁴/45 for two polarisations, so π²T⁴/90 per scalar); Bricmont p. 134; Pathria pp. 216-219 | Supported | Section cited nothing | Added a lead sentence and one citation at each of the three exercises |

**Counts.** Before: 10 works, 10 textbooks. After: 11 works, 11 textbooks (adds `pathria2022statistical`, Pathria & Beale,
in the Zotero Textbooks collection; pending in Bib additions). `check.py` now: works 10, textbooks 10 (the pending key
shows as missing from the bib), no locator 2 (the YAML `nocite` line), sections citing nothing 0. A10 is met.

**Citations verified.** 61 existing (work, locator) pairs: Shankar 3, Bricmont 17, Gelis 1 (no locator), Kivelson 2,
Skačej 2, Boudreau 12, Strocchi 2, Bauerschmidt 22. Verdicts: 61 supported, none unsupported, none a disagreement, none
not machine-readable; Gelis at the section line is weak support (noted), and Skačej [Ch. 1-5] is broader than the section.
The two `nocite` entries (Cufaro Petroni, Knauf) carry no locator and were not verifiable as such; both are now cited
with locators in the body. The four first-pass "without a locator" Bauerschmidt findings were line splits, re-flowed.
Added: 48 new citation occurrences (about 44 distinct work-locator pairs), all read and supported.

#### Bib additions

```bibtex
@book{pathria2022statistical,
  title = {Statistical Mechanics},
  author = {Pathria, R. K. and Beale, Paul D.},
  edition = {4},
  year = {2022},
  publisher = {Academic Press},
  address = {London},
  isbn = {978-0-08-102692-2},
  keywords = {textbook},
  zotero = {C6HVTPX9},
  zoteropdf = {8QV6UFK4}
}
```

Metadata issue for the owner: Zotero item C6HVTPX9 has no creators (should be R. K. Pathria and Paul D. Beale), no
edition, and its DOI 10.1016/B978-0-08-102692-2.00002-8 is the front-matter chapter's, not the book's. The PDF
attachment is named "2022 - Front Matter.pdf" but contains the whole book (944 pages). The BBT key
`pathria2022statistical` derives from the missing author; once creators are added it will change to e.g.
`pathria2022statistical`, and the key should be pinned (or the chapter updated). The Gelis item EAKFTAI3 also lists no
authors in Zotero.

#### Proposed new references

None. The library covers every section.

#### Disagreements

None. All conversions (k_B = ħ = 1, Bauerschmidt's dimensionless field, Shankar's sign of G, Skačej's spin ±½) agree.

#### Reading-note additions

Drafts are in `scratchpad/notes6/thermodynamics-statistical-mechanics__<ITEMKEY>.html`. Ten works already have a note
(h2 section only); `pathria2022statistical` (C6HVTPX9) is new and has Identity and Structure.

- shankar2017quantum (8Z8WE5U7): Ch. 1, pp. 1-19 (Secs. 1.5-1.8, pp. 6-19); Ch. 2, pp. 20-28; Chs. 7-8, pp. 105-142;
  Sec. 3.2, eqs. 3.19-3.30, pp. 32-34; Sec. 5.3, eqs. 5.38-5.42, pp. 59-60; Secs. 6.10.1-6.10.2, eqs. 6.123-6.141,
  pp. 89-92.
- bricmont2022statistical (KAGHBX2W): Ch. 5; Exercises 5.2, 5.3, 5.5-5.9, 5.11, 5.12, pp. 133-135; Ch. 6; Exercises
  6.3-6.12, pp. 175-177; Sec. 9.7.1, p. 295; Exercises 9.9, 9.10, p. 309.
- gelis2021problems (EAKFTAI3): Ch. 5 Introduction, pp. 277-279; Problem 81, pp. 339-346.
- kivelson2024statistical (V3RH7AYV): Chs. 2-3; Chs. 4-7; Sec. 3.4.2, eqs. 3.21-3.29, pp. 51-52.
- skacej2019solved (MYHHCE9T): Chs. 1-5, 8-12; Problems 10.10 (pp. 179-181), 11.1 (pp. 195-196), 11.5 (pp. 199-201),
  12.7 (pp. 226-227), 12.8 (pp. 227-228), 12.22 (pp. 245-247), 12.23 (pp. 247-248), 12.24 (p. 248), 12.31 (pp. 256-257).
- boudreau2018applied (Q3K6KQG8): Sec. 7.5.1, p. 223; Ch. 7 Exercises 13, 16, pp. 235-236; Secs. 8.1, 8.3,
  pp. 241-260; Ch. 8 Exercises 4, 5, pp. 267-268; Secs. 20.3-20.4, pp. 717-722; Ch. 20 Exercises 1, 9, 10, 11, 13, 17,
  pp. 726-729.
- strocchi2021symmetry (K4BM68F5): Ch. 21, pp. 139-146; Ch. 22, Sec. 22.1, Thm. 22.1, pp. 147-150; Ch. 23, pp. 159-166.
- bauerschmidt2019renormalisation (KTL4MV3H): Secs. 1.2-1.6, pp. 5-27 (items listed in the table).
- cufaropetroni2020probability (789IXIC2): Sec. 9.5, Prop. 9.8, Example 9.10, pp. 270-272.
- knauf2018mathematical (BGRDQPJ8): Example 9.4, Thm. 9.8, Remark 9.9, pp. 193-195; Examples 9.40, p. 214.
- pathria2022statistical (C6HVTPX9, new note): Chs. 2-4; Secs. 3.5-3.10, pp. 54-83 (Sec. 3.7, eqs. 3.7.1-3.7.9,
  pp. 62-63); Chs. 7-8; Sec. 7.1, eqs. 7.1.17-7.1.22, 7.1.32, pp. 199-204; Sec. 7.3, eqs. 7.3.1-7.3.14, pp. 216-219.

### quantum-mechanics

Conventions checked after conversion: ħ explicit (Das, Svanberg, Izaac, Nastase also keep ħ; Izaac's problems use ħ = m = 1); Guidry and Galitski use Gaussian units and charge e with p − eA/c, compared after conversion to the chapter's SI form with q and Φ_B; inner product antilinear in the first slot throughout. `das2023quantum` is T. K. Das, *Quantum Mechanics* (UNITEXT, 2023), the former `cini2023quantum`. Its PDF page offset is not constant: PDF − printed = +15 (Ch. 3), +14 (Ch. 4), +13 (Ch. 5), +12 (Ch. 6), +11 (Chs. 8-11), +10 (Ch. 12), +9 (Ch. 13), +8 (Ch. 14). PDFs read as text from `~/Zotero/storage/<zoteropdf>/`, all with a text layer.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| States and observables (`sec-states-observables`) | demilio2017problems [Ch. 4 (added), Ch. 5]; derezinski2022mathematics [Ch. 8]; tornetta2022mathematical [Ch. 1 and 3]; das2023quantum [Sec. 5.3, Problems 1-2], [Sec. 5.3, Problem 3] (×2) | d'Emilio PDF 57 onward (Chs. 4-5 contents and problems); Dereziński PDF 186-224 (Secs. 8.1-8.5, CCR); Tornetta PDF 9-34, 55-70; Das PDF 110 (printed 97) | supported. Das 5.3 P3 asks for ΔL_x ΔL_y in \|l,0⟩; the chapter's general \|l,m⟩ formula and equality at \|m\| = l are its extension | d'Emilio Ch. 5 (representations) covers only part of the section; Ch. 4 (states, observables, commutation relations) is the matching chapter | Ch. 4 added to the "For more" line |
| Measurement and the Schrödinger equation (`sec-schroedinger`) | demilio2017problems [Ch. 4, Ch. 6, Ch. 7, Ch. 16]; galitski2013exploring [Ch. 2, Ch. 7]; guidry2022symmetry [Ch. 27]; zettili2009quantum [Ch. 4]; das2023quantum [Sec. 3.6, Problems 2, 4], [Sec. 4.7, Problems 2, 3, 7, 9, 10], [Sec. 8.7, Problems 1, 1-2, 3, 4], [Sec. 9.8, Problems 1, 2], [Sec. 13.2] (×2), [Sec. 14.10, Problem 3] (×2); izaac2018computational [Secs. 9.5-9.6], [Sec. 9.5, eqs. (9.54)-(9.56), and Problem P9.8], [Sec. 9.6 and Problem P9.7], [Problems P9.4, P9.7 and P9.8], [Secs. 11.2-11.3], [Sec. 11.3, eqs. (11.18)-(11.20)], [Secs. 11.2.1-11.2.2], [Problem P11.1], [Problems P11.2-P11.3] | Das PDF 83 (rendered: the Problem 3.6.2 state is (1/3)\|0⟩ + i(√2/3)\|1⟩ − (√6/3)\|2⟩), 102-103, 189, 214, 250-254 (eqs. 13.5-13.8, Fig. 13.3), 282-284, 306-307; Izaac PDF 392-401, 433-436, 450; d'Emilio PDF 9-11 (contents), 328; Galitski PDF 231-242, 303-307 (Sec. 7.2, Problem 7.12, spin precession); Guidry PDF 498-511; Zettili PDF 232-256 | supported, with these notes: (1) `exm-qmb-oscillator-measurement` permutes Das's coefficients (√2/3, i√6/3, −1/3 instead of 1/3, i√2/3, −√6/3); its numbers are right for its own state, so it is an adaptation, not a disagreement; (2) Das 13.2 at `exm-qmb-tunnelling-microscope` supports the barrier factor only, the microscope is the text's application; (3) Morse E0 = (251 + 4√15)/40 = 6.6623 checked against P9.4(b); the splitting error ratio 1:2 matches eq. (11.20); (4) **demilio Ch. 16** (applications to atomic physics: fine structure, Stark and Zeeman effects) is **unsupported** for this section; (5) guidry Ch. 27 (geometrical phases) is weak here: only the spin-in-a-field Hamiltonian (eq. 27.30) bears on the section | 2 citations split across lines (1603, 1741); the hard-sphere example (1741) cited only Das 14.10 Problem 3, which is the soft sphere | Joined. Located Sec. 13.2 as eq. (13.8). Added Das Sec. 14.5 (rigid sphere, low-energy 4πa², PDF 282-283) at the hard-sphere example. demilio Ch. 16 and guidry Ch. 27 left for the owner (d'Emilio Ch. 16 is now cited where it belongs, Problem 16.2 in the exercises). Both removed from the "For more" line (858); Guidry moved to the spin-in-a-field lead-in before `exm-qm-evolution-precession` (line 1243) as [Example 27.1, eq. 27.28] (the Hamiltonian is eq. 27.28, p. 474; 27.29-27.30 are its eigenvalues and eigenvectors), fixed (owner, 2026-11-18) |
| The harmonic oscillator (`sec-harmonic-oscillator`) | nastase2023quantum [Ch. 8] (was Ch. 1-9); das2023quantum [Sec. 6.6, Problems 3 and 5], [Sec. 12.5, Problem 2] (×2), [Sec. 9.8, Problem 4] | Nastase PDF 115-129; Das PDF 122, 214, 247 | supported; 3b³(n+1)^{3/2}, ⟨r⟩ = 2b/√π, ⟨r²⟩ = 3b²/2 checked | Nastase "Ch. 1-9" too broad | Narrowed to Ch. 8 (the oscillator) |
| Angular momentum and spin (`sec-angular-momentum`) | demilio2017problems [Ch. 8, Ch. 13] (was Ch. 12); galitski2013exploring [Ch. 3, Ch. 5]; nastase2023quantum [Ch. 14-17] (locator added); zettili2009quantum [Ch. 5-7]; das2023quantum [Sec. 10.4, Problem 3] (×2), [Sec. 10.4, Problems 1-2], [Sec. 4.7, Problem 6], [Sec. 4.7, Problem 1]; svanberg2022spectroscopy [Sec. 2.6.1, eqs. (2.38)-(2.42)], [Sec. 2.7, eq. (2.47) and Fig. 2.20], [Sec. 2.5.1, eqs. (2.25)-(2.31)] | Das PDF 102, 225; Svanberg PDF 47-49, 53-54, 57-59; d'Emilio PDF 176-181, 270-277; Galitski PDF 103 onward, 182 onward; Zettili PDF 300-471; Nastase PDF 183-227 | supported, except d'Emilio Ch. 12 (perturbations), off-target. Svanberg's a/2[F(F+1) − I(I+1) − J(J+1)] equals the chapter's (A/ħ²) I·J. The 1420 MHz and 9 192 631 770 Hz numbers in `exm-qms-hyperfine` are not in Sec. 2.6.1 (Svanberg has them in Sec. 7.1.3) | Nastase without a locator; d'Emilio Ch. 12 off-target; Das citation split across lines (3516) | Nastase Ch. 14-17 added; d'Emilio corrected to Ch. 13 (spin and magnetic field); 3516 joined |
| Symmetries in quantum mechanics (`sec-quantum-symmetries`) | foulaadvand2023computational [Ch. 8]; galitski2013exploring [Ch. 4, Ch. 6]; mukunda2022continuous [Ch. 9]; nastase2023quantum [Ch. 12-13] (was Ch. 22); talagrand2022what [Ch. 2]; das2023quantum [Sec. 11.3, Problem 1], [Sec. 11.3, Problems 1-2]; svanberg2022spectroscopy [Sec. 2.1, eq. (2.4), and Sec. 2.8, eq. (2.48)], [Sec. 2.8, eqs. (2.48)-(2.49)] | Foulaadvand PDF 207-238; Galitski PDF 170-174, 242 onward; Mukunda PDF 232-251; Nastase PDF 163-182, 274; Talagrand PDF 54-75; Das PDF 233; Svanberg PDF 34, 60 | supported, except Nastase Ch. 22 (QM with classical electromagnetism), off-target. Foulaadvand Ch. 8 covers only parity (used by `exm-qm-conserved-parity`). 2s maxima at (3 ∓ √5)a checked | Nastase Ch. 22 off-target | Corrected to Ch. 12-13 (continuous and discrete symmetries) |
| Perturbation theory and the path integral (`sec-path-integral`) | demilio2017problems [Ch. 12] (was Ch. 11); galitski2013exploring [Ch. 8]; nastase2023quantum [Ch. 10, 36 and 41] (was Ch. 37-38); zettili2009quantum [Ch. 9-10]; svanberg2022spectroscopy [Sec. 2.5.2, eqs. (2.34)-(2.35)]; izaac2018computational [Sec. 10.3, Theorem 10.1, eqs. (10.32)-(10.38)], [Problem P10.9], [Sec. 10.2.1 and Problem P10.8] | d'Emilio PDF 239-250; Galitski PDF 315-341; Nastase PDF 140-150, 431-440, 481-490; Zettili PDF 506-547, 588-590; Svanberg PDF 51-52; Izaac PDF 412-419, 427-428 | supported, except d'Emilio Ch. 11 (central fields) and Nastase Ch. 37-38 (time-dependent perturbation theory, not treated here). Zettili Ch. 10: only Sec. 10.2 is used. Pöschl-Teller Hφ0 = −½φ0 checked | Two off-target locators; Svanberg citation split across lines (5177) | d'Emilio corrected to Ch. 12 (perturbations); Nastase to Ch. 10 (path integral), 36 (stationary perturbation theory, Stark effect Sec. 36.5) and 41 (variational methods); 5177 joined |
| Scattering (`sec-qm-scattering`) | das2023quantum [Ch. 13-14; Secs. 13.1-13.4; Ch. 13 introduction; Secs. 14.1-14.10 with eqs. (13.6), (13.8), (13.11), (14.5)-(14.10), (14.13)-(14.16), (14.18)-(14.38), (14.63)-(14.88); Sec. 14.10, Problems 1-4]; zettili2009quantum [Ch. 11; Secs. 4.4-4.5 (was 4.7), 4.5 (was 4.7, ×2), 11.2, 11.4, 11.4.1, 11.5; Problems 11.2-11.7]; galitski2013exploring [Ch. 13; eq. (XIII.12) (added); Problem 13.1]; demilio2017problems (new here) [Ch. 17; Problems 6.14, 17.2, 17.4, 17.5, 17.7, 17.12, 17.16] | Das PDF 248-256, 257-307 (equation-by-equation; barn p. 263, collimation pp. 259, 266-267, shadow scattering pp. 284-285, Yukawa and screened Coulomb pp. 298-302, Breit-Wigner pp. 305-306); Zettili PDF 237-248, 634-668; Galitski PDF 654-660, 681; d'Emilio PDF 109, 127-129, 351-358 | supported. Checks: full transmission ε = 1 + n²π²/g and 1.4935 for g = 20 (Das p. 245); hard sphere 4πa² slow, 2πa² fast, shadow scattering (Das 14.5); optical theorem (14.28); Breit-Wigner (14.88); Zettili Problems 11.2-11.7 match their examples (δ-shell, hard sphere, square well, double δ, 50 MeV neutrons, e-H). Notes: (1) Das 14.27 is in Sec. 14.4, just before the 14.4.1 heading cited with it; (2) at `exm-qsc-tr-left-right`, `exr-qsc-tr-pole`, `exr-qsc-tr-phase-time` and the double-δ example, Das 13.2-13.3 supply only the base transmission amplitude; reciprocity, the pole, the time delay and resonant tunnelling are the text's extensions, now covered by d'Emilio; (3) "the sign appears only at second order" (`exm-qsc-born-inversion`) and the proton-size remark are not in Das 14.8, which supports f_B ∝ V | **Zettili Sec. 4.7 (finite well) unsupported** at 3 places: R + T and tunnelling are Secs. 4.4-4.5, and the transfer matrix and reciprocity are in no Zettili section; Das does not name the scattering length | Zettili corrected to Secs. 4.4-4.5 / Sec. 4.5. Added d'Emilio: Ch. 17 to the "For more" line; Problem 6.14 (transfer matrix, det M = 1, T = 1/\|A\|², R and T independent of the side) at the left-right example and the transfer-matrix exercise; 17.12 (S-matrix poles = bound states) at the pole exercise; 17.2 (time delay 2dδ/dE) at the phase-time exercise; 17.4 (classical hard sphere) at the classical cross-section example; 17.7 (scattering length) at `exm-qsc-cs-length`; 17.5 (optical theorem); 17.16 (Ramsauer-Townsend). Galitski Ch. 13 at the Born phase shifts refined to eq. (XIII.12) |
| A charged particle in an electromagnetic field (`sec-qm-charged-particle`) | guidry2022symmetry [Ch. 27 and Sec. 28.2; Secs. 26.5, 27.1-27.1.4, 27.2-27.3 (Ex. 27.1), 28.2-28.2.2; Box 27.1; eqs. (27.1)-(27.2), (27.6)-(27.9), (27.30), (28.3), (28.5)-(28.12); Problems 27.1-27.6, 27.12, 28.2-28.4]; galitski2013exploring [Ch. 7; eqs. (VII.1)-(VII.5); Problems 6.10, 6.27 (added), 7.1, 7.1(b), 7.2, 7.3, 7.5, 7.9-7.10, 13.24]; nastase2023quantum (new here) [Secs. 22.2, 22.3, 23.1-23.2, 24.3] | Guidry PDF 492-493, 498-502, 508-511, 514-516, 536, 1004-1005 (printed 458-459, 464-468, 474-477, 480-482, 502; solutions 192-193; offset +34); Galitski PDF 242, 257-258, 287-303, 688-689 (offset +17); Nastase PDF 275-278, 284-287, 297-299 (offset +24) | supported after the units conversion: gauge phase e^{iqλ/ħ}, [π_i, π_j] = iħqε_ijk B_k, Landau levels ħω_c(n + ½), degeneracy qB𝒜/2πħ = Φ_B/Φ_0, AB phase qΦ_B/ħ, the fringe shift, the flux-tube cross section sin²(πΦ_B/Φ_0) (Galitski 13.24). Source-side slips the chapter avoids: Guidry's solution to 28.4 prints e^{iħcχ/e} (the chapter's exercise notes it); Guidry eq. (28.7) has an x_k sign slip for charge −e; Guidry labels the eq. (27.30) spinor ψ₊ beside E₊ | (a) imprecise: 8318 cited Sec. 27.1.2 for eqs. (27.6)-(27.7), which are in 27.1.3; 8002 cited Sec. 28.2.2 for eq. (28.6), in 28.2.1. (b) **In no cited source** (left for the owner): ring spectrum and persistent current (8338, 8477; Galitski 13.24 is scattering), electric AB effect (8362), h/2e superconducting flux (8326), superconducting toroid and the 1980s experiments (8569, 8616), de Haas-van Alphen (8066), two-gauge uniform E (7721, partly), hydrogen Zeeman and diamagnetic numbers (7745, 7753, 7896, 7932: the terms are there, the numbers are the text's), self-adjointness of p·A + A·p (7852, Galitski Ch. 7 weak) | (a) corrected to Secs. 27.1.2-27.1.3 and Secs. 28.2.1-28.2.2. (b) added Nastase Sec. 22.2 eqs. (22.18)-(22.32) at the gauge-covariance proposition; Galitski Problem 6.27 there and at the uniform-E example; Nastase Sec. 22.3 eq. (22.40) at the London current; Sec. 22.2 eq. (22.16) at the orbital Zeeman example; Sec. 24.3 eqs. (24.9)-(24.30) at the Landau-level proposition; Secs. 23.1-23.2 eqs. (23.14)-(23.19) at the AB proposition; Sec. 23.2 eq. (23.18) at the winding-sum example. The remaining items in (b) stay uncited; Dittrich and Reuter, *Classical and Quantum Dynamics* (Zotero 48M6TZID, Ch. 32 AB effect in a box) is an unread library candidate for the ring spectrum |
| Exercises (`sec-quantum-mechanics-exercises`) | galitski2013exploring [Problem 7.12]; nastase2023quantum [Sec. 28.2, eqs. (28.30)-(28.33)]; demilio2017problems [Problem 16.2] (all added) | Galitski PDF 304 (printed 287); Nastase PDF 339-340 (printed 315-316); d'Emilio PDF 329 (printed 324) | supported: spin-½ precession in a uniform field (7.12) for the spin cycle; Euclidean kernel Σψ_nψ_n* e^{−βE_n} for the Euclidean oscillator; hydrogen n = 2 in a uniform B with (e/2mc)(L + 2s)·B for the Zeeman exercise. The three exercises are combinations of the chapter's units, not adapted | **Section cited nothing** | "For more on these topics" line added under the heading |

Citations verified: about 180 distinct (work, locator) pairs before the audit, all read at their pages. About 165 supported as cited; 6 supported only for the base result, with the extension the text's own (listed above); 9 off-target locators in "For more" lines (d'Emilio Chs. 11, 12, 16; Nastase Chs. 1-9, 22, 37-38, and none at 3347; Guidry Ch. 27 weak) and 3 wrong Zettili section locators (4.7), all corrected except d'Emilio Ch. 16 and Guidry Ch. 27 at `sec-schroedinger` (owner; fixed (owner, 2026-11-18)); 2 imprecise Guidry subsection locators corrected; about 15 claims in the charged-particle section with no source (listed). 4 citations split across lines, joined. No disagreements. None unavailable: every PDF has a text layer.

Counts: before 13 works, 13 textbooks; after 13 works, 13 textbooks (A10 already met; the new citations are of works already cited elsewhere in the chapter: d'Emilio now at 11 more places, Nastase at 7 more). check.py after: no locator 0, sections citing nothing 0.

**Bib additions:** none.

**Proposed new references:** none. The uncited charged-particle items may be covered by Dittrich and Reuter (already in the library, 48M6TZID, not read in this audit).

**Disagreements:** none. Every formula checked agrees with its source after converting units and conventions.

**Reading-note additions** (drafts in `scratchpad/notes6/quantum-mechanics__<ITEMKEY>__{main,mid,charged}.html`; all 13 works already have reading notes, so each draft is an h2 section for `fundamentals-of-theoretical-physics/quantum-mechanics`):
- das2023quantum (Q3WIWUT2): Secs. 3.6 P2, P4; 4.7 P1-3, P6-7, P9-10; 5.3 P1-3; 6.6 P3, P5; 8.7 P1-4; 9.8 P1-2, P4; 10.4 P1-3; 11.3 P1-2; 12.5 P2; Ch. 13 (Secs. 13.1-13.4, eqs. 13.5-13.11, Fig. 13.3); Ch. 14 (Secs. 14.1-14.10, eqs. 14.5-14.88, Problems 14.10.1-4); PDF 83-307.
- demilio2017problems (BL6XWCDU): Chs. 4, 5, 6, 7, 8, 12, 13, 16 (Problem 16.2), 17 (Problems 17.2, 17.4, 17.5, 17.7, 17.12, 17.16); Problem 6.14; offset not constant (+10 Ch. 4, +9 Ch. 6, +5 Ch. 16, +4 Ch. 17).
- derezinski2022mathematics (QXAFEK2G): Ch. 8 (CCR), PDF 186-224.
- tornetta2022mathematical (VI3SLD4R): Chs. 1 and 3, PDF 9-34, 55-70.
- izaac2018computational (UHXQS75P): Secs. 9.5-9.6, 10.2.1, 10.3, 11.2-11.3; Problems P9.4, P9.7, P9.8, P10.8, P10.9, P11.1-P11.3; offset +15.
- zettili2009quantum (WIKL4G9K): Chs. 4 (Secs. 4.4-4.5), 5-7, 9, 10 (Sec. 10.2), 11 (Secs. 11.2, 11.4, 11.4.1, 11.5; Problems 11.2-11.7); offset +17.
- galitski2013exploring (EKIZE3IG): Chs. 2-8, 13; eqs. (VII.1)-(VII.5), (XIII.12); Problems 6.10, 6.27, 7.1-7.3, 7.5, 7.9-7.10, 7.12, 13.1, 13.24; offset +17.
- guidry2022symmetry (B7NKMAZQ): Ch. 26 (Sec. 26.5), Ch. 27 (Secs. 27.1-27.3, Box 27.1, eqs. 27.1-27.9, 27.30, Problems 27.1-27.6, 27.12), Ch. 28 (Secs. 28.2.1-28.2.2, eqs. 28.3-28.12, Problems 28.2-28.4); offset +34.
- nastase2023quantum (AD3G2WKT): Chs. 8, 10, 12-13, 14-17, 36, 41; Secs. 22.2-22.3, 23.1-23.2, 24.3, 28.2; offset +24.
- svanberg2022spectroscopy (3H87DSKB): Secs. 2.1, 2.5.1, 2.5.2, 2.6.1, 2.7, 2.8; offset +18.
- foulaadvand2023computational (WHBRCYJA): Ch. 8 (parity); mukunda2022continuous (2UYSHY8B): Ch. 9 (Wigner's theorem); talagrand2022what (BTZ2R2W4): Ch. 2.

### classical-field-theory

Signature (+, −, −, −). Source conventions met: Maggiore, Blennow, Buchbinder, Alvarez-Gaumé (+, −, −, −); Năstase and
Gourgoulhon (−, +, +, +), converted before comparing. Page numbers are printed pages; PDF offsets: Maggiore +17,
Blennow +10, Buchbinder +11, Emam +19, Gourgoulhon +22, Năstase +20, Pierrus +11, Alvarez-Gaumé 0, Macchi +11
(problems) and +6/+7 (solutions).

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Fields (`sec-fields`) | emam2021covariant Sec. 9.4; maggiore2023electrodynamics Secs. 3.2.1, 8.3, 8.5, 9.3, 9.5, 9.6, 10.3, Problems 8.3, 8.4, 11.1; blennow2022relativity Problems 1.65, 1.122, 1.132 (new); pierrus2018solved Question 7.9 (new); nastase2019classical Secs. 17.1, 17.2 (new); alvarezgaume2005 eqs. 4.27, 4.29 (new) | Emam pp. 344-347; Maggiore pp. 43-44, 186-192, 222-224, 228-233, 245-249, 214-216, 292-294; Blennow pp. 27, 37-39, 121, 165-166, 171-172; Pierrus pp. 349-352; Năstase pp. 158-160; Alvarez-Gaumé pp. 23-27 | supported, with three partial supports resolved | (1) Maggiore Sec. 9.5 (example and two exercises on Stokes parameters and helicity) covers linear, circular and elliptic polarisation but not the Stokes parameters, $I^2 = Q^2 + U^2 + V^2$ or the word helicity. (2) Maggiore Sec. 8.3 gives the covariant Maxwell equations but not the derivation of charge conservation and the displacement current; that is Sec. 3.2.1, pp. 43-44 (eq. 3.22, note 7). (3) The spinor subsection (`sec-spinors`) cited nothing. (4) `blennow2022relativity` was cited only through `nocite`, without a locator. | (1) Added pierrus2018solved Question 7.9 (Stokes parameters $s_0$-$s_3$, helicity, linear as sum of circular states) to all three blocks. (2) Locator extended to Secs. 3.2.1, 8.3. (3) Added alvarezgaume2005 eq. 4.29 (Clifford algebra) at the gamma-matrix definition and eq. 4.27 (Dirac Lagrangian) at the Dirac equation. (4) `nocite` removed; Blennow now cited with locators at the Doppler example (Problem 1.65), the invariants exercise (Problem 1.122) and the boosted Coulomb exercise (Problem 1.132). Also added Năstase Sec. 17.1 (local phase rotation not a symmetry) and Sec. 17.2 (conserved current, on shell). |
| Actions and symmetries (`sec-actions-symmetries`) | buchbinder2021introduction Ch. 2, Chs. 3-4; emam2021covariant Ch. 8; gourgoulhon2013special Ch. 19; alvarezgaume2005 Secs. 3-4, 6.1 (locator added), eqs. 3.44, 6.3, 6.4-6.5, 6.6-6.7, 6.11-6.12 (new), 6.15-6.16 (new); maggiore2023electrodynamics Secs. 8.4, 8.6, 8.6.2, 8.7.3, 10.5, 10.6, 11.3, Problems 8.1, 8.2, 10.1, 10.2, 10.3; nastase2019classical eqs. 5.28, 18.9, Secs. 5.3, 14.3, 14.6, 18.2, 20.2, 20.5 (new); macchi2023problems Problems 8.5, 13.29 (new) | Buchbinder pp. 8-69 (TOC; Secs. 3.2-3.3, 4.3 read); Emam pp. 286-313 (Secs. 8.2-8.3 read); Gourgoulhon pp. 629-644; Alvarez-Gaumé pp. 16-17, 23-27, 57-59; Maggiore pp. 188-190, 192-197, 205-216, 252-268, 290-292; Năstase pp. 49-50, 127-135, 165-168, 186-189, 192; Macchi pp. 74, 135, 383-384, 556-557 | supported, with two gaps resolved | (1) `alvarezgaume2005` "main source" citation had no locator. (2) Maggiore Sec. 8.4 gives $T^{00}$, $T^{0i}$ and the stress tensor but not radiation pressure, $I/c$ versus $2I/c$, solar sails or comet tails (radiation-pressure example). | (1) Locator added: Secs. 3-4, 6.1. (2) Added macchi2023problems Problems 8.5 (pressure $2I/c$ on a mirror, S-8.5) and 13.29 (pressure $(1 + R)I/c$, solar sail, dust grains swept out, S-13.29). Năstase added at the Euler-Lagrange equation, the boundary term, Noether's theorem and its off-shell form, the improvement terms, the symmetric Maxwell tensor (Sec. 14.6, $\partial_\rho(A^\mu F^{\nu\rho})$) and the kink and sine-Gordon exercises; Alvarez-Gaumé eqs. 6.11-6.12 and 6.15-6.16 at the translation current and the Dirac current. |
| Exercises (`sec-classical-field-theory-exercises`) | nastase2019classical Secs. 17.1-17.2, 17.2, 20.2 (new); alvarezgaume2005 eqs. 6.15-6.16 (new) | Năstase pp. 158-161, 186-189; Alvarez-Gaumé p. 59 | supported | Section cited nothing. | Added: complex plane-wave current (Năstase Sec. 17.2), Dirac current (Alvarez-Gaumé eqs. 6.15-6.16), complex scalar with quartic term (Năstase Secs. 17.1-17.2, eq. 17.5), kink as a particle (Năstase Sec. 20.2). The spinor-on-a-circle and complex-scalar-on-a-circle exercises are the chapter's own Kaluza-Klein constructions; no library source states them, and none is needed for coverage. |

Verified pairs (work, locator) already in the chapter: 32, of which 27 supported, 3 supported in part (Maggiore Secs.
9.5, 8.3, 8.4; resolved above), 2 without a locator (`alvarezgaume2005` main source, `blennow2022relativity` nocite;
resolved). Checked after conversion: the Doppler and aberration formulas against Maggiore eqs. 9.109-9.118 (his
$\hat n_{obs}$ points from the observer to the source, so $\cos\theta = -\cos\theta_{obs}$) and Blennow Problem 1.65;
the charged-particle Lagrangian against Maggiore eq. 8.70 (identical); the field transformation against Maggiore eqs.
8.52-8.53 (identical); the complex-scalar Lagrangian and current against Năstase eqs. 17.5, 17.13 (agree after the
signature flip, up to the overall sign of $j^\mu$, which the chapter calls a convention).

Counts: before 6 works, 5 textbooks; after 9 works, 8 textbooks (added nastase2019classical, macchi2023problems,
pierrus2018solved, all in the bib and all textbooks). `check.py`: works 9, textbooks 8, no locator 0, sections citing
nothing 0.

Convention notes, not disagreements:

- Stokes $V$: the chapter's $V = 2\operatorname{Im}(E_x^*E_y)$ is positive for helicity $+1$. Pierrus's $s_3 = 2E_{0x}E_{0y}\sin\varphi$ is negative for positive helicity ($\varphi = -\pi/2$), so $s_3 = -V$; both sign choices are in use.
- Weyl representation: Alvarez-Gaumé eqs. 4.25 and 4.30 put the right-handed spinor on top, so $\gamma^i$ and $\gamma^5$ have the opposite sign to the chapter's (Peskin-type) blocks. The representations are equivalent, and only eq. 4.29 (Clifford relations) and eq. 4.27 are cited.
- Maggiore writes $\partial_\mu F^{\mu\nu} = -\mu_0 j^\nu$ with $F^{i0} = -E^i/c$; it is the same Gauss law as the chapter's $\partial_\mu F^{\mu\nu} = j^\nu$.

Found while reading, outside the audit's scope (owner):

- `exm-current-u1` writes $j^\mu = 2(v\,\partial^\mu u - u\,\partial^\mu v)$ "for $\phi = u + iv$", while `def-complex-scalar` fixes $\phi = (u + iv)/\sqrt2$. The formula is right for $\phi = u + iv$, but the normalisation differs from the definition.
- In `exm-current-energy-momentum`, the bold "**canonical energy-momentum tensor**" is split across a line break ("the *" / "*canonical"), so it will not render as bold.

**Bib additions:** none (all cited works are in the bib).

**Proposed new references:** none.

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|

**Disagreements:** none.

| Location | Text | Source (converted) | Page |
|---|---|---|---|

**Reading-note additions** (drafts in `scratchpad/notes6/classical-field-theory__<ITEMKEY>.html`; every work already
has a note, so only the h2 section for this chapter):

- `maggiore2023electrodynamics` (JGIWV45B): Sec. 3.2.1 pp. 43-44 (continuity, displacement current); Sec. 8.3 pp. 186-188; Sec. 8.4 pp. 188-190; Sec. 8.5 pp. 190-192 (eqs. 8.52-8.58); Secs. 8.6, 8.6.2 pp. 192-197 (eqs. 8.67-8.73, 8.87); Sec. 8.7.3 pp. 205-211 (improved tensor, eq. 8.156); Problems 8.1-8.4 pp. 211-216; Sec. 9.3 pp. 222-224; Sec. 9.5 pp. 228-229; Sec. 9.6 pp. 229-233 (eqs. 9.109-9.118); Sec. 10.3 pp. 245-249 (eqs. 10.86-10.89); Sec. 10.5 pp. 252-256; Sec. 10.6 pp. 256-264; Problems 10.1-10.3 pp. 264-268; Sec. 11.3 pp. 290-292; Problem 11.1 pp. 292-294.
- `emam2021covariant` (MV8JU3AT): Sec. 9.4 pp. 344-347 (eqs. 9.86-9.93); Ch. 8 pp. 286-326 (Sec. 8.2 pp. 305-311, eq. 8.99; Sec. 8.3 pp. 311-313).
- `buchbinder2021introduction` (MSWD9GKH): Ch. 2 pp. 8-30; Chs. 3-4 pp. 31-69 (Secs. 3.2-3.3 pp. 34-39, Sec. 4.3 pp. 46-52).
- `gourgoulhon2013special` (27UXIXZD): Ch. 19 pp. 629-644 (Secs. 19.2-19.3).
- `alvarezgaume2005` (JF6SI39M): Sec. 3 eqs. 3.43-3.44 pp. 16-17; Sec. 4.2 eqs. 4.25-4.29 pp. 23-27; Sec. 6.1 eqs. 6.3-6.7 p. 58, eqs. 6.11-6.16 pp. 58-59.
- `blennow2022relativity` (RGFY73YW): Problem 1.65 p. 27 (solution p. 121, eq. 3.289); Problem 1.122 p. 37 (solution pp. 165-166); Problem 1.132 pp. 38-39 (solution pp. 171-172).
- `nastase2019classical` (5AXU4FWL): Sec. 5.3 pp. 49-50 (eq. 5.28); Secs. 14.3 pp. 130-131, 14.6 pp. 134-135; Secs. 17.1-17.2 pp. 158-161 (eqs. 17.5, 17.10-17.19); Sec. 18.2 p. 166 (eqs. 18.6-18.9); Sec. 20.2 pp. 186-189; Sec. 20.5 p. 192 (eq. 20.36).
- `macchi2023problems` (36YCVRVE): Problem 8.5 p. 74 (solution S-8.5 pp. 383-384); Problem 13.29 p. 135 (solution S-13.29 pp. 556-557).
- `pierrus2018solved` (RX7KDAJK): Question 7.9 pp. 349-352 (polarisation states, helicity, Stokes parameters eq. 5).

### dirac-equation

Signature (+, −, −, −), $\gamma_5 = i\gamma^0\gamma^1\gamma^2\gamma^3$ (as Pal 2011, eq. 4.5). Source conventions met:
Zhelnorovich (+, +, +, −) with $x^4 = t$ (every contraction flips sign); Năstase (−, +, +, +); Calogeracos 1D with
$\gamma^0 = \sigma_z$, $\gamma^1 = i\sigma_x$; Eides, Costella, Pal, Fan $\hbar = c = 1$ or SI, (+, −, −, −) where it
matters. `das2023quantum` is the renamed `cini2023quantum`; its PDF (86X6WIQ7, filename "Cini et al.") is Das,
*Quantum Mechanics*, Vol. 1 (UNITEXT 2023), checked. Page numbers are printed pages; PDF offsets: Zhelnorovich +12,
Das +11, Svanberg +18 (Ch. 2) and +14 (Ch. 9), Aitchison +19, Năstase +24, Eides 0, the arXiv papers 0.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| The equation and its covariance (`sec-dirac-covariance`) | zhelnorovich2019spinors Secs. 3.2 and 5.1-5.2, Sec. 1.1 (new), Sec. 3.2.2 (corrected from 3.2.1, four places), eqs. 3.57-3.60, Sec. 5.1 eqs. 5.6, 5.11-5.13, Sec. 5.2 eqs. 5.17, 5.19 (locator added); costella1995foldy Sec. III; aitchison2024gauge Ch. 4; galitski2013exploring Ch. 15; nastase2023quantum Ch. 54 | Zhelnorovich pp. 12, 131-138, 227-233; Costella pp. 2-4; Aitchison pp. 72-95 (TOC, Sec. 4.1.2); Galitski pp. 838-866 (problem list); Năstase pp. 603-608 | supported, one locator corrected, one partial support resolved | (1) The bilinears, Fierz identities and $j^0 > 0$ were cited to Sec. 3.2.1, which treats the *complex* tensors $C^i, C^{ij}$; eqs. 3.57-3.60 and $j^4 > 0$ are in Sec. 3.2.2 (pp. 135-138). (2) `prp-dq-matrix-size`: Sec. 5.1 gives order $4q$ (p. 230) but not the uniqueness up to similarity. (3) Two citations without locator (lines 203, 460). | (1) Locator corrected to Sec. 3.2.2 (lines 546, 559, 583, 839). Identities agree after conversion: his $j_ij^i = -\Omega^2 - N^2$, $S_iS^i = \Omega^2 + N^2$ become $j\cdot j = \Omega^2 + N^2$, $a\cdot a = -j\cdot j$. (2) Locator extended with Sec. 1.1 (Pauli's theorem, p. 12). (3) Added Sec. 5.2, eq. (5.19) and Sec. 5.1. |
| Free solutions (`sec-dirac-free-solutions`) | pal2011majorana Secs. 4, 4.1, eqs. 4.1-4.3, Sec. 4.2; costella1995foldy Sec. II; calogeracos1999klein eqs. 9-12, Sec. I.B (locator added) | Pal pp. 9-12; Costella pp. 1-2; Calogeracos pp. 4-5 | supported | One citation without locator (line 1976). | Added Sec. I.B. Pal Sec. 4.2 states only that chirality is not conserved; the $\cos 2Et$ oscillation is the chapter's computation. |
| The non-relativistic limit (`sec-dirac-nonrelativistic`) | costella1995foldy Secs. III-V (locator added), Sec. III, eqs. 1-2, Sec. V; eides2001hydrogen Sec. VII, eq. 35; svanberg2022spectroscopy Sec. 2.3.2 eqs. 2.12-2.16, Sec. 2.5.1 eq. 2.23; fan2023electron eqs. 3, 6, 7 (locators added); das2023quantum Sec. 11.2, eq. 11.17, Sec. 11.3 Problem 3 | Costella pp. 1-5; Eides pp. 25-26; Svanberg pp. 20-21, 29-31; Fan pp. 1, 4; Das pp. 217-222 | supported, two partial | (1) Costella eq. (1) supports $H' = \beta\sqrt{p^2 + m^2}$ but not the explicit $U = \exp(\beta\boldsymbol\alpha\cdot\hat{\mathbf p}\theta)$, $\tan 2\theta = \lvert\mathbf p\rvert/m$; Sec. III uses "odd part" but does not define the even/odd split. (2) `costella1995foldy` and `fan2023electron` (three places), `svanberg2022spectroscopy` (one) and the split `eides2001hydrogen [Sec.`/`VII]` lacked a usable locator. | (1) Left for the owner; no library source gives the exact free FW transformation (semantic search, three phrasings: only Costella, Gelis, Buchbinder). The section stays covered by Costella eqs. 1-2 and Eides eq. 35. (2) Added Costella Secs. III-V; Fan eqs. (3), (6) and eq. (6); Svanberg Sec. 2.3.2, eq. (2.16); Eides citation rejoined on one line; Eides eq. (35) citation got Sec. VII. |
| The Dirac hydrogen atom (`sec-dirac-hydrogen`) | eides2001hydrogen Secs. II, IV, V eqs. 28-32, VII, eqs. 4-6, Sec. XXXIX.D, Table XX, Sec. XXXIX.G (locator added); das2023quantum Chap. 11, eqs. 11.6, 11.10-11.13, Sec. 11.3 Problems 2-3; zhelnorovich2019spinors Sec. 5.11.2; svanberg2022spectroscopy Sec. 2.2, Table 2.1, Secs. 9.7.2, 9.7.4; calogeracos1999klein Secs. I.A, II.B, I.D; parthey2011hydrogen p. 1 (locator added) | Eides pp. 14-15, 20-27, 200-203, 209; Das pp. 215-222; Zhelnorovich pp. 286-288; Svanberg pp. 16, 20-21, 419-428, 431-432; Calogeracos pp. 3-10; Parthey pp. 1, 4 | supported, one partial | (1) `thm`/radial equations: Zhelnorovich Sec. 5.11.2 gives only the Dirac operator in spherical coordinates (eq. 5.184); it has no $\kappa$, no radial pair $G, F$ and no normalisation. (2) Lamb-shift citation split across a line; `eides2001hydrogen` (He$^+$ exercise) and `parthey2011hydrogen` without locator. | (1) No library item gives the radial Dirac-Coulomb equations (semantic search, three phrasings; Galitski Ch. 15 treats only the Klein-Gordon Coulomb problem). Proposed Silbar and Goldman (below). Section remains covered by Eides eqs. 4-6. (2) Rejoined; added Sec. XXXIX.G and p. 1. Values checked: 10 969.04 MHz (Eides p. 201), 1 057 845(3) kHz (Table XX, p. 203), 1330 and −30 MHz (pp. 23), 175 593.50 MHz (p. 209), 8172.876(29) MHz (Svanberg p. 432), 17 cm$^{-1}$ (Table 2.1), $f_{1S-2S}$ (Parthey p. 1). |
| Charge conjugation, Weyl and Majorana fermions (`sec-dirac-majorana`) | pal2011majorana Secs. 3-5, 7 (locator added), Sec. 3, 3.2, 3.3, 5, 5.3, 5.4, 7, eqs. 3.16-3.17, 3.22-3.24, 3.26, 5.25, 7.1-7.5, 7.8; zhelnorovich2019spinors Sec. 5.7, eqs. 5.79-5.81; svanberg2022spectroscopy Sec. 9.7.2; parthey2011hydrogen p. 1 (locator added); pal2015introductory Chs. 6-7; shankar2017quantum Ch. 9 | Pal 2011 pp. 3-18, 25-28; Zhelnorovich pp. 253-256; Svanberg p. 428; Parthey p. 1; Pal 2015 pp. 150-200 (TOC); Shankar pp. 143-156 (TOC) | supported, one partial | (1) Pal Sec. 5.3 says a Majorana mass needs the LCC field, but not in so many words that it is "allowed only for a field without conserved charge" (line 4684). (2) Main-source citation of Pal without locator; Majorana-definition citation split across a line; two Parthey citations without locator. | (1) Recorded; the claim follows from Pal Secs. 3, 5.3 and 7 (C acts on charges), not a disagreement. (2) Added Secs. 3-5, 7; rejoined; added p. 1. Conventions: Pal's $\hat\Psi = \gamma^0C\Psi^*$ and the chapter's $\psi^c = i\gamma^2\psi^*$ agree up to phase. |
| The Klein paradox and the Dirac sea (`sec-klein-paradox`) | calogeracos1999klein Secs. I-II (locator added), Secs. I.A-I.E, II.A-II.B, eqs. 2-3, 15, 18, 19, 21-23, 26; das2023quantum Chap. 13, Secs. 13.2, 13.4 Problem 1; costella1995foldy Secs. II-III (locator added), III; aitchison2024gauge Ch. 3 | Calogeracos pp. 3-10; Das pp. 239-247; Costella pp. 1-4; Aitchison pp. 51-71 (Sec. 3.4.3) | supported, one partial | (1) Costella Sec. III names zitterbewegung but not its frequency $2E_p$ or that it needs both energy signs (line 5365). (2) Section-intro citations without locator; Klein-coefficient citation split across a line. | (1) Recorded; Costella Sec. I (mixing of particle and antiparticle components) supports the reading. (2) Added Secs. I-II, II-III; rejoined. Checked: $\kappa_\infty = \sqrt{(E+m)/(E-m)}$ is eq. 6 at $V \to \infty$; barrier eq. 22; $E = m\cos\lambda$ eq. 26; Sauter eq. 18; current eq. 19. |
| Exercises (`sec-dirac-equation-exercises`) | parthey2011hydrogen p. 1 (locator added); svanberg2022spectroscopy Sec. 2.5.1, eqs. 2.26, 2.29-2.30 (new), Sec. 9.7.2 (new); eides2001hydrogen Sec. II, eqs. 4-5 (new), Secs. IV-V (new); fan2023electron eq. 7 (new) | Parthey p. 1; Svanberg pp. 29-31, 428; Eides pp. 14-15, 20-24; Fan p. 4 | supported | Only `parthey2011hydrogen`, without locator. | Added: Zeeman/Paschen-Back (Svanberg Sec. 2.5.1), hydrogen-like ions (Eides eqs. 4-5), antihydrogen (Svanberg Sec. 9.7.2, Parthey p. 1), ledger (Eides Secs. IV-V, Fan eq. 7). |

Verified pairs (work, locator) already in the chapter: about 94 with a locator, all read, of which 84 supported, 4 with
a wrong subsection (Zhelnorovich 3.2.1 → 3.2.2, corrected), and 6 supported in part (Zhelnorovich Sec. 5.1 eqs.
5.12-5.13 and Sec. 5.11.2; Costella eq. 1 and Sec. III twice; Pal Sec. 5.3); plus 31 citations without a locator, all
located and given one. The intro paragraph's prose locators ("Chapters 3 and 5") were turned into bracket locators.
No adapted block was found without a citation.

Counts: before 14 works, 8 textbooks; after 14 works, 8 textbooks (minimum met; no work added). `check.py`: works 14,
textbooks 8, no locator 0, sections citing nothing 0.

**Bib additions:** none.

**Proposed new references:**

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|
| Silbar, R. R. and Goldman, T., "Solving the Radial Dirac Equations: A Numerical Odyssey", Eur. J. Phys. 32 (2011) 217-233, arXiv:1001.2514 [physics.comp-ph] (metadata from memory and an arXiv search hit; not yet read) | Physics; Quantum Mechanics, Atomic Physics | Publications | arXiv:1001.2514 | `sec-dirac-hydrogen` (radial equations $G, F$ with $\kappa$, Coulomb bound states), replacing or supplementing Zhelnorovich Sec. 5.11.2 at `eq-dq-radial` Fixed (owner, 2026-11-18): added to the library (CSP8GFX7, PDF 84PUEAV6, key `silbar2011radial`), read in full (arXiv v2, 40 pp.) and cited, see below. |

**Silbar and Goldman (owner, 2026-11-18).** `silbar2011radial` read with `pdftotext` (arXiv:1001.2514v2; the bib's
pages 217-233 are the EJP pages, so locators are sections and equations). Conversion: their $k = -\kappa$ (eq. 5:
$k = -(l + 1)$ for $j = l + \tfrac12$), their lower radial function $f = -F$, $\hbar = c = 1$, $V_v = V$, $V_s = S$. After
conversion their eqs. (3) and (7)-(8) are @eq-dq-radial (with $m \to m + S$), and eq. (12) is the chapter's normalisation;
eq. (45) is $E_{1S} = m\gamma$; Sec. III.D has the exact $2s_{1/2}$/$2p_{1/2}$ degeneracy with different radial functions;
Sec. III.E has the breakdown at $Z = 1/\alpha$. No disagreement. Citations added, fixed (owner, 2026-11-18):

- `prp-dq-radial-equations` (line 3201): [Sec. I, eqs. (3), (5), (7)-(8), (12)], with the conversion stated.
- `exm-dq-ground-state` (line 3230): [Sec. III.E, eq. (45)].
- `exm-dq-degeneracy` (line 3422): [Sec. III.D].
- `exm-dq-high-z` (line 3432): [Sec. III.E, eq. (45)].
- `exr-dq-scalar-potential` (line 3836): [Sec. I, eqs. (7)-(8)], with the conversion stated.

Source slips, not used by the chapter (text unchanged): eq. (4) prints $-\frac kr g$ where eq. (8) has the correct
$-\frac kr f$; eq. (41) gives $f(\epsilon) = -a_0\frac{Z\alpha}{2l + 3}\epsilon^{l+1}$, but the leading-order
substitution gives $2l + 2$ (and with the exact exponent $\gamma$, $F/G = Z\alpha/(1 + \gamma) = (1 - \gamma)/Z\alpha$,
the chapter's value); the "analytic" $2p_{3/2}$-$2p_{1/2}$ splitting 0.453 meV (Sec. III.D) is ten times the true
$m\alpha^4/32 = 4.5 \times 10^{-5}$ eV.

Counts after the owner's decisions: 15 works, 8 textbooks (`silbar2011radial` added); `check.py`: works 15, textbooks 8,
no locator 0, sections citing nothing 0.

**Disagreements:** none.

| Location | Text | Source (converted) | Page |
|---|---|---|---|

**Reading-note additions** (drafts in `scratchpad/notes6/dirac-equation__<ITEMKEY>.html`; every work already has a
note, so only the h2 section for this chapter):

- `zhelnorovich2019spinors` (BC78U3SC): Sec. 1.1 p. 12; Sec. 3.2.2 eqs. 3.57-3.60 pp. 135-138; Sec. 5.1 eqs. 5.1-5.13 pp. 227-230; Sec. 5.2 eqs. 5.17-5.19 pp. 232-233; Sec. 5.7 eqs. 5.79-5.81 pp. 253-254; Sec. 5.11.2 eq. 5.184 pp. 286-288.
- `das2023quantum` (Q3WIWUT2): Sec. 11.2 eqs. 11.5-11.17 pp. 217-221; Sec. 11.3 Problems 2-3 p. 222; Ch. 13 pp. 239-247 (Sec. 13.2 pp. 241-245, Sec. 13.4 Problem 1 p. 247).
- `svanberg2022spectroscopy` (3H87DSKB): Sec. 2.2 p. 16; Sec. 2.3.2 eqs. 2.12-2.16 and Table 2.1 pp. 20-21; Sec. 2.5.1 eqs. 2.23-2.30 pp. 29-31; Sec. 9.7.2 pp. 419-428 (Fig. 9.62 p. 427); Sec. 9.7.4 pp. 431-432.
- `eides2001hydrogen` (CMDDYMNB): Sec. II eqs. 4-6 pp. 14-15; Sec. IV pp. 20-21; Sec. V eqs. 28-32 pp. 22-23; Sec. VII eq. 35 pp. 25-26; Sec. XXXIX.D pp. 200-203 (Table XX); Sec. XXXIX.G p. 209.
- `costella1995foldy` (3E33S46D): Sec. II pp. 1-2; Sec. III eqs. 1-2 pp. 2-4; Secs. IV-V pp. 4-5.
- `pal2011majorana` (K2YIM9MK): Sec. 3 eqs. 3.16-3.26 pp. 4-8; Sec. 4 eqs. 4.1-4.11 pp. 9-12; Sec. 5 pp. 12-18 (5.3 eq. 5.25, 5.4); Sec. 7 eqs. 7.1-7.8 pp. 25-28.
- `calogeracos1999klein` (AVZHLA2N): Secs. I.A-I.E eqs. 1-19 pp. 3-8; Sec. II.A eqs. 20-24 pp. 8-9; Sec. II.B eq. 26 p. 10.
- `parthey2011hydrogen` (S2LWELPF): p. 1 (result, CPT and antihydrogen), p. 4.
- `fan2023electron` (U2VX4M3F): eqs. 1-3 p. 1; eqs. 6-7 p. 4.
- `aitchison2024gauge` (IFWHGW5R): Ch. 3 pp. 51-71; Ch. 4 pp. 72-95.
- `galitski2013exploring` (EKIZE3IG): Ch. 15, Sec. 15.2, Problems 15.20-15.37, pp. 838-866.
- `nastase2023quantum` (AD3G2WKT): Ch. 54 pp. 603-613.
- `pal2015introductory` (EVWVUL3H): Ch. 6 pp. 150-187; Ch. 7 pp. 188-200.
- `shankar2017quantum` (8Z8WE5U7): Ch. 9 pp. 143-156.
- `silbar2011radial` (CSP8GFX7, new, no note yet; full draft in `scratchpad/notes7/dirac-equation__CSP8GFX7.html`): Sec. I eqs. (1)-(5), (7)-(8), (12); Sec. III.D; Sec. III.E eq. (45).

### quantum-field-theory

Signature (+, −, −, −), ħ = c = 1, ⟨p|q⟩ = 2E_p(2π)³δ³, hats for operators, tildes for Fourier transforms. Williams uses
the same signature and normalisation; Bilal uses (−, +, +, +) with ε_{0123} = +1, ε^{0123} = −1 (the chapter's choice).
PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages. PDF offsets: Williams +22,
Alvarez-Gaumé 0, Boudreau +23, Buchbinder +11, Năstase (QM) +24, Paganini +21, Manohar +4, Grozin 0, Bilal +3, Gelis
+12 for Ch. 1 (the PDF's page order is irregular, so Gelis pages were read from the running heads). About 125 citation
occurrences and about 105 distinct (work, locator) pairs were checked; the 73 Williams pairs of Chs. 6 and 8 and the 57 of
Ch. 7 were read in two parallel passes.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Quantisation in outline (`sec-quantisation`) | derezinski2022mathematics Chs. 18-19; galitski2013exploring Ch. 10; talagrand2022what Ch. 3; williams2023introduction Ch. 6; alvarezgaume2005 eqs. 3.50-3.52, 3.53-3.58, 6.8, Secs. 7, 8.1 and 8.3 (8.3 added); buchbinder2021introduction Sec. 9.5 and Sec. 18.7.1 (new); manohar2018introduction Sec. 4.2 and Ch. 4 eq. 4.8 (new) | Derezinski TOC pp. 475-554; Galitski TOC pp. 447-484; Talagrand TOC pp. 73-101; Williams TOC pp. 365-502; Alvarez-Gaumé pp. 17-19, 58, 66-96; Buchbinder pp. 197-204, 447-449; Manohar pp. 18-22 | supported, except eq. 6.8 (sign, see Disagreements) and Sec. 8.1 (in part) | (1) `def-renormalisation` cites Sec. 8.1, which has the running charge but not the criterion "operators of dimension at most four". (2) `exm-nonrenormalisable-gravity` (the coupling dimension (4 − d)/2 and the non-renormalisability of gravity) cited nothing. | (1) Added Sec. 8.3 (pp. 94-96), Buchbinder Sec. 9.5 and Manohar Sec. 4.2. (2) Added Manohar eq. 4.8 and Buchbinder Sec. 18.7.1. |
| Canonical quantisation of the free scalar (`sec-canonical-quantisation`) | aitchison2024gauge Chs. 5-7; buchbinder2021introduction Ch. 5; derezinski2022mathematics Ch. 3; gelis2021problems Ch. 1, eqs. 1.1-1.7 (locator added); talagrand2022what Chs. 5-7, 10; nastase2023quantum Sec. 56.4 (new here); tornetta2022mathematical Secs. 4.3, 4.5 (new here) | Aitchison TOC pp. 96-182; Buchbinder TOC pp. 70-98; Derezinski TOC pp. 57-91; Gelis pp. 1-2; Talagrand TOC; Năstase p. 626; Tornetta TOC pp. 69-99 | supported (chapter-level reading); Derezinski Ch. 3 in part (Fock space is Sec. 3.4) | `gelis2021problems` had no locator. | Locator added; Năstase and Tornetta moved here from the path-integral section, where their locators did not fit. |
| Propagators and Green's functions (`sec-propagators`) | buchbinder2021introduction Chs. 6-7; paganini2023fundamentals Ch. 5, Sec. 6.3.2 and Supplement 6.2 (added) | Buchbinder TOC pp. 99-146; Paganini pp. 117-166, 190-196 | supported; Paganini Ch. 5 in part | Paganini Ch. 5 (wave equations) contains no propagator. | Added Sec. 6.3.2 and Supplement 6.2, where the propagators are. |
| Canonical quantisation of the Dirac field (`sec-qdm-dirac`) | williams2023introduction Secs. 4.6.5 (added), 6.3.4, 6.3.6, 6.3.7, 7.6.1, 8.1.5, Problem 6.8 and about 40 equations | Williams pp. 306, 428-456, 500, 570-572, 623-625 | supported (35); supported in part (6: lines 2108, 2512, 2785, 2807, 2842, Sec. 8.1.5 for ghosts) | eq. 6.3.223 split across a line break; the Majorana "no charge" is in Sec. 4.6.5, not 6.3.7. The in-part rows add the chapter's own argument (frame independence of the minus sign, the antiparticle residue −Σvv̄, the residue calculation) to a supported formula. | Split citation rejoined; Sec. 4.6.5 added. |
| Quantisation of the Maxwell field (`sec-qdm-maxwell`) | williams2023introduction Secs. 6.4.1, 6.4.2, 6.4.4 (added), 6.4.5, 6.5, 7.6.3, about 45 equations | Williams pp. 457-485, 571-572, 584 | supported (28); in part (4: lines 3212, 3601, 3614, 3650) | six citations split across a line break; the helicity remark, the missing inverse without gauge fixing and the ξ-independence were outside the cited equations. | Splits rejoined; added Sec. 6.4.2 (line 3212), Sec. 6.4.4 eqs. 6.4.91-6.4.97 (line 3601), the discussion after eq. 6.4.58 and Sec. 6.4.4 (line 3614), eqs. 7.6.49-7.6.50 (line 3639). |
| The path integral and Euclidean field theory (`sec-field-path-integral`) | derezinski2022mathematics Chs. 20-21; gelis2021problems Problems 18-25; nastase2023quantum Chs. 10 and 28 (corrected); shankar2017quantum Chs. 3-6; strocchi2021symmetry Ch. 20 eqs. 20.2-20.3, Sec. 22.1 (locator added); tornetta2022mathematical Sec. 4.10.6 (narrowed); boudreau2018applied Sec. 24.2, 24.2.1-24.2.3, eqs. 24.9-24.12, 24.20, 24.28, 24.34-24.35, Exercises 24.4-24.5 | Derezinski TOC pp. 555-640; Gelis TOC pp. 77-109; Năstase pp. 116-124, 311-324; Shankar TOC pp. 29-104; Strocchi pp. 134-135, 148-150; Tornetta p. 137; Boudreau pp. 845-857, 893 | supported; Tornetta in part (one paragraph) | (1) `nastase2023quantum` [Ch. 56] is "Fock space calculation with field operators", not path integrals: unsupported. (2) `tornetta2022mathematical` [Ch. 4] is algebraic QFT and Fock space; only Sec. 4.10.6 mentions the Euclidean route. (3) `strocchi2021symmetry` had no locator. (4) Two Boudreau citations split across a line break. | (1) Locator corrected to Chs. 10 and 28; Sec. 56.4 cited in the Fock-space section. (2) Narrowed to Sec. 4.10.6. (3) Ch. 20 eqs. 20.2-20.3 and Sec. 22.1 added. (4) Rejoined. Boudreau's free lattice mass gap 0.4949 (p. 854) is the chapter's number. |
| Perturbation theory and Feynman diagrams (`sec-feynman-diagrams`) | buchbinder2021introduction Ch. 8; talagrand2022what Chs. 11-14; williams2023introduction Ch. 7, Secs. 4.1.11 (added), 7.4.2, 7.4.3, eq. 7.4.1 | Buchbinder TOC pp. 147-170; Talagrand TOC pp. 299-472; Williams pp. 239-241, 503-599 | supported; Sec. 7.4.2 in part (the φ³ count 36 = (3!)² is the chapter's) | eq. 7.4.1 states only U_I = T exp; the iteration and 1/n! are in Sec. 4.1.11. | Added Sec. 4.1.11, eqs. 4.1.190-4.1.192 (lines 5720, 5836). |
| The S-matrix and cross sections (`sec-qdm-s-matrix`) | williams2023introduction Secs. 7.3-7.6, about 55 equation and problem locators | Williams pp. 510-598, solutions manual pp. 168-172, p. 728 | supported (37); in part (13); unsupported (1: line 6441) | (1) Line 6441 cited Sec. 7.6.3, which has no fermion-pair decay. (2) Five citations split across a line break. (3) Imprecise locators at lines 5767, 5779, 5807, 6073, 6094, 6138, 6494, 6777. | (1) Replaced by eqs. 7.3.74, 7.3.79, 7.6.15, 7.6.61 (the result g²Mβ³/8π is correct). (2) Rejoined. (3) Sharpened: Secs. 7.6.1-7.6.2 eqs. 7.6.3, 7.6.15; eqs. 7.6.17-7.6.22; eqs. 7.5.3, 7.5.19-7.5.35, 7.5.44; eqs. 7.5.46-7.5.47; eq. 7.3.95; eqs. 7.3.18-7.3.24; Sec. 7.3.1; eq. 7.6.44. |
| Renormalisation, effective actions and anomalies (`sec-renormalisation`) | alvarezgaume2005 Sec. 7.1 eqs. 7.11-7.28 and p. 80 (locator added), Sec. 7.2 eqs. 7.45-7.54, eqs. 8.15-8.17, Secs. 8.2, 8.3 (new); buchbinder2021introduction Secs. 9.2, 9.9, Exercise 9.5, Sec. 18.7.1 (new); gelis2021problems Problems 16, 23-24 (new); talagrand2022what Sec. 7.2 (new); manohar2018introduction Secs. 4, 4.1, 4.8, 5.1, 6.3 (new work); grozin2005lectures Secs. 3.7, 4.6, 8 (new work); bilal2008 Secs. 3.5, 3.7, 5.1, 7.2-7.3 (new work) | Alvarez-Gaumé pp. 66-96; Buchbinder pp. 172-178, 212-222, 447-449; Gelis pp. 64, 101-106; Talagrand Sec. 7.2; Manohar pp. 18-22, 28, 33, 52; Grozin pp. 23-27, 39-40, 92-95; Bilal pp. 7, 13-15, 28, 48-54 | supported | The only citation was `alvarezgaume2005` without a locator, at `def-chiral-anomaly`. | Located sources added at every statement and quoted result: regularisation, φ⁴ beta function 3λ²/16π² (Buchbinder Ex. 9.5, Gelis Problem 16), QED running (Alvarez-Gaumé eqs. 8.15-8.17, Grozin eqs. 3.89-3.91: dα/dlog μ = 2α²/3π), asymptotic freedom (Grozin eq. 4.45: −11N/3), EFT expansion (Manohar eq. 4.13), Fermi theory (Manohar eq. 4.47: G_F/√2 = g²/8M_W²), gravity EFT (Buchbinder Sec. 18.7.1), dimension-six operators (Manohar Sec. 6.3), chiral anomaly, π⁰ → γγ, index, gauge anomalies, two-dimensional spectral flow, Casimir energy of a circle. |
| Exercises (`sec-quantum-field-theory-exercises`) | gelis2021problems Ch. 5 pp. 276-279, Problem 51 p. 214, Problem 24 (new); nastase2023quantum Sec. 28.2 (new) | Gelis pp. 101-106, 214, 276-279; Năstase pp. 315-317 | supported (thermal correlator with n_B and KMS periodicity; zero-dimensional theory whose Feynman rules are all 1; torus partition function) | Section cited nothing. | Added at each of the three exercises. |

Converted results checked:

- **Chiral anomaly (`def-chiral-anomaly`, `exr-rn-e-dot-b`).** With F_{0i} = E_i, F_{ij} = −ε_{ijk}B_k and ε^{0123} = −1,
  ε^{μνρσ}F_{μν}F_{ρσ} = 4ε^{0ijk}F_{0i}F_{jk} = 4ε_{ijk}ε_{jkl}E_iB_l = 8 **E**·**B**, so (e²/16π²)εFF = (e²/2π²)**E**·**B**.
  The Sage code encodes ε^{0123} = −1 and reproduces 8 **E**·**B**. The magnitude agrees with Alvarez-Gaumé eq. 7.28 (p. 72)
  and Bilal eq. 3.30 (p. 14). Bilal's ε_{0123} = +1, ε^{0123} = −1 is the chapter's convention, and the product of the two
  lowered F is the same in both signatures. The chapter keeps the overall sign as ±, convention-dependent; Alvarez-Gaumé
  has −, Bilal + with J₅ = +iψ̄γγ₅tψ. Supported. The two-dimensional rate (e/π)E per unit length is Alvarez-Gaumé eq. 7.27
  with ε^{01}F_{01} doubled. Supported.
- **Gravity EFT (`exr-rn-gravity-eft`).** G_N = 6.709 × 10⁻³⁹ GeV⁻² gives M_Pl = (8πG_N)^{−1/2} = 2.435 × 10¹⁸ GeV, and
  E²/(8πM_Pl²) at 1 TeV = 6.7 × 10⁻³³, as stated. No library source quotes the reduced Planck mass. The physics
  (non-renormalisability, curvature-squared counterterms) is in Buchbinder Sec. 18.7.1 (pp. 447-449). Supported.
- **Tildes for Fourier transforms.** The Williams and Gelis equations checked are in position or momentum space with
  their own notation; no cited result depends on the hat/tilde choice.

Verified pairs (work, locator) already in the chapter: about 105.

- 83 supported.
- 19 supported in part, resolved above or adding only the chapter's own argument.
- 2 unsupported: Năstase Ch. 56 in the path-integral section, and Williams Sec. 7.6.3 at line 6441. Both were relocated.
- 1 disagreement: Alvarez-Gaumé eq. 6.8. Fixed (owner, 2026-11-18): the chapter keeps its sign and now says that the source writes the opposite ordering and that its own sign is the one consistent with Heisenberg's equation.
- 3 without a locator, all now located: Gelis, Strocchi, Alvarez-Gaumé at the chapter's anomaly definition.
- 14 Williams citations and 2 Boudreau citations were split across a line break. In each case the opening `[@key, eq.` was moved to the next line, so the whole citation now sits on one line.

Counts: before 14 works, 13 textbooks; after 17 works, 13 textbooks. The added works are manohar2018introduction,
grozin2005lectures and bilal2008, all lecture notes already in the bib. `check.py`: works 17, textbooks 13, no locator 0,
sections citing nothing 0.

Found while reading, outside the audit's scope (owner):

- Line 5755: "M is real at tree level only below the thresholds" is not in Williams and reads wrongly. Tree amplitudes are real away from poles, and Im M_ii begins at one loop above the thresholds. Fixed (owner, 2026-11-18): reworded to "tree-level amplitudes are real away from their poles, and Im M first appears at one loop, above the thresholds of the intermediate states" (`sec-qdm-s-matrix`, unitarity example, ~line 5757).
- Williams' solutions manual, Problem 7.8(a) (sol. p. 170), omits the u-channel that the chapter includes. The chapter is right; the printed problem (p. 598) states no answer.

**Bib additions:** none (all cited works are in the bib).

**Proposed new references:** none.

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|

**Disagreements:**

| Location | Text | Source (converted) | Page |
|---|---|---|---|
| `exm-quantisation-charges` (line 76) | δφ̂ = (i/ħ)[Q̂, φ̂] | Alvarez-Gaumé eq. 6.8: δφ = i[φ, Q], the opposite sign. With his own Noether charge (eqs. 6.5-6.6) and time translation δφ = −a⁰∂₀φ, Q = −a⁰H, eq. 6.8 gives +a⁰φ̇, so the chapter's sign is the one consistent with Heisenberg's equation. The sign depends on the convention for Q. Fixed (owner, 2026-11-18): sign kept; a clause added after the citation (lines 77-79, `exm-quantisation-charges`) records the source's ordering and why the chapter's sign is the Heisenberg-consistent one. | p. 58 |

**Reading-note additions** (drafts in `scratchpad/notes6/quantum-field-theory__<ITEMKEY>.html`; every work already
has a note, so each draft has only the h2 section for this chapter):

- `williams2023introduction` (Z7ZJZZWK): Ch. 6 pp. 365-502; Sec. 4.6.5 p. 306; Secs. 6.3.4, 6.3.6, 6.3.7 pp. 428-456; Problem 6.8 p. 500; Secs. 6.4.1-6.4.5 pp. 457-484; Sec. 6.5 pp. 484-485; Sec. 4.1.11 p. 241; Ch. 7 pp. 503-599 (Secs. 7.3, 7.4, 7.5.1, 7.6.1-7.6.6; Problems 7.7-7.8 p. 598); Sec. 8.1.5 pp. 623-625.
- `alvarezgaume2005` (JF6SI39M): eqs. 3.50-3.58 pp. 17-19; eq. 6.8 p. 58; Sec. 7.1 eqs. 7.6, 7.11-7.28 pp. 67-72; Sec. 7.2 eqs. 7.45-7.54 pp. 76-78; p. 80; Secs. 8.1-8.3 pp. 80-96 (eqs. 8.15-8.17 p. 84).
- `boudreau2018applied` (Q3K6KQG8): Sec. 24.2 pp. 845-849 (eqs. 24.9-24.12, 24.17-24.18); Sec. 24.2.1 pp. 849-852 (eqs. 24.20, 24.28); Sec. 24.2.2 pp. 853-855 (eqs. 24.31-24.35); Sec. 24.2.3 p. 856; Exercises 24.4-24.5 p. 893.
- `buchbinder2021introduction` (MSWD9GKH): Ch. 5 pp. 70-98; Chs. 6-7 pp. 99-146; Ch. 8 pp. 147-170; Sec. 9.2 pp. 172-178; Sec. 9.5 pp. 197-204; Sec. 9.9 and Exercise 9.5 pp. 212-222; Sec. 18.7.1 pp. 447-449.
- `derezinski2022mathematics` (QXAFEK2G): Ch. 3 pp. 57-91; Chs. 18-19 pp. 475-554; Chs. 20-21 pp. 555-640.
- `galitski2013exploring` (EKIZE3IG): Ch. 10 pp. 447-484.
- `gelis2021problems` (EAKFTAI3): Ch. 1 eqs. 1.1-1.7 pp. 1-2; Problem 16 p. 64; Problems 18-25 pp. 77-109; Problems 23-24 pp. 101-106; Problem 51 p. 214; Ch. 5 pp. 276-279.
- `nastase2023quantum` (AD3G2WKT): Ch. 10 pp. 116-124; Ch. 28 pp. 311-324 (Sec. 28.2 p. 315); Sec. 56.4 p. 626.
- `paganini2023fundamentals` (HPUQ4JH7): Ch. 5 pp. 117-166; Sec. 6.3.2 and Supplement 6.2 pp. 190-196.
- `shankar2017quantum` (8Z8WE5U7): Chs. 3-6 pp. 29-104.
- `strocchi2021symmetry` (K4BM68F5): Ch. 20 eqs. 20.2-20.3 pp. 134-135; Sec. 22.1 pp. 148-150.
- `talagrand2022what` (BTZ2R2W4): Ch. 3 pp. 73-101; Chs. 5-7 pp. 132-182 (Sec. 7.2); Ch. 10 pp. 250-298; Chs. 11-14 pp. 299-472.
- `tornetta2022mathematical` (VI3SLD4R): Secs. 4.3, 4.5 pp. 69-99; Sec. 4.10.6 p. 137.
- `aitchison2024gauge` (IFWHGW5R): Chs. 5-7 pp. 96-182.
- `manohar2018introduction` (5HE2WMXL): Ch. 4 eqs. 4.6-4.10 pp. 18-19; Sec. 4.1 eq. 4.13 p. 20; Sec. 4.2 pp. 20-22; Sec. 4.8 eq. 4.47 p. 28; Sec. 5.1 p. 33; Sec. 6.3 p. 52.
- `grozin2005lectures` (4L8BRTIU): Sec. 3.7 eqs. 3.89-3.91 pp. 26-27; Sec. 4.6 eq. 4.45 p. 40; Sec. 8 pp. 92-95.
- `bilal2008` (AHHZ9GH9): Sec. 2.4 p. 7; Sec. 3.5 eq. 3.30 pp. 13-14; Sec. 3.7 p. 15; Sec. 5.1 p. 28; Secs. 7.2-7.3 pp. 48-54.

### gauge-theories

Signature (+, −, −, −), $D = \partial + iqA$, anti-Hermitian $T_a$ with Hermitian $t_a = iT_a$. Source conventions met:
Năstase, Nath (−, +, +, +); Nath, Williams, Guidry, Alvarez-Gaumé Hermitian generators; Pal has the opposite sign of
every coupling; all converted before comparing. Printed pages; PDF offsets: Alvarez-Gaumé 0, Boudreau +23, Buchbinder
+11, Gelis +171 (Problems part), Guidry +34, Hamilton +14 (Chs. 4-5) and +13 (Ch. 8), Kivelson +21, Maggiore +17,
Năstase 2019 +20, Năstase 2023 +24, Nath +25, Paganini +21, Pal +29, Strocchi −6, Williams +22.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Gauge theories (`sec-gauge-theories`) | aitchison2024gauge Secs. 2.4-2.6; hamilton2017mathematical Chs. 5, 7; nastase2019classical Sec. 17.3 (new), Ch. 26 (new), Ch. 27; paganini2023fundamentals Sec. 8.2 (new), Ch. 12; pal2015introductory Ch. 11; strocchi2021symmetry App. D (new), Ch. 29; alvarezgaume2005 Sec. 4.3, eqs. 4.61 (new), 4.62, 4.68-4.69 (new), 4.70, 4.75, 4.79; maggiore2023electrodynamics Sec. 8.6.2, eqs. 8.75, 8.78; nath2017supersymmetry Sec. 3.1, eqs. 3.1-3.3, 3.11 (new), 3.150, 3.155, 6.119, 6.123, 6.125, 6.126, 6.137, Problems 3.2, 3.3, 3.6, 6.7, Secs. 6.1, 6.9, 6.9.1, 6.10 | Alvarez-Gaumé pp. 29-36; Maggiore pp. 194-196; Năstase pp. 161-162, 236-255; Paganini pp. 268-269, 432-433; Strocchi pp. 203, 249-250; Nath pp. 52-53, 69-70, 90, 106-112; Aitchison, Hamilton Ch. 7 and Pal Ch. 11 from the contents only | supported; 3 over-broad pointers; 1 disagreement | (1) In the "For more" line, Năstase Ch. 27 (monopole), Strocchi Ch. 29 (Higgs mechanism) and Paganini Ch. 12 (SM summary) do not cover this part. (2) Four Nath citations split across line breaks (eqs. 3.1-3.3; Problem 3.6; Secs. 6.1 and 6.9; eq. 6.137), counted as without a locator. (3) Adapted blocks without a citation. (4) Alvarez-Gaumé eq. 4.70 misattributed (see Disagreements). | (1) Covering locators added beside them (Năstase Sec. 17.3 and Ch. 26, Paganini Sec. 8.2, Strocchi App. D); the misfit chapter locators are kept for the owner; fixed (owner, 2026-11-18): removed. (2) Rejoined onto one line each. (3) Cited at the U(1) covariant derivative (Alvarez-Gaumé eqs. 4.68-4.69), the commutator exercise (Nath eq. 3.11) and the Dirac-quantisation exercise (Alvarez-Gaumé eq. 4.61, Năstase eqs. 27.52-27.54). (4) Owner. |
| Gauge fields as connections (`sec-gauge-connections`) | hamilton2017mathematical Chs. 4-5, Defs. 5.4.1, 5.6.1, 5.7.1, 5.11.1, 5.11.4, Thms. 5.4.2, 5.4.4, 5.6.3, 5.8.4, 5.10.5, Cor. 5.6.4, Remarks 5.4.3, 5.6.5, Example 4.7.16, Secs. 5.8, 5.10, 5.11, Prop. 5.11.2, 5.11.5, Lemma 5.11.3, Exercises 5.15.4, 5.15.5, 5.15.9; guidry2022symmetry Ch. 26, Secs. 26.1.3, 26.3, eqs. 26.6-26.10, Example 26.2, Problems 26.4-26.5; nath2017supersymmetry Problem 3.1, eqs. 3.147-3.149 (new) | Hamilton pp. 247-248, 270-273, 279-288, 296-302, 312-315; Guidry pp. 454-459, 462; Nath p. 69 | supported | The small-loop holonomy example had no source. | Added Nath Problem 3.1, eqs. 3.147-3.149. |
| The Aharonov-Bohm effect and the Dirac monopole (`sec-aharonov-bohm-monopole`) | nastase2019classical Ch. 27 (Secs. 27.1-27.5, eqs. 27.9-27.68), Exercises 27.2-27.4, Sec. 28.3, eqs. 28.31-28.33; guidry2022symmetry Ch. 27, Secs. 27.1.3-27.1.4, eqs. 27.8-27.9, Box 27.1, Problems 27.2-27.3, Secs. 27.2.4-27.2.5, 27.3, Table 27.1; hamilton2017mathematical Secs. 4.6-4.7, 5.6.1, Prop. 5.6.8, Remark 5.6.9, Example 4.7.16, Exercise 5.15.4 | Năstase pp. 244-255, 260-261; Guidry pp. 465-475, 477; Hamilton pp. 233-234, 247-248, 281-285, 312 | supported, including the converted Chern results | none | none |
| Topological solutions (`sec-topological-solutions`) | nastase2019classical Secs. 24.1-24.2, 25.1-25.4, 28.1-28.5, 29.1-29.4, 30.1, 30.3, eqs. 24.6-24.17, 25.5-25.50, 28.14-28.55, 29.4-29.50, 30.9-30.11, Exercises 25.1, 25.4, 28.1-28.4, 29.2, 29.5 (several new block citations); guidry2022symmetry Sec. 25.2.1, eq. 25.9, Problem 25.4, Examples 25.3-25.4, Secs. 25.3.2-25.3.4, eqs. 25.12-25.14, Fig. 25.5, Box 25.2; nastase2023quantum Sec. 40.4, eqs. 40.41-40.48; gelis2021problems Problems 48, 49, 50 (new); alvarezgaume2005 Sec. 4.4, eqs. 4.103-4.119 (new); williams2023introduction Sec. 2.7, eqs. 2.7.18-2.7.26, Problem 3.6 (new) | Năstase 2019 pp. 217-235, 256-266, 267-284; Guidry pp. 443-449; Năstase 2023 pp. 452-455; Gelis pp. 193-204; Alvarez-Gaumé pp. 40-43; Williams pp. 101-102, 203 | supported (4 in part, resolved) | (1) Năstase 2023 Sec. 40.4 cited for the θ band and the two-well instanton sum mentions them only. (2) Năstase 2019 Sec. 29.4 cited for the amplitude between θ vacua has tunnelling N → N+1 but no θ vacua. (3) Guidry Example 25.3 at `prp-tps-vortex-bound` gives the winding, not the bound (Năstase Secs. 25.1-25.3 in the same bracket does). (4) 25 adapted blocks had no citation. | (1)-(2) Added Gelis Problems 48 and 50 and Alvarez-Gaumé eqs. 4.109-4.111. (3) None needed. (4) Cited 18; the other 7 (`exm-tps-vx-windings`, `exm-tps-vx-holonomy`, `exr-tps-vx-winding`, `exm-tps-mp-size`, `exr-tps-mp-zero`, `exm-tps-th-rotor`, `exr-tps-th-rotor-path`) are the chapter's own constructions. |
| Symmetry breaking (`sec-symmetry-breaking`) | alvarezgaume2005 Sec. 6.2, eqs. 6.32-6.33 (corrected from 6.37), 6.38-6.39, 6.40-6.41, 6.42 (new), 6.43, 6.47-6.48; nath2017supersymmetry Sec. 4.2, eqs. 4.13-4.19, 4.18 (new), 4.20 and Problem 4.1 (new), 4.26-4.31, 4.33, Problem 4.2; hamilton2017mathematical Ch. 8, Def. 8.2.1, Prop. 8.2.2, Sec. 8.3.3 (new); hosotani2025introduction Secs. 2.1-2.6; paganini2023fundamentals Ch. 4, Chs. 9-11; pal2015introductory Ch. 15, Chs. 16-19; strocchi2021symmetry Chs. 1-2, 7-9 | Alvarez-Gaumé pp. 60-66; Nath pp. 73-78; Hamilton pp. 446-470 (459, 468-469 read); Hosotani, Paganini, Pal, Strocchi chapter pointers from the contents | supported; 1 wrong locator; 1 partial; 1 disagreement | (1) Split citations (Nath eqs. 4.26-4.31, Alvarez-Gaumé eqs. 6.47-6.48). (2) Nath remark on the mostly-plus signature had no locator. (3) Alvarez-Gaumé eq. 6.37 does not define the unbroken subgroup. (4) Alvarez-Gaumé Sec. 6.2 has the abelian model but no SU(2) doublet. (5) Uncited adapted blocks: pions, O(5) Goldstone count, SU(2) W masses. (6) eq. 6.43 misattributed. | (1) Rejoined. (2) Locator eq. 4.18 added. (3) Changed to eqs. 6.32-6.33. (4) Added Hamilton Def. 8.2.1, Prop. 8.2.2, Sec. 8.3.3. (5) Added Alvarez-Gaumé eq. 6.42, Nath eq. 4.20 and Problem 4.1, Hamilton Sec. 8.3.3. (6) Owner. |
| Quantisation of gauge fields (`sec-gauge-quantisation`) | williams2023introduction Secs. 6.3.2, 6.4.4, 6.5.5, 7.6.2, 9.1.1 (new), 9.1.2-9.2.5, eqs. 6.3.17-6.3.32, 6.4.83-6.4.106, 6.5.77-6.5.82, 9.1.1-9.1.10, 9.2.4-9.2.56, Problem 9.4; buchbinder2021introduction Sec. 7.4.1, eqs. 7.70-7.84, Secs. 10.3.1-10.4.1, eqs. 10.29-10.44, 10.180, Exercises 10.3, 10.6; gelis2021problems Ch. 3, eqs. 3.12-3.22, Problem 40; strocchi2021symmetry App. E, eqs. E.2-E.6; pal2015introductory Sec. 15.4.2, eqs. 15.55-15.62 (new) | Williams pp. 421-422, 468-476, 497-498, 572, 693-711, Problem 9.4 solution (PDF pp. 1001-1003); Buchbinder pp. 128-133, 228-236, 253, 266; Gelis pp. 130-135, 162; Strocchi pp. 257-260; Pal pp. 455-456 | supported; 3 partial | (1) Williams in the conventions paragraph had no locator. (2) Haar normalisation is eq. 9.2.55, not 9.2.56. (3) The $R_\xi$ abelian Higgs example only partly in Williams Sec. 6.5.5 and Strocchi App. E. (4) Williams eq. 9.2.20 with Sec. 9.2.4 has the diagrams but not the symmetry factors; Strocchi eq. E.6 has $Q_B\Psi = 0$, the reduction to Gupta-Bleuler is the chapter's own. | (1) Added Sec. 9.1.1, eqs. 9.1.1, 9.1.6, 9.1.10. (2) Extended to eqs. 9.2.55-9.2.56. (3) Added Pal Sec. 15.4.2, eqs. 15.55-15.62; the ghost-Higgs coupling remains the chapter's own computation. (4) Left as is. |
| Lattice gauge theory (`sec-lattice-gauge`) | boudreau2018applied Secs. 24.3-24.5 (all subsections), eqs. 24.37-24.75, Figs. 24.5-24.7, 24.10, Exercises 24.2, 24.3, 24.6-24.8, 24.10, 24.11, 24.14-24.17, 24.19 (six narrative locators new); williams2023introduction Secs. 5.2 (new), 9.1.2, 9.2.5, eqs. 9.1.17, 9.1.19, 9.2.55, 9.2.57-9.2.68; guidry2022symmetry Secs. 26.5, 26.5.2, eqs. 26.9-26.10, Example 26.4, Fig. 26.6, Problems 26.4-26.5; kivelson2024statistical Sec. 10.5; nastase2019classical Chs. 24, 28 | Boudreau pp. 857-903; Williams pp. 324-326, 696-697, 708-713; Guidry pp. 458-462 and solutions p. 181; Kivelson pp. 5, 240-242; Năstase pp. 217-226, 256-266 | supported; 3 unsupported (1 resolved); 4 partial | (1) Six narrative Boudreau citations without a bracketed locator. (2) Năstase Chs. 24, 28 in the "For more" line do not treat lattice gauge theory. (3) Williams Sec. 9.2.5 for the chiral condensate: unsupported. (4) Williams Sec. 9.2.5 for the strong-coupling area law: unsupported, but Boudreau eqs. 24.74-24.75 on the same line support it. (5) Partial: Boudreau Sec. 24.4 has compactness but no monopole number; Sec. 24.5.2 and Exercise 24.2 have the 4D U(1) transition but no monopoles; Williams Sec. 9.1.2 has Wilson loops but not the static potential (Boudreau eq. 24.62 does); Kivelson Sec. 10.5 has the genus-dependent degeneracy, not the four $\mathbb{Z}_2$ torus states. (6) The Lüscher term $\pi/12$ cites nothing. | (1) Locators added. (2) Owner (misplaced pointer); fixed (owner, 2026-11-18): line removed. (3) Extended to Williams Secs. 5.2 and 9.2.5 (pp. 325-326: condensate, pseudo-Goldstones). (4)-(6) Left; the section stays covered by Boudreau. (4) fixed (owner, 2026-11-18): Williams Sec. 9.2.5 removed from the area-law line. Also added Williams Sec. 5.2 (flux-tube breaking) at string breaking. |
| The Standard Model (`sec-standard-model`) | nath2017supersymmetry Ch. 5, Sec. 5.3, Problems 5.1-5.5, eqs. 1.7, 1.15, 1.40-1.42, 1.51, 5.1-5.65, 6.136-6.139, 9.27, 9.30-9.33, Table 6.1; pal2015introductory Secs. 12.1, 16.1-16.5, 17.1-17.3, 18.1, 18.4.4-18.4.5, 19.2, 19.5-19.6, eqs. 12.3-12.4, 16.1-16.56, 17.1-17.24, 18.142-18.148, 19.32, 19.38-19.39, 19.53-19.56, Exercises 16.1-16.3, 16.5, 16.8, 17.1, 18.17; paganini2023fundamentals Secs. 8.2, 8.4, 9.3.4, 9.5.5, 11.5, 11.5.4, 11.5.5, eqs. 8.20, 8.103-8.104, 9.24-9.26, 9.78-9.81, 9.85, 11.59, Table 8.3, Problems 9.2, 9.7 | Nath pp. 1-4, 8-11, 79-89, 107-111, 188-190; Pal pp. 318-320, 459-477, 482-488, 523, 554-557, 565-568, 573-576, 583; Paganini pp. 260, 267-283, 300-304, 344-347, 368-372, 406-415 | supported (3 in part); 2 wrong locators corrected | (1) Three citations without a locator (Nath ×2, Pal). (2) Nath "Ch. 1, after eq. 1.7" for SU(5) and charge quantisation: these are eqs. 1.40-1.42, pp. 9-10. (3) Nath "after eq. 1.51" (×2): eq. 1.51 is $\sin^2\theta_W = 3/8$; the $\bar{\mathbf 5} \oplus \mathbf{10}$ content is eq. 1.42 and the hypercharge matrix eq. 9.27. (4) Partial: Paganini Table 8.3 has the quark but not the lepton masses; Pal Sec. 16.2 has the group, not the Lagrangian (Nath eqs. 5.1-5.3 do); Pal Sec. 16.5 only the massless neutrino (Paganini Sec. 11.5.5 has the rest). | (1) Added Nath eqs. 5.5 and 5.9, Pal Sec. 18.4.4, eqs. 18.142-18.146, and "@nath2017supersymmetry [Problem 5.1]". (2) Changed to "Ch. 1, eqs. 1.40-1.42 and the text after them". (3) Changed to "eqs. 1.40, 1.42 and 9.27" and "Ch. 1, after eq. 1.42". (4) Lepton masses left without a source (owner may add PDG). |
| Exercises (`sec-gauge-theories-exercises`) | pal2015introductory Secs. 19.5-19.6; Sec. 15.4, eqs. 15.49-15.54, 15.63-15.64, eqs. 18.143-18.146, 19.32, 19.38, 19.57 (new); nastase2019classical Secs. 28.1-28.2, eqs. 28.1-28.5, 28.13-28.16 (new) | Pal pp. 454-458, 555-556, 566-567, 573-576; Năstase pp. 256-258 | supported | 12 integrative exercises, only one citation. | Added Pal Sec. 15.4 (`exr-gth-int-abelian-higgs-full`), Năstase Secs. 28.1-28.2 (`exr-gth-int-georgi-glashow`), Pal eqs. 18.143-18.146, 19.32, 19.38 (`exr-smd-int-one-generation`), Pal eq. 19.57 (`exr-smd-int-electroweak-fit`). The rest (`exr-gth-int-plane-wave`, `-embedded-coulomb`, `-group-commutator`, `-su3-adjoint`, the three `exr-lgt-int-*`, `exr-smd-int-parameters`) are the chapter's own combinations. |

Verified (work, locator) pairs already in the chapter: about 430 (89 + 59 + 84 + 76 + ~121 by part). Verdicts: about
407 supported, 15 supported in part (resolved by added citations or covered by another work in the same bracket), 6
over-broad or unsupported pointers (3 on the opening "For more" line, Năstase Chs. 24, 28 in the lattice "For more"
line, Williams Sec. 9.2.5 twice), 4 wrong locators corrected (Alvarez-Gaumé eq. 6.37 → 6.32-6.33, Williams eq. 9.2.56 →
9.2.55-9.2.56, Nath "after eq. 1.7" → eqs. 1.40-1.42, Nath "after eq. 1.51" ×2), 2 disagreements. Aitchison Secs.
2.4-2.6, Pal Ch. 11, Hosotani Secs. 2.1-2.6 and the Paganini, Pal and Strocchi chapter pointers were judged from the
contents pages only.

Converted results verified:

- **Dirac monopole, Chern convention (supported).** Năstase eq. 27.44 (p. 250) defines $c_1 = \int F/2\pi$ with $D = d -
  iqA$ (eq. 27.50) in (−, +, +, +); as 1-forms his $A$ is minus the chapter's, so his $d - iqA$ is the chapter's $d +
  iqA$. Eqs. 27.52-27.54 (p. 251) give $qg/2\pi = N$, the chapter's $c_1 = +n$ for $qg = 2\pi n$. Hamilton Prop. 5.6.8
  and Remark 5.6.9 (pp. 284-285) give $c_1 = [(i/2\pi)F]$ and $c_1(\text{Hopf}) = -1$ (signs read from the rendered
  pages, as the text layer drops minus signs), so the charge −1 monopole is the Hopf bundle and the minimal monopole
  ($c_1 = +1$) its conjugate. Example 4.7.16 (p. 248) supports "$n$ units = $n$-th tensor power of the dual of the Hopf
  line bundle".
- **Abelian θ term, $+8\mathbf E\cdot\mathbf B$ (supported).** Williams uses $\epsilon^{0123} = +1$, $F^{0i} = -E^i$;
  eq. 2.7.26 (p. 102), $\tilde F_{\mu\nu}F^{\mu\nu} = -4\mathbf E\cdot\mathbf B$, gives $\epsilon FF = -8\mathbf
  E\cdot\mathbf B$, which flips to $+8\mathbf E\cdot\mathbf B$ with the chapter's $\epsilon^{0123} = -1$. Problem 3.6
  (p. 203) agrees with the divergence of $4\epsilon A\partial A$ after the same flip. Now cited at `exr-tps-th-abelian`.
- **Generators (supported).** Williams $\partial - igA^at_a$ and Nath $\partial - igA$ with Hermitian generators equal
  the chapter's $\partial + gA^aT_a$ with $T_a = -it_a$; Nath's mass matrix $g^2(v, T^aT^bv)$ (eq. 4.33) equals the
  chapter's anti-Hermitian form; Williams's ghost vertex, Casimirs (9.2.14) and Slavnov-Taylor relations (9.2.17) match.
- **Other normalisations (supported):** BPST action $8\pi^2/g^2$ and density (Năstase eqs. 29.46-29.47); winding
  $1/24\pi^2$ (Gelis Problem 49, Alvarez-Gaumé eq. 4.103); the 't Hooft tensor coefficient $-1/g$ (checked
  numerically); $m_W = gv/\sqrt2$, $G_F/\sqrt2 = 1/4v^2$, $v = 174.1$ GeV (Nath eqs. 5.29, 5.44, Pal eqs. 16.16, 16.49);
  $b_0$, anomaly sums, hypercharges, $W$/$Z$ widths, CKM and Jarlskog values; Boudreau's $\beta'$ = 2 × the chapter's
  $\beta$ for $\mathbb Z_2$ and $U(1)$. The Hamiltonian density in the chapter is written $\mathscr H$; no cited
  passage depends on the symbol.

Counts: before 17 works, 16 textbooks; after 17 works, 16 textbooks (no new works; the chapter was already above the A10
minimum). `check.py`: works 17, textbooks 16, no locator 0, sections citing nothing 0.

Convention notes, not disagreements:

- Năstase's adjoint covariant derivative is $\partial - g\epsilon A\varphi$, so the chapter's hedgehog is his eq. 28.22
  with the sign flipped (the text says so). Năstase is internally inconsistent in eqs. 28.26 vs 28.22, 28.27 ($-1/g$) vs
  Exercise 28.1 ($+1/g$), and eq. 29.26 (mixes Hermitian and anti-Hermitian $A$); the chapter follows the consistent
  choice. His vortex potential is $(\lambda/2)(|\varphi|^2 - \varphi_0^2)^2$, hence "whose λ is our λ/2".
- Gelis gives $|\theta| \leq 10^{-10}$; the chapter's $10^{-9}$ follows Guidry, Alvarez-Gaumé and Williams.
- Boudreau source slips that the chapter already handles correctly: Exercise 24.3 prints $\sigma = \log\tanh\beta$ (the
  correct value is $-\log\tanh(\beta'/2)$, p. 893); eq. 24.69 normalises the SU(2) measure to $\tfrac12$ (p. 879); Sec.
  24.4.1's claim that discretising $A$ breaks gauge invariance fails for the abelian Gaussian action (p. 868). Not
  flagged in the chapter but handled correctly: Exercise 24.17 swaps the labels of its two $\beta_G = 0$ checks (pp.
  900-901); "σ(6) = 0.21076(7)" is at β' = 6, not β = 1.
- Strocchi writes $-\partial B\cdot A + \tfrac12\xi B^2$ with factors of $i$ on $s$; equal to the chapter's form up to
  integration by parts. Williams's links transport in the opposite orientation, $\beta = 2n/g_0^2$.

Found while reading, outside the audit's scope (owner): about 290 example and exercise blocks have no citation of their
own; almost all are the chapter's own derivations, Sage checks or numerical cases under cited sections, and only those
that plainly follow a source were cited. The lepton masses quoted beside Paganini Table 8.3 (~line 13975) have no
source.

**Bib additions:** none (all cited works are in the bib).

**Proposed new references:** none.

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|

**Disagreements:**

| Location | Text | Source (converted) | Page |
|---|---|---|---|
| `def-gauge-field-u1`, parenthetical | "@alvarezgaume2005 [eq. 4.70] writes $A_\mu \to A_\mu + \tfrac1e\partial_\mu\alpha$ with the opposite sign of the charge" | The transformation is eq. 4.71 (4.70 is the QED Lagrangian): $\psi \to e^{-ie\epsilon}\psi$, $A \to A + \partial\epsilon$ with $D = \partial + ieA$ (eq. 4.69). With $\alpha = -e\epsilon$ this is $\psi \to e^{ie\alpha}\psi$, $A \to A - \tfrac1e\partial\alpha$, the chapter's own convention; no opposite charge sign. Fixed (owner, 2026-11-18): the parenthetical now cites eq. 4.71 and states his transformation with $D = \partial + ieA$, which is the chapter's convention with $\epsilon = -\alpha$ (lines 193-195). | p. 35 |
| `exm-vacuum-mexican-hat` | "the form $V = -m^2\lvert\phi\rvert^2 + \lambda'\lvert\phi\rvert^4$ of @alvarezgaume2005 [eq. 6.43] is this one with $\mu^2 = m^2/2\lambda'$" | Eq. 6.43 writes $V = \tfrac\lambda4(\bar\Phi\Phi - \mu^2)^2$, the chapter's own form (`eq-mexican-hat`), not the polynomial form. Physics agrees; the attribution does not. Fixed (owner, 2026-11-18): @eq-mexican-hat is now attributed to eq. 6.43, and the polynomial form is given as the same potential with $\mu^2 = m^2/2\lambda'$, without attribution (lines 5492-5494). | p. 64 |

Also for the owner (not disagreements, citations kept): the "For more on this topic" pointers to Năstase Ch. 27,
Strocchi Ch. 29, Paganini Ch. 12 under `sec-gauge-theories`, and to Năstase Chs. 24, 28 under `sec-lattice-gauge`, do not
cover those parts; Williams Sec. 9.2.5 at the strong-coupling area law does not support it (Boudreau in the same line
does). Fixed (owner, 2026-11-18): the opening "For more" line (line 28) now reads Năstase [Sec. 17.3, Ch. 26], Paganini
[Sec. 8.2], Strocchi [App. D] (Năstase Ch. 27, Paganini Ch. 12, Strocchi Ch. 29 removed); the lattice "For more" line
(Năstase Chs. 24, 28) is removed, since no part of those chapters treats lattice gauge theory; Williams Sec. 9.2.5 is
removed from the area-law citation (~line 12233), which keeps Boudreau eqs. 24.74-24.75.

**Reading-note additions** (drafts in `scratchpad/notes6/gauge-theories__<ITEMKEY>.html`; every work already has a
note, so only the h2 section for this chapter):

- `aitchison2024gauge` (IFWHGW5R): Secs. 2.4-2.6 pp. 39-47 (gauge principle).
- `alvarezgaume2005` (JF6SI39M): Sec. 4.3 pp. 29-36 (eqs. 4.61, 4.62, 4.68-4.71, 4.75, 4.79); Sec. 4.4 pp. 40-43 (eqs. 4.101-4.119, θ vacua); Sec. 6.2 pp. 60-66 (eqs. 6.32-6.33, 6.38-6.43, 6.47-6.48).
- `boudreau2018applied` (Q3K6KQG8): Secs. 24.3-24.5 pp. 857-886 (eqs. 24.37-24.75, Figs. 24.5-24.7, 24.10); Exercises 24.2, 24.3, 24.6-24.8, 24.10, 24.11, 24.14-24.17, 24.19 pp. 893-903.
- `buchbinder2021introduction` (MSWD9GKH): Sec. 7.4.1 pp. 128-133; Secs. 10.3.1-10.4.1 pp. 228-236; eq. 10.180 p. 253; Exercises 10.3, 10.6 p. 266.
- `gelis2021problems` (EAKFTAI3): Ch. 3 eqs. 3.12-3.22 pp. 130-135; Problem 40 p. 162; Problems 48-50 pp. 193-204.
- `guidry2022symmetry` (B7NKMAZQ): Ch. 25 pp. 443-449; Ch. 26 pp. 454-462 (Secs. 26.1.3, 26.3, 26.5, Examples 26.2, 26.4, Problems 26.4-26.5); Ch. 27 pp. 465-477.
- `hamilton2017mathematical` (4HSGM5RX): Sec. 4.6 pp. 233-234; Example 4.7.16 pp. 247-248; Secs. 5.4-5.11 pp. 270-302; Exercises 5.15.4, 5.15.5, 5.15.9 pp. 312-313; Ch. 8 pp. 446-475 (Def. 8.2.1, Prop. 8.2.2 p. 459; Sec. 8.3.3 pp. 468-469).
- `hosotani2025introduction` (P78HDA56): Secs. 2.1-2.6 pp. 7-20.
- `kivelson2024statistical` (V3RH7AYV): Sec. 10.5 pp. 240-242; p. 5 n. 4.
- `maggiore2023electrodynamics` (JGIWV45B): Sec. 8.6.2 pp. 194-196 (eqs. 8.75, 8.78).
- `nastase2019classical` (5AXU4FWL): Sec. 17.3 pp. 161-162; Chs. 24-25 pp. 217-235; Ch. 26 pp. 236-243; Ch. 27 pp. 244-255; Ch. 28 pp. 256-266; Ch. 29 pp. 267-277; Ch. 30 pp. 278-284.
- `nastase2023quantum` (AD3G2WKT): Sec. 40.4 pp. 452-455 (eqs. 40.38-40.50).
- `nath2017supersymmetry` (XIGCZLVD): Ch. 1 pp. 2-11 (eqs. 1.7, 1.15, 1.40-1.42, 1.51); Sec. 3.1 and Problems 3.1-3.6 pp. 52-53, 69-70; Ch. 4 pp. 74-78; Ch. 5 pp. 79-89; Secs. 6.1, 6.9-6.10 pp. 90, 107-112; eqs. 9.27, 9.30-9.33 pp. 189-190.
- `paganini2023fundamentals` (HPUQ4JH7): Ch. 8 pp. 260-304; Secs. 9.3.4, 9.5.5 and Problems 9.2, 9.7 pp. 344-372; Sec. 11.5 pp. 406-415; Chs. 4, 9-12 (pointers).
- `pal2015introductory` (EVWVUL3H): Ch. 11 (contents); Sec. 12.1 pp. 318-320; Sec. 15.4 pp. 454-458; Ch. 16 pp. 459-477; Secs. 17.1-17.3 pp. 482-488; Secs. 18.1, 18.4.4-18.4.5 pp. 523, 555-557; Secs. 19.2, 19.5-19.6 pp. 565-576.
- `strocchi2021symmetry` (K4BM68F5): Chs. 1-2, 7-9 (pointers); App. D pp. 249-250; App. E pp. 257-260; Ch. 29 p. 203.
- `williams2023introduction` (Z7ZJZZWK): Sec. 2.7 pp. 101-102; Problem 3.6 p. 203; Sec. 5.2 pp. 324-326; Secs. 6.3.2, 6.4.4, 6.5.5, 7.6.2 pp. 421-572; Secs. 9.1.1-9.2.5 pp. 693-713; Problem 9.4 solution (PDF pp. 1001-1003).

### renormalisation

Task 6.10. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages. Offsets (PDF −
printed): Grozin 0, Manohar 4, Nath 25, Boudreau 23, Bauerschmidt 11, Bricmont 9 (Ch. 9), Buchbinder 11, Aitchison 15,
Balduf about 14 (Ch. 3); Gelis Ch. 5 prints two pages per PDF page (pp. 277-279 = PDF 155-157). Papers: Dienes,
Ponton, Kompaniets, Vassilevich, ADD, Fan, Sartore read by their own page numbers.

**Conversions checked (2026-11-18 notation round).**
- *tr(t_a t_b) = T(R)δ_ab for Hermitian t_a = iT_a* (`prp-ren-beta-functions`): Nath eq. 9.36 writes tr(T^a T^b) = T(R)δ^ab
  with T^a the (Hermitian) matrix generators of the physics convention, i.e. the site's t_a; T = ½ (fundamental), N
  (adjoint) and eq. 9.35 (−11/3 C₂ + 2/3 ΣT(F) + 1/3 ΣT(S), chiral fermions, complex scalars) agree. Supported. Grozin
  eq. 4.45 (β₀ = 11/3 C_A − 4/3 T_F n_f) agrees with b₀ = 11 − 2n_f/3 for SU(3). Remark: Nath eq. 9.38 prints
  μ dα_i/dμ = −(1/2π) b_i α_i², a sign inconsistent with his own eq. 9.35 and b_i = (41/10, −19/6, −7); the chapter's
  μ dα_i/dμ = b_i α_i²/2π is the consistent form.
- *G_N and reduced M_Pl* (`exm-ren-sc-gravity`, `exr-ren-sc-add`): ADD Sec. 1 uses M_Pl ~ G_N^{−1/2} (non-reduced) and
  M_Pl² ~ M^{2+n}R^n (eq. 3). The chapter's G_N^{−1} ~ M_D^{2+δ}r^δ and G_N^{−1/2} = √(8π) M_Pl = 1.2 × 10¹⁹ GeV
  (reduced M_Pl = 2.4 × 10¹⁸ GeV) agree. Supported. Remark: for δ = 1 the chapter's r ≈ 3 × 10¹³ m differs from ADD's
  eq. 4 (R ~ 10¹³ cm) by a normalisation factor; both say "solar-system size, excluded", and the chapter states that
  the relation holds up to factors of 2π. For δ = 2, 2 mm against ADD's 100 μm-1 mm.
- *Kaluza-Klein radius r*: Dienes's radius R (μ₀ = 1/R, eq. 2.12 α = R^{−δ}α̃ with their volume normalisation) is the
  site's r; the chapter's g₄² = g₅²/2πr, X_δ, b_i, b̃_i and eq. 3.13 (rewritten with α^{−1}(μ₀)) agree. Supported.
  Ponton's circle has modes πn/L (φ = 1), so ℓ = 2L; −3ζ(5)/(64π²L⁴) = −3ζ(5)/(4π²ℓ⁴), antiperiodic −15/16, fermion −4,
  vector 3, graviton 5: supported. Three conversion slips in the text (not source disagreements; owner to fix):
  (1) `exm-ren-sc-five` writes Λ_s = 24π³/(2πR g₄²) with R for r; (2) the lead of "The Kaluza-Klein tower in loops"
  says the number of light levels "grows like ER" (should be Er); (3) `exr-ren-kk-exact` and `exm-ren-thr-tower` use r
  for Dienes's cutoff normalisation r = πX_δ^{−2/δ} (Dienes eq. A.15) while r is the radius, so "With unit radius ...
  r = πX₁^{−2} = π/4" reads as a contradiction; a different symbol for Dienes's factor would remove the clash.
- Grozin d = 4 − 2ε → d = 4 − ε (his 1/ε = our 2/ε): Z_A = 1 − 2α/3πε, Z_α = 1 + 2α/3πε, Z_ψ = 1 − aα/2πε,
  Z_Γ = 1 + aα/2πε, Z_m = 1 − 3α/2πε, μ dα/dμ = 2α²/3π, μ dm/dμ = −3α/2π m, γ_ψ without the ½: all agree.
  Grozin's D = ∂ − ie₀A against the chapter's ∂ + ie₀A is stated in the text. Kompaniets ε = (4 − d)/2 conversions agree.
  Manohar eqs. 7.3-7.5: β_mom = (e³/12π²)·6∫x²(1−x)²μ²/(m² + x(1−x)μ²) and e³μ²/60π²m² agree.

**Remarks (not disagreements).**
1. Boudreau Sec. 24.6 supports the doublers (16 in four dimensions), Wilson's term and the breaking of chiral symmetry,
   but does not mention the Nielsen-Ninomiya theorem (`exm-ren-lattice-doublers`). The theorem is unsupported by the
   cited source. Fixed (owner, 2026-11-18): the citation now follows "The Wilson term breaks chiral symmetry" (line 872),
   and the Nielsen-Ninomiya clause after it is left uncited.
2. Balduf Thm. 58 at `prp-ren-scheme-independence` supports the invariance of the first coefficient and of the highest
   pole only. The invariance of the second coefficient in mass-independent schemes, and of the slope and anomalous
   dimensions at a fixed point, are not in Thm. 58 (they are derived in the proof and `exr-ren-sd-b3`). No library
   source found (semantic search on "first two coefficients of the beta function scheme independent").
3. Grozin Sec. 6.4 gives α ≈ 1/137; the chapter's 1/137.036 is the precise value (CODATA, also Fan eq. 7 context).
4. Bauerschmidt Sec. 1.6.2 supports mean-field behaviour for d > 4 but not the φ⁶ count y = 6 − 2d at
   `exm-ren-fp-gaussian`; Def. 5.2.1 (monomials of degree > 4 irrelevant) was added to the locator.
5. The three works at the `sec-wilsonian-rg` lead (Boudreau Sec. 8.4, Bauerschmidt Sec. 1.1, Bricmont Sec. 9.9)
   support coarse graining, universality and critical exponents, but none states that the four-dimensional quartic
   theory is "trivial".
6. Balduf Example 105 prints the series as Σ(−1)ⁿC_{n−1}αⁿ, whose first term contradicts its own closed form
   (√(1 + 4α) − 1)/2 = α − α² + ...; the chapter's (−1)^{n+1} is the correct sign.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Regularisation (`sec-regularisation`) | balduf2024dyson [Sec. 2.3.3]; grozin2005lectures [Sec. 2; Sec. 3.7; eqs. 3.26-3.28]; vassilevich2003heat [Sec. 1; eq. 1.12 (split); eqs. 1.18-1.20, 2.28-2.29; eq. 2.32; eqs. 1.21, 2.26-2.27, 4.26-4.27]; boudreau2018applied [Sec. 24.2; eqs. 24.5-24.7 (split); Sec. 24.6; Exercise 24.1]; bauerschmidt2019renormalisation [eq. 1.5.25; Sec. 1.5.3; Exercises 1.5.4, 1.5.5]; added buchbinder2021introduction [Secs. 9.2.1-9.2.2; Sec. 13.4] | Balduf pp. 140-146; Grozin pp. 3-10, 16, 23-26; Vassilevich pp. 5-8, 14-16, 40; Boudreau pp. 845-847, 886-889, 893; Bauerschmidt pp. 21-22; Buchbinder pp. 172-175, 342 | Supported, except Nielsen-Ninomiya at Sec. 24.6 (remark 1) | Cutoffs and Pauli-Villars subsection cited nothing; 2 split citations | Added Buchbinder Secs. 9.2.1-9.2.2 to the subsection and Sec. 13.4 to the heat-kernel lead; re-flowed the two split citations |
| Power counting and renormalisability (`sec-power-counting`) | balduf2024dyson [Secs. 2.3.1 and 2.3.4 (split); Def. 43 and eq. 2.45; Example 70 (was "his Example 70", no locator); Thm. 30; Def. 100]; manohar2018introduction [Sec. 4.2 (split); Exercise 4.2]; dienes1998grand [eqs. 2.11, 2.12]; buchbinder2021introduction [Ch. 9]; talagrand2022what [Ch. 15-19] | Balduf pp. 135-152, 165; Manohar pp. 20-24; Dienes p. 10; Buchbinder TOC Ch. 9; Talagrand TOC Chs. 15-19 | Supported (Dienes after R → r) | 2 citations without locator | Re-flowed; Example 70 locator |
| Renormalised perturbation theory (`sec-renormalised-perturbation`) | balduf2024dyson [Sec. 2.3.4; Sec. 2.3; Thms. 57, 58; eq. 3.41]; grozin2005lectures [Sec. 3; Sec. 2.2]; aitchison2024gauge [Ch. 10-11]; kompaniets2017minimally [eqs. 16 and 18, Tables III and IV; Table IV (added at line "quoted from the six-loop computation")] | Balduf pp. 240-242, 210; Grozin pp. 7-10; Aitchison TOC pp. 247-291; Kompaniets pp. 6-8 | Supported, with remark 2 on Thm. 58 | 1 citation without locator | Kompaniets Table IV added |
| Renormalisation schemes (`sec-renormalisation-schemes`) | grozin2005lectures [Secs. 3 and 6 (split); eqs. 3.8-3.9; Sec. 6.4; eq. 6.40; eq. 6.31; eq. 3.107]; balduf2024dyson [Secs. 2.2.4 and 4.1 (split); Def. 93 (split); Thms. 56, 58; Thm. 58 items 1-2]; kompaniets2017minimally [eq. 7] | Grozin pp. 11, 29, 72-73; Balduf pp. 146, 239-242; Kompaniets p. 4 | Supported; remark 2 (prp-ren-scheme-independence), remark 3 | 2 split citations | Re-flowed |
| BPHZ and forests (`sec-bphz`) | balduf2024dyson [Secs. 2.2 and 2.3.4; Thm. 34 (split); Secs. 2.1.3-2.1.5 and 2.2.3-2.2.4; Example 80; Def. 86; Defs. 90-91; Example 73; Example 81 (split); Example 76; eq. 2.39; Lemma 39; Thm. 46]; kompaniets2017minimally [Table I]; added talagrand2022what [Ch. 16 and 19] | Balduf pp. 91-146 (TOC), statements of Defs. 86, 90-91, Examples 73, 76, 80, eq. 2.39 on pp. 124-131, Thm. 34 p. 150; Kompaniets p. 6; Talagrand TOC Chs. 16, 19 | Supported | One textbook only; 2 split citations | Added Talagrand Ch. 16 and 19 (BPHZ, forest formula, convergence); re-flowed |
| Ward identities and QED at one loop (`sec-qed-one-loop`) | grozin2005lectures [Sec. 3; eq. 3.2 (added); eq. 3.7; Secs. 3.3 and 3.7, eqs. 3.73-3.77; eqs. 3.18, 3.20, 3.64, 3.84; Sec. 3.2; eqs. 3.22-3.35; eqs. 3.42, 3.64, 3.88, 3.104-3.107 and Sec. 6.5; Sec. 3.8; eqs. 3.61, 3.68; eqs. 6.37-6.38]; balduf2024dyson [Example 106]; fan2023electron [eqs. 6, 7]; gelis2021problems [Ch. 1, Problems 8-9] (locator added); added aitchison2024gauge [Ch. 11; Sec. 11.5.1] | Grozin pp. 10-29, 72-78; Balduf p. 196; Fan p. 4; Gelis pp. 34-38; Aitchison pp. 270-291, 278-279 | Supported (Grozin eq. 3.7 lists ψ, A, a, e; m₀ = Z_m m is eq. 3.96 and μ^ε is eq. 3.9) | Gelis without locator; Uehling example (adapted) had no source; 1 split | Gelis locator; Aitchison Sec. 11.5.1 at `exm-ren-vp-uehling` (−4α²/15m² δ³(r), level shift); Aitchison Ch. 11 at the section line |
| The renormalisation group (`sec-renormalisation-group`) | balduf2024dyson [Sec. 3.2; Thm. 41; Thm. 46 and Sec. 3.2.4; Example 106]; grozin2005lectures [Secs. 3.5-3.7; eq. 3.68; eq. 4.45 (split); Sec. 4; Sec. 4.6; eq. 4.47]; kompaniets2017minimally [eq. 8; Table IV]; nath2017supersymmetry [eqs. 9.35-9.37 (split); eqs. 9.39-9.40 and 9.87-9.89 (split); eq. 9.33; Sec. 9.3]; manohar2018introduction [eqs. 7.3-7.5; eq. 7.5]; dienes1998grand [eqs. 3.5-3.6]; sartore2021pyrate [Secs. 3.2-3.4] (added); buchbinder2021introduction [Sec. 9.9 and Ch. 13-15] (Sec. 9.9 added); kivelson2024statistical [Ch. 10]; shankar2017quantum [Ch. 11-14] | Balduf pp. 186-191, 196; Grozin pp. 19-22, 30-41; Kompaniets pp. 4, 8; Nath pp. 189-191, 198; Manohar pp. 58-60; Dienes pp. 12-13; Sartore pp. 1-21; TOCs of Buchbinder, Kivelson, Shankar | Supported; conversions above | PyR@TE without locator; 2 split; Buchbinder Ch. 13-15 is curved space only | Locators added; Buchbinder Sec. 9.9 (RG equations, flat space) added |
| Dyson-Schwinger equations (`sec-dyson-schwinger`) | balduf2024dyson [Secs. 1.3.11, 2.2.5, 3.3 and 4.2; Thms. 16-18; Examples 35-38; Examples 103 and 105 (split); Def. 103; Thms. 46, 47 and 58; Thm. 58 item 4; eq. 3.33 and Thm. 51; eq. 3.41; Example 106; Thm. 42] | Balduf pp. 67-73 (DSE statements), 184, 191, 196-200, 204, 210 | Supported (remark 6 on Example 105's printed sign) | 1 split | Re-flowed |
| The Wilsonian renormalisation group (`sec-wilsonian-rg`) | boudreau2018applied [Sec. 8.4 (split); eqs. 8.54-8.55; Exercises 8.13-8.15; Sec. 8.4.1; eqs. 8.51-8.53; eqs. 8.56-8.59 (split)]; bauerschmidt2019renormalisation [Sec. 1.1; Sec. 1.6.2 and Def. 5.2.1 (extended); eqs. 1.6.10-1.6.11 (split); Sec. 1.7; Ch. 2, 5 and 6 (added); eq. 6.1.1; Prop. 6.1.3 (split); Cor. 2.1.11, eq. 2.1.21 and Sec. 5.1 (split); Prop. 2.1.6; Def. 2.1.8; Thm. 1.6.1; eq. 1.7.2; Exercise 6.1.1]; bricmont2022statistical [Sec. 9.9; Exercise 9.7]; kompaniets2017minimally [eqs. 6-9; eqs. 40-41, 43, 45; eqs. 8-10; eqs. 16, 18 and Table IV (split); Sec. VI.B, eq. 42 (was Sec. VII); Sec. VII]; kivelson2024statistical [Ch. 8 and 10] (was Ch. 8) | Boudreau pp. 258-267, 270-272; Bauerschmidt pp. 3-28, 32-35, 74-91; Bricmont pp. 303-309; Kompaniets pp. 4, 8, 25-26; Kivelson TOC Chs. 8, 10 | Supported, with remarks 4-5. **Kompaniets Sec. VII unsupported** for ν = 0.6292(5), η = 0.0362(6) (these are Sec. VI.B, eq. 42). Kivelson Ch. 8 (Gaussian and large-N) only partly on target | 6 split; 1 without locator; 1 wrong locator | Re-flowed; locators corrected/extended as listed |
| Effective field theories (`sec-effective-field-theories`) | manohar2018introduction [Secs. 3-5 and 7; Sec. 4.3; Sec. 7.2, eq. 7.9; eqs. 7.10-7.12; eq. 7.12 (split); eqs. 4.18, 4.23, 4.24; Exercises 7.1-7.2; eqs. 4.15-4.17 and Sec. 5.3; eqs. 4.19-4.21; Sec. 4.2; Sec. 5.2; eq. 5.15; Exercise 5.2; Secs. 7.1-7.2; eqs. 7.3-7.8]; nath2017supersymmetry [Sec. 7.1; eqs. 7.10-7.19; eq. 7.29]; grozin2005lectures [Sec. 7.5]; balduf2024dyson [Sec. 3.2.4] | Manohar pp. 11-45, 58-61; Nath pp. 123-125; Grozin pp. 90-91 | Supported | 1 split | Re-flowed |
| Renormalisation in higher dimensions (`sec-renormalisation-higher-dimensions`) | dienes1998grand [Secs. 2-3 and Appendix A (split); Sec. 2.2; eq. 3.13; Sec. 2.2 (added at "phrased, as by"); eqs. 3.8-3.13 and A.9-A.15 (split); eq. A.13; eqs. 3.10 and A.15; Sec. 3; eqs. 3.3-3.4 and 3.9; eqs. 3.14-3.16; eq. 3.10 and Appendix B; eqs. A.13-A.15; eq. 3.4; Appendix A]; ponton2001casimir [Secs. 2.2-2.4; eq. 18; eqs. 10-12 and 18; eqs. 9-11; eqs. 12-13; Sec. 2.2; Sec. 2.4]; arkanihamed1998 [Sec. 1]; nath2017supersymmetry [eqs. 9.87-9.91 (split); eq. 9.92; eq. 9.33] | Dienes pp. 10-18, 55-58; Ponton pp. 6-12; ADD pp. 1-4; Nath pp. 190, 198 | Supported after conversion (G_N, M_Pl, r); three text slips in r (see conversions) | 3 split, 1 without locator | Re-flowed; Dienes Sec. 2.2 added |
| Exercises (`sec-renormalisation-theory-exercises`) | added ponton2001casimir [eqs. 9-11], gelis2021problems [Ch. 5, pp. 277-279], balduf2024dyson [Thm. 58], grozin2005lectures [eq. 6.40], manohar2018introduction [Secs. 7.1-7.2] | Ponton pp. 9-10; Gelis pp. 277-279 (thermal circle, Matsubara, KMS); Balduf p. 241; Grozin p. 73; Manohar pp. 58-61 | Supported | Section cited nothing | Added one sentence after the section lead naming the sources of the four integrative exercises |

The chapter introduction (before `sec-regularisation`) named its eleven sources with parenthetical chapters or none
("@balduf2024dyson (Chapters 1 to 4)", "@grozin2005lectures for quantum electrodynamics"). The parentheticals were turned
into bracket locators and locators were added to the papers ([Secs. 2-7], [Secs. 3-5 and 7], [Secs. 1-2 and 4],
[Secs. IV-VII], [Sec. 3 and Appendix A], [Secs. 2.2-2.4]); the paragraph was re-flowed, its wording otherwise unchanged.

**Counts.** Before: 20 works, 11 textbooks; 46 citations without a locator. After: 20 works, 11 textbooks (no new work;
the minimum of A10 was already met); `check.py`: no locator 0, sections citing nothing 0.

**Citations verified.** About 185 distinct (work, locator) pairs (160 counted by the parser plus about 25 that were
split across lines). Verdicts: supported, except (a) Kompaniets "Sec. VII" for the 3D Ising resummation (wrong locator,
corrected to Sec. VI.B, eq. 42); (b) Boudreau Sec. 24.6 for the Nielsen-Ninomiya theorem (unsupported part, text not
changed; fixed (owner, 2026-11-18): citation moved to the chiral-symmetry clause, theorem uncited); (c) Balduf Thm. 58 at `prp-ren-scheme-independence` (partial: first coefficient and highest pole only);
(d) Kivelson Ch. 8 at the `sec-wilsonian-rg` line (partly off-target; Ch. 10 added). None not machine-readable.
Balduf items of the BPHZ and Dyson-Schwinger parts (Thms. 16-18, Examples 35-38, Defs. 86, 90-91, Lemma 39, Thms. 46,
47, 51) were located and their statements checked against the chapter's paraphrase, not re-derived. Added: 17 new
citation occurrences (Buchbinder 3, Talagrand 1, Aitchison 2, Gelis 2, Ponton, Balduf, Grozin, Manohar at the exercises,
Sartore and Kompaniets locators, Bauerschmidt Def. 5.2.1 and Ch. 2, 5 and 6), all read and supported.

#### Bib additions

None.

#### Proposed new references

None. Gap left open: no library source states the scheme independence of the two-loop beta coefficient and of the
fixed-point slope (remark 2); the proposition's proof in the chapter covers it.

#### Disagreements

None after conversion. The three r-notation slips (`exm-ren-sc-five`, the lead of "The Kaluza-Klein tower in loops",
`exr-ren-kk-exact`/`exm-ren-thr-tower`) are internal inconsistencies of the text, listed above for the owner.

#### Reading-note additions

Drafts are in `scratchpad/notes6/renormalisation__<ITEMKEY>.html` (h2 section only; all 20 works already have a note).

- aitchison2024gauge (IFWHGW5R): Ch. 10-11, pp. 247-291; Sec. 11.5.1, eqs. 11.38-11.43, pp. 278-279.
- arkanihamed1998 (8LPWYUHN): Sec. 1, eqs. 1-4, pp. 2-3.
- balduf2024dyson (57ET2IS2): Ch. 1-4; Sec. 1.3.11, Thms. 16-18, Examples 35-38; Secs. 2.1.3-2.1.5, 2.2-2.2.5, Defs. 86,
  90-91, eq. 2.39, Examples 73, 76, 80, 81; Secs. 2.3-2.3.4, Def. 43, eq. 2.45, Thms. 30, 34, Defs. 93, 100, Example 70;
  Sec. 3.2, Lemma 39, Thms. 41, 42, 46, 47, Sec. 3.2.4; Sec. 3.3, Def. 103, Examples 103, 105, 106, eqs. 3.33, 3.41,
  Thm. 51; Secs. 4.1-4.2, Thms. 56-58.
- bauerschmidt2019renormalisation (KTL4MV3H): Sec. 1.1; Sec. 1.5.3, eq. 1.5.25, Exercises 1.5.4-1.5.5, pp. 21-22;
  Sec. 1.6.2, eqs. 1.6.10-1.6.11, Thm. 1.6.1, pp. 25-26; Sec. 1.7, eq. 1.7.2, p. 28; Prop. 2.1.6, Def. 2.1.8,
  Cor. 2.1.11, eq. 2.1.21; Sec. 5.1, Def. 5.2.1, Lemma 5.3.4; Sec. 6.1, eq. 6.1.1, Exercise 6.1.1, Prop. 6.1.3, pp. 89-91.
- boudreau2018applied (Q3K6KQG8): Ch. 8, 20, 24; Secs. 8.4-8.4.1, eqs. 8.51-8.59, pp. 258-263; Ch. 8 Exercises 13-15,
  pp. 270-272; Sec. 24.2, eqs. 24.5-24.7, pp. 845-846; Sec. 24.6, pp. 886-889; Exercise 24.1, p. 893.
- bricmont2022statistical (KAGHBX2W): Sec. 9.9, pp. 303-308; Exercise 9.7, p. 309.
- buchbinder2021introduction (MSWD9GKH): Secs. 9.2.1-9.2.2, pp. 173-175; Ch. 9; Sec. 9.9; Ch. 13-15; Sec. 13.4.
- dienes1998grand (SRPWHFIC): Secs. 2.1-2.2, eqs. 2.11-2.12, pp. 10-12; Sec. 3, eqs. 3.3-3.16, pp. 12-18; Appendix A,
  eqs. A.9-A.15, pp. 55-58; Appendix B.
- fan2023electron (U2VX4M3F): eqs. 6-7, p. 4.
- gelis2021problems (EAKFTAI3): Ch. 1, Problems 8-9, from p. 34; Ch. 5, pp. 277-279.
- grozin2005lectures (4L8BRTIU): Secs. 2-7; Sec. 3, eqs. 3.2-3.107, pp. 10-29; Sec. 4, eqs. 4.45, 4.47, pp. 30-41;
  Secs. 6.4-6.5, eqs. 6.31, 6.37-6.40, pp. 72-78; Sec. 7.5.
- kivelson2024statistical (V3RH7AYV): Ch. 8, pp. 184-204; Ch. 10, pp. 217-243.
- kompaniets2017minimally (XY68MUR9): Secs. IV-VII; eqs. 6-10, 16, 18, Tables I, III, IV; Sec. VI.B-D, eqs. 40-45, p. 25;
  Sec. VII, Table XII, p. 26.
- manohar2018introduction (5HE2WMXL): Secs. 3-5, 7; Secs. 4.2-4.3, eqs. 4.15-4.24, Exercise 4.2, pp. 20-27;
  Secs. 5.2-5.3, eq. 5.15, Exercise 5.2, pp. 35-36; Secs. 7.1-7.2, eqs. 7.1-7.12, Exercises 7.1-7.2, pp. 58-61.
- nath2017supersymmetry (XIGCZLVD): Ch. 7, 9; Sec. 7.1, eqs. 7.10-7.19, 7.29, pp. 123-125; Sec. 9.2, eqs. 9.33-9.40,
  pp. 190-191; Sec. 9.3, eqs. 9.87-9.92, p. 198.
- ponton2001casimir (P8Y52JQH): Secs. 2.2-2.4, eqs. 9-13, 18, pp. 6-12.
- sartore2021pyrate (JXKXET4C): Secs. 3.2-3.4, pp. 7-21.
- shankar2017quantum (8Z8WE5U7): Ch. 11-14, pp. 183-284.
- talagrand2022what (BTZ2R2W4): Ch. 15-19; Ch. 16 (Secs. 16.5-16.6), Ch. 19.
- vassilevich2003heat (QLTSJVB9): Sec. 1, eqs. 1.12-1.21, pp. 5-8; Sec. 2.2, eqs. 2.21-2.33, pp. 14-16; Sec. 4.1,
  eqs. 4.26-4.27, p. 40.

### general-relativity

Task 6.11. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`. Pages are printed pages. Offsets (PDF −
printed): Carroll 7, Blennow 10, Plebański-Krasiński 19, Emam 19, Gray 12, Boskoff 23, Buchbinder 11, Krasnov 19,
Năstase 20.

Chapter conventions: signature (+, −, −, −), ε_{0123} = +1, κ² = 8πG_N, S_EH = −(1/2κ²)∫√−g (R + 2Λ). Blennow and
Plebański-Krasiński use (+, −, −, −). Carroll, Emam, Gray and Krasnov use (−, +, +, +) and were converted by η → −η.

**Conversion checks (A6).**
- **Action and normalisation:**
  - Carroll writes S = S_H/8πG + S_M, with S_H = ∫√−g R (eq. 4.68, p. 116) and T_μν = −(1/√−g) δS_M/δg^μν (eq. 4.70).
  - After R → −R and g^μν → −g^μν, his gravitational term is twice the chapter's, and his T_μν is half the chapter's
    2/√−g δS_M/δg^μν, as the chapter says. **Supported.**
  - Krasnov (eq. 2.10, p. 79) has the conventional (1/16πG)∫√−g(R − 2Λ) in mostly plus. It converts exactly to the
    chapter's −(1/2κ²)∫√−g(R + 2Λ). **Supported.**
- **Cosmological constant:**
  - Carroll eq. 8.29 (G_μν = 8πGT_μν − Λg_μν, p. 222) and Krasnov eq. 2.13 both give G_μν + Λg_μν in mostly plus. This is
    the chapter's G_μν − Λg_μν = κ²T_μν with the same Λ.
  - Plebański-Krasiński use R_ij − ½η_ij R + Λη_ij in (+, −, −, −) (eq. 14.31, p. 167), so their Λ is minus the chapter's.
    Their eq. 14.41 (+Λr²/3) is the chapter's −Λr²/3, as the chapter says. **Supported.**
- **Newtonian limit:** Carroll h_00 = −2Φ (eq. 4.20, p. 106) becomes the chapter's h_tt = +2Φ. κ = 8πG (eqs. 4.46-4.52).
  **Supported.**
- **`exr-gr-eh-dimension`:**
  - The numbers recompute: G_N^{−1/2} = 1.221 × 10¹⁹ GeV and (8πG_N)^{−1/2} = 2.435 × 10¹⁸ GeV. [G_N] = −2, and [G_n] = 2 − n.
  - Buchbinder (Sec. 11.8, eq. 11.90, p. 290) gives the unreduced M_P = G^{−1/2} ≈ 10¹⁹ GeV with G = 1/M_P². The
    chapter's reduced M_Pl differs from it by the stated factor √(8π). **Supported after conversion.** Citation added.
- **`exm-grf-em-duality`:**
  - With F_0i = E_i, F_ij = −ε_ijk B_k and ε_0123 = +1, F̃_μν = ½√−g ε_μνρσ F^ρσ gives F̃_0i = −B_i and F̃_ij = −ε_ijk E_k.
    The dual therefore has the fields (−B, E), as stated.
  - F cos δ − F̃ sin δ then gives (E cos δ + B sin δ, −E sin δ + B cos δ), as stated.
  - Plebański-Krasiński (eqs. 13.12-13.14, p. 157) write F cos δ + *F sin δ, with F^{0I} = E^I and ε_{1…n} = +1
    (eq. 3.23, p. 20). Their (13.12) contracts the lower ε with the upper F to give *F^{μν}. Read literally with
    ε_0123 = +1, this is *F^{μν} = −F̃^{μν} in the chapter's notation, so their rotation is the chapter's F cos δ − F̃ sin δ.
  - Under any other reading the two differ only by δ → −δ. The family of rotations and the invariance of T_μν
    (13.11, Exercise 13.7.2) agree. **Supported.**
- **Linearised gravity:**
  - Plebański-Krasiński h̄ = −(κ/2π)∫T/|r − r′| (eq. 12.136, p. 150) and −(2π/κ)h̄_IJ = d̈_IJ/2r (eq. 12.151, p. 153), with
    κ = 8πG. These give the chapter's h̄_ij = −(2G_N/r)Ï_ij. **Supported.**
  - Carroll (eq. 6.85, p. 158) has +(2G/3R)q̈_ij with q_ij = 3I_ij, so +(2G/r)Ï_ij in mostly plus. This is the sign flip
    the solution of `exr-grf-q-coefficient` attributes to Carroll's signature. **Supported**, and the locator was added.
  - Blennow eq. 2.138 (p. 73) has +(2/r)Ï with □h̄ = 16πT and +4 (eqs. 2.136-2.137), as the chapter says. **Supported.**
  - Gray's tidal equation (B.30, p. 140) is d²ξ/dt² = +½ḧξ in mostly plus, as the chapter says. **Supported.**
- **Comparisons with mostly-plus sources:** each one names its source:
  - Carroll at lines 33, 340, 660-666, 967, 1226, 1437, 2128, 4794 and 5817;
  - Gray at 5381 and 5449;
  - the new Krasnov citation, which states its signature;
  - Emam's eq. 8.165 (mostly plus, SI) appears only as a source of the metric form, with no sign-dependent claim.
- `pathria2022statistical` (the renamed `StatisticalMechanics2022`) is not cited in this chapter. None of the
  Kaluza-Klein results changed by the 2026-11-18 conversion appears here.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| The Einstein-Hilbert action (`sec-einstein-hilbert`) | carroll1997 [no locator → Ch. 4; section 2.9 → Ch. 2, pp. 50-51; eqs. 4.19-4.21; no locator → eq. 4.55; eqs. 4.54-4.55 and 4.73; no locator → p. 116 (eq. 4.68); eqs. 4.59-4.60; eqs. 4.61, 4.62-4.65]; emam2021covariant [Ch. 5-7]; gray2019student [Ch. 1, Ch. 4]; needham2021visual [Ch. 30]; blennow2022relativity [Problems 2.113, 2.115, 2.125, 2.126]; added: buchbinder2021introduction [Sec. 11.8, eq. 11.90] | Carroll pp. 50-51, 99-118; Emam, Gray, Needham TOCs; Blennow pp. 68-71 and solutions pp. 324-326; Buchbinder pp. 289-290 | Supported, except **Carroll "section 2.9", unsupported as located**: the notes have no numbered sections. The counting argument is in Ch. 2, pp. 50-51. Blennow 2.126 gives a ratio of about 3000 against the chapter's 3459; it is the same estimate with rounder numbers. | Four Carroll citations had no locator or a wrong one; one was split across lines (eqs. 4.19-4.21; eqs. 4.59-4.60). The Planck-mass exercise had no source. | Locators added or corrected; the split citations rejoined. Buchbinder added at `exr-gr-eh-dimension`. |
| The Einstein equations (`sec-einstein-equations`) | nastase2019classical [Ch. 40 → Ch. 39-40]; carroll1997 [eq. 4.70; eqs. 4.46-4.52 (twice); eqs. 4.56-4.67; eq. 8.29 and p. 125 → p. 118; p. 235 → p. 228]; plebanski2024introduction [Sec. 12.19, Exercises 1-2]; blennow2022relativity [Problems 2.79, 2.83, 2.86, 2.112, 2.133, 2.139, 2.140]; added: krasnov2020formulations [Sec. 2.1, eqs. 2.10-2.13] | Năstase TOC pp. 367-388; Carroll pp. 111-118, 222, 228; Plebański pp. 154-155; Blennow pp. 58-60, 68, 72-74; Krasnov pp. 78-80 | Supported. Năstase Ch. 40 alone was **supported in part**: it covers perturbative gravity, while the section's action and field equations are Ch. 39. Carroll "p. 125" and "p. 235" were PDF pages (printed pp. 118 and 228). | Krasnov was only a `nocite` entry. Three Carroll citations were split across lines. | Ch. 39 added to the Năstase locator. Carroll pages changed to printed pages. `nocite` removed, and Krasnov cited at `def-cosmological-constant`. Split citations rejoined. |
| Black holes and cosmology (`sec-schwarzschild-flrw`) | boskoff2024journey [Ch. 9-10 → Ch. 10; Sec. 10.5.3]; buchbinder2021introduction [Ch. 12 → Sec. 11.7]; godinho2014introduction [Ch. 6]; carroll1997 [ch. 7; ch. 8]; emam2021covariant [Sec. 6.1.3; eqs. 6.35-6.40; Exercise 6.10; eqs. 8.163, 8.165, 8.166; Exercise 8.23; Sec. 8.6]; plebanski2024introduction [Secs. 12.16.1, 13.2-13.5, 13.7 Exercises 1-3, 14.2-14.4, 14.6, 14.15, 14.16, 14.17 Exercises 7, 13, 14, 17.17 Exercises 1-2, 21.7; eqs. 13.6, 13.10, 13.16, 14.22-14.23, 14.26-14.28, 14.32-14.41, 14.72, 14.83, 14.180; no locator → eq. 14.41]; blennow2022relativity [Problems 2.63, 2.65-2.67, 2.69, 2.72, 2.75-2.77, 2.91, 2.93, 2.94, 2.96, 2.99, 2.100, 2.107-2.108, 2.110, 2.121 (and solution), 2.123, 2.127, 2.128, 2.137, 2.143, 2.144, 2.146-2.148] | Boskoff TOC and pp. 291-293; Buchbinder TOC and pp. 284-289; Godinho TOC; Carroll pp. 173-174, 222-228; Emam pp. 219-222, 320-322; Plebański pp. 145, 156-161, 165-176, 197-210, 287, 465-467; Blennow pp. 55-76 and solutions pp. 321-327 | Mostly supported. **(1)** Boskoff Ch. 9 is special relativity, and **Buchbinder Ch. 12 is classical fields in curved spacetime: both unsupported as located.** The black holes and cosmology are in Boskoff Ch. 10 and Buchbinder Sec. 11.7. **(2)** Supported in part: Boskoff Sec. 10.5.3 at `exm-grf-sh-radial` (coordinate speed of light, not the time integral); Emam Exercise 6.10 (Killing vectors, not the plane of the orbit). **(3)** Adapted blocks, cited: Blennow 2.65 (Blennow's x∂_t − t∂_x is not a Killing field of dt² − dx²; the chapter uses the boost x∂_t + t∂_x); 2.137 (Blennow 1+1, the chapter 3+1 with k = −1); 2.127 (Blennow drops the Earth's potential). The note that Blennow's printed solution of 2.128 drops the square root is confirmed (eqs. 3.1917-3.1920, p. 327). Plebański Sec. 12.16.1 is titled Brans-Dicke, but p. 145 gives the Shapiro-delay bound 2.3 × 10⁻⁵. | Two "for more" locators were wrong. Two citations were split (Carroll ch. 7; Plebański Sec. 17.17, Exercise 2). Plebański was named in the text without a locator at `exm-grf-em-units`. | Boskoff → Ch. 10; Buchbinder → Sec. 11.7. Split citations rejoined. Plebański eq. 14.41 added. |
| Gravitational waves (`sec-grf-gravitational-waves`) | plebanski2024introduction [Sec. 12.18; eqs. 12.123-12.136, 12.125, 12.143-12.144, 12.151, 12.155-12.158; Sec. 12.19, Exercise 7]; blennow2022relativity [Problems 2.112, 2.132-2.136, 2.135(a)-(c), 2.135(d); eq. 2.138]; gray2019student [App. B.3, B.3.2, B.3.3, Fig. B.1; **no locator** at `exr-grf-q-coefficient`]; boskoff2024journey [Sec. 10.14]; carroll1997 [no locator → eqs. 6.83-6.85] | Plebański pp. 148-155; Blennow pp. 72-73 and solutions pp. 330-337; Gray pp. 136-142; Boskoff pp. 362-364; Carroll p. 158 | Supported, with the conversion checks above. Blennow 2.135(d) does use a factor 2 (eq. 3.1984, p. 336), as the chapter says. Supported in part: Gray B.3.3 at `exm-grf-q-chirp` (only the Hulse-Taylor decay, p. 141); Gray B.3.2 at `exm-grf-lin-plane-wave` (the residual-gauge count is Blennow 2.132, in the same bracket); Blennow 2.136 at `exm-grf-q-gw150914` (Blennow gives h ≈ 10⁻²¹ at 200 Hz and 400 Mpc; the chirp-mass estimate is the chapter's). **Gray at `exr-grf-q-coefficient`, unsupported:** Gray App. B has no quadrupole formula. See Disagreements. | Carroll had no locator. The Gray citation cannot take a locator. | Carroll eqs. 6.83-6.85 added. The Gray attribution is left for the owner. |
| Exercises (`sec-general-relativity-exercises`) | none before; added: carroll1997 [eqs. 7.40-7.48]; blennow2022relativity [Problems 2.83-2.84; Problem 2.150]; carroll1997 [p. 228] | Carroll pp. 173-174, 228; Blennow pp. 59, 76 | Supported. The chapter's ½(V − 1) = −m/r + L²/2r² − mL²/r³ is Carroll's eq. 7.48 with ε = 1. Blennow 2.84 is de Sitter as a hyperboloid compared with an RW metric, and 2.150 is a homogeneous scalar as a perfect fluid with its w. | **The section cited nothing.** | One citation per exercise. |

**Counts.** Before: 11 works, 10 textbooks (Carroll's notes are an article). After: 11 works, 10 textbooks. A10 was already
met, and no work was added. Krasnov is now cited with a locator instead of through `nocite`. `check.py`: works 11,
textbooks 10, no locator 1 (the Gray attribution at `exr-grf-q-coefficient`), sections citing nothing 0. Before, it
reported 14 citations without a locator and 1 section citing nothing.

**Citations verified.** About 105 distinct (work, locator) pairs, plus the 14 citations without a locator:
- 58 Blennow problems, read against the problem statements and, where a detail mattered, against the solutions
  (2.121, 2.123, 2.125-2.128, 2.134-2.136);
- 34 Plebański-Krasiński locators;
- 11 Emam locators;
- 16 Carroll locators;
- 6 Gray locators;
- 2 Boskoff locators.

The chapter-level "for more" locators were checked from the tables of contents: Emam, Gray, Needham, Năstase, Boskoff,
Buchbinder and Godinho.

Verdicts:
- **Unsupported as located: 4**, each corrected in the same work:
  - Carroll "section 2.9" → Ch. 2, pp. 50-51;
  - Boskoff Ch. 9-10 → Ch. 10;
  - Buchbinder Ch. 12 → Sec. 11.7;
  - Carroll PDF pages 125 and 235 → printed pp. 118 and 228.
- **Unsupported: 1**, Gray at `exr-grf-q-coefficient`. Replaced by @carroll1997 [eq. 6.85, p. 158] with "(his q_ij = 3I_ij)", and the Gray citation dropped, fixed (owner, 2026-11-18).
- **Supported in part: 7:**
  - Năstase Ch. 40, now Ch. 39-40;
  - Boskoff Sec. 10.5.3;
  - Emam Exercise 6.10;
  - Gray B.3.2 and B.3.3 (twice);
  - Blennow 2.136.
- Not machine-readable: none.
- Disagreements: 1.
- Adapted blocks without a citation: none found.

**Citations added.** 9 new (work, locator) pairs:
- Krasnov Sec. 2.1;
- Buchbinder Sec. 11.8;
- Carroll eqs. 6.83-6.85 and eqs. 7.40-7.48;
- Blennow Problems 2.83-2.84 and 2.150;
- Carroll p. 228 in the Exercises section;
- the Năstase Ch. 39 extension;
- Plebański eq. 14.41.

Locators were also added to 4 Carroll citations and 2 corrected "for more" locators. Seven citations that were split
across lines were rejoined; their text is unchanged.

#### Bib additions

None.

#### Proposed new references

None. The library covers every section.

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `exr-grf-q-coefficient` (statement, line 5813) | "the sign is the opposite of @blennow2022relativity [eq. 2.138] and of @gray2019student, who write $+\frac2r\ddot I_{ij}$" | Gray, App. B (pp. 129-142), has no quadrupole formula: B.3 covers the TT gauge, plane waves and detection only. The mostly-plus +2G Ï_ij/r is Carroll's eq. 6.85 (with q_ij = 3I_ij), which the solution already cites for the signature argument. Blennow eq. 2.138 is confirmed. | Gray pp. 136-142; Carroll p. 158 | Attribution changed to Carroll eq. 6.85 (p. 158); Gray dropped; fixed (owner, 2026-11-18) |

#### Reading-note additions

Drafts are in `scratchpad/notes6/general-relativity__<ITEMKEY>.html`. Every cited work already has a reading note, so
each draft is the h2 section for this chapter only.

- `carroll1997` (8XG4E67X): Ch. 2 pp. 50-51; Ch. 4 eqs. 4.19-4.21 (p. 106), 4.46-4.52 (pp. 111-112), 4.54-4.70
  (pp. 114-116), 4.73 and p. 118; Ch. 6 eqs. 6.83-6.85 (p. 158); Ch. 7 eqs. 7.40-7.48 (pp. 173-174); Ch. 8 eqs. 8.29,
  8.40 and p. 228.
- `blennow2022relativity` (RGFY73YW): Ch. 2 Problems 2.63-2.150 as listed above (pp. 55-76); solutions pp. 321-337.
- `plebanski2024introduction` (7SSAJW8U), pp. 145-210, 287, 465-467:
  - Secs. 12.16.1, 12.18-12.19, 13.2-13.7, 14.2-14.6, 14.15-14.17, 17.17, 21.7;
  - equations as above.
- `emam2021covariant` (MV8JU3AT): Chs. 5-7; Sec. 6.1.3 (pp. 219-222); Sec. 8.6, eqs. 8.163-8.166 and Exercise 8.23
  (pp. 320-322).
- `gray2019student` (S7QLP5P4): Chs. 1 and 4; App. B.3 (pp. 136-142).
- `boskoff2024journey` (8QTLZVEC): Ch. 10; Secs. 10.5.3 (pp. 291-293) and 10.14 (pp. 362-364).
- `buchbinder2021introduction` (MSWD9GKH): Sec. 11.7 (pp. 284-289); Sec. 11.8, eq. 11.90 (pp. 289-290).
- `godinho2014introduction` (5VBNBTT4): Ch. 6.
- `krasnov2020formulations` (3575F9KG): Sec. 2.1, eqs. 2.10-2.13 (pp. 78-80).
- `nastase2019classical` (5AXU4FWL): Chs. 39-40 (pp. 367-388).
- `needham2021visual` (RVPZ3KEV): Ch. 30.

### supersymmetry-supergravity

Task 6.12. PDFs read with `pdftotext` from `~/Zotero/storage/<zoteropdf>/`, and Nath p. 177 from the rendered page
image. Pages are printed pages. Offsets (PDF − printed): Martin (v7, 2016) 0, Tanii 0, Duff-Nilsson-Pope 0,
Manousselis-Zoupanos 1, Nath 25, Zhelnorovich 14, Cecotti 19 (Chs. 8 and 11), Hamilton 13 (Chs. 6 and 9), Henn-Plefka
11, Nastase 20, Van Proeyen 1.

**Chapter conventions.** The chapter uses signature (+, −, −, −), the standard Weyl matrices, and anti-Hermitian
generators T^a with Hermitian t^a = iT^a. Martin, Nath and Duff use the mostly-plus metric. Tanii (p. 3, eq. 3.1, App.
A) and Henn-Plefka (App. B, eq. B.1) use the chapter's signature.

**Conversion checks (A6).**
- **Hermitian t^a = iT^a.** Martin's T^a are Hermitian (eq. 2.34, p. 16). The chapter's terms −√2g(φ*t^aψ)λ^a + c.c. +
  g(φ*t^aφ)D^a (line 3557) are Martin eq. 3.4.9 (p. 27) with his T^a → t^a. The D-term potential ½g²(φ*t^aφ)² is eq.
  3.4.12. **Supported.**
- **Mostly-plus comparisons.** Each one names its source:
  - Martin: eqs. 2.21-2.25, 3.1.2, 3.1.4, 3.1.6-3.1.7, 3.1.30, 3.2.20-3.2.22 and 3.3.6. The sign flips stated in the
    chapter are right. For example, Martin's δL_fermion (eq. 3.1.6) has no η, and rewriting it with σσ̄ + σσ̄ = ∓2η
    gives the opposite signs of the terms with a raised index.
  - Nath: eqs. 8.82, 8.106, 8.127-8.128, Problem 8.2 and eq. 18.24.
  - Duff: eqs. 7 and 10-11. Under g → −g, R_MN is unchanged. F_MPQR F_N^PQR and g_MN F² change sign. So R_μν =
    −12m²g_μν becomes 12m²g_μν, and R_mn = 6m²g_mn becomes 6m²γ_mn.
  - **All supported.**
- **exr-ssg-killing-integrability (line 6565).** The chapter rederives integrability with its anti-Hermitian Γ_m and
  [D_m, D_n] = +¼R_mnab Γ^ab. It finds the radius a = 1/m. That is Duff's round S⁷ with R_mn = 6m²g_mn (eq. 11, p. 5),
  since S⁷ of radius a has R_mn = 6/a². **Supported (the result).** The quoted operator D̃_m = D_m − ½mΓ_m (line 6476,
  Duff eqs. 12-13) is a convention note, listed under Disagreements.
- **Einstein-Hilbert sign.** The chapter's −¼eR̂ (line 5355) is Tanii eq. 2.2 with eq. A.1, −(1/16πG)√−g R and 4πG = 1
  (p. 35). It has the same sign and the same Ricci convention (R_μν = R_ρμ^ρ_ν) as the site's @eq-einstein-hilbert,
  −(1/2κ²)√−g R. **Supported.**
- **Tanii's charge conjugation.** Tanii eq. 2.1 has C⁻¹γ^aC = −γ^aT. The chapter writes Cγ^μC⁻¹ = −γ^μT. The two agree
  because C² ∝ 1 for the four-dimensional C. **Supported.**
- None of the results changed by the 2026-11-18 notation conversion (charges, period 2πr, G_N, Randall-Sundrum,
  Einstein-Dirac) appears in this chapter.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Chapter intro (before the first `##`) | martin1997 [eq. 2.3, added]; tanii1998 [p. 3, added]; cecotti2023introduction (`nocite`) | Martin p. 13; Tanii p. 3 | Supported | Two narrative citations had no locator. | Added locators. The `nocite` of Cecotti (line 3) is left as it is; Cecotti is now also cited with locators in the text. The `nocite` was removed, fixed (owner, 2026-11-18). |
| Supersymmetry (`sec-supersymmetry`), with The superalgebra (`sec-superalgebra`) | martin1997 [Secs. 1-2; eqs. 1.5; 1.8-1.10; 1.9-1.10; 2.7-2.18; 2.16; 2.21-2.25; 2.28; 2.38-2.44; 3.1.17-3.1.21; 3.1.30-3.1.32; 7.1.1-7.1.2; Table 3.1]; nath2017supersymmetry [Sec. 8.1; eqs. 8.4-8.15; Problems 8.2, 8.4]; tanii1998 [p. 3; eq. 4.5; Sec. 3; p. 14]; added: hennScatteringAmplitudesGauge2014 [Sec. 1.2 and App. B, eq. B.1; Sec. 2.7.1, Table 2.1]; hamilton2017mathematical [Defs. 9.6.1 and 9.6.4]; vanproeyen1999 [Sec. 2.1]; cecotti2023introduction [Sec. 8.3, eqs. 8.20-8.22; Sec. 11.6, p. 623] | Martin pp. 6-7, 13-17, 20-21, 72; Nath pp. 139-142, 180-181; Tanii pp. 3, 13-14; Henn-Plefka pp. 3-5, 59-62, 175; Hamilton pp. 591-594; Van Proeyen p. 2; Cecotti pp. 491-492, 623 | Mostly supported. **(1) Martin eq. 1.12 (n_B = n_F), unsupported as located:** eqs. 1.11-1.12 are the soft-breaking Lagrangian; n_B = n_F is eq. 1.10 with its proof eq. 1.9 (pp. 6-7). The same applies to "eqs. 1.8-1.12". **(2) Tanii Sec. 3 for the N = 2 vector multiplet and hypermultiplet, unsupported:** Sec. 3 covers spinors in higher dimensions, and Sec. 4 says matter multiplets are not discussed. Cecotti p. 623 lists both multiplets. **(3) Martin eqs. 3.1.30-3.1.32:** supported after conversion (Martin has −2σ^μP_μ and P_0 = −H). | The Martin eq. 1.12 locators were wrong. The Tanii Sec. 3 citation is unsupported. Four citations were split across lines. The massless-multiplet proposition and the N = 4 example had no source. | Corrected the locators to eqs. 1.8-1.10 and eqs. 1.9-1.10 (same work). Added Cecotti Sec. 11.6 beside Tanii Sec. 3; the owner decides whether to remove Tanii there. Rejoined the split citations. Added Tanii p. 14 and Cecotti eqs. 8.20-8.22 to the proposition, and Henn-Plefka Table 2.1 to the N = 4 example. Added Nath [Problem 8.2] to the narrative citation (line 626 before the edit). |
| The Wess-Zumino model (`sec-wess-zumino`) | martin1997 [Sec. 3.1; eqs. 3.1.2-3.1.23; p. 18; p. 20; pp. 22-23; eq. 3.2.1; eqs. 3.2.9-3.2.12; eq. 3.4.13; Sec. 4.4; Table 3.1]; tanii1998 [p. 6]; nath2017supersymmetry [Secs. 8.4-8.8; eqs. 8.59-8.82; Sec. 8.5, eqs. 8.102, 8.106; 8.108-8.111 and 8.135; 8.127-8.128; 8.142-8.145 and 8.250-8.253; 8.144; 8.147-8.157; Sec. 8.10 and Problem 8.9; 8.165-8.170; 8.185] | Martin pp. 18-24, 27, 37; Tanii p. 6; Nath pp. 145-160, 170, 181 | Mostly supported. **(1) Martin eq. 4.3.13, unsupported:** it is ∫d²θ D_α(…) = total derivative (p. 36). The interacting supercurrent is eq. 3.4.13 (p. 27). **(2) Martin p. 22, supported in part:** p. 22 removes U and x_ij; the holomorphy of W^ij is on p. 23 (eqs. 3.2.7-3.2.9). | Two locators were wrong. Ten citations were split across lines, including "eq. 3.\n1.16". | Corrected the locators to eq. 3.4.13 and pp. 22-23 (same works). Rejoined the split citations. |
| The superpotential and gauge multiplets (`sec-superpotential`) | martin1997 [Secs. 3.2-3.4 and 7.1-7.3; eqs. 3.2.6-3.2.22; 3.3.3-3.3.8; 3.4.9; 3.4.11-3.4.12; 6.1.1; 7.1.4; 7.1.4-7.1.8; 7.1.13; 7.3.9-7.3.10; 8.1.1; Sec. 7.2; Sec. 7.3; p. 76; Table 3.2]; nath2017supersymmetry [Ch. 10 and Table 10.1; eqs. 10.16, 10.43, 10.44, 10.49, 10.51-10.53; Sec. 8.18, eq. 8.307 and Problem 8.14; Sec. 8.19, eqs. 8.309-8.318]; added: hamilton2017mathematical [Sec. 9.6.2]; nastase2019classical [Sec. 24.2, eqs. 24.9-24.12]; manousselis2000 [Secs. 2 and 4] | Martin pp. 22-27, 54, 72-77, 95; Nath pp. 176-178, 237-245 (p. 177 read from the rendered page); Hamilton p. 596; Nastase pp. 218-219; Manousselis pp. 2-10 | Supported. The neutralino matrix is identical to Nath eq. 10.53. The spurion potential matches Nath eq. 8.307: ΔL = (ξ₂ − \|ξ₁\|²)\|φ\|² − [ξ₁(φW' − W) + h.c.], with A₀ = 2B₀. Nastase treats a real scalar, so it supports the domain-wall bound in part. | The domain-wall example and the reduction example (`exm-gauge-multiplet-reduction`) had no source. Six citations were split across lines. | Added Nastase to the domain walls, Manousselis to the reduction example, and Hamilton beside Nath Ch. 10 for the second Higgs doublet. Rejoined the split citations. |
| Supergravity (`sec-supergravity`), with Local supersymmetry and the gravitino (`sec-gravitino`) | tanii1998 [p. 3; Secs. 1-3; eq. 1.1 and p. 2; eq. 2.1; eqs. 2.2-2.4, 2.10; eq. 2.2; eq. 2.11; Tables 1-2; p. 11; Sec. 4; eq. 4.8; eq. 5.2; Table 3; Table 3 and p. 14; Table 4; p. 6; eq. A.1, added]; martin1997 [Sec. 7.5; eqs. 2.29-2.31; eq. 7.5.3; eqs. 7.5.4-7.5.6]; zhelnorovich2019spinors [Sec. 1.1, eqs. 1.44-1.55; eq. 1.54; Secs. 1.6.2-1.6.3]; nath2017supersymmetry [Ch. 12; eqs. 12.5-12.16; Problem 12.1; Sec. 18.4; eq. 18.91]; manousselis2000 [Secs. 3-4, added]; added: nath2017supersymmetry [eqs. 11.2-11.12; eqs. 11.6-11.7]; hamilton2017mathematical [Sec. 9.6.2; Table 6.6 and Example 6.6.7]; vanproeyen1999 [Tables 2-3] | Tanii pp. 2-17, 20, 35; Martin pp. 15-16, 80-82; Zhelnorovich pp. 16-18, 42-52; Nath pp. 247-249, 257-261, 423-424; Manousselis pp. 6-10; Hamilton pp. 363, 595; Van Proeyen pp. 22, 31 | Mostly supported. **(1)** Martin Sec. 7.5 and eq. 7.5.3, **supported in part** for the Noether construction (the J^μ coupling and the need for the metric) and for m_{3/2} = \|W\|/M²_Pl (line 5624): Martin gives δΨ = ∂ε and the super-Higgs mechanism only. Nath eqs. 11.2-11.12 give the construction. **(2)** Nath Sec. 18.4 for the no-scale field T, **supported in part:** p. 424 names the volume (Kähler) moduli (eq. 18.94), but not K = −3 log(T + T*). **(3)** Tanii Table 3 for N_max = 32/n_min(d): supported. Tanii counts d = 6 as (4, 4) and d = 7 as N = 4 in symplectic units, and Van Proeyen Table 3 gives the chapter's (2, 2) for 32 supercharges. **(4)** Tanii eq. 2.1: supported after the C² ∝ 1 remark above. | Six narrative citations had no locator (Tanii ×3, Zhelnorovich, Manousselis, and the table of Tanii). Seven citations were split across lines. The Noether argument for the gravitino and κ had only Martin. One narrative bracket contained the cross-reference @eq-einstein-hilbert, which the checker reads as having no locator. | Added the locators. Added Nath eqs. 11.2-11.12 and 11.6-11.7, Hamilton (spinor table, local supersymmetry implies diffeomorphisms) and Van Proeyen Tables 2-3. Rejoined the split citations. Moved "(@eq-einstein-hilbert)" just outside the locator bracket (line 5355); the words are unchanged. Refined the Nath Sec. 18.4 locator to eq. 18.94. |
| Eleven-dimensional supergravity (`sec-sugra11`) | tanii1998 [Sec. 5; eqs. 5.1-5.3; pp. 14-16; p. 17; Table 3; Sec. 4]; duff2025 [Sec. 2, eq. 9, added; eq. 7, added; eqs. 9-13; Secs. 2-3; Secs. 2-3, 6 and 8; pp. 6-7; eqs. 10-11, added; Sec. 3]; nath2017supersymmetry [Sec. 18.1.1; eqs. 18.23, 18.24, 18.29; Secs. 18.2.3-18.2.5]; manousselis2000 [Sec. 4, added]; added: cecotti2023introduction [Sec. 8.3, eqs. 8.22-8.23; Sec. 8.3, p. 492] | Tanii pp. 14-17; Duff pp. 3-7, 11-12, 19; Nath pp. 406-409, 418-421; Manousselis pp. 7-10; Cecotti pp. 491-493 | Mostly supported. **(1) Duff p. 5 for skew-whiffing, unsupported as located:** skew-whiffing is on pp. 6-7. **(2) Duff Sec. 2, supported in part:** the squashed S⁷ with N = 1, and the orientation rule, are in Sec. 3 (pp. 6-7). **(3) Duff Sec. 8, supported in part:** the Einstein-space solutions are in Sec. 2 (p. 5), N(1,1) is in Sec. 3 (p. 7) and M^mn is in Sec. 6 (p. 12). Q^pqr is not mentioned. **(4) Nath Sec. 18.2.5, supported in part:** it states anomaly cancellation for SO(32) and E₈ × E₈, but not the dim G = 496 condition. | Four narrative citations had no locator: Duff ×3 and Manousselis. | Added the locators. Corrected Duff to pp. 6-7, Secs. 2-3, Sec. 3, and Secs. 2-3, 6 and 8 (same work). Added Cecotti Sec. 8.3 beside Tanii pp. 14-17. |
| Exercises (`sec-supersymmetry-supergravity-exercises`) | none before; added: nath2017supersymmetry [Sec. 8.16, eqs. 8.250-8.253]; nastase2019classical [Sec. 24.2]; martin1997 [eqs. 3.2.20-3.2.22 and Table 3.1; Sec. 7.2; Secs. 7.3 and 7.5]; tanii1998 [Table 3]; duff2025 [Sec. 2; Secs. 1-3, eqs. 9-17] | Nath p. 170; Nastase pp. 218-219; Martin pp. 20, 24, 74-82; Tanii p. 15; Duff pp. 3-7 | Supported. The six integrative exercises are combinations of the chapter's units. The two-vacuum model is Nath's F-type model with m = 0. | **The section cited nothing.** | Added one citation to each exercise lead-in. |

**Counts.** Before: 7 works, 3 textbooks. After: 11 works, 6 textbooks. The added works are hamilton2017mathematical,
hennScatteringAmplitudesGauge2014 and nastase2019classical (textbooks), and vanproeyen1999 (a paper). All four were
already in the bib. `check.py`: works 11, textbooks 6, no locator 1 (the `nocite` in the front matter), sections citing
nothing 0. Before, it reported 38 citations without a locator and 1 section citing nothing.

**Citations verified.** 174 citation occurrences, about 150 distinct (work, locator) pairs, plus 38 citations without
a locator. Totals by work:
- Martin: 71.
- Nath: 45.
- Tanii: 33.
- Duff: 13.
- Zhelnorovich: 5.
- Manousselis: 2.
- Cecotti: 1 (`nocite`).

Verdicts:
- **Unsupported: 4.**
  - Martin eq. 1.12, at two citations: corrected to eqs. 1.8-1.10 and eqs. 1.9-1.10.
  - Martin eq. 4.3.13: corrected to eq. 3.4.13.
  - Duff p. 5: corrected to pp. 6-7.
  - Tanii Sec. 3 for the N = 2 multiplets: kept for the owner, with Cecotti added. Tanii removed; Cecotti Sec. 11.6 stays, fixed (owner, 2026-11-18).
- **Supported in part: 9.**
  - Martin p. 22, corrected to pp. 22-23.
  - Martin eq. 7.5.3 and Sec. 7.5, twice.
  - Duff Sec. 2, corrected to Secs. 2-3 and Sec. 3.
  - Duff Sec. 8, corrected.
  - Nath Sec. 18.4 for the no-scale field.
  - Nath Sec. 18.2.5.
  - Martin eq. 3.1.9: its δψ has no F term; the F-term cancellation is the chapter's own step.
  - Nastase (real field).
- **Not machine-readable:** none. One Nath page was read from the rendered image only to resolve the signs garbled by
  pdftotext.
- **Disagreements in results:** none. One convention note is listed below.
- **Adapted blocks without a citation:** the domain-wall example, the reduction example and the six integrative exercises
  had none. They now cite their sources.

**Added citations.** 27 new (work, locator) pairs:
- Hamilton: 4.
- Henn-Plefka: 2.
- Nastase: 2.
- Van Proeyen: 3.
- Cecotti: 4.
- Nath: 3, eqs. 11.2-11.12, 11.6-11.7 and Sec. 8.16.
- Manousselis: 3.
- Martin: 4 in the exercises and the intro.
- Tanii: 2, Table 3 in the exercises and p. 14.
- Duff: 2 in the exercises.

Also:
- Locators were added to 13 narrative citations.
- Nine wrong or partial locators were corrected within the same work, and one (Nath Sec. 18.4) was refined.
- 23 citations split across lines were rejoined; their text is unchanged.

#### Bib additions

None. All cited works were already in `references/references.bib`.

#### Proposed new references

None. The library covers every section. The textbooks found are Hamilton (Sec. 9.6, Table 6.6), Henn-Plefka (Secs. 1.2
and 2.7, App. B), Nastase (Sec. 24.2) and Cecotti (Secs. 8.3 and 11.6, already in the `nocite`). The semantic search was
not needed beyond the collection scan.

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `exm-killing-spinor-flux`, line 6476, and `exr-ssg-killing-integrability`, line 6565 (convention note, not a result) | D̃_μ = D_μ + mγ_μγ₅ and D̃_m = D_m − ½mΓ_m, cited to Duff eqs. 12-13 without saying that this is Duff's mostly-plus form. The chapter's Γ_m are anti-Hermitian, and the exercise uses [D_m, D_n] = +¼R_mnab Γ^ab. | Duff uses Hermitian internal Γ and D_M = ∂_M − ¼ω_M^AB Γ_AB (eq. 6). Converted to (+, −, …) with Duff's spin-connection sign (Γ'_m = −iΓ_m), his equation reads D_mη = (i/2)mΓ'_mη. The chapter's real ½m therefore depends on its opposite spin-connection sign. The result a = 1/m agrees with Duff eq. 11. | Duff pp. 4-6, eqs. 6, 11-13, 17 | Clause added at both places: D̃ is Duff's eqs. 12-13 (eq. 13 in the exercise) converted from his mostly-plus form with the spin connection of the opposite sign to his eq. 6, cited as [@duff2025, eqs. 6 and 12-13] and [eqs. 6 and 13]; fixed (owner, 2026-11-18) |
| Line 1394, `exr-ssg-n2-multiplets` solution | [@tanii1998, Sec. 3] for the N = 2 vector multiplet and hypermultiplet | Tanii Sec. 3 has no multiplets, and Sec. 4 (p. 14) excludes matter multiplets. Cecotti Sec. 11.6 (p. 623) gives both multiplets and was added. | Tanii pp. 7-14 | Tanii Sec. 3 removed; fixed (owner, 2026-11-18) |

#### Reading-note additions

Drafts are in `scratchpad/notes6/supersymmetry-supergravity__<ITEMKEY>.html`. Every cited work already has a reading
note, so each draft is the h2 section for this chapter only.

- `martin1997` (5THDC569):
  - Secs. 1-2, eqs. 1.5, 1.8-1.10, 2.3, 2.7-2.44 (pp. 6-17).
  - Sec. 3.1, eqs. 3.1.2-3.1.32 and Table 3.1 (pp. 18-21).
  - Secs. 3.2-3.4, eqs. 3.2.1-3.2.22, 3.3.3-3.3.8, 3.4.9-3.4.13 and Table 3.2 (pp. 22-27).
  - Sec. 4.4 (p. 37) and eq. 6.1.1 (p. 54).
  - Secs. 7.1-7.3 and 7.5, eqs. 7.1.1-7.1.13, 7.2.1-7.2.4, 7.3.9-7.3.10 and 7.5.3-7.5.6 (pp. 72-82).
  - Eq. 8.1.1 (p. 95).
- `tanii1998` (SYIDJS9Z):
  - pp. 2-6, eqs. 1.1 and 2.1-2.11.
  - Tables 1-2 (pp. 9, 11).
  - Sec. 4, eqs. 4.5 and 4.8, and Table 3 (pp. 12-16).
  - Sec. 5, eqs. 5.1-5.3 (pp. 16-17).
  - Table 4 (p. 20) and eq. A.1 (p. 35).
- `nath2017supersymmetry` (XIGCZLVD):
  - Secs. 8.1, 8.4-8.10, 8.16, 8.18-8.19 and Problems 8.2, 8.4, 8.9, 8.14 (pp. 139-182).
  - Ch. 10, eqs. 10.16 and 10.43-10.53 (pp. 237-245).
  - Eqs. 11.2-11.12 (pp. 248-249).
  - Ch. 12, eqs. 12.5-12.16 and Problem 12.1 (pp. 257-261).
  - Secs. 18.1.1, 18.2.3-18.2.5 and 18.4, eqs. 18.23-18.29, 18.91 and 18.94 (pp. 406-424).
- `duff2025` (BQD4R83W): Secs. 1-3, eqs. 4-17 (pp. 3-7); Sec. 6 (p. 12); Sec. 8 (p. 19).
- `manousselis2000` (7WUPYQEL): Secs. 2-4 (pp. 2-10).
- `zhelnorovich2019spinors` (BC78U3SC): Sec. 1.1, eqs. 1.44-1.55 (pp. 16-18); Secs. 1.6.2-1.6.3 (pp. 42-52).
- `cecotti2023introduction` (CRMYB6YM): Sec. 8.3, eqs. 8.20-8.23 (pp. 491-493); Sec. 11.6 (p. 623).
- `hamilton2017mathematical` (4HSGM5RX): Table 6.6 and Example 6.6.7 (p. 363); Sec. 9.6, Defs. 9.6.1 and 9.6.4, Sec.
  9.6.2 (pp. 590-597).
- `hennScatteringAmplitudesGauge2014` (ZM7YN7FX): Sec. 1.2 (pp. 3-5); Sec. 2.7.1, Table 2.1 (pp. 59-62); App. B, eq.
  B.1 (p. 175).
- `nastase2019classical` (5AXU4FWL): Sec. 24.2, eqs. 24.9-24.12 (pp. 218-219).
- `vanproeyen1999` (7N3KUQBJ): Sec. 2.1 (p. 2); Table 2 (p. 22); Table 3 (p. 31).

## Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
