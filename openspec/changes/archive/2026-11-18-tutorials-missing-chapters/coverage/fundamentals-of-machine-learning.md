# Coverage: Fundamentals of Machine Learning

Tutorial chapters: `foundations-of-learning-theory` (FLT), `supervised-learning` (SUP), `unsupervised-learning` (UNS),
`reinforcement-learning` (RL). Page paths below are `fundamentals-of-machine-learning/<slug>/index.qmd`. Only `##`
headings carry `sec-` ids, so covered rows name the `##` section that holds the unit and its statement box (the box
label is given where it helps).

Mathematical prerequisites (probability, distributions, linear algebra, convexity, gradient methods, information
theory, estimation) go to Fundamentals of Mathematics for Machine Learning (MML below) under M5.

## Benchmarks

| Key | Title | Why chosen | TOC read via |
|---|---|---|---|
| `shalev2014ml` (Zotero K978GTLH) | Shalev-Shwartz & Ben-David, *Understanding Machine Learning: From Theory to Algorithms* (2014) | Cited by the tutorial; the standard text for learning theory, and FLT follows it closely | `zotero_read_pdf_pages` (contents pp. vii-xii, PDF pp. 9-14; no outline) |
| `theodoridis2025ml` (Zotero IEHRXWKC) | Theodoridis, *Machine Learning: From the Classics to Deep Networks, Transformers, and Diffusion Models*, 3rd ed. (2026) | Cited by the tutorial; covers the whole subject, from classics to deep and generative models, Bayesian learning and graphical models | `zotero_get_pdf_outline` |
| `bishop2024deeplearning` (Zotero LNJIQ4AH) | Bishop & Bishop, *Deep Learning: Foundations and Concepts* (2024) | Cited by the tutorial (22 times); standard modern text for neural networks and deep generative models | `zotero_get_pdf_outline` |
| `tibshiraniElementsStatisticalLearning2024` (BBT key; Zotero W8CD6K73) | Hastie, Tibshirani & Friedman, *The Elements of Statistical Learning*, 2nd ed. | The standard text for statistical learning; superset of the cited ISL (`james2023statistical`), which was therefore not used separately to avoid double counting. Note: the Zotero creators field is wrong ("Tibshirani, Sami; Friedman, Harry") | `zotero_read_pdf_pages` (contents pp. xiii-xxii, PDF pp. 10-19; no outline) |
| `suttonReinforcementLearningIntroduction2018` (BBT key; Zotero XEUNQM6V) | Sutton & Barto, *Reinforcement Learning: An Introduction*, 2nd ed. (2018) | The standard RL text; the cited `zhao2025rl` covers a subset of it | `zotero_get_pdf_outline` |

Not in the library: Bishop PRML, Murphy, Goodfellow et al., Mohri et al. Considered and not used: *Fundamentals of
Deep Learning* (Buduma, EJJVKAP5; practitioner level, subset of Bishop), *Mathematics for Machine Learning*
(`deisenroth2020mml`; a benchmark for MML, not this tutorial).

## Coverage

