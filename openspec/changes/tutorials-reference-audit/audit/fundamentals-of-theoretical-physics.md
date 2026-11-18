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

Works cited: `cini2023quantum`, `demilio2017problems`, `derezinski2022mathematics`, `foulaadvand2023computational`, `galitski2013exploring`, `guidry2022symmetry`, `izaac2018computational`, `mukunda2022continuous`, `nastase2023quantum`, `svanberg2022spectroscopy`, `talagrand2022what`, `tornetta2022mathematical`, `zettili2009quantum`.

| Section | Works cited |
|---|---|
| States and observables (`sec-states-observables`) | cini2023quantum, demilio2017problems, derezinski2022mathematics, tornetta2022mathematical |
| Measurement and the Schrödinger equation (`sec-schroedinger`) | cini2023quantum, demilio2017problems, galitski2013exploring, guidry2022symmetry, izaac2018computational, zettili2009quantum |
| The harmonic oscillator (`sec-harmonic-oscillator`) | cini2023quantum, nastase2023quantum |
| Angular momentum and spin (`sec-angular-momentum`) | cini2023quantum, demilio2017problems, galitski2013exploring, nastase2023quantum, svanberg2022spectroscopy, zettili2009quantum |
| Symmetries in quantum mechanics (`sec-quantum-symmetries`) | cini2023quantum, foulaadvand2023computational, galitski2013exploring, mukunda2022continuous, nastase2023quantum, svanberg2022spectroscopy, talagrand2022what |
| Perturbation theory and the path integral (`sec-path-integral`) | demilio2017problems, galitski2013exploring, izaac2018computational, nastase2023quantum, svanberg2022spectroscopy, zettili2009quantum |
| Scattering (`sec-qm-scattering`) | cini2023quantum, galitski2013exploring, zettili2009quantum |
| A charged particle in an electromagnetic field (`sec-qm-charged-particle`) | galitski2013exploring, guidry2022symmetry |
| Exercises (`sec-quantum-mechanics-exercises`) | **none** |

Citations without a locator: `cini2023quantum` (line 1603), `cini2023quantum` (line 1741), `nastase2023quantum` (line 3347), `cini2023quantum` (line 3516), `svanberg2022spectroscopy` (line 5177).

### classical-field-theory

Works cited: `alvarezgaume2005`, `blennow2022relativity`, `buchbinder2021introduction`, `emam2021covariant`, `gourgoulhon2013special`, `maggiore2023electrodynamics`.

| Section | Works cited |
|---|---|
| Fields (`sec-fields`) | emam2021covariant, maggiore2023electrodynamics |
| Actions and symmetries (`sec-actions-symmetries`) | alvarezgaume2005, buchbinder2021introduction, emam2021covariant, gourgoulhon2013special, maggiore2023electrodynamics |
| Exercises (`sec-classical-field-theory-exercises`) | **none** |

Citations without a locator: `blennow2022relativity` (line 3), `alvarezgaume2005` (line 2546).

### dirac-equation

Works cited: `aitchison2024gauge`, `calogeracos1999klein`, `cini2023quantum`, `costella1995foldy`, `eides2001hydrogen`, `fan2023electron`, `galitski2013exploring`, `nastase2023quantum`, `pal2011majorana`, `pal2015introductory`, `parthey2011hydrogen`, `shankar2017quantum`, `svanberg2022spectroscopy`, `zhelnorovich2019spinors`.

| Section | Works cited |
|---|---|
| The equation and its covariance (`sec-dirac-covariance`) | aitchison2024gauge, costella1995foldy, galitski2013exploring, nastase2023quantum, zhelnorovich2019spinors |
| Free solutions (`sec-dirac-free-solutions`) | calogeracos1999klein, costella1995foldy, pal2011majorana |
| The non-relativistic limit (`sec-dirac-nonrelativistic`) | cini2023quantum, costella1995foldy, eides2001hydrogen, fan2023electron, svanberg2022spectroscopy |
| The Dirac hydrogen atom (`sec-dirac-hydrogen`) | calogeracos1999klein, cini2023quantum, eides2001hydrogen, parthey2011hydrogen, svanberg2022spectroscopy, zhelnorovich2019spinors |
| Charge conjugation, Weyl and Majorana fermions (`sec-dirac-majorana`) | pal2011majorana, pal2015introductory, parthey2011hydrogen, shankar2017quantum, svanberg2022spectroscopy, zhelnorovich2019spinors |
| The Klein paradox and the Dirac sea (`sec-klein-paradox`) | aitchison2024gauge, calogeracos1999klein, cini2023quantum, costella1995foldy |
| Exercises (`sec-dirac-equation-exercises`) | parthey2011hydrogen |

Citations without a locator: `zhelnorovich2019spinors` (line 27), `cini2023quantum` (line 27), `svanberg2022spectroscopy` (line 28), `eides2001hydrogen` (line 29), `costella1995foldy` (line 30), `pal2011majorana` (line 30), `calogeracos1999klein` (line 31), `parthey2011hydrogen` (line 31), `fan2023electron` (line 32), `zhelnorovich2019spinors` (line 203), `zhelnorovich2019spinors` (line 460), `calogeracos1999klein` (line 1976), `costella1995foldy` (line 1988), `eides2001hydrogen` (line 1988), `fan2023electron` (line 2159), `fan2023electron` (line 2190), `fan2023electron` (line 2222), `eides2001hydrogen` (line 2740), `svanberg2022spectroscopy` (line 2895), `eides2001hydrogen` (line 3591), `parthey2011hydrogen` (line 3603), `eides2001hydrogen` (line 3793), `pal2011majorana` (line 3851), `parthey2011hydrogen` (line 4043), `parthey2011hydrogen` (line 4051), `pal2011majorana` (line 4557), `calogeracos1999klein` (line 4899), `costella1995foldy` (line 4900), `calogeracos1999klein` (line 5059), `parthey2011hydrogen` (line 5645), `parthey2011hydrogen` (line 5652).

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

(pending)

### electromagnetism

(pending)

### special-relativity

(pending)

### thermodynamics-statistical-mechanics

(pending)

### quantum-mechanics

(pending)

### classical-field-theory

(pending)

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
