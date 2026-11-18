# Notation clashes and site defaults

Task 1.2 of `tutorials-notation`.

- **Part A:** the decisions that apply across tutorials. Each has the evidence, the options and a proposal.
- **Part B:** points to the clash table of each tutorial, 169 rows in all. Every row there has a proposed
  resolution.
- **Part C:** errors the inventory found that are not notation choices. They are reported under N6, not fixed
  silently.

The owner records a decision in the Decision column. A row of Part B whose decision is "proposal accepted" is
converted as proposed.

## A. Site-wide decisions

### Physics group: mathematics for physicists (MP), theoretical physics (TP), Kaluza-Klein (KK)

| # | Topic | Found | Proposal | Decision |
|---|---|---|---|---|
| S1 | Metric signature | All formulas in MP, TP and KK use (+,−,−,−). Mostly-plus appears only in comparisons, except one unnamed comparison (TP gauge-theories 6768) and one whole example in (+,+,+,−) (KK compactifications 3271-3273). | Keep (+,−,…,−), with a negative-definite internal metric. Name the source in every comparison, and convert the KK example. | accepted (owner, 2026-11-17) |
| S2 | Einstein-Hilbert sign | TP and KK chapters use $S=-\frac{1}{2\kappa^2}\int\sqrt{-g}\,R$, $\kappa^2=8\pi G$. KK conventions line 75 writes $+$, and three KK passages follow their sources' $+$ (consistent-reductions 1921, compactifications 2611 and 2815). | $-\frac{1}{2\kappa^2}$ site-wide. Fix the four places. | accepted (owner, 2026-11-17) |
| S3 | Abelian covariant derivative | $D=\partial+iqA$ in TP (dirac-equation, gauge-theories). $\partial-iqA$ in KK gauge-tower and consistent-reductions, and $\partial+ie'B$ at KK gauge-tower 2179. | $D_\mu=\partial_\mu+iqA_\mu$ site-wide. It is the same as $D=\partial+A$ with anti-Hermitian $A=iqA_\mu$. | accepted (owner, 2026-11-17) |
| S4 | Lie-algebra generators | Anti-Hermitian $T_a$ with $\operatorname{tr}T_aT_b=-\tfrac12\delta_{ab}$ in MP, TP gauge-theories and the KK conventions page. Hermitian $T^a=\sigma^a/2$ appears in TP supersymmetry and renormalisation (after Martin and Nath), and in KK at the Weinberg angle (four-dimensional-theory 1208 onward) and the fuzzy sphere (consistent-reductions 2690 onward). | Anti-Hermitian $T_a$ is the default. Write Hermitian partners as $t_a=iT_a$, the symbol gauge-theories already uses. | accepted (owner, 2026-11-17) |
| S5 | Levi-Civita orientation | $\varepsilon_{0123}=+1$ in MP, TP special-relativity and supersymmetry. $\varepsilon^{0123}=+1$ in TP quantum-field-theory 7584 and gauge-theories 5419. Converting those two flips stated signs, such as $-8\,\vec E\cdot\vec B$ becoming $+8\,\vec E\cdot\vec B$. | $\varepsilon_{0123}=+1$, so $\varepsilon^{0123}=-1$. Convert the two chapters and rederive every sign that depends on it, then report each change (N6). | accepted (owner, 2026-11-17) |
| S6 | 3-vectors | Bold in MP, TP electromagnetism (about 4000 uses) and thermodynamics. $\vec v$ elsewhere in TP and in KK. ML uses bold for all vectors. | **Bold** $\mathbf v$ for vectors site-wide, which also matches ML. Bold numerals such as $\mathbf 3$ stay as representation labels. The alternative is $\vec v$ in physics, with ML as a deviation. | accepted (owner, 2026-11-17) |
| S7 | Hilbert space | $\mathcal H$ in TP; plain $H$ in MP, which also uses $H$ for subgroup, Sobolev space, Hamiltonian, Hessian and cohomology. In ML, $\mathcal H$ is the hypothesis class. | $\mathcal H$ for a Hilbert space in the physics group. ML keeps $\mathcal H$ for the hypothesis class as a stated deviation; a kernel's RKHS is written $\mathcal H_k$. | accepted (owner, 2026-11-17) |
| S8 | Hamiltonian density | $\mathcal H$ in TP quantum-field-theory and gauge-theories, which clashes with S7. | $\mathscr H$ for the Hamiltonian density, with $\mathcal L$ kept for the Lagrangian density. | accepted (owner, 2026-11-17) |
| S9 | Conjugation and adjoint | Complex conjugation is $\bar z$ on some pages and $z^*$ on others. $\bar\psi$ is the Dirac adjoint in TP, but the complex conjugate in TP quantum mechanics. MP writes the operator adjoint both as $T^\dagger$ and as $T^*$. | $z^*$ for complex conjugation, $\bar\psi=\psi^\dagger\gamma^0$ only for the Dirac adjoint, $T^\dagger$ for the Hilbert-space adjoint, and $V^*$ for the dual space. The standard names $\nabla^*\nabla$ and $\bar\partial^*$ stay as stated deviations. | accepted (owner, 2026-11-17) |
| S10 | Fourier transform | $\hat f(k)=\int f\,e^{-ikx}dx$, with $1/2\pi$ on the inverse (MP fourier-analysis). MP hilbert-spaces-operators 4614 uses the unitary $(2\pi)^{-1/2}$ form under the same symbol. TP uses plane waves $e^{-ik\cdot x}$ and $(2\pi)^4$ in the inverse. In QFT, a hat means an operator. | Keep the MP convention. In hilbert-spaces-operators, write the unitary version as an operator $U$. **Symbol:** keep $\hat f$, since in QFT the hat marks operators only, as a stated TP deviation. The alternative is $\tilde f$ site-wide. | accepted (owner, 2026-11-17) |
| S11 | Characteristic function | $\varphi_X(t)=\mathbb E\,e^{+itX}$ in MP probability, the opposite sign to the Fourier transform. | Keep it, as the standard convention of probability, and state it on the notation page. | accepted (owner, 2026-11-17) |
| S12 | Coset spaces | MP homogeneous-spaces-bundles, MP lie-groups-algebras and KK write $S/R$ with $\mathfrak s=\mathfrak r\oplus\mathfrak k$. MP fourier-analysis and spinors-dirac-operator write $G/H$ with $\mathfrak g=\mathfrak h\oplus\mathfrak m$, and $\mathfrak h$ is also the Cartan subalgebra. | $S/R$, $\mathfrak r$, $\mathfrak k$ everywhere. | accepted (owner, 2026-11-17) |
| S13 | Radius and circle period | $R$ is the curvature scalar, the radius (five KK chapters) and the isotropy group. The period is $y\sim y+2\pi$ in kaluza-klein-reduction, but $y+2\pi R$ in other chapters. | **Proposal:** radius $r$, with $y\sim y+2\pi r$ everywhere, and $R$ kept for the curvature scalar. **Alternative:** keep $R$ for the radius (common in the literature), with the curvature always written $R$ with its dimension, as in $R_4$. | accepted (owner, 2026-11-17) |
| S14 | Trace, Planck mass, supersymmetries | Tr and tr; $M_P$ and $M_{Pl}$; $N$ and $\mathcal N$ for the number of supersymmetries. | $\operatorname{tr}$; $M_{\mathrm{Pl}}$, the reduced Planck mass, with its relation to $\kappa$ stated; $\mathcal N$ for supersymmetries. | accepted (owner, 2026-11-17) |
| S15 | Averages | $\mathbb E$ for classical random variables; $\langle\cdot\rangle$ for quantum and thermal averages, and in KK for an average over the internal space. | Keep all three meanings, stated on the notation pages. | accepted (owner, 2026-11-17) |
| S16 | Units | TP: Heaviside-Lorentz with $c=1$. $\hbar$ is explicit in classical mechanics, electromagnetism and quantum mechanics, and $\hbar=c=1$ from the Dirac chapter on. $k_B=1$ in thermodynamics. MP sets units locally, with some Gaussian passages. KK uses $\hbar=c=1$. | One table of the units used, per chapter. Move MP's Gaussian passages, such as the fourier-analysis multipoles at 3789, to Heaviside-Lorentz. | accepted (owner, 2026-11-17) |
| S17 | Inner product | Antilinear in the first slot in MP and TP. MP group-theory 4167 has a character inner product linear in the first slot. | Antilinear in the first slot site-wide. Fix 4167. | accepted (owner, 2026-11-17) |