### shalev2014ml: Understanding Machine Learning

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Types of learning | covered | FLT `sec-statistical-learning` (def-flt-supervised-learning) | |
| 2 A gentle start | Statistical learning framework, ERM, inductive bias | covered | FLT `sec-statistical-learning`, `sec-pac-learning` (def-flt-statistical-model, def-empirical-error) | |
| 3 A formal learning model | PAC, agnostic PAC | covered | FLT `sec-computational-learning` (def-pac-learnable, def-agnostic-pac) | |
| 4 Learning via uniform convergence | Uniform convergence, finite classes | covered | FLT `sec-generalization` (def-flt-uniform-convergence), `sec-computational-learning` (thm-flt-finite-class) | |
| 5 The bias-complexity trade-off | No-free-lunch, error decomposition | covered | FLT `sec-computational-learning` (thm-no-free-lunch), `sec-generalization` (prp-flt-bias-variance) | |
| 6 The VC-dimension | VC dimension, fundamental theorem, Sauer | covered | FLT `sec-computational-learning` (def-vc-dimension, thm-flt-fundamental-theorem, lem-flt-sauer) | |
| 7 Nonuniform learnability | Nonuniform learnability, SRM, MDL, consistency | covered | FLT `sec-nonuniform-learning` | |
| 8 The runtime of learning | Computational complexity, hardness | covered | FLT `sec-computational-complexity` | |
| 9 Linear predictors | Halfspaces, linear and logistic regression | covered | SUP `sec-linear-models`; perceptron in FLT `sec-online-learning` | |
| 10 Boosting | Weak learnability, AdaBoost | covered | SUP `sec-tree-methods` (def-sup-adaboost, thm-sup-adaboost-training-error) | |
| 11 Model selection and validation | Validation, SRM-based selection | covered | FLT `sec-model-selection` | |
| 12 Convex learning problems | Convexity, Lipschitzness, smoothness | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-msf-convex-constrained` | Convex analysis is mathematics |
| 12.2-12.3 Convex learning problems | Convex-Lipschitz-bounded learnability, surrogate losses | section gap | FLT | Hinge/logistic as surrogates of 0-1 loss are used in SUP but never stated |
| 13 Regularization and stability | Stable rules do not overfit | covered | FLT `sec-generalization` (def-flt-uniform-stability, thm-flt-stability-generalization) | |
| 13.1, 13.3-13.4 | Regularized loss minimization, Tikhonov as a stabilizer, fitting-stability trade-off | section gap | FLT | Stability is stated, its link to regularization is not |
| 14 Stochastic gradient descent | GD, subgradients, SGD | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-optimization` | Already taught there |
| 14.5 Learning with SGD | SGD as a learner for risk minimization | covered | FLT `sec-online-learning` (thm-flt-online-to-batch, thm-flt-ogd-regret) | |
| 15 Support vector machines | Hard/soft SVM, duality | covered | SUP `sec-margin-methods` | |
| 16 Kernel methods | Feature embeddings, kernel trick | covered | SUP `sec-margin-methods` (def-sup-kernel, thm-sup-mercer) | |
| 17 Multiclass, ranking, complex prediction | One-vs-all, multiclass, structured, ranking | covered | SUP `sec-structured-outputs` | |
| 18 Decision trees | Tree algorithms, random forests | covered | SUP `sec-tree-methods` | |
| 18.1 | Sample complexity of trees | out of scope | | A short theoretical aside; FLT's VC machinery covers it in an exercise if wanted |
| 19 Nearest neighbor | k-NN and its analysis | section gap | SUP | Mentioned only; no unit or statement |
| 20 Neural networks | Feedforward nets, expressive power, backprop | covered | SUP `sec-neural-networks` (def-sup-feedforward-network, thm-sup-universal-approximation, prp-sup-backpropagation) | |
| 20.4-20.5 | Sample complexity and runtime of neural networks | section gap | FLT | Not stated; fits `sec-generalization`/`sec-computational-complexity` |
| 21 Online learning | Online classification, OCO, perceptron | covered | FLT `sec-online-learning` | |
| 22 Clustering | Linkage, k-means, spectral | covered | UNS `sec-clustering` | |
| 22.4-22.5 | Information bottleneck, axioms of clustering | out of scope | | Specialised |
| 23 Dimensionality reduction | PCA, random projections | covered | UNS `sec-dimensionality-reduction` (thm-uns-pca-max-variance, lem-uns-johnson-lindenstrauss) | |
| 23.3 | Compressed sensing | section gap | SUP (sparse regression gap) | Grouped with the lasso/sparsity gap |
| 24 Generative models | MLE, naive Bayes, LDA, EM | covered | SUP `sec-generative-models`; UNS `sec-clustering` (thm-uns-em-monotone) | |
| 24.5 | Bayesian reasoning | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 25 Feature selection and generation | Feature selection, normalization, feature learning | covered | FLT `sec-representation` (def-flt-feature-selection) | |
| 26 Rademacher complexities | Rademacher bounds | covered | FLT `sec-generalization` (def-rademacher-complexity, thm-flt-rademacher-bound) | |
| 27 Covering numbers | Covering, chaining | section gap | FLT | |
| 28 Proof of the fundamental theorem | Upper and lower bounds | covered | FLT `sec-computational-learning` (thm-flt-fundamental-theorem) | Proof depth may differ |
| 29 Multiclass learnability | Natarajan dimension | section gap | FLT | |
| 30 Compression bounds | Sample compression | section gap | FLT | Grouped with covering numbers and PAC-Bayes as "further generalization bounds" |
| 31 PAC-Bayes | PAC-Bayes bounds | section gap | FLT | Same group |
| App. A-B | Technical lemmas, concentration | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-tech-lemmas`, `sec-measure-concentration` | Already taught there |

### theodoridis2025ml: Machine Learning (3rd ed.)

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Scope of ML, supervised/unsupervised | covered | FLT `sec-statistical-learning` | |
| 2 Probability and stochastic processes | Probability, distributions, information theory, convergence | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-probability-statistics`, `sec-information-theory` | |
| 3 Learning in parametric modeling | Bias-variance, regularization, validation, curse of dimensionality | covered (part) | FLT `sec-generalization`, `sec-model-selection` | |
| 3.6-3.7, 3.10-3.11 | Cramér-Rao, sufficiency, ML, MAP | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-information-theory` (MLE, MAP units) | Estimation theory |
| 3.12 | Curse of dimensionality | section gap | FLT | Not taught anywhere (ESL 2.5, Bishop 6.1 too) |
| 4 Mean-square error linear estimation | Wiener filtering, Kalman, beamforming | out of scope | | Signal processing |
| 5 Online learning: SGD family | LMS, APA, diffusion LMS | out of scope | | Adaptive filtering; the learning-theoretic online setting is covered in FLT `sec-online-learning` |
| 6 The least-squares family | LS geometry and statistics, ridge | covered | SUP `sec-linear-models` (prp-sup-ols-projection, thm-sup-gauss-markov, def-sup-ridge-regression) | |
| 6.6-6.13 | RLS, coordinate descent, total LS | out of scope | | Numerical/adaptive-filtering detail |
| 7 Classification: a tour of the classics | Bayes classifier, naive Bayes, logistic, Fisher, trees, boosting | covered | SUP `sec-generative-models`, `sec-linear-models`, `sec-tree-methods` | |
| 7.5 | Nearest-neighbour rule | section gap | SUP | |
| 7.9 | Combining classifiers (stacking) | section gap | SUP | |
| 8 Parameter learning: a convex analytic path | Convex sets, projections, subgradients, proximal methods | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-msf-convex-constrained` | Proximal operators, ADMM, mirror descent are optimisation |
| 8.10.3, 8.11 | Online convex optimisation, AdaGrad, regret | covered | FLT `sec-online-learning` (def-flt-oco, def-flt-adagrad, def-flt-regret) | |
| 9 Sparsity-aware learning: concepts | Lasso, l1 recovery, RIP, compressed sensing | section gap | SUP | Lasso is mentioned only; see section gaps |
| 10 Sparsity-aware learning: algorithms | OMP, LARS, IST | section gap | SUP | Same gap (algorithms briefly) |
| 11 Learning in RKHS | RKHS, representer theorem, kernel ridge, SVR | partly covered | SUP `sec-margin-methods` (def-sup-kernel, thm-sup-mercer, prp-sup-svm-dual) | |
| 11.5-11.9, 11.12 | RKHS, representer theorem, kernel ridge regression, SVR, random Fourier features | section gap | SUP | |
| 12 Bayesian learning: inference and EM | Bayesian regression, evidence, EM, GMM, exponential family | partly covered | UNS `sec-clustering` (prp-uns-gmm-em-updates, thm-uns-em-monotone) | EM and GMMs covered |
| 12.2-12.3 | Bayesian regression, evidence and Occam's razor | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 12.8 | Exponential family | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-msf-distributions` | |
| 12.9 | Mixture of experts | section gap | SUP | |
| 13 Bayesian learning: approximate inference, nonparametrics | Variational inference, EP, Gaussian processes, Dirichlet processes | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | GPs are mentioned in SUP but not taught |
| 14 Monte Carlo methods | Rejection/importance sampling, MCMC, Gibbs | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | Importance sampling appears in RL only as an estimator |
| 15 Probabilistic graphical models I | Bayesian networks, MRFs, factor graphs, message passing | section gap (was proposed chapter `probabilistic-graphical-models`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 16 Probabilistic graphical models II | Junction trees, loopy BP, HMMs, learning graphical models | section gap (was proposed chapter `probabilistic-graphical-models`, spread by owner decision) | SUP/UNS, see Section gaps | HMMs alone are covered in SUP `sec-structured-outputs` (def-sup-hidden-markov-model) |
| 17 Particle filtering | Sequential importance sampling, Kalman, particle filters | out of scope | | State-space filtering is signal processing; at most a remark in the proposed Bayesian chapter |
| 18 Neural networks and deep learning I | Perceptron, MLP, backprop, optimisers, dropout, CNN, RNN | covered | SUP `sec-neural-networks`, `sec-sup-convolutional-networks`, `sec-sup-recurrent-networks` | |
| 18.4.2, 18.11 | Batch normalisation, double descent, optimisation of deep nets | section gap | SUP | Mentioned, no statement |
| 18.14 | Adversarial examples and training | section gap | SUP | |
| 18.15 | Capsule networks | out of scope | | Niche architecture |
| 18.16 | Transfer/multitask learning, geometric deep learning | partly covered | SUP `sec-sup-large-language-models` (def-sup-lora) | Geometric DL grouped with the GNN gap |
| 19 Neural networks and deep learning II | RBMs, DBNs, autoencoders, GANs, VAEs | covered | UNS `sec-generative-latent` (def-uns-autoencoder, thm-uns-elbo, def-uns-gan) | |
| 19.2.1-19.2.3 | RBMs, deep belief networks | section gap (was proposed chapter `probabilistic-graphical-models`, spread by owner decision) | SUP/UNS, see Section gaps | Undirected models; historic for DBNs |
| 19.3-19.5 | Transformers, GPT, BERT | covered | SUP `sec-sup-transformers`, `sec-sup-large-language-models` | |
| 19.6 | Self-supervised learning | section gap | FLT | Unit "Self-Supervised Learning" in `sec-representation` has no statement; CLIP loss in SUP is the only contrastive statement |
| 19.7 | Diffusion models | section gap | UNS | Mentioned only |
| 20 Dimensionality reduction and latent variables | PCA, kernel PCA, factor analysis, Isomap/LLE | covered | UNS `sec-dimensionality-reduction`, `sec-generative-latent` | |
| 20.4-20.7 | CCA, PLS, ICA, dictionary learning, NMF | section gap | UNS | |
| 20.8.2 | Probabilistic PCA | section gap | UNS | |
| 20.9.2 | Laplacian eigenmaps, LLE, Isomap | partly covered | UNS `sec-dimensionality-reduction` (def-uns-tsne, def-uns-graph-laplacian) | Manifold learning unit has t-SNE only |
| 20.10 | Matrix completion, robust PCA | out of scope | | Specialised sparse modelling |

### bishop2024deeplearning: Deep Learning: Foundations and Concepts

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 The deep learning revolution | Polynomial fitting, regularization, model selection | covered | FLT `sec-statistical-learning`, `sec-model-selection` | |
| 2 Probabilities | Rules, densities, Gaussians, information theory | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-probability-statistics`, `sec-information-theory` | |
| 2.6 | Bayesian probabilities in ML | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 3 Standard distributions | Multivariate Gaussian, exponential family, mixtures | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-msf-distributions` | |
| 3.5 | Nonparametric density estimation (histograms, kernel density, kNN) | section gap | UNS | |
| 4 Single-layer networks: regression | Linear regression, decision theory, bias-variance | covered | SUP `sec-linear-models`; FLT `sec-generalization` | |
| 5 Single-layer networks: classification | Discriminants, generative and discriminative classifiers | covered | SUP `sec-generative-models`, `sec-linear-models` | |
| 5.2.5-5.2.6 | Classifier accuracy, confusion matrix, ROC | section gap | FLT | ROC appears in text only; FLT "Assessing Model Accuracy" states MSE and error rate only |
| 6 Deep neural networks | Multilayer nets, universal approximation, representation learning, error functions | covered | SUP `sec-neural-networks`; FLT `sec-representation` | |
| 6.1 | Curse of dimensionality | section gap | FLT | |
| 6.5 | Mixture density networks | section gap | SUP | Grouped with mixture of experts |
| 7 Gradient descent | SGD, momentum, Adam | covered | SUP `sec-neural-networks` (def-sup-adam); MML `sec-optimization` | |
| 7.2.5, 7.4 | Initialisation, batch and layer normalisation | section gap | SUP | |
| 8 Backpropagation | Backprop, Jacobian, Hessian | covered | SUP `sec-neural-networks` (prp-sup-backpropagation) | |
| 8.2 | Automatic differentiation | belongs to fundamentals-of-mathematics-for-machine-learning | | Proposed there as `vector-calculus-and-automatic-differentiation` (M5) |
| 9 Regularization | Inductive bias, weight decay, dropout, residual connections | covered | FLT `sec-representation` (def-flt-inductive-bias); SUP `sec-neural-networks` (def-sup-dropout), `sec-sup-convolutional-networks` (def-sup-residual-block) | |
| 9.3 | Early stopping, double descent | section gap | SUP | |
| 10 Convolutional networks | Convolution, pooling, architectures | covered | SUP `sec-sup-convolutional-networks` | |
| 10.3-10.6 | Saliency, adversarial attacks, detection, segmentation, style transfer | out of scope | | Computer-vision applications; adversarial attacks go to the adversarial-examples gap |
| 11 Structured distributions | Directed graphs, conditional independence, d-separation, sequence models | section gap (was proposed chapter `probabilistic-graphical-models`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 12 Transformers | Attention, language models, multimodal | covered | SUP `sec-sup-transformers`, `sec-sup-large-language-models`, `sec-sup-vision-language-models` | |
| 13 Graph neural networks | Message passing, GCN, GAT | section gap | SUP | Whole chapter in one benchmark only, and fits the deep-models part of SUP |
| 14 Sampling | Rejection/importance sampling, MCMC, Gibbs, Langevin, energy-based models | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 15 Discrete latent variables | k-means, GMM, EM, ELBO | covered | UNS `sec-clustering` (def-kmeans-objective, def-uns-gmm, thm-uns-em-monotone) | |
| 16 Continuous latent variables | PCA, factor analysis | covered | UNS `sec-dimensionality-reduction`, `sec-generative-latent` | |
| 16.2-16.3 | Probabilistic PCA, ICA, EM for PCA | section gap | UNS | |
| 17 Generative adversarial networks | GANs | covered | UNS `sec-generative-latent` (def-uns-gan) | |
| 18 Normalizing flows | Coupling, autoregressive, continuous flows | covered | UNS `sec-generative-latent` (prp-uns-change-of-variables) | |
| 19 Autoencoders | Deterministic and variational autoencoders | covered | UNS `sec-generative-latent` (def-uns-autoencoder, thm-uns-elbo) | |
| 20 Diffusion models | DDPM, score matching, guidance | section gap | UNS | Whole chapter here, one section in Theodoridis: one section in UNS's generative part |
| App. B-C | Calculus of variations, Lagrange multipliers | belongs to fundamentals-of-mathematics-for-machine-learning | MML `sec-msf-convex-constrained` | |

### tibshiraniElementsStatisticalLearning2024: The Elements of Statistical Learning

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Examples of learning problems | covered | FLT `sec-statistical-learning` | |
| 2 Overview of supervised learning | Decision theory, least squares vs nearest neighbours, function approximation | covered | FLT `sec-statistical-learning`; SUP `sec-linear-models` | |
| 2.5 | Local methods in high dimensions (curse of dimensionality) | section gap | FLT | |
| 3 Linear methods for regression | Least squares, Gauss-Markov, ridge | covered | SUP `sec-linear-models` | |
| 3.3-3.5, 3.8 | Subset selection, lasso, LAR, PCR, PLS | section gap | SUP | |
| 4 Linear methods for classification | LDA, logistic regression, separating hyperplanes | covered | SUP `sec-generative-models`, `sec-linear-models`, `sec-margin-methods` | |
| 5 Basis expansions and regularization | Splines, smoothing splines, RKHS, wavelets | section gap | SUP | Wavelets out of scope |
| 6 Kernel smoothing methods | Local regression, kernel density, RBFs | section gap | SUP (local regression), UNS (density estimation) | |
| 7 Model assessment and selection | Bias-variance, AIC/BIC, MDL, VC, CV, bootstrap | covered | FLT `sec-model-selection`, `sec-generalization`, `sec-nonuniform-learning` | |
| 7.4-7.6 | Optimism of training error, effective number of parameters | section gap | FLT | Small; fits `sec-model-selection` |
| 8 Model inference and averaging | Bootstrap, EM, bagging | covered | FLT `sec-model-selection`; UNS `sec-clustering`; SUP `sec-tree-methods` | |
| 8.3-8.4, 8.6 | Bayesian methods, MCMC | section gap (was proposed chapter `bayesian-inference-and-sampling`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 8.8-8.9 | Model averaging, stacking, bumping | section gap | SUP | |
| 9 Additive models, trees | GAMs, trees, PRIM, MARS, HME, missing data | partly covered | SUP `sec-tree-methods` | Trees covered |
| 9.1 | Generalized additive models | section gap | SUP | Grouped with splines |
| 9.3-9.4, 9.6 | PRIM, MARS, missing data | out of scope | | Specialised methods |
| 10 Boosting and additive trees | AdaBoost, gradient boosting | covered | SUP `sec-tree-methods` (def-sup-adaboost, def-sup-gradient-boosting) | |
| 11 Neural networks | Projection pursuit, neural nets | covered | SUP `sec-neural-networks` | Projection pursuit out of scope |
| 12 SVMs and flexible discriminants | SVM, kernels | covered | SUP `sec-margin-methods` | |
| 12.3.6 | SVM regression | section gap | SUP | Grouped with RKHS/kernel ridge |
| 12.4-12.7 | Flexible, penalized, mixture discriminant analysis | out of scope | | Specialised |
| 13 Prototype methods and nearest neighbours | k-NN, LVQ, adaptive NN | section gap | SUP | |
| 14 Unsupervised learning | Clustering, PCA, spectral, kernel PCA, MDS | covered | UNS `sec-clustering`, `sec-dimensionality-reduction` | |
| 14.2 | Association rules | section gap | UNS | |
| 14.4, 14.10 | Self-organizing maps, PageRank | out of scope | | Historic/specialised |
| 14.6-14.7 | NMF, ICA | section gap | UNS | |
| 15 Random forests | Random forests | covered | SUP `sec-tree-methods` (def-sup-random-forest) | |
| 16 Ensemble learning | Regularization paths, learning ensembles | partly covered | SUP `sec-tree-methods` (prp-sup-ensemble-variance) | Rest goes to the stacking gap |
| 17 Undirected graphical models | Markov graphs, Gaussian graphical models, RBMs | section gap (was proposed chapter `probabilistic-graphical-models`, spread by owner decision) | SUP/UNS, see Section gaps | |
| 18 High-dimensional problems | Regularized classifiers, lasso, multiple testing, FDR | partly covered | FLT `sec-multiple-testing` (def-flt-fdr, def-flt-bh) | |
| 18.2-18.6 | p >> N classifiers, lasso, supervised PCA | section gap | SUP | Grouped with lasso and sparse regression |

### suttonReinforcementLearningIntroduction2018: Reinforcement Learning

| Benchmark chapter | Topic | Status | Tutorial page and sec- id / gap target | Reason |
|---|---|---|---|---|
| 1 Introduction | Elements of RL | covered | RL `sec-rl-foundations` | |
| 2 Multi-armed bandits | UCB, contextual bandits | covered | FLT `sec-online-learning` (thm-flt-ucb1-regret, def-flt-linucb) | Taught in FLT rather than RL |
| 3 Finite MDPs | MDPs, returns, value functions, optimality | covered | RL `sec-rl-foundations`, `sec-rl-value-functions-bellman` | |
| 4 Dynamic programming | Policy evaluation, improvement, iteration, value iteration | covered | RL `sec-rl-dynamic-programming` | |
| 5 Monte Carlo methods | MC prediction and control, off-policy IS | covered | RL `sec-rl-monte-carlo` | |
| 6 Temporal-difference learning | TD(0), Sarsa, Q-learning, double learning | covered | RL `sec-rl-temporal-difference` (thm-rl-q-learning-convergence, prp-rl-maximization-bias) | |
| 7 n-step bootstrapping | n-step TD and Sarsa | covered | RL `sec-rl-temporal-difference` (def-rl-n-step-return) | |
| 8 Planning and learning with tabular methods | Dyna, prioritized sweeping, MCTS | section gap | RL | The "Model-Based RL" unit in `sec-rl-model-based-multi-agent` has no statement |
| 9 On-policy prediction with approximation | Value approximation, linear TD | covered | RL `sec-advanced-rl` (def-rl-mean-squared-value-error, thm-rl-linear-td-bound) | |
| 10 On-policy control with approximation | Semi-gradient control | covered | RL `sec-advanced-rl` | |
| 10.3-10.5 | Average-reward setting | section gap | RL | |
| 11 Off-policy methods with approximation | Deadly triad, gradient-TD, emphatic TD | section gap | RL | Deadly triad mentioned only |
| 12 Eligibility traces | λ-return, TD(λ) | covered | RL `sec-rl-temporal-difference` (def-rl-eligibility-trace) | |
| 13 Policy gradient methods | Policy gradient theorem, REINFORCE, actor-critic | covered | RL `sec-rl-policy-gradient`, `sec-rl-actor-critic` | |
| 14 Psychology | Conditioning models | out of scope | | Not machine learning |
| 15 Neuroscience | Dopamine, TD error | out of scope | | Not machine learning |
| 16 Applications and case studies | TD-Gammon, DQN Atari, AlphaGo | out of scope | | Case studies; DQN itself covered in `sec-advanced-rl` |
| 17 Frontiers | GVFs, options, partial observability, reward design | out of scope | | Research frontier |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision |
|---|---|---|---|---|---|---|
| `probabilistic-graphical-models` | Probabilistic graphical models | `unsupervised-learning` | `supervised-learning` (naive Bayes, HMM, CRF), `unsupervised-learning` (latent variables, EM) | `theodoridis2025ml` ch. 15-16; `bishop2024deeplearning` ch. 11; `tibshiraniElementsStatisticalLearning2024` ch. 17 | A whole chapter in 3 benchmarks (two in Theodoridis). Needs at least 4 sections: directed models and d-separation, undirected models and factor graphs, exact inference by message passing, learning graphical models (with RBMs). No existing chapter contains it; HMMs and CRFs in SUP are special cases | rejected as a chapter (owner, 2026-11-17): spread into supervised-learning and unsupervised-learning as section gaps, to keep the chapters organised by learning paradigm |
| `bayesian-inference-and-sampling` | Bayesian inference and sampling | `probabilistic-graphical-models` | `supervised-learning` (linear models), `unsupervised-learning` (EM, ELBO), `probabilistic-graphical-models` | `theodoridis2025ml` ch. 12-14; `bishop2024deeplearning` ch. 14 (and 2.6); `tibshiraniElementsStatisticalLearning2024` 8.3, 8.6; `shalev2014ml` 24.5 | Monte Carlo/sampling is a whole chapter in 2 benchmarks, and Bayesian learning two more chapters in Theodoridis. Needs at least 4 sections: Bayesian linear models and the evidence, Gaussian processes, variational inference, MCMC (Metropolis-Hastings, Gibbs, Langevin). No existing chapter contains it: MAP is in MML and the ELBO in UNS only as tools | rejected as a chapter (owner, 2026-11-17): spread into supervised-learning and unsupervised-learning as section gaps, to keep the chapters organised by learning paradigm |

## Section gaps

| Existing chapter | Missing topic | Benchmarks |
|---|---|---|
| foundations-of-learning-theory | Curse of dimensionality and local methods in high dimensions | ESL 2.5; Bishop 6.1; Theodoridis 3.12 |
| foundations-of-learning-theory | Classifier evaluation: confusion matrix, ROC, precision-recall | Bishop 5.2.5-5.2.6 |
| foundations-of-learning-theory | Convex learning problems and surrogate losses | Shalev 12.2-12.3 |
| foundations-of-learning-theory | Regularized loss minimization and the fitting-stability trade-off | Shalev 13 |
| foundations-of-learning-theory | Further generalization bounds: covering numbers, compression bounds, PAC-Bayes | Shalev 27, 30, 31 |
| foundations-of-learning-theory | Multiclass learnability (Natarajan dimension) | Shalev 29 |
| foundations-of-learning-theory | Sample complexity and runtime of neural networks | Shalev 20.4-20.5 |
| foundations-of-learning-theory | Optimism of the training error and effective number of parameters | ESL 7.4-7.6 |
| foundations-of-learning-theory | Self-supervised and contrastive learning (existing unit has no statement) | Theodoridis 19.6; Bishop 6.3.5 |
| supervised-learning | Subset selection, lasso and sparse regression (LAR, PCR/PLS, p >> N, compressed sensing) | ESL 3.3-3.8, 18; Theodoridis 9-10; Shalev 23.3 |
| supervised-learning | Basis expansions, splines and generalized additive models | ESL 5, 9.1 |
| supervised-learning | Nearest neighbours and local (kernel) regression | ESL 6, 13; Shalev 19; Theodoridis 7.5 |
| supervised-learning | RKHS, representer theorem, kernel ridge regression and SVR | ESL 5.8, 12.3.6; Theodoridis 11 |
| supervised-learning | Model averaging and stacking | ESL 8.8, 16; Theodoridis 7.9 |
| supervised-learning | Mixture of experts and mixture density networks | Theodoridis 12.9; Bishop 6.5; ESL 9.5 |
| supervised-learning | Training deep networks: initialisation, normalisation, early stopping, double descent | Bishop 7.2.5, 7.4, 9.3; Theodoridis 18.4.2, 18.11 |
| supervised-learning | Graph neural networks | Bishop 13; Theodoridis 18.16 |
| supervised-learning | Adversarial examples and adversarial training | Theodoridis 18.14; Bishop 10.3.4 |
| supervised-learning (`sec-generative-models`) | Probabilistic graphical models: Bayesian networks, Markov random fields, d-separation, factor graphs and exact inference; placed before HMMs and CRFs (owner decision 2026-11-17, from proposal `probabilistic-graphical-models`) | Theodoridis 15-16; Bishop 11; ESL 17 |
| supervised-learning (`sec-linear-models`) | Bayesian linear regression and Gaussian processes (owner decision 2026-11-17, from proposal `bayesian-inference-and-sampling`) | Theodoridis 12-13 |
| unsupervised-learning | Diffusion models and score matching | Bishop 20; Theodoridis 19.7 |
| unsupervised-learning | ICA, NMF, CCA and dictionary learning | ESL 14.6-14.7; Theodoridis 20.4-20.7; Bishop 16.2.5 |
| unsupervised-learning | Probabilistic PCA | Bishop 16.2-16.3; Theodoridis 20.8.2 |
| unsupervised-learning | Nonparametric density estimation (histograms, kernel density) | Bishop 3.5; ESL 6.6 |
| unsupervised-learning | Association rules | ESL 14.2 |
| unsupervised-learning (`sec-generative-latent`) | Approximate inference for latent-variable models: general EM, variational inference, MCMC sampling (owner decision 2026-11-17, from proposals `probabilistic-graphical-models` and `bayesian-inference-and-sampling`) | Theodoridis 12-14; Bishop 14-15 |
| reinforcement-learning | Planning and learning with models: Dyna, MCTS (existing unit has no statement) | Sutton & Barto 8 |
| reinforcement-learning | Average-reward setting | Sutton & Barto 10.3-10.5 |
| reinforcement-learning | Off-policy divergence: the deadly triad and gradient-TD | Sutton & Barto 11 |
