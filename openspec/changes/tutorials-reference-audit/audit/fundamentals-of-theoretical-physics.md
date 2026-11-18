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
  - Landau-Páez (`landauComputationalProblemsPhysics2024`, Ch. 5).
- Năstase, previously cited once without a locator, now covers the statics, waves, retarded potentials, dipole
  radiation, energy-momentum, duality and monopole units (Ch. 5, Secs. 13.1, 14.6, 15.1-15.8, 27.1).

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Electrostatics and magnetostatics (`sec-em-statics`) | `maggiore2023electrodynamics` Chs. 4-5, Secs. 3.1.2, 4.1.1-4.2.5, 5.1-5.5, 6.2-6.4, 13.5, Problems 4.1-4.6, 5.1-5.2. `macchi2023problems` Problems 1.1-1.14, 2.1-2.16, 5.1-5.14. `pierrus2018solved` Questions 1.22, 2.4-2.16, 3.4, 3.10-3.17, 3.23, 4.4-4.29. `nastase2019classical` Secs. 15.1-15.4 (added). `ciniElementsClassicalQuantum2018` Sec. 4.1 (added). `emam2021covariant` Sec. 4.8 (added). `landauComputationalProblemsPhysics2024` Secs. 5.2.2-5.2.3, 5.5.4 (added) | Maggiore pp. 42-43, 57-131, 139-151, 353-355. Macchi pp. 4-19, 41-46; S pp. 139-206, 257-283. Pierrus pp. 31, 53-83, 119-164, 194-247. Năstase pp. 137-143. Cini pp. 51-52. Emam pp. 159-162. Landau-Páez pp. 170-179, 198-199 | **Supported**, many of them supported in part: the source covers part of the claim, or the chapter supplies its own numbers. Details below the table. **Unsupported:** Macchi Problem 5.1 for the disc's magnetic moment and far field (line 4049): Macchi never computes them. | Thirteen citations were split over two lines. Four locators were incomplete or misplaced: line 165 (single plane only), 541, 576 (tangential continuity), 903. Eight example and exercise blocks were adapted without a citation. | Brackets joined onto one line. Locators fixed: Problems 4.1, 4.3; + Pierrus Q2.6; Secs. 4.1.6 and 13.5; Secs. 4.1.2-4.1.3; Questions 3.10-3.12; Questions 1.22, 4.25; + Pierrus Q2.5 at 1174. Inline citations added in exm-ems-dipole-limit, -potential-dipole, -potential-ball, -potential-line, -conductor-sphere, -ampere-solenoid, -ampere-toroid, -dipole-rotating-shell and exr-ems-uniqueness-square (Landau-Páez eq. 5.19 is the same series). New works added at Gauss's law, the potential, images, Biot-Savart, the vector potential and the magnetic dipole. Line 4049 left for the owner. |
| Maxwell's equations, potentials and gauge invariance (`sec-em-maxwell`) | `maggiore2023electrodynamics` Ch. 3, Secs. 2.2, 3.1-3.4, 4.1.7, 4.2.5, 4.3, 8.6, 8.6.2, 11.1.2. `macchi2023problems` Problems 4.2, 6.3-6.21, 8.1-8.13. `pierrus2018solved` Questions 5.1-5.13, 7.1, 8.1-8.7, 8.16-8.19. `nastase2019classical` Ch. 5, Secs. 13.1, 14.6, 15.8, 27.1 (locators added). `emam2021covariant` Sec. 4.8. `rahamanSpecialTheoryRelativity2022` Secs. 13.3-13.5, 13.10.3, 13.17, 14.5, 14.11. `ciniElementsClassicalQuantum2018` Secs. 2.5.4, 4.1 (all added) | Maggiore pp. 34-35, 39-56, 68-69, 71-73, 82-85, 192-197, 273-274. Macchi pp. 31, 47-60, 71-79; S pp. 240-241, 289-336, 375-401. Pierrus pp. 250-271, 334-348, 373-406. Năstase pp. 46-53, 118-120, 134, 148, 244-245. Rahaman pp. 222-226, 234-236, 255-259, 274-277, 297-298. Cini pp. 32-34, 51-52. Emam pp. 159-162 | **Supported**, many in part. **Weak**: Pierrus Q5.13 at the betatron condition (line 5127): betatrons appear only in Comment (iv), p. 271, and none of the nine books derives the 2:1 condition. Maggiore Sec. 3.3 at line 5500 (that the evolution preserves the divergence constraints) and at line 8522 (no Lagrangian local in E and B): Sec. 3.3 contains neither claim. | Năstase was cited without a locator. Four citations were split over two lines. Six locators were partial: Ch. 3 (no p − qA); Ch. 2 and Sec. 3.1.1; Sec. 3.3 at 7306 (causality is Sec. 11.1.2); Macchi 8.9 (no duality force); Pierrus Q8.16 (no Schrödinger). Five blocks were adapted without a citation. | Năstase given locators. Brackets joined. Locators completed: Ch. 3 and Sec. 8.6.2; Sec. 2.2 eqs. (2.39)-(2.46) and Sec. 3.2.2 eq. (3.43); Secs. 3.3, 11.1.2 + Pierrus Q8.2; + Năstase Sec. 27.1 (eqs. 27.7-27.17) at both monopole citations; Questions 8.16, 8.19; Sec. 3.2.1 added before the equation numbers. Inline citations added in exr-emm-shell-angular-momentum (Macchi 8.13), exr-emm-gauge-landau (Pierrus 8.4), exm-emm-gi-phase and exr-emm-gi-schrodinger (Pierrus 8.19), exr-emm-capacitor-poynting (Macchi 8.2) and exr-emm-wire-surface (Macchi 8.1). The three weak citations are left for the owner. |
| Waves, moving charges and radiation (`sec-em-radiation`) | `maggiore2023electrodynamics` Chs. 9-12, Secs. 9.1-9.5, 10.1-10.6.3, 11.1-11.3, 12.1-12.3.5, Problems 10.1-10.2. `macchi2023problems` Problems 7.11-7.12, 8.5, 10.1-10.12, 11.6. `pierrus2018solved` Questions 7.4-7.5, 7.9-7.10, 8.2, 8.8-8.15, 11.2-11.13. `nastase2019classical` Secs. 15.2, 15.5-15.7. `ciniElementsClassicalQuantum2018` Secs. 4.2-4.3. `rahamanSpecialTheoryRelativity2022` Sec. 13.16. `landauComputationalProblemsPhysics2024` Sec. 5.3.4. `stenzelLightMatterInteraction2022` Sec. 12.5.3 (all added) | Maggiore pp. 217-266, 269-270, 278-299, 312-343. Macchi pp. 69-70, 73, 89-96, 103; S pp. 372-374, 383, 429-449. Pierrus pp. 340-354, 375-399, 509-530. Năstase pp. 138-148. Cini pp. 53-56. Rahaman pp. 252-255. Landau-Páez p. 188. Stenzel p. 318 | **Supported**, many in part. **Wrong locator**: Pierrus Q8.15 at the potentials of uniform motion (line 10071); the potentials are Q8.13(a). **Unsupported**: Maggiore Sec. 9.5 for measuring the Stokes parameters with polarisers and a retarder (line 9362). Maggiore Secs. 12.3.4-12.3.5 do not mention preacceleration (line 11495). | Three citations were split over two lines. Nine locators were partial (see the resolution). Thirteen blocks were adapted without a citation. | Brackets joined. Locators completed: Questions 7.4-7.5; Secs. 9.3-9.4; Problems 7.11-7.12; + Pierrus Q7.9 at the three Stokes citations; Questions 8.2, 8.8-8.9; Secs. 12.1-12.2; Questions 8.13, 8.15; Questions 11.12-11.13; + Pierrus Q11.9; Problems 10.10-10.11 (twice); + Pierrus Questions 11.2-11.3; Secs. 12.3.3-12.3.4. Inline citations added in exr-emw-pol-build, exm-emw-pol-retarder (+ Landau-Páez 5.3.4), exr-emw-pw-mirror, exr-emw-ret-lorenz, exr-emw-lw-field-uniform, exr-emw-lw-retarded-time, exr-emw-lw-b, exm/exr-emw-dip-same-ratio, exm-emw-zones-near-E/-near-B/-far, exr-emw-dip-quadrupole and "Why the sky is blue" (Stenzel). Line 9362 (now partly backed by Pierrus Q7.9) and the preacceleration claim are left for the owner. |
| Fields in matter (`sec-em-matter`) | `maggiore2023electrodynamics` Chs. 13-16, Secs. 13.1-13.7, 14.1-14.5, 15.1-15.4, 16.1-16.3. `macchi2023problems` Problems 3.1-3.12, 4.3-4.7, 5.5-5.12, 10.14-10.15, 11.2-11.14, 12.1-12.8. `pierrus2018solved` Questions 7.12-7.15, 9.1-9.22, 10.1-10.11. `stenzelLightMatterInteraction2022` Secs. 12.3.3-12.3.4, 13.3.1-13.3.2, 13.5.2, 13.6.1, 14.3.1, 14.3.3, 15.3. `rahamanSpecialTheoryRelativity2022` Secs. 14.6-14.10 (all added) | Maggiore pp. 345-408. Macchi pp. 23-28, 32-33, 42-45, 97, 101-116; S pp. 209-249, 265-277, 450-491. Pierrus pp. 359-370, 415-456, 458-481. Stenzel pp. 305-309, 318, 333-338, 341-349, 360-365, 383-385. Rahaman pp. 277-297 | **Supported**, many in part. **Wrong locators**: Maggiore Sec. 14.2 for the f-sum rule (in Sec. 14.3, eq. 14.53); Sec. 14.1 for the pole at ω = 0 (Secs. 14.2, 14.5). Pierrus Q9.20 for the permanent-magnet H = −M/3 (Q9.19, Comment (i)). | Five citations were split over two lines. Seven locators were partial: 11833, 12188, 13941, 14258, 14499, 13912, 15368. Fifteen blocks were adapted without a citation. | Brackets joined. Locators fixed: Secs. 14.2-14.3; Secs. 14.1-14.2, 14.5 (+ Stenzel 15.3); Questions 9.19-9.20; Secs. 13.2, 13.4; Secs. 13.3-13.4, 13.6.3; Secs. 14.5, 15.3.1; Secs. 15.2, 15.3.1; + Pierrus Q10.11; + Maggiore Sec. 15.3.1; Problems 11.7-11.8. Inline citations added in exr-emx-mm-sphere-check, -image-check, -magnetic-sphere, -refraction, -half-filled, -jumps, exr-emx-en-layers, -slab-charge, -free-charges, exr-emx-mag-equivalence, exr-emx-wg-power, exr-emx-sc-degree, the Clausius-Mossotti exercise and the Debye example (Stenzel), exm-emx-wv-reflection and -metal-mirror (Stenzel). Stenzel and Rahaman were added at polarisation, the boundary conditions, Kramers-Kronig, the oscillator and Drude models, waves in matter, skin depth and waveguides. |
| Exercises (`sec-electromagnetism-exercises`) | `macchi2023problems` Problems 6.14, 7.6, 11.7-11.8, 11.14, 12.1. `pierrus2018solved` Question 10.11. `landauComputationalProblemsPhysics2024` Sec. 5.3.5 (added) | Macchi pp. 55, 66, 105, 108, 111; S pp. 313-318, 360, 463-464, 473-479. Landau-Páez pp. 189-192 | supported; Problems 7.6, 12.1 in part (no Z_0 and no load reflection) | exr-emc-ionosphere was adapted without a citation; the transmission-line Z_0 and reflection had no source | Macchi 11.14 added in exr-emc-ionosphere. Landau-Páez Sec. 5.3.5 (telegrapher's equations, 1/√LC, reflection at the end) added at the transmission line. Problems 11.7-11.8. |

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
    are not in Macchi.

**Counts.**
- Before: 4 works, 4 textbooks (A10 not met), 35 citations without a locator (all of them split over two lines, or
  the bare Năstase citation).
- After: 9 works, 9 textbooks:
  - existing: `macchi2023problems`, `maggiore2023electrodynamics`, `nastase2019classical`, `pierrus2018solved`;
  - added from the bib: `emam2021covariant`;
  - added from Zotero: `ciniElementsClassicalQuantum2018`, `rahamanSpecialTheoryRelativity2022`,
    `stenzelLightMatterInteraction2022`, `landauComputationalProblemsPhysics2024`, all in the Zotero Textbooks
    collection.
- `check.py` reports 5 works, 5 textbooks, 0 citations without a locator and 0 sections citing nothing until the
  four keys are merged. A10 is met after the merge.
- Citation occurrences: 342 → 446. Citations added per work:
  - Pierrus +37, Năstase +17, Macchi +14, Stenzel +11, Rahaman +10, Cini +6, Landau-Páez +4, Emam +3, Maggiore +2.
  - About 40 existing locators were corrected or completed.

**Metadata for the coordinator.**
- `landauComputationalProblemsPhysics2024` (3H3XXVUZ). The Zotero item has year 2024 and no publisher.
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
@book{landauComputationalProblemsPhysics2024,
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
references.

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
| line 9279, circular polarisation (naming, not physics) | (e_x + i e_y)/√2 is "positive helicity, called left circular in optics" | Maggiore calls the same vector "right circular"; Pierrus Q7.9 agrees with the chapter, and Landau-Páez Sec. 5.3.3 states no handedness | Maggiore p. 228; Pierrus pp. 350-352 | open (convention; no change suggested) |
| line 10726, short-dipole antenna (different model) | R = (2π/3)Z₀(ℓ/λ)² ≈ 789 Ω (ℓ/λ)², uniform current | Pierrus Q11.13 uses a triangular current: (π/6)Z₀(d/λ)² ≈ 197 Ω (d/λ)², one quarter. The cited source does not give the chapter's number | Pierrus pp. 528-530 | open |

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
- **`landauComputationalProblemsPhysics2024`** (3H3XXVUZ, new note; printed = PDF − 21):
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
| Phase transitions and Landau theory (`sec-landau-theory`) | kivelson2024statistical [Ch. 4-7]; shankar2017quantum [Ch. 7-8]; skacej2019solved [Ch. 1-5]; strocchi2021symmetry [Ch. 21]; boudreau2018applied [Secs. 8.1 and 8.3; Sec. 20.3 and Ch. 20, Exercise 10; Ch. 20, Exercises 1, 9, 13; Ch. 8, Exercises 4, 5]; bricmont2022statistical [Exercise 9.9]; bauerschmidt2019renormalisation (22 pairs: Secs. 1.2, 1.3, 1.4, 1.4.1, 1.4.2, 1.5, 1.5.2; Lemmas 1.4.2, 1.4.3, 1.4.6; Thms. 1.4.1, 1.4.4; Lemma 1.5.3; Def. 1.5.1; Exercises 1.4.5, 1.4.7, 1.4.8, 1.5.2, 1.5.5, 1.5.6; eqs. 1.2.1-1.2.2, 1.2.5-1.2.10, 1.2.7, 1.4.23, 1.5.3-1.5.4, 1.5.11-1.5.20, 1.6.3-1.6.4, 1.6.8) | Kivelson TOC, Chs. 4-7 pp. 73-183; Shankar TOC Chs. 7-8 pp. 105-142; Skačej Ch. 5 pp. 74-79 (Landau theory, exponents); Strocchi TOC Ch. 21 pp. 139-146; Boudreau pp. 241-265 (percolation, p_c = 0.59275, Table 8.4), pp. 717-722, pp. 726-729, pp. 267-268; Bricmont p. 309; Bauerschmidt pp. 5-28 | Supported, all pairs. Skačej [Ch. 1-5]: Ch. 5 supports the section; Chs. 1-4 are thermodynamics and fit `sec-thermodynamics` (now cited there). Left in place for the owner | 4 citations split over two lines | Re-flowed the 4 split Bauerschmidt citations onto one line each; text unchanged |
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
| Measurement and the Schrödinger equation (`sec-schroedinger`) | demilio2017problems [Ch. 4, Ch. 6, Ch. 7, Ch. 16]; galitski2013exploring [Ch. 2, Ch. 7]; guidry2022symmetry [Ch. 27]; zettili2009quantum [Ch. 4]; das2023quantum [Sec. 3.6, Problems 2, 4], [Sec. 4.7, Problems 2, 3, 7, 9, 10], [Sec. 8.7, Problems 1, 1-2, 3, 4], [Sec. 9.8, Problems 1, 2], [Sec. 13.2] (×2), [Sec. 14.10, Problem 3] (×2); izaac2018computational [Secs. 9.5-9.6], [Sec. 9.5, eqs. (9.54)-(9.56), and Problem P9.8], [Sec. 9.6 and Problem P9.7], [Problems P9.4, P9.7 and P9.8], [Secs. 11.2-11.3], [Sec. 11.3, eqs. (11.18)-(11.20)], [Secs. 11.2.1-11.2.2], [Problem P11.1], [Problems P11.2-P11.3] | Das PDF 83 (rendered: the Problem 3.6.2 state is (1/3)\|0⟩ + i(√2/3)\|1⟩ − (√6/3)\|2⟩), 102-103, 189, 214, 250-254 (eqs. 13.5-13.8, Fig. 13.3), 282-284, 306-307; Izaac PDF 392-401, 433-436, 450; d'Emilio PDF 9-11 (contents), 328; Galitski PDF 231-242, 303-307 (Sec. 7.2, Problem 7.12, spin precession); Guidry PDF 498-511; Zettili PDF 232-256 | supported, with these notes: (1) `exm-qmb-oscillator-measurement` permutes Das's coefficients (√2/3, i√6/3, −1/3 instead of 1/3, i√2/3, −√6/3); its numbers are right for its own state, so it is an adaptation, not a disagreement; (2) Das 13.2 at `exm-qmb-tunnelling-microscope` supports the barrier factor only, the microscope is the text's application; (3) Morse E0 = (251 + 4√15)/40 = 6.6623 checked against P9.4(b); the splitting error ratio 1:2 matches eq. (11.20); (4) **demilio Ch. 16** (applications to atomic physics: fine structure, Stark and Zeeman effects) is **unsupported** for this section; (5) guidry Ch. 27 (geometrical phases) is weak here: only the spin-in-a-field Hamiltonian (eq. 27.30) bears on the section | 2 citations split across lines (1603, 1741); the hard-sphere example (1741) cited only Das 14.10 Problem 3, which is the soft sphere | Joined. Located Sec. 13.2 as eq. (13.8). Added Das Sec. 14.5 (rigid sphere, low-energy 4πa², PDF 282-283) at the hard-sphere example. demilio Ch. 16 and guidry Ch. 27 left for the owner (d'Emilio Ch. 16 is now cited where it belongs, Problem 16.2 in the exercises) |
| The harmonic oscillator (`sec-harmonic-oscillator`) | nastase2023quantum [Ch. 8] (was Ch. 1-9); das2023quantum [Sec. 6.6, Problems 3 and 5], [Sec. 12.5, Problem 2] (×2), [Sec. 9.8, Problem 4] | Nastase PDF 115-129; Das PDF 122, 214, 247 | supported; 3b³(n+1)^{3/2}, ⟨r⟩ = 2b/√π, ⟨r²⟩ = 3b²/2 checked | Nastase "Ch. 1-9" too broad | Narrowed to Ch. 8 (the oscillator) |
| Angular momentum and spin (`sec-angular-momentum`) | demilio2017problems [Ch. 8, Ch. 13] (was Ch. 12); galitski2013exploring [Ch. 3, Ch. 5]; nastase2023quantum [Ch. 14-17] (locator added); zettili2009quantum [Ch. 5-7]; das2023quantum [Sec. 10.4, Problem 3] (×2), [Sec. 10.4, Problems 1-2], [Sec. 4.7, Problem 6], [Sec. 4.7, Problem 1]; svanberg2022spectroscopy [Sec. 2.6.1, eqs. (2.38)-(2.42)], [Sec. 2.7, eq. (2.47) and Fig. 2.20], [Sec. 2.5.1, eqs. (2.25)-(2.31)] | Das PDF 102, 225; Svanberg PDF 47-49, 53-54, 57-59; d'Emilio PDF 176-181, 270-277; Galitski PDF 103 onward, 182 onward; Zettili PDF 300-471; Nastase PDF 183-227 | supported, except d'Emilio Ch. 12 (perturbations), off-target. Svanberg's a/2[F(F+1) − I(I+1) − J(J+1)] equals the chapter's (A/ħ²) I·J. The 1420 MHz and 9 192 631 770 Hz numbers in `exm-qms-hyperfine` are not in Sec. 2.6.1 (Svanberg has them in Sec. 7.1.3) | Nastase without a locator; d'Emilio Ch. 12 off-target; Das citation split across lines (3516) | Nastase Ch. 14-17 added; d'Emilio corrected to Ch. 13 (spin and magnetic field); 3516 joined |
| Symmetries in quantum mechanics (`sec-quantum-symmetries`) | foulaadvand2023computational [Ch. 8]; galitski2013exploring [Ch. 4, Ch. 6]; mukunda2022continuous [Ch. 9]; nastase2023quantum [Ch. 12-13] (was Ch. 22); talagrand2022what [Ch. 2]; das2023quantum [Sec. 11.3, Problem 1], [Sec. 11.3, Problems 1-2]; svanberg2022spectroscopy [Sec. 2.1, eq. (2.4), and Sec. 2.8, eq. (2.48)], [Sec. 2.8, eqs. (2.48)-(2.49)] | Foulaadvand PDF 207-238; Galitski PDF 170-174, 242 onward; Mukunda PDF 232-251; Nastase PDF 163-182, 274; Talagrand PDF 54-75; Das PDF 233; Svanberg PDF 34, 60 | supported, except Nastase Ch. 22 (QM with classical electromagnetism), off-target. Foulaadvand Ch. 8 covers only parity (used by `exm-qm-conserved-parity`). 2s maxima at (3 ∓ √5)a checked | Nastase Ch. 22 off-target | Corrected to Ch. 12-13 (continuous and discrete symmetries) |
| Perturbation theory and the path integral (`sec-path-integral`) | demilio2017problems [Ch. 12] (was Ch. 11); galitski2013exploring [Ch. 8]; nastase2023quantum [Ch. 10, 36 and 41] (was Ch. 37-38); zettili2009quantum [Ch. 9-10]; svanberg2022spectroscopy [Sec. 2.5.2, eqs. (2.34)-(2.35)]; izaac2018computational [Sec. 10.3, Theorem 10.1, eqs. (10.32)-(10.38)], [Problem P10.9], [Sec. 10.2.1 and Problem P10.8] | d'Emilio PDF 239-250; Galitski PDF 315-341; Nastase PDF 140-150, 431-440, 481-490; Zettili PDF 506-547, 588-590; Svanberg PDF 51-52; Izaac PDF 412-419, 427-428 | supported, except d'Emilio Ch. 11 (central fields) and Nastase Ch. 37-38 (time-dependent perturbation theory, not treated here). Zettili Ch. 10: only Sec. 10.2 is used. Pöschl-Teller Hφ0 = −½φ0 checked | Two off-target locators; Svanberg citation split across lines (5177) | d'Emilio corrected to Ch. 12 (perturbations); Nastase to Ch. 10 (path integral), 36 (stationary perturbation theory, Stark effect Sec. 36.5) and 41 (variational methods); 5177 joined |
| Scattering (`sec-qm-scattering`) | das2023quantum [Ch. 13-14; Secs. 13.1-13.4; Ch. 13 introduction; Secs. 14.1-14.10 with eqs. (13.6), (13.8), (13.11), (14.5)-(14.10), (14.13)-(14.16), (14.18)-(14.38), (14.63)-(14.88); Sec. 14.10, Problems 1-4]; zettili2009quantum [Ch. 11; Secs. 4.4-4.5 (was 4.7), 4.5 (was 4.7, ×2), 11.2, 11.4, 11.4.1, 11.5; Problems 11.2-11.7]; galitski2013exploring [Ch. 13; eq. (XIII.12) (added); Problem 13.1]; demilio2017problems (new here) [Ch. 17; Problems 6.14, 17.2, 17.4, 17.5, 17.7, 17.12, 17.16] | Das PDF 248-256, 257-307 (equation-by-equation; barn p. 263, collimation pp. 259, 266-267, shadow scattering pp. 284-285, Yukawa and screened Coulomb pp. 298-302, Breit-Wigner pp. 305-306); Zettili PDF 237-248, 634-668; Galitski PDF 654-660, 681; d'Emilio PDF 109, 127-129, 351-358 | supported. Checks: full transmission ε = 1 + n²π²/g and 1.4935 for g = 20 (Das p. 245); hard sphere 4πa² slow, 2πa² fast, shadow scattering (Das 14.5); optical theorem (14.28); Breit-Wigner (14.88); Zettili Problems 11.2-11.7 match their examples (δ-shell, hard sphere, square well, double δ, 50 MeV neutrons, e-H). Notes: (1) Das 14.27 is in Sec. 14.4, just before the 14.4.1 heading cited with it; (2) at `exm-qsc-tr-left-right`, `exr-qsc-tr-pole`, `exr-qsc-tr-phase-time` and the double-δ example, Das 13.2-13.3 supply only the base transmission amplitude; reciprocity, the pole, the time delay and resonant tunnelling are the text's extensions, now covered by d'Emilio; (3) "the sign appears only at second order" (`exm-qsc-born-inversion`) and the proton-size remark are not in Das 14.8, which supports f_B ∝ V | **Zettili Sec. 4.7 (finite well) unsupported** at 3 places: R + T and tunnelling are Secs. 4.4-4.5, and the transfer matrix and reciprocity are in no Zettili section; Das does not name the scattering length | Zettili corrected to Secs. 4.4-4.5 / Sec. 4.5. Added d'Emilio: Ch. 17 to the "For more" line; Problem 6.14 (transfer matrix, det M = 1, T = 1/\|A\|², R and T independent of the side) at the left-right example and the transfer-matrix exercise; 17.12 (S-matrix poles = bound states) at the pole exercise; 17.2 (time delay 2dδ/dE) at the phase-time exercise; 17.4 (classical hard sphere) at the classical cross-section example; 17.7 (scattering length) at `exm-qsc-cs-length`; 17.5 (optical theorem); 17.16 (Ramsauer-Townsend). Galitski Ch. 13 at the Born phase shifts refined to eq. (XIII.12) |
| A charged particle in an electromagnetic field (`sec-qm-charged-particle`) | guidry2022symmetry [Ch. 27 and Sec. 28.2; Secs. 26.5, 27.1-27.1.4, 27.2-27.3 (Ex. 27.1), 28.2-28.2.2; Box 27.1; eqs. (27.1)-(27.2), (27.6)-(27.9), (27.30), (28.3), (28.5)-(28.12); Problems 27.1-27.6, 27.12, 28.2-28.4]; galitski2013exploring [Ch. 7; eqs. (VII.1)-(VII.5); Problems 6.10, 6.27 (added), 7.1, 7.1(b), 7.2, 7.3, 7.5, 7.9-7.10, 13.24]; nastase2023quantum (new here) [Secs. 22.2, 22.3, 23.1-23.2, 24.3] | Guidry PDF 492-493, 498-502, 508-511, 514-516, 536, 1004-1005 (printed 458-459, 464-468, 474-477, 480-482, 502; solutions 192-193; offset +34); Galitski PDF 242, 257-258, 287-303, 688-689 (offset +17); Nastase PDF 275-278, 284-287, 297-299 (offset +24) | supported after the units conversion: gauge phase e^{iqλ/ħ}, [π_i, π_j] = iħqε_ijk B_k, Landau levels ħω_c(n + ½), degeneracy qB𝒜/2πħ = Φ_B/Φ_0, AB phase qΦ_B/ħ, the fringe shift, the flux-tube cross section sin²(πΦ_B/Φ_0) (Galitski 13.24). Source-side slips the chapter avoids: Guidry's solution to 28.4 prints e^{iħcχ/e} (the chapter's exercise notes it); Guidry eq. (28.7) has an x_k sign slip for charge −e; Guidry labels the eq. (27.30) spinor ψ₊ beside E₊ | (a) imprecise: 8318 cited Sec. 27.1.2 for eqs. (27.6)-(27.7), which are in 27.1.3; 8002 cited Sec. 28.2.2 for eq. (28.6), in 28.2.1. (b) **In no cited source** (left for the owner): ring spectrum and persistent current (8338, 8477; Galitski 13.24 is scattering), electric AB effect (8362), h/2e superconducting flux (8326), superconducting toroid and the 1980s experiments (8569, 8616), de Haas-van Alphen (8066), two-gauge uniform E (7721, partly), hydrogen Zeeman and diamagnetic numbers (7745, 7753, 7896, 7932: the terms are there, the numbers are the text's), self-adjointness of p·A + A·p (7852, Galitski Ch. 7 weak) | (a) corrected to Secs. 27.1.2-27.1.3 and Secs. 28.2.1-28.2.2. (b) added Nastase Sec. 22.2 eqs. (22.18)-(22.32) at the gauge-covariance proposition; Galitski Problem 6.27 there and at the uniform-E example; Nastase Sec. 22.3 eq. (22.40) at the London current; Sec. 22.2 eq. (22.16) at the orbital Zeeman example; Sec. 24.3 eqs. (24.9)-(24.30) at the Landau-level proposition; Secs. 23.1-23.2 eqs. (23.14)-(23.19) at the AB proposition; Sec. 23.2 eq. (23.18) at the winding-sum example. The remaining items in (b) stay uncited; Dittrich and Reuter, *Classical and Quantum Dynamics* (Zotero 48M6TZID, Ch. 32 AB effect in a box) is an unread library candidate for the ring spectrum |
| Exercises (`sec-quantum-mechanics-exercises`) | galitski2013exploring [Problem 7.12]; nastase2023quantum [Sec. 28.2, eqs. (28.30)-(28.33)]; demilio2017problems [Problem 16.2] (all added) | Galitski PDF 304 (printed 287); Nastase PDF 339-340 (printed 315-316); d'Emilio PDF 329 (printed 324) | supported: spin-½ precession in a uniform field (7.12) for the spin cycle; Euclidean kernel Σψ_nψ_n* e^{−βE_n} for the Euclidean oscillator; hydrogen n = 2 in a uniform B with (e/2mc)(L + 2s)·B for the Zeeman exercise. The three exercises are combinations of the chapter's units, not adapted | **Section cited nothing** | "For more on these topics" line added under the heading |

Citations verified: about 180 distinct (work, locator) pairs before the audit, all read at their pages. About 165 supported as cited; 6 supported only for the base result, with the extension the text's own (listed above); 9 off-target locators in "For more" lines (d'Emilio Chs. 11, 12, 16; Nastase Chs. 1-9, 22, 37-38, and none at 3347; Guidry Ch. 27 weak) and 3 wrong Zettili section locators (4.7), all corrected except d'Emilio Ch. 16 and Guidry Ch. 27 at `sec-schroedinger` (owner); 2 imprecise Guidry subsection locators corrected; about 15 claims in the charged-particle section with no source (listed). 4 citations split across lines, joined. No disagreements. None unavailable: every PDF has a text layer.

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

(pending)

### quantum-field-theory

(pending)

### gauge-theories

(pending)

### renormalisation

(pending)

### general-relativity

(pending)

### supersymmetry-supergravity

(pending)

## Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