### Machine-learning group: mathematics for ML (MML), machine learning (ML)

| # | Topic | Found | Proposal | Decision |
|---|---|---|---|---|
| S18 | Vectors and matrices | Bold in `sec-notation` and most of ML. The MML appendices use plain matrices throughout. Plain vectors appear in ML online learning (OCO, OGD, FTRL, LinUCB). | Bold vectors and bold matrices (S6). Plain $\Sigma$ for the covariance stays as a stated exception. | accepted (owner, 2026-11-17) |
| S19 | Transpose | $^T$ in most of ML and MML. $^\top$ in the MML appendices and 14 places in ML foundations. MP uses $^{\mathsf T}$ (about 150 uses). | $^\top$ site-wide, in both groups. | accepted (owner, 2026-11-17) |
| S20 | Probability | $P(\cdot)$ in MML and most of ML; $\mathbb P[\cdot]$ in the MML appendices and ML foundations. $P$ is also a PMF, the MDP transition kernel and $P_\pi$. | $\mathbb P$ for probability, $p(\cdot)$ for densities and mass functions, and $P(s'\mid s,a)$ and $P_\pi$ kept for the MDP. The probability space is $(\Omega,\mathcal F,\mathbb P)$, which matches MP. | accepted (owner, 2026-11-17) |
| S21 | Sample, data, distribution | Sample size is $n$ in MML and most of ML, $m$ in the learning theory (after Shalev-Shwartz), and $N$ in RL. $\mathcal D$ is the distribution, a dataset and a replay buffer. $S$ is the sample, the sample space and the MDP state. $\mathbf X$ is a random vector and the data matrix. | $n$ for the sample size, with $m_{\mathcal H}$ for the sample complexity; $\mathcal D$ for the data distribution; $S=((\mathbf x_i,y_i))_{i=1}^n$ for the sample; $\mathbf X$ for the data matrix; $\mathbf x$ for a random vector, written in lowercase with its law stated. The replay buffer is $\mathcal B$. | accepted (owner, 2026-11-17) |
| S22 | Logarithm and entropy | `sec-notation`: the natural log. But entropy is defined with $\log_2$ (MML 3068, 3119), and $H(P,Q)=H(P)+D_{KL}$ at 3490 mixes the two bases. | Natural log and nats throughout; bits only with an explicit $\log_2$. | accepted (owner, 2026-11-17) |
| S23 | Number of features | "$p$ or $d$" in `sec-notation`. | $d$. | accepted (owner, 2026-11-17) |
| S24 | Loss, Lagrangian, likelihood | $\mathcal L$ is a loss, a Lagrangian and (in KK) the Lie derivative; $L$ is a loss and a likelihood; $\ell$ is the loss, a layer index and a log-likelihood. | **Shared with physics:** $\mathcal L$ for a Lagrangian; the Lie derivative written $\mathcal L_X$ only with its vector field. **ML:** loss $\ell$; risk $L_{\mathcal D}$; likelihood written $p(S\mid\theta)$ and log-likelihood $\log p(S\mid\theta)$, with no separate letter; layer index $l$. | accepted (owner, 2026-11-17) |
| S25 | Normal distribution | $\mathcal N(\mu,\sigma^2)$ in ML; $N(\mu,\sigma^2)$ in MP. $\mathcal N$ is also the number of supersymmetries (S14). | $\mathcal N(\mu,\sigma^2)$ site-wide; the two meanings never meet in one chapter. | accepted (owner, 2026-11-17) |
| S26 | Reinforcement learning | Sutton-Barto ($S_t, A_t, R_{t+1}, v_\pi, q_\pi$) until GAE/PPO/SAC/offline, which switch to $s_t, a_t, r_t$. $A_t$ is also the advantage, $r_t$ is also the PPO ratio, the behaviour policy is $b$ and $\pi_\beta$, and the on-policy distribution has five symbols. | Sutton-Barto throughout: advantage $\hat A_t$ estimated / $a_\pi(s,a)$ exact, PPO ratio $\rho_t(\theta)$, behaviour policy $b$, on-policy distribution $\mu_\pi$, and a deterministic policy written $\pi_\theta(s)$. | accepted (owner, 2026-11-17) |

## B. Clash tables by tutorial

Each table is in the tutorial's inventory file, under "Clashes in this tutorial". A row covered by a Part A decision
follows that decision. Every other row carries its own proposed resolution.

| Tutorial | File | Rows |
|---|---|---|
| Mathematics for physicists | `fundamentals-of-mathematics-for-physicists.md` | 31 |
| Theoretical physics | `fundamentals-of-theoretical-physics.md` | 21 |
| Kaluza-Klein | `kaluza-klein-theories.md` | 32 |
| Mathematics for ML | `fundamentals-of-mathematics-for-machine-learning.md` | 33 |
| Machine learning | `fundamentals-of-machine-learning.md` | 52 |

Decision for Part B: every proposed resolution accepted (owner, 2026-11-17).

## C. Errors found (not notation choices; N6)

Decision: fix all (owner, 2026-11-17).

| # | Where | What |
|---|---|---|
| E1 | KK conventions 46 vs 75 | The Einstein-Hilbert sign is stated two ways on the same page (S2). |
| E2 | KK kaluza-klein-reduction 2580/2585 | The exercise says the period is $2\pi R$; its solution uses $2\pi$. |
| E3 | MP spinors-dirac-operator 3782 vs 3373 | The Laplacian sign is flipped against $D^2=-\Delta$ in the same chapter. |
| E4 | MML 3490 | $H(P,Q)=H(P)+D_{KL}(P\Vert Q)$ is applied with entropy in bits and KL in nats. |
| E5 | MML `sec-notation` 47, 66, 81 | "Old lowercase" should read "Bold lowercase"; a stray ")"; a misplaced `$`. |
| E6 | KK isometries-gauge-fields 776-780, reduced-theory 46-51 | The Killing-vector structure constants $f_{ab}{}^c=-\epsilon_{abc}$ have the opposite sign to the gauge algebra's $+\epsilon_{abc}$ under the same symbol. The two must be related explicitly, or one renamed. |
