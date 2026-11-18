# Coverage: Fundamentals of Mathematics for Machine Learning

Tutorial chapters at the time of the audit:

- `mathematical-and-statistical-foundations` (abbreviated MSF below)
- `appendices-and-technical-background` (abbreviated APP below)

Only `##` sections carry `sec-` ids in these pages, so covered rows name the `##` section and the statement box
that teaches the topic. Section ids of the machine learning tutorial are used for rows that belong there.

## Benchmarks

| Key | Title | Why chosen | TOC read via |
|---|---|---|---|
| `deisenroth2020mml` (Zotero KMLSHSM7) | Deisenroth, Faisal, Ong, *Mathematics for Machine Learning* (2020) | The standard text for this exact subject. It is in the bib and cited by the tutorial, but has no `textbook` keyword. Part I is the benchmark; Part II is ML methods. | `zotero_get_pdf_outline` |
| `aggarwalLinearAlgebraOptimization2020` (Zotero 7YKRVYRJ) | Aggarwal, *Linear Algebra and Optimization for Machine Learning* (2020) | Textbooks collection, tags Machine Learning + Optimization + Algebra. A full-length text on the linear algebra and optimization half of the scope. | `zotero_get_pdf_outline` |
| `aggarwalProbabilityStatisticsMachine2024` (Zotero ZVVSSS7W) | Aggarwal, *Probability and Statistics for Machine Learning* (2024) | Textbooks collection, tags Machine Learning + Mathematics + Probability & Statistics. A full-length text on the probability and statistics half of the scope. | `zotero_get_pdf_outline` |
| `chambert-loirInformationTheory2022` (Zotero U5H4HRHV) | Chambert-Loir, *Information Theory: Three Theorems by Claude Shannon* (2022) | The only mathematical information-theory textbook in the library (tags Information Theory, Mathematics, Statistical Science). The others tagged Information Theory are on biology, complex systems, quantum or algorithmic information. | `zotero_get_pdf_outline` |

Not chosen: Nelson, *Essential Math for AI* (HEELUBHJ), a survey without a standard structure; Axler, *Linear Algebra
Done Right* (YVGPNNLV), a pure linear algebra text at the level of the physicists' tutorial; the ML method books
(Shalev-Shwartz and Ben-David, ISL, ESL, Bishop), which benchmark Fundamentals of Machine Learning.

## Coverage

### deisenroth2020mml: Mathematics for Machine Learning

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction and motivation | How to read the book | out of scope | - | Motivation, no mathematics |
| 2.1 Systems of linear equations | General and matrix form | covered | MSF `#sec-linear-algebra` (System of Linear Equations boxes) | |
| 2.2 Matrices | Matrix operations, inverse, transpose | partly covered | MSF `#sec-linear-algebra`, APP `#sec-linear-algebra-recap` (range, null space, rank and transpose) | The inverse appears only in the notation list; goes with 2.3 to `matrix-factorizations-and-linear-systems` |
| 2.3 Solving systems of linear equations | Gaussian elimination, row echelon form, inverse, Moore-Penrose | proposed chapter | `matrix-factorizations-and-linear-systems` | No unit on solving systems |
| 2.4 Vector spaces | Vector spaces, subspaces | covered | MSF `#sec-linear-algebra` (Vector Space); APP `#sec-linear-algebra-recap` (Subspaces and span) | |
| 2.5 Linear independence | | covered | MSF `#sec-linear-algebra` (Linear Independence) | |
| 2.6 Basis and rank | | covered | MSF `#sec-linear-algebra` (Basis, Matrix Rank) | |
| 2.7 Linear mappings | Matrix of a linear map, change of basis, image and kernel | section gap | MSF `#sec-linear-algebra` | Kernel and range are defined in APP, but linear maps and basis change are not |
| 2.8 Affine spaces | Affine subspaces and maps | section gap | MSF `#sec-linear-algebra` | One unit's worth |
| 3.1-3.4 Norms, inner products, lengths, angles, orthogonality | | covered | MSF `#sec-msf-inner-products-norms` (Inner Product, Norm, Angle, Orthogonality) | |
| 3.5 Orthonormal basis | Orthonormal bases, Gram-Schmidt | partly covered | APP `#sec-linear-algebra-recap` (Orthogonality); Gram-Schmidt goes to `matrix-factorizations-and-linear-systems` | |
| 3.6 Orthogonal complement | | section gap | MSF `#sec-msf-inner-products-norms` | |
| 3.7 Inner product of functions | | section gap | MSF `#sec-msf-inner-products-norms` | Short; later needed for kernels |
| 3.8 Orthogonal projections | | covered | MSF `#sec-msf-inner-products-norms` (Orthogonal Projection) | |
| 3.9 Rotations | Orthogonal matrices, rotations | section gap | MSF `#sec-msf-inner-products-norms` | |
| 4.1 Determinant and trace | | covered | APP `#sec-linear-algebra-recap` (Trace and determinant) | |
| 4.2 Eigenvalues and eigenvectors | | covered | MSF `#sec-msf-matrix-decompositions`; APP `#sec-linear-algebra-recap` | |
| 4.3 Cholesky decomposition | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 4.4 Eigendecomposition and diagonalization | | covered | MSF `#sec-msf-matrix-decompositions` (Eigendecomposition); APP `#sec-linear-algebra-recap` (Spectral decomposition) | |
| 4.5 Singular value decomposition | | covered | MSF `#sec-msf-matrix-decompositions` (SVD); APP `#sec-linear-algebra-recap` (SVD theorem) | |
| 4.6 Matrix approximation | Truncated SVD, Eckart-Young | proposed chapter | `matrix-factorizations-and-linear-systems` | Matrix norms are defined in APP, the approximation theorem is not |
| 4.7 Matrix phylogeny | Overview diagram | out of scope | - | Summary, no new content |
| 5.1-5.8 Vector calculus | Partial derivatives, Jacobians, gradients of matrices, identities, backpropagation and automatic differentiation, Hessians, Taylor series | proposed chapter | `vector-calculus-and-automatic-differentiation` | MSF defines the gradient only as a descent step; no Jacobian, Hessian, chain rule or Taylor unit |
| 6.1 Construction of a probability space | | covered | MSF `#sec-probability-statistics` (Probability Space, Random Variable) | |
| 6.2 Discrete and continuous probabilities | PMFs | covered | MSF `#sec-msf-discrete-random-variables` | |
| 6.2 Discrete and continuous probabilities | PDFs, CDFs, continuous joint densities | proposed chapter | `continuous-random-variables-and-exponential-families` | Only the Gaussian density is given |
| 6.3 Sum rule, product rule, Bayes | | covered | MSF `#sec-probability-statistics` (Sum Rule, Product Rule, Bayes' Theorem) | |
| 6.4 Summary statistics and independence | Means, covariances, independence | covered | MSF `#sec-msf-statistical-concepts`, `#sec-msf-discrete-random-variables` | |
| 6.5 Gaussian distribution | Univariate and multivariate densities | covered | MSF `#sec-msf-distributions` (Gaussian boxes) | |
| 6.5 Gaussian distribution | Marginals, conditionals, products, linear transformations of Gaussians | section gap | MSF `#sec-msf-distributions` | |
| 6.6 Conjugacy and the exponential family | | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 6.7 Change of variables / inverse transform | | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 7.1 Optimization using gradient descent | GD, SGD | covered | MSF `#sec-optimization` (Gradient, SGD, Mini-batch) | |
| 7.1 Optimization using gradient descent | Step size, momentum | proposed chapter | `gradient-based-optimization-methods` | Momentum and Adam are prose only in "Advanced Optimizers", no statement box |
| 7.2 Constrained optimization and Lagrange multipliers | Lagrangian | covered | MSF `#sec-msf-convex-constrained` (Lagrangian) | |
| 7.2 Constrained optimization and Lagrange multipliers | Lagrangian dual, weak duality, inequality constraints | proposed chapter | `constrained-optimization-and-duality` | |
| 7.3 Convex optimization | Convex sets and functions | covered | MSF `#sec-msf-convex-constrained` (Convex Set, Convex Function, Local Minima) | |
| 7.3 Convex optimization | Linear and quadratic programs, Legendre-Fenchel conjugate | proposed chapter | `constrained-optimization-and-duality` | |
| 8 When models meet data | ERM, parameter estimation, graphical models, model selection | belongs to fundamentals-of-machine-learning | `#sec-statistical-learning`, `#sec-model-selection` | ML method |
| 9 Linear regression | | belongs to fundamentals-of-machine-learning | `#sec-linear-models` | ML method |
| 10 PCA | | belongs to fundamentals-of-machine-learning | `#sec-dimensionality-reduction` | ML method |
| 11 Gaussian mixture models | | belongs to fundamentals-of-machine-learning | `#sec-clustering`, `#sec-generative-latent` | ML method |
| 12 Support vector machines | | belongs to fundamentals-of-machine-learning | `#sec-margin-methods` | ML method |

### aggarwalLinearAlgebraOptimization2020: Linear Algebra and Optimization for ML

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1.2 Scalars, vectors, matrices | Basic operations, special matrices | covered | MSF `#sec-linear-algebra`; APP `#sec-linear-algebra-recap` | |
| 1.2.4-1.2.5 Matrix inverse, matrix inversion lemma | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 1.2.6 Frobenius norm, trace | | covered | APP `#sec-linear-algebra-recap` (Matrix norms, Trace and determinant) | |
| 1.3 Matrix multiplication as decomposable operator | | section gap | MSF `#sec-linear-algebra` | Same gap as linear maps (MML 2.7) |
| 1.4 Basic problems in ML | | belongs to fundamentals-of-machine-learning | - | ML methods |
| 1.5 Optimization for ML | Taylor expansion, computational graphs | proposed chapter | `vector-calculus-and-automatic-differentiation` | |
| 2.1-2.3 Linear transforms, vector spaces, coordinates, change of basis | | partly covered | Vector spaces and span: MSF `#sec-linear-algebra`; linear transforms and basis change: section gap of MSF `#sec-linear-algebra` | |
| 2.3.4, 2.7.3, 2.11.1 Wavelet, DCT, DFT | | out of scope | - | Signal processing; Fourier analysis is a chapter of the physicists' maths tutorial |
| 2.4 Rows and columns of matrices | Four fundamental subspaces | covered | APP `#sec-linear-algebra-recap` (Range, null space, rank and transpose) | |
| 2.5 Row echelon form, LU | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 2.6 Matrix rank | | covered | MSF `#sec-linear-algebra` (Matrix Rank) | |
| 2.7 Gram-Schmidt and QR | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 2.8 Optimization view of linear systems | Least squares, pseudoinverse, projection matrix | proposed chapter | `matrix-factorizations-and-linear-systems` (projection itself covered in MSF `#sec-msf-inner-products-norms`) | |
| 2.9 Ill-conditioned matrices | Condition number | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 2.10 Inner products | | covered | MSF `#sec-msf-inner-products-norms` | |
| 2.11 Complex vector spaces | | out of scope | - | Not used by the ML tutorial; taught in the physicists' maths tutorial |
| 3.2 Determinants | | covered | APP `#sec-linear-algebra-recap` (Trace and determinant) | |
| 3.3 Diagonalization | Eigenvectors, diagonalization | covered | MSF `#sec-msf-matrix-decompositions` | |
| 3.3.1-3.3.6 Complex eigenvalues, left eigenvectors, triangulization, similarity | | section gap | MSF `#sec-msf-matrix-decompositions` | |
| 3.3.7-3.3.8 Symmetric and PSD matrices | | covered | APP `#sec-linear-algebra-recap` (Spectral decomposition, Positive definite matrices) | |
| 3.3.9 Cholesky | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 3.4 ML and optimization applications | Quadratic forms, Rayleigh quotient, norm-constrained quadratic programs | section gap | MSF `#sec-msf-matrix-decompositions` | APP has the variational construction of singular vectors, not quadratic forms |
| 3.5 Numerical eigenvector algorithms | Power method, QR algorithm | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 4.2 Basics of optimization | Uni-, bi-, multivariate GD | covered | MSF `#sec-optimization` | |
| 4.3 Convex objective functions | | covered | MSF `#sec-msf-convex-constrained` | |
| 4.4 Minutiae of gradient descent | Finite-difference checks, learning-rate decay, line search (Armijo), initialization | proposed chapter | `gradient-based-optimization-methods` | |
| 4.5 Properties of optimization in ML | SGD, separability | covered | MSF `#sec-optimization` (SGD) | |
| 4.6 Derivatives with respect to vectors | Matrix calculus identities, vector chain rule | proposed chapter | `vector-calculus-and-automatic-differentiation` | |
| 4.7-4.9 Regression, SVM, logistic and multiclass models | | belongs to fundamentals-of-machine-learning | `#sec-linear-models`, `#sec-margin-methods` | ML methods |
| 4.10 Coordinate descent | | proposed chapter | `gradient-based-optimization-methods` | |
| 5.2-5.3 Curvature, saddle points; momentum, AdaGrad, RMSProp, Adam | | proposed chapter | `gradient-based-optimization-methods` | Prose only in MSF "Advanced Optimizers" |
| 5.4-5.7 Newton method, trust region, conjugate gradient, quasi-Newton (BFGS) | | proposed chapter | `gradient-based-optimization-methods` | |
| 5.8 Non-differentiable optimization | Subgradient, proximal gradient | proposed chapter | `gradient-based-optimization-methods` | |
| 6.2-6.3 Primal methods | Projected gradient, SQP, primal coordinate descent | proposed chapter | `constrained-optimization-and-duality` | |
| 6.4 Lagrangian relaxation and duality | KKT conditions, duality | proposed chapter | `constrained-optimization-and-duality` | MSF has a single Lagrangian definition (KKT named once) |
| 6.4.3-6.4.4 SVM dual | | belongs to fundamentals-of-machine-learning | `#sec-margin-methods` | ML application |
| 6.5-6.7 Penalty, barrier, interior point, norm constraints, primal versus dual | | proposed chapter | `constrained-optimization-and-duality` | |
| 7.2 SVD, linear algebra view | | covered | APP `#sec-linear-algebra-recap` (SVD boxes) | |
| 7.2.4 Truncated SVD | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 7.3 SVD, optimization view | | covered | APP `#sec-linear-algebra-recap` (Variational construction of singular vectors) | |
| 7.3.4, 7.4.1-7.4.8 PCA and SVD applications | | belongs to fundamentals-of-machine-learning | `#sec-dimensionality-reduction` | Except 7.4.4 pseudoinverse, which goes to `matrix-factorizations-and-linear-systems` |
| 7.5 Numerical SVD algorithms | | proposed chapter | `matrix-factorizations-and-linear-systems` | |
| 8 Matrix factorization | NMF, recommender systems, factorization machines | belongs to fundamentals-of-machine-learning | `#sec-dimensionality-reduction` | ML methods |
| 9 Linear algebra of similarity | Kernels, Nyström, kernel PCA, representer theorem | belongs to fundamentals-of-machine-learning | `#sec-margin-methods`, `#sec-dimensionality-reduction` | ML methods |
| 10.2-10.4 Adjacency matrices, powers, Perron-Frobenius | | section gap | MSF `#sec-msf-matrix-decompositions` | Spectral facts of nonnegative matrices; also needed for Markov chains |
| 10.5-10.8 Spectral clustering, PageRank, vertex classification | | belongs to fundamentals-of-machine-learning | `#sec-clustering` | ML methods |
| 11 Optimization in computational graphs | Computational graphs, reverse-mode differentiation | proposed chapter | `vector-calculus-and-automatic-differentiation` | Network-specific backpropagation stays in the ML tutorial (`#sec-neural-networks`) |

### aggarwalProbabilityStatisticsMachine2024: Probability and Statistics for ML

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1.1-1.4 Introduction | Data, populations versus samples | out of scope | - | Overview |
| 1.5 Hypothesis testing (intro) | | proposed chapter | `statistical-inference-and-limit-theorems` | |
| 1.6 Basic ML problems | | belongs to fundamentals-of-machine-learning | - | ML methods |
| 2.2 Summarizing data | Sample mean, median, dispersion, correlation, rank correlation, contingency tables | section gap | MSF `#sec-msf-statistical-concepts` | Population moments are covered, sample statistics and correlation are not |
| 2.3 Data visualization | | out of scope | - | Not mathematics |
| 2.4 Preprocessing, whitening | | belongs to fundamentals-of-machine-learning | - | Data preprocessing |
| 3.2, 3.4-3.6 Sample spaces, events, conditional probability, independence, Bayes | | covered | MSF `#sec-probability-statistics`, `#sec-msf-discrete-random-variables` | |
| 3.3 Counting approach | Combinatorial probability | section gap | MSF `#sec-probability-statistics` | |
| 3.7 Probability distributions | Discrete and multivariate discrete | covered | MSF `#sec-msf-discrete-random-variables` | |
| 3.7.2-3.7.3 Continuous and multivariate continuous distributions | | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 3.8 Independence and conditionals | | covered | MSF `#sec-msf-discrete-random-variables` (Independence, Conditional PMF) | |
| 3.9 Expectation, variance, covariance | | covered | MSF `#sec-msf-statistical-concepts` | |
| 3.10 Compound distributions, continuous Bayes | | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 3.11 Functions of random variables | Transformations, sums (convolution) | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 4.3, 4.6, 4.7, 4.10 Bernoulli, binomial, multinomial, normal | | covered | MSF `#sec-msf-distributions` | |
| 4.2, 4.8 Uniform, exponential | | proposed chapter | `continuous-random-variables-and-exponential-families` | Continuous families |
| 4.4, 4.5, 4.9 Categorical, geometric, Poisson | | section gap | MSF `#sec-msf-distributions` | Discrete families, one unit |
| 4.11-4.12 Student's t, chi-squared | | proposed chapter | `statistical-inference-and-limit-theorems` | Sampling distributions |
| 4.13 Mixture distributions | | belongs to fundamentals-of-machine-learning | `#sec-generative-latent` | ML models |
| 4.14 Moments, moment generating functions | | section gap | MSF `#sec-msf-statistical-concepts` | MGFs are used in APP Chernoff proofs but not defined in a box |
| 5.2-5.3 Central limit theorem, sampling distribution, standard error | | proposed chapter | `statistical-inference-and-limit-theorems` | CLT named once, no box |
| 5.4-5.7 Hypothesis tests, confidence intervals, t-tests, chi-squared tests, ANOVA | | proposed chapter | `statistical-inference-and-limit-theorems` | ML tutorial's `#sec-multiple-testing` uses p-values and tests that no chapter defines |
| 5.8 ML applications of testing | Classifier comparison, feature selection, Fisher discriminant | belongs to fundamentals-of-machine-learning | `#sec-model-selection` | ML methods |
| 6.2 Maximum likelihood estimation | | covered | MSF `#sec-information-theory` (Maximum Likelihood Estimate) | |
| 6.3 Reconstructing common distributions | MLE for each family | partly covered | MSF `#sec-information-theory` (examples) | Remaining families go with their distributions |
| 6.4 EM algorithm | | belongs to fundamentals-of-machine-learning | `#sec-clustering` | ML method |
| 6.5, 6.6.3 Kernel density estimation | | belongs to fundamentals-of-machine-learning | - | ML method |
| 6.6.1 Variance in MLE | Estimator properties (bias, consistency, variance) | proposed chapter | `statistical-inference-and-limit-theorems` | |
| 6.6.2 MAP estimation | | covered | MSF `#sec-information-theory` (Maximum A Posteriori Estimate) | |
| 6.7 Bias-variance trade-off | | covered | MSF `#sec-msf-statistical-concepts` (Bias-Variance Decomposition) | |
| 6.8 Conjugate priors: gamma, beta, Dirichlet | | proposed chapter | `continuous-random-variables-and-exponential-families` | |
| 7 Regression | | belongs to fundamentals-of-machine-learning | `#sec-linear-models` | ML method |
| 8 Probabilistic classification | | belongs to fundamentals-of-machine-learning | `#sec-linear-models`, `#sec-generative-models` | ML methods |
| 9 Probabilistic unsupervised learning | | belongs to fundamentals-of-machine-learning | `#sec-clustering`, `#sec-dimensionality-reduction` | ML methods |
| 10.2 Markov chains | Stationary distributions, periodicity, ergodicity, absorption | section gap | MSF `#sec-msf-stochastic-processes` | Markov property is covered; long-run behaviour is not. One benchmark, one section |
| 10.3-10.6 PageRank, HMMs | | belongs to fundamentals-of-machine-learning | - | ML methods |
| 11.2 Jensen's inequality | | section gap | APP `#sec-measure-concentration` | Used for KL nonnegativity, never stated |
| 11.3 Markov and Chebyshev | | covered | APP `#sec-measure-concentration` | |
| 11.4.1, 11.4.4 Chernoff, Hoeffding | | covered | APP `#sec-measure-concentration` | |
| 11.4.2-11.4.3, 11.5 Normal and Poisson approximations, tail bounds versus approximations | | section gap | APP `#sec-measure-concentration` | |

### chambert-loirInformationTheory2022: Information Theory

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 0.1 Summable families | | out of scope | - | Analysis detail; taught in the physicists' maths tutorial |
| 0.2-0.4 Probability, discrete random variables, independence, conditional expectation | | covered | MSF `#sec-probability-statistics`, `#sec-msf-discrete-random-variables`, `#sec-msf-statistical-concepts` | |
| 1.1 Entropy | | covered | MSF `#sec-information-theory` (Shannon Entropy) | |
| 1.2 Conditional entropy | Conditional entropy, chain rule | section gap | MSF `#sec-information-theory` | Named once, no box |
| 1.3 Mutual information | | covered | MSF `#sec-information-theory` (Mutual Information) | Data-processing inequality is part of the 1.2 gap |
| 1.4-1.5 Entropy rate, Markov sources | | section gap | MSF `#sec-information-theory` | Relevant to sequence models (perplexity) |
| 2.1-2.4 Codes, Kraft-McMillan, optimal codes, source coding | | section gap | MSF `#sec-information-theory` | Gives cross-entropy its code-length meaning; one benchmark, one section |
| 2.5-2.6 Channel capacity, channel coding | | out of scope | - | Communication theory, not used by the ML tutorial |
| 3 Sampling | Fourier series, sampling theorem | out of scope | - | Signal processing; Fourier analysis belongs to the physicists' maths tutorial |
| 4 Solutions | | out of scope | - | Exercise solutions |

## Proposed chapters

All proposed chapters sit between `mathematical-and-statistical-foundations` and `appendices-and-technical-background`,
in the order below. None of them splits an existing chapter: each holds topics that have no statement box in the
tutorial. Several are next to an existing section of MSF and extend it (noted in the reason), so the owner may prefer
to treat some as section gaps of MSF instead.

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision |
|---|---|---|---|---|---|---|
| `matrix-factorizations-and-linear-systems` | Matrix factorizations and linear systems | `mathematical-and-statistical-foundations` | `mathematical-and-statistical-foundations`, `appendices-and-technical-background` (Linear Algebra Recap) | `deisenroth2020mml` ch. 2.3, 4.3, 4.6; `aggarwalLinearAlgebraOptimization2020` ch. 2.5-2.9, 3.3.9, 3.5, 7.2.4, 7.5 | Gaussian elimination and LU, inverse and inversion lemma, Gram-Schmidt and QR, Cholesky, least squares and pseudoinverse, conditioning, low-rank approximation (Eckart-Young), power and QR iterations. In 2 benchmarks, 4+ sections. Extends MSF `#sec-msf-matrix-decompositions`, which teaches only eigendecomposition and SVD | approved (owner, 2026-11-17) |
| `vector-calculus-and-automatic-differentiation` | Vector calculus and automatic differentiation | `matrix-factorizations-and-linear-systems` | `mathematical-and-statistical-foundations` | `deisenroth2020mml` ch. 5; `aggarwalLinearAlgebraOptimization2020` ch. 4.6, 11 (and 1.5.1) | Partial derivatives, Jacobians, matrix gradients and identities, multivariate chain rule, computational graphs and reverse-mode differentiation, Hessians, Taylor series. A whole chapter in 2 benchmarks; nothing taught now | approved (owner, 2026-11-17) |
| `continuous-random-variables-and-exponential-families` | Continuous random variables and exponential families | `vector-calculus-and-automatic-differentiation` | `mathematical-and-statistical-foundations`, `vector-calculus-and-automatic-differentiation` (Jacobians for change of variables) | `deisenroth2020mml` ch. 6.2, 6.6, 6.7; `aggarwalProbabilityStatisticsMachine2024` ch. 3.7, 3.10, 3.11, 4.2, 4.8, 6.8 | Densities and CDFs, joint and conditional densities, change of variables, exponential family, conjugate priors (beta, gamma, Dirichlet). In 2 benchmarks, 3+ sections. The tutorial teaches only discrete random variables and the Gaussian | approved (owner, 2026-11-17) |
| `statistical-inference-and-limit-theorems` | Statistical inference and limit theorems | `continuous-random-variables-and-exponential-families` | `mathematical-and-statistical-foundations`, `continuous-random-variables-and-exponential-families`, `appendices-and-technical-background` (concentration) | `aggarwalProbabilityStatisticsMachine2024` ch. 5, 4.11-4.12, 6.6.1 | Law of large numbers and CLT, estimator properties, sampling distributions (t, chi-squared), confidence intervals, hypothesis tests and p-values. A whole chapter in 1 benchmark, 3+ sections; the ML tutorial's `#sec-multiple-testing` relies on it | approved (owner, 2026-11-17) |
| `gradient-based-optimization-methods` | Gradient-based optimization methods | `statistical-inference-and-limit-theorems` | `mathematical-and-statistical-foundations`, `vector-calculus-and-automatic-differentiation` | `aggarwalLinearAlgebraOptimization2020` ch. 4.4, 4.10, 5; `deisenroth2020mml` ch. 7.1 | Line search and step sizes, momentum and adaptive methods (AdaGrad, RMSProp, Adam), Newton, conjugate gradient and quasi-Newton, coordinate descent, subgradient and proximal methods. A whole chapter in 1 benchmark, 3+ sections. Extends MSF `#sec-optimization`, whose "Advanced Optimizers" unit is prose without statements | approved (owner, 2026-11-17) |
| `constrained-optimization-and-duality` | Constrained optimization and duality | `gradient-based-optimization-methods` | `mathematical-and-statistical-foundations`, `gradient-based-optimization-methods` | `aggarwalLinearAlgebraOptimization2020` ch. 6; `deisenroth2020mml` ch. 7.2-7.3 | Inequality constraints and KKT conditions, Lagrangian duality (weak and strong), linear and quadratic programs, Legendre-Fenchel conjugates, projected gradient, penalty and barrier methods. Whole chapter in 1 benchmark plus 2 sections of MML, 3+ sections. Extends MSF `#sec-msf-convex-constrained`, which has one Lagrangian definition | approved (owner, 2026-11-17) |

## Section gaps

| Existing chapter | Missing topic | Benchmarks |
|---|---|---|
| mathematical-and-statistical-foundations (`#sec-linear-algebra`) | Linear maps, their matrices, change of basis, image and kernel | `deisenroth2020mml` 2.7; `aggarwalLinearAlgebraOptimization2020` 1.3, 2.1-2.3 |
| mathematical-and-statistical-foundations (`#sec-linear-algebra`) | Affine spaces and affine maps | `deisenroth2020mml` 2.8 |
| mathematical-and-statistical-foundations (`#sec-msf-inner-products-norms`) | Orthogonal complement; orthogonal matrices and rotations | `deisenroth2020mml` 3.6, 3.9 |
| mathematical-and-statistical-foundations (`#sec-msf-inner-products-norms`) | Inner products of functions | `deisenroth2020mml` 3.7 |
| mathematical-and-statistical-foundations (`#sec-msf-matrix-decompositions`) | Similarity, complex eigenvalues, triangulization | `aggarwalLinearAlgebraOptimization2020` 3.3.1-3.3.6 |
| mathematical-and-statistical-foundations (`#sec-msf-matrix-decompositions`) | Quadratic forms and the Rayleigh quotient | `aggarwalLinearAlgebraOptimization2020` 3.4 |
| mathematical-and-statistical-foundations (`#sec-msf-matrix-decompositions`) | Nonnegative matrices and Perron-Frobenius | `aggarwalLinearAlgebraOptimization2020` 10.2-10.4 |
| mathematical-and-statistical-foundations (`#sec-probability-statistics`) | Counting (combinatorial) probability | `aggarwalProbabilityStatisticsMachine2024` 3.3 |
| mathematical-and-statistical-foundations (`#sec-msf-distributions`) | Gaussian marginals, conditionals, products and linear transformations | `deisenroth2020mml` 6.5 |
| mathematical-and-statistical-foundations (`#sec-msf-distributions`) | Categorical, geometric and Poisson distributions | `aggarwalProbabilityStatisticsMachine2024` 4.4, 4.5, 4.9 |
| mathematical-and-statistical-foundations (`#sec-msf-statistical-concepts`) | Sample statistics, correlation and rank correlation | `aggarwalProbabilityStatisticsMachine2024` 2.2 |
| mathematical-and-statistical-foundations (`#sec-msf-statistical-concepts`) | Higher moments and moment generating functions | `aggarwalProbabilityStatisticsMachine2024` 4.14 |
| mathematical-and-statistical-foundations (`#sec-msf-stochastic-processes`) | Markov chains: stationary distributions, periodicity, ergodicity, absorption | `aggarwalProbabilityStatisticsMachine2024` 10.2 |
| mathematical-and-statistical-foundations (`#sec-information-theory`) | Conditional entropy, chain rule, data-processing inequality | `chambert-loirInformationTheory2022` 1.2-1.3 |
| mathematical-and-statistical-foundations (`#sec-information-theory`) | Entropy rate of stationary and Markov sources | `chambert-loirInformationTheory2022` 1.4-1.5 |
| mathematical-and-statistical-foundations (`#sec-information-theory`) | Prefix codes, Kraft-McMillan, source coding theorem | `chambert-loirInformationTheory2022` 2.1-2.4 |
| appendices-and-technical-background (`#sec-measure-concentration`) | Jensen's inequality | `aggarwalProbabilityStatisticsMachine2024` 11.2 |
| appendices-and-technical-background (`#sec-measure-concentration`) | Normal and Poisson approximations to the binomial | `aggarwalProbabilityStatisticsMachine2024` 11.4.2-11.4.3, 11.5 |
