# Audit record: fundamentals-of-mathematics-for-machine-learning

Design A9. First pass from `check.py`; chapter tables are filled as each chapter is audited (A1-A7, A10).

## Mechanical findings (first pass)


| Chapter | Works | Textbooks | Meets A10 | Citations without locator | Sections citing nothing |
|---|---|---|---|---|---|
| notation | 6 | 6 | exempt | 1 | 6 |
| mathematical-and-statistical-foundations | 6 | 6 | no | 35 | 1 |
| appendices-and-technical-background | 3 | 3 | no | 22 | 0 |

### notation

Works cited: `bishop2024deeplearning`, `deisenroth2020mml`, `james2023statistical`, `shalev2014ml`, `theodoridis2025ml`, `zhao2025rl`.

| Section | Works cited |
|---|---|
| Sets and logic (``) | **none** |
| Linear algebra (``) | **none** |
| Analysis (``) | **none** |
| Probability and statistics (``) | **none** |
| Learning (``) | **none** |
| Conventions specific to this tutorial (``) | **none** |

Citations without a locator: `deisenroth2020mml` (line 12).

### mathematical-and-statistical-foundations

Works cited: `bishop2024deeplearning`, `deisenroth2020mml`, `james2023statistical`, `shalev2014ml`, `theodoridis2025ml`, `zhao2025rl`.

| Section | Works cited |
|---|---|
| Linear Algebra and Geometry (`sec-linear-algebra`) | deisenroth2020mml, theodoridis2025ml |
| Inner Products, Norms and Orthogonality (`sec-msf-inner-products-norms`) | deisenroth2020mml |
| Matrix Decompositions (`sec-msf-matrix-decompositions`) | deisenroth2020mml, zhao2025rl |
| Probability and Statistics (`sec-probability-statistics`) | bishop2024deeplearning, deisenroth2020mml, james2023statistical, theodoridis2025ml, zhao2025rl |
| Discrete Random Variables (`sec-msf-discrete-random-variables`) | **none** |
| Common Probability Distributions (`sec-msf-distributions`) | bishop2024deeplearning, deisenroth2020mml |
| Stochastic Processes and Markov Decision Processes (`sec-msf-stochastic-processes`) | zhao2025rl |
| Statistical Concepts (`sec-msf-statistical-concepts`) | james2023statistical |
| Optimization Foundations (`sec-optimization`) | bishop2024deeplearning, deisenroth2020mml, shalev2014ml, theodoridis2025ml, zhao2025rl |
| Convex and Constrained Optimization (`sec-msf-convex-constrained`) | deisenroth2020mml, shalev2014ml |
| Information Theory and Inference (`sec-information-theory`) | bishop2024deeplearning, deisenroth2020mml, shalev2014ml, theodoridis2025ml |
| Cross-Entropy and Entropy Regularization (`sec-msf-cross-entropy`) | bishop2024deeplearning, theodoridis2025ml, zhao2025rl |
| Exercises (`sec-mathematical-and-statistical-foundations-exercises`) | **none** |

Citations without a locator: `deisenroth2020mml` (line 114), `deisenroth2020mml` (line 187), `deisenroth2020mml` (line 224), `deisenroth2020mml` (line 641), `deisenroth2020mml` (line 747), `deisenroth2020mml` (line 859), `deisenroth2020mml` (line 914), `zhao2025rl` (line 975), `zhao2025rl` (line 1022), `deisenroth2020mml` (line 1270), `bishop2024deeplearning` (line 1270), `deisenroth2020mml` (line 1816), `bishop2024deeplearning` (line 1816), `zhao2025rl` (line 2059), `james2023statistical` (line 2521), `deisenroth2020mml` (line 2705), `bishop2024deeplearning` (line 2705), `shalev2014ml` (line 2705), `zhao2025rl` (line 2736), `theodoridis2025ml` (line 2736), `shalev2014ml` (line 2919), `deisenroth2020mml` (line 2919), `deisenroth2020mml` (line 2951), `theodoridis2025ml` (line 3061), `bishop2024deeplearning` (line 3061), `bishop2024deeplearning` (line 3117), `theodoridis2025ml` (line 3173), `bishop2024deeplearning` (line 3173), `shalev2014ml` (line 3230), `bishop2024deeplearning` (line 3231), `bishop2024deeplearning` (line 3289), `deisenroth2020mml` (line 3289), `bishop2024deeplearning` (line 3477), `theodoridis2025ml` (line 3478), `zhao2025rl` (line 3546).

### appendices-and-technical-background

Works cited: `deisenroth2020mml`, `shalev2014ml`, `zhao2025rl`.

| Section | Works cited |
|---|---|
| Technical Lemmas and Inequalities (`sec-tech-lemmas`) | shalev2014ml |
| Linear Algebra Recap (`sec-linear-algebra-recap`) | deisenroth2020mml, shalev2014ml, zhao2025rl |
| Measure Concentration and Probability Inequalities (`sec-measure-concentration`) | shalev2014ml, zhao2025rl |
| Exercises (`sec-appendices-and-technical-background-exercises`) | **none** |

Citations without a locator: `shalev2014ml` (line 31), `shalev2014ml` (line 85), `shalev2014ml` (line 135), `shalev2014ml` (line 188), `shalev2014ml` (line 249), `shalev2014ml` (line 321), `shalev2014ml` (line 496), `shalev2014ml` (line 674), `shalev2014ml` (line 778), `shalev2014ml` (line 875), `shalev2014ml` (line 926), `shalev2014ml` (line 970), `shalev2014ml` (line 1023), `deisenroth2020mml` (line 1091), `shalev2014ml` (line 1177), `zhao2025rl` (line 1177), `shalev2014ml` (line 1246), `shalev2014ml` (line 1351), `shalev2014ml` (line 1400), `shalev2014ml` (line 1453), `shalev2014ml` (line 1504), `shalev2014ml` (line 1554).

## Chapter audits

Per chapter: one row per "##" section — works cited with locators, pages verified, verdict (supported / unsupported / disagreement / not machine-readable), gap, resolution.

### mathematical-and-statistical-foundations

Task 2.1. Page numbers are printed pages (offsets under "Reading-note additions"). Pages were read with
`zotero_read_pdf_pages`, and with `pdftotext` on the same Zotero PDFs once the MCP timed out; all PDFs have a text layer.

**Textbooks chosen (A4).** `deisenroth2020mml` (already cited) plus the three benchmark textbooks from the coverage review:
`aggarwalLinearAlgebraOptimization2020`, `aggarwalProbabilityStatisticsMachine2024`, `chambert-loirInformationTheory2022`
(all in Zotero Textbooks). They were read at the cited pages and cited where those pages cover the section.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Linear Algebra and Geometry (`sec-linear-algebra`) | `theodoridis2025ml` Chs. 3, 11; `deisenroth2020mml` Sec. 2.1 p. 21, Sec. 2.4.2 Ex. 2.11, Secs. 2.5-2.6 pp. 40-47; `aggarwalLinearAlgebraOptimization2020` Secs. 2.3-2.6 pp. 51-71, Sec. 2.3 p. 52 | mml pp. 19-21, 37-41, 44-47; lao pp. 51-55, 70-71; theo pp. 66-70, 519-527 | mml: supported (geometric remark p. 21; general/matrix forms (2.3), (2.9); Def. 2.11-2.14; rank remark p. 47). Line 187: mml supports matrices as a vector space, not polynomials; lao p. 52 supports both. **`theodoridis2025ml` [Chs. 3, 11]: unsupported**: Ch. 3 is parameter estimation, Ch. 11 is RKHS; the book defers linear algebra to an Appendix A that is not in the PDF | 3 citations without locator; one covering work | locators added; LAO added (section and line 187). Theodoridis locator left for the owner (drop it). **D1 (owner, 2026-11-18): `theodoridis2025ml` [Chs. 3, 11] removed** (no section of the work covers linear algebra); the "For more" line now cites LAO only. |
| Inner Products, Norms and Orthogonality (`sec-msf-inner-products-norms`) | `deisenroth2020mml` Secs. 3.1-3.4 pp. 71-77, Sec. 3.1 Fig. 3.3, Sec. 3.8.2 p. 88; `aggarwalLinearAlgebraOptimization2020` Secs. 1.2.1, 2.10 pp. 5-6, 86-87 | mml pp. 71-79, 81-84, 87-88; lao pp. 5-6, 86-87 | supported: norm Def. 3.1, inner product Def. 3.3, induced norm (3.16), angle (3.25), Def. 3.7 orthogonality, ONB projection (3.65), least squares p. 88. Line 641: mml Fig. 3.3 shows the l1 diamond and l2 circle only; the l-infinity square is in neither source read (lao p. 5 defines Lp norms) | definitions adapted from MML had no citation; 2 citations without locator | locators added; MML and LAO cited at the unit intro. l-infinity square left uncited-in-part (statement is elementary). |
| Matrix Decompositions (`sec-msf-matrix-decompositions`) | `deisenroth2020mml` Secs. 4.2, 4.4, 4.5 pp. 105-121, Secs. 4.4, 10.2 pp. 116-117, 323-324, Sec. 4.5.1 pp. 120-121; `aggarwalLinearAlgebraOptimization2020` Sec. 3.3 p. 104; `zhao2025rl` Secs. 2.6-2.7.1 pp. 25-27 | mml pp. 105, 115-121, 323-324; lao p. 104; zhao pp. 25-27, 126-127 | supported: Def. 4.6, Thms. 4.20-4.21, SVD Thm. 4.22 and the basis-change reading (p. 121), PCA via eigenvectors of S (10.21); Bellman (2.10) and closed form p. 27; the def-box form v = E[R + gamma v(S')] is Zhao (7.4) p. 127 | 3 citations without locator | locators added; MML and LAO at the section intro. |
| Probability and Statistics (`sec-probability-statistics`) | `james2023statistical` Ch. 2; `theodoridis2025ml` Chs. 4, 5 and Sec. 2.2 pp. 21-24; `aggarwalProbabilityStatisticsMachine2024` Secs. 3.2-3.6 pp. 66-81; `zhao2025rl` App. B pp. 243-245; `deisenroth2020mml` Sec. 6.3 pp. 185-186; `bishop2024deeplearning` Sec. 2.6.1 pp. 55-56 | isl pp. 15-63 (outline) ; theo pp. 21-24, 119-176 (outline); ps pp. 66-81; zhao pp. 243-245; mml pp. 175-186; bishop pp. 54-56 | Zhao App. B: supported, and is the source of the die examples, the sigma-algebra and the coarse sigma-algebra {emptyset, {1,2,3}, {4,5,6}, Omega} (p. 244). mml, bishop (Bayes in Bayesian inference): supported. **`james2023statistical` [Ch. 2] and `theodoridis2025ml` [Chs. 4, 5]: unsupported** for probability: ISL Ch. 2 is "Statistical Learning", Theodoridis Ch. 4 is MSE linear estimation and Ch. 5 online learning; Theodoridis's probability chapter is Ch. 2 | 3 citations without locator | locators added; PS Secs. 3.2-3.6 and Theodoridis Sec. 2.2 added beside the "For more" line. Old James/Theodoridis locators left for the owner (likely intended: Theodoridis Ch. 2). **D1 (owner, 2026-11-18): `james2023statistical` [Ch. 2] removed; `theodoridis2025ml` [Chs. 4, 5] replaced by the Sec. 2.2 locator already on the line** (the duplicate dropped). |
| Discrete Random Variables (`sec-msf-discrete-random-variables`) | `zhao2025rl` App. A pp. 237-239; `aggarwalProbabilityStatisticsMachine2024` Secs. 3.5, 3.8 pp. 77-80, 92-95 | zhao pp. 237-241; ps pp. 71, 74, 77-81, 92-95 | supported: joint, conditional, independence, conditional independence, law of total probability and the conditional chain rule p(x|a) = sum_b p(x|b,a) p(b|a) are Zhao App. A nearly verbatim | **section cited nothing**; PMF/independence/chain-rule statements adapted from Zhao App. A without citation | Zhao App. A and PS added at the section intro. |
| Common Probability Distributions (`sec-msf-distributions`) | `bishop2024deeplearning` Secs. 3.1-3.2 pp. 66-70, Sec. 3.2 p. 70; `deisenroth2020mml` Sec. 6.5 p. 197; `aggarwalProbabilityStatisticsMachine2024` Secs. 4.3, 4.6, 4.7, 4.10 | bishop pp. 66-70; mml p. 197; ps pp. 131, 138, 141, 152 | supported: Bern (3.2), mean/var (3.3-3.4), Bin (3.9), moments (3.11-3.12), Mult (3.23-3.24), multivariate Gaussian (3.26); Gaussian in regression/GPs (mml p. 197) | 2 citations without locator | locators added; Bishop and PS at the section intro. |
| Stochastic Processes and Markov Decision Processes (`sec-msf-stochastic-processes`) | `zhao2025rl` Sec. 1.7 p. 11, App. A p. 237, Secs. 1.6-1.7 pp. 9-11; `aggarwalProbabilityStatisticsMachine2024` Sec. 10.2 | zhao pp. 9-11, 237; ps p. 431 | supported: stochastic sequence of die tosses (p. 237), Markov property (1.4), MDP ingredients and discount (pp. 10-11). See disagreement on gamma | 1 citation without locator | locators added; Zhao and PS at the intro. |
| Statistical Concepts (`sec-msf-statistical-concepts`) | `zhao2025rl` App. A pp. 239-241; `aggarwalProbabilityStatisticsMachine2024` Sec. 3.9 pp. 97-104, Sec. 6.7 pp. 284-287; `james2023statistical` Sec. 2.2.2 eq. 2.7, pp. 31-33 | zhao pp. 239-241; ps pp. 97-104, 284-287; isl pp. 31-33 | supported: expectation, linearity with Zhao's proof, conditional and total expectation with proof, variance/covariance/covariance matrix (Zhao p. 241); bias-variance (2.7) | statements and proofs adapted from Zhao App. A without citation; 1 citation without locator | locator added; Zhao and PS at the intro; ISL and PS on the bias-variance theorem. |
| Optimization Foundations (`sec-optimization`) | `deisenroth2020mml` Sec. 7.1 pp. 227-232, Sec. 7.1.2 pp. 230-231; `bishop2024deeplearning` Secs. 7.2.2-7.2.4 pp. 214-216, Secs. 7.1, 7.3 pp. 210-224; `zhao2025rl` Sec. 6.4.4 pp. 119-120, Secs. 6.2, 6.4, 7.1 pp. 103-106, 114-115, 126-127; `shalev2014ml` Sec. 20.5 p. 236; `theodoridis2025ml` Sec. 5.4 pp. 192-194; `aggarwalLinearAlgebraOptimization2020` Sec. 5.3 pp. 212-216 | mml pp. 227-233; bishop pp. 210-224; zhao pp. 103-106, 114-120, 126-127; shalev p. 236; theo pp. 192-194; lao pp. 164-165, 212-216 | supported: GD, step size, SGD, mini-batch; momentum/RMSProp/Adam (bishop 7.3, lao 5.3); non-convex NN losses (bishop p. 211, shalev p. 236); Robbins-Monro conditions (Zhao Thm. 6.1(b)), SGD as RM (p. 104), TD as RM (Box 7.1, Zhao only; Theodoridis 5.4 covers SA but not TD). mml Sec. 7.1.2 covers momentum only, not Adam (supported in part) | 5 citations without locator | locators added; MML, Bishop, Zhao at the intro; LAO on advanced optimizers. |
| Convex and Constrained Optimization (`sec-msf-convex-constrained`) | `deisenroth2020mml` Sec. 7.3 pp. 236-238, Secs. 7.3, 12.3 pp. 236-238, 383, Secs. 7.2, 12.3.1 pp. 233-236, 383; `shalev2014ml` Sec. 12.1.1 pp. 124-126, Sec. 12.1 pp. 124-126; `aggarwalLinearAlgebraOptimization2020` Sec. 4.3 pp. 155-156 | mml pp. 227, 233-238, 383; shalev pp. 124-126; lao pp. 155-156 | supported: convex set/function (SSBD Defs. 12.1-12.2, MML Defs. 7.2-7.3), local = global with SSBD's proof (p. 126), sums of convex functions (MML Ex. 7.4), Lagrangian and SVM dual via multipliers (MML 7.2, 12.3.1). Sign convention f - lambda g vs MML f + lambda g: equivalent for equality constraints (multiplier unconstrained, MML p. 236) | 3 citations without locator; definitions adapted without citation | locators added; MML, SSBD, LAO at the unit intro. |
| Information Theory and Inference (`sec-information-theory`) | `chambert-loirInformationTheory2022` Secs. 1.1-1.3 pp. 23-35, Sec. 1.3 pp. 32-34, p. 35; `theodoridis2025ml` Sec. 2.5 pp. 54-61, pp. 56-61, Sec. 12.8.1 pp. 620-621; `bishop2024deeplearning` Secs. 2.5.4, 2.5.5, 2.5.7, 2.3.2, 2.6.2 (pp. 50-57, 37-38); `shalev2014ml` Sec. 24.1 pp. 295-296; `deisenroth2020mml` Secs. 8.3.2, 9.5 pp. 269, 316; `aggarwalProbabilityStatisticsMachine2024` Sec. 6.2 p. 246, Sec. 7.7 pp. 331-332 | cl pp. 23-35; theo pp. 54-61, 620-621; bishop pp. 37-38, 50-57; shalev pp. 295-296; mml pp. 268-269, 316; ps pp. 246, 277-281, 331-332 | supported: entropy (CL die example 1.1.5 p. 26), Gaussian maximises differential entropy at fixed variance and can be negative (bishop pp. 50-51; theo p. 621; theo Sec. 2.5 only gives the uniform case), KL nonnegative/asymmetric (bishop, CL Rem. 1.3.3), MI = H(X) - H(X|Y), zero iff independent (bishop p. 54, CL Cor. 1.3.7), MLE, MAP; Gaussian prior = l2 (bishop 2.6.2), Laplace prior = l1 (mml p. 316, ps p. 332) | 8 citations without locator | locators added; CL and Theodoridis at the section intro. |
| Cross-Entropy and Entropy Regularization (`sec-msf-cross-entropy`) | `bishop2024deeplearning` Sec. 2.5.5 eq. 2.100, Secs. 6.4.2-6.4.3 pp. 196-197; `theodoridis2025ml` Sec. 18.5 pp. 918-920; `zhao2025rl` Sec. 10.5 p. 235 | bishop pp. 51, 196-197; theo pp. 918-920; zhao p. 235 and index pp. 273-275 | cross-entropy and its decomposition (bishop (2.100): KL = cross-entropy - entropy), BCE (6.33), categorical CE (6.36): supported. **`zhao2025rl` at line 3546: unsupported in part**: p. 235 only names SAC among advanced algorithms; Zhao has no policy entropy or entropy regularization (index checked), and nothing supports "shown to improve exploration and robustness" | 3 citations without locator; policy entropy and entropy regularization have no source in the library | locators added; Bishop eq. 2.100 at the decomposition. New reference proposed (Haarnoja et al. 2018). **D1 + semantic pass (owner, 2026-11-18): `zhao2025rl` [Sec. 10.5, p. 235] replaced by `prudencioSurveyOfflineReinforcement2024` [Sec. IV-C, eq. 25]** (already in the bib, Zotero `I7BYLVLL`): "Haarnoja et al. proposed an entropy regularization term in their seminal work on soft actor-critics ... Adding an entropy maximization term helps improve the robustness and stability ... avoids premature convergence of the policy variance" (p. 11 of the accepted-version PDF). The discounted max-entropy objective of `def-entropy-regularization` itself is not in that survey; Haarnoja stays proposed for it. |
| Exercises (`sec-mathematical-and-statistical-foundations-exercises`) | `bishop2024deeplearning` Sec. 2.3.2 eq. 2.57; `chambert-loirInformationTheory2022` Secs. 1.2-1.3 pp. 28-35; `deisenroth2020mml` Sec. 10.2 pp. 323-324 | as above | supported: Gaussian-mean MLE = sample mean (2.57); conditional entropy and MI; largest-variance direction = top eigenvector of the covariance | **section cited nothing** | "For more on these topics, see ..." added under the heading. The three exercises are original combinations of the chapter's units, not adapted. |

**Counts.** Before: 6 works, 6 textbooks. After: 9 works, 9 textbooks (+ `aggarwalLinearAlgebraOptimization2020`,
`aggarwalProbabilityStatisticsMachine2024`, `chambert-loirInformationTheory2022`, all Zotero Textbooks). `check.py` reports
6/6 until the three keys are merged into the bib; 0 citations without locator, 0 sections citing nothing. A10 met after the merge.
(Two citations broken across a line, at the MLE and cross-entropy paragraphs, were joined onto one line so `check.py` reads their
locators.)

**Citations verified.** 38 existing citations (35 without locator, 3 with): 31 supported, 4 supported in part
(`deisenroth2020mml` at lines 187 and 641, `deisenroth2020mml` Sec. 7.1.2 at line 2705, `zhao2025rl` at line 3546), 3 unsupported
(`theodoridis2025ml` [Chs. 3, 11]; `james2023statistical` [Ch. 2] and `theodoridis2025ml` [Chs. 4, 5] in
`sec-probability-statistics`). 0 not machine-readable.

**Template-conversion corrections (A6).** The conversion (commit 80ce330) removed two garbled pieces from "Advanced
Optimizers": (1) a stray fragment spliced after the citation, "using a small random subset (a mini-batch) of the training data.
This reduces the noise in the gradient estimate while remaining computationally efficient."; (2) a duplicated paragraph "Several
advanced optimizers ... Momentum, which helps accelerate gradients vectors in the right direction ... RMSProp and Adam, which
adapt the learning rate for each parameter ..." with the same three citations. Checked against sources: the remaining paragraphs
are supported by Bishop Sec. 7.3 (pp. 220-224) and LAO Sec. 5.3 (pp. 212-216); the content of fragment (1) survives in the
Mini-batch unit and is supported by Bishop Sec. 7.2.4 (p. 216), MML Sec. 7.1.3 (p. 232) and Zhao Sec. 6.4.4 (p. 120); the claims
of (2) are covered by the kept paragraphs. The removal lost nothing and introduced no error. No other content change was made in
the conversion (the rest of the diff is statement boxes and folds). One garbled remnant was **not** removed: the Bias-Variance
unit's first paragraph still opens "Bias-Variance Decomposition. One of the most important concepts ..." (stray heading text);
for the owner. **Fixed (owner, 2026-11-18):** the fragment "Bias-Variance Decomposition. " removed.

#### Bib additions

```bibtex
@book{aggarwalLinearAlgebraOptimization2020,
  author = {Aggarwal, Charu C.},
  title = {Linear Algebra and Optimization for Machine Learning: A Textbook},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2020},
  doi = {10.1007/978-3-030-40344-7},
  isbn = {978-3-030-40343-0},
  keywords = {textbook},
  zotero = {7YKRVYRJ},
  zoteropdf = {RNW293Y9}
}
@book{aggarwalProbabilityStatisticsMachine2024,
  author = {Aggarwal, Charu C.},
  title = {Probability and Statistics for Machine Learning: A Textbook},
  publisher = {Springer Nature Switzerland},
  address = {Cham},
  year = {2024},
  doi = {10.1007/978-3-031-53282-5},
  isbn = {978-3-031-53281-8},
  keywords = {textbook},
  zotero = {ZVVSSS7W},
  zoteropdf = {ZKFRJSA4}
}
@book{chambert-loirInformationTheory2022,
  author = {Chambert-Loir, Antoine},
  title = {Information Theory: Three Theorems by Claude Shannon},
  series = {UNITEXT},
  volume = {144},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2022},
  doi = {10.1007/978-3-031-21561-2},
  isbn = {978-3-031-21560-5},
  keywords = {textbook},
  zotero = {U5H4HRHV},
  zoteropdf = {KAKBT58X}
}
```

`aggarwalLinearAlgebraOptimization2020` is also cited (key missing from the bib) by `fundamentals-of-machine-learning/
unsupervised-learning`; merge one entry.

#### Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Haarnoja, T., Zhou, A., Abbeel, P., Levine, S. (2018). "Soft Actor-Critic: Off-Policy Maximum Entropy Deep Reinforcement Learning with a Stochastic Actor." ICML 2018 (PMLR 80). arXiv:1801.01290 | Machine Learning; Reinforcement Learning | Publications | arXiv:1801.01290 | `sec-msf-cross-entropy`: Entropy Regularization objective (def-entropy-regularization) | SAC sentence covered by `prudencioSurveyOfflineReinforcement2024` (semantic pass, 2026-11-18); **added and cited** (2026-11-18, `haarnoja2018sac`) |

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `def-mdp`, discount factor, with `def-bellman-equation` and the closed form v = (I - gamma P)^{-1} r | gamma in [0, 1]; "with gamma close to 1 ... far-sighted" | Zhao uses gamma < 1 and needs it for I - gamma P to be invertible (Gershgorin argument "Since gamma < 1"); with gamma = 1 the closed form used in the chapter can fail (P 1 = 1 makes I - P singular) | zhao pp. 10, 26-27 | fixed (owner, 2026-11-18): the closed form now reads "For $\gamma \in [0, 1)$ the matrix $\mathbf{I} - \gamma \mathbf{P}_\pi$ is invertible, and the solution is given by" (Bellman unit). `def-mdp` keeps $[0, 1]$, since `exr-msf-mdp-corridor` uses $\gamma = 1$ on a finite path. |

#### Reading-note additions

Identity and Structure for `deisenroth2020mml`, `zhao2025rl`, `bishop2024deeplearning` and `shalev2014ml` are given under
appendices-and-technical-background above. Bishop's printed/PDF offset is not constant: printed = PDF - 20 in Ch. 2, - 19 in Ch. 3,
- 18 in Ch. 6, - 17 in Ch. 7 (read the running head).

- **`deisenroth2020mml`**. Chapter `fundamentals-of-mathematics-for-machine-learning/mathematical-and-statistical-foundations`:
  Sec. 2.1 (2.3), (2.9), geometric remark p. 21; Sec. 2.4.2 Def. 2.9, Ex. 2.11 (pp. 37-38); Secs. 2.5-2.6 Defs. 2.11-2.14, rank
  remark (pp. 40-47); Secs. 3.1-3.4 Def. 3.1, Fig. 3.3, Def. 3.3, (3.16), (3.25), Def. 3.7 (pp. 71-77); Sec. 3.8.2 (3.65), least
  squares p. 88; Def. 4.6 p. 105; Thms. 4.20-4.21 pp. 116-117; Thm. 4.22, Sec. 4.5.1 pp. 119-121; Sec. 6.3 pp. 183-186; Sec. 6.5
  p. 197; Sec. 7.1 pp. 227-232; Sec. 7.2 pp. 233-236; Sec. 7.3 pp. 236-238; Sec. 8.3.2 p. 269; Sec. 9.5 p. 316; Sec. 10.2 (10.21)
  pp. 323-324; Sec. 12.3.1 p. 383.
- **`zhao2025rl`**. Same chapter: Secs. 1.6-1.7 pp. 9-11 (discount, MDP, Markov property (1.4)); Secs. 2.6-2.7.1 (2.10) pp.
  25-27; Sec. 6.2 (6.2), (6.5), Thm. 6.1 pp. 103-106; Sec. 6.4 (6.13), Sec. 6.4.4 pp. 114-120; Sec. 7.1 (7.1), (7.4), Box 7.1 pp.
  126-127; Sec. 10.5 p. 235 (SAC named only); App. A pp. 237-241 (whole of it: discrete RVs, chain rule, expectation, conditional
  expectation, covariance matrix); App. B pp. 243-245 (probability triple, die, sigma-algebra, random variable).
- **`bishop2024deeplearning`**. Same chapter: Sec. 2.3.2 (2.55)-(2.57) pp. 37-38; Secs. 2.5.4-2.5.7 (2.98)-(2.110) pp. 50-54;
  Secs. 2.6.1-2.6.2 (2.111)-(2.117) pp. 55-57; Secs. 3.1-3.2 (3.2)-(3.26) pp. 66-70; Secs. 6.4.2-6.4.3 (6.33), (6.36) pp.
  196-197; Sec. 7.1 pp. 210-211; Secs. 7.2.2-7.2.4 pp. 214-216; Sec. 7.3 (7.31)-(7.47) pp. 220-224.
- **`shalev2014ml`**. Same chapter: Sec. 12.1.1 Defs. 12.1-12.2, local = global (12.2)-(12.3) pp. 124-126; Sec. 20.5 p. 236
  (non-convex NN loss); Sec. 24.1 (24.1)-(24.3) pp. 295-296.
- **`james2023statistical`** (no reading note yet). Same chapter: Sec. 2.2.2 eq. 2.7 pp. 31-33 (bias-variance). The "[Ch. 2]"
  citation in `sec-probability-statistics` is unsupported.
  - Identity: Gareth James, Daniela Witten, Trevor Hastie, Robert Tibshirani, Jonathan Taylor, *An Introduction to Statistical
    Learning: With Applications in Python*, Springer Texts in Statistics, Springer, 2023. Zotero `PXRVA57J`, PDF `CG3U54DR` (625
    pages). Offset printed = PDF - 18.
  - Structure (PDF pages): 1 Introduction 19-32; 2 Statistical Learning 33-86; 3 Linear Regression 87-152; 4 Classification
    153-218; 5 Resampling 219-246; 6 Model Selection and Regularization 247-306; 7 Beyond Linearity 307-348; 8 Trees 349-384; 9
    SVMs 385-416; 10 Deep Learning 417-486; 11 Survival Analysis 487-520; 12 Unsupervised Learning 521-574; 13 Multiple Testing
    575-614; Index 615.
- **`theodoridis2025ml`** (no reading note yet). Same chapter: Sec. 2.2 pp. 21-24 (axioms, sum rule, conditional probability,
  Bayes); Sec. 2.5 pp. 54-61 (entropy, MI, KL); Sec. 5.4 pp. 192-194 (Robbins-Monro); Sec. 12.8.1 pp. 620-621 (Gaussian is the
  maximum-entropy PDF for fixed mean and variance); Sec. 18.5 (18.41)-(18.43) pp. 918-920. The "[Chs. 3, 11]" and "[Chs. 4, 5]"
  citations are unsupported.
  - Identity: Sergios Theodoridis, *Machine Learning: From the Classics to Deep Networks, Transformers, and Diffusion Models*,
    3rd ed., Elsevier, 2026 (bib key 2025). Zotero `IEHRXWKC`, PDF `FB95BD3W` (1483 pages; no appendices in the PDF, though the
    text cites an Appendix A on linear algebra). Offset printed = PDF - 30.
  - Structure (PDF pages): 1 Introduction 31-48; 2 Probability and Stochastic Processes 49-94; 3 Parametric Modeling 95-148; 4
    MSE Linear Estimation 149-206; 5 Online Learning/SGD 207-278; 6 Least Squares 279-322; 7 Classification 323-372; 8 Convex
    Analytic Path 373-446; 9-10 Sparsity-Aware Learning 447-548; 11 RKHS 549-612; 12 Bayesian Learning I 613-664; 13 Bayesian
    Learning II 665-746; 14 Monte Carlo 747-784; 15-16 Graphical Models 785-884; 17 Particle Filtering 885-914; 18 Neural
    Networks I 915-1026; 19 Neural Networks II 1027-1132; 20 Dimensionality Reduction 1133-1210; Index 1211.
- **`aggarwalLinearAlgebraOptimization2020`** (new to the bib; no reading note). Same chapter: Sec. 1.2.1 pp. 5-6 (dot product,
  norms, Lp norm, cosine); Sec. 2.3 pp. 51-55 (vector spaces incl. matrices and polynomials, basis); Sec. 2.6 Def. 2.6.1, Lemma
  2.6.1 pp. 70-71 (rank); Sec. 2.10 Def. 2.10.1 pp. 86-87 (inner products); Sec. 3.3 (3.14) p. 104 (diagonalization); Sec. 4.3
  pp. 155-156 (convex sets/functions, local = global); Sec. 5.3 pp. 212-216 (momentum, AdaGrad, RMSProp, Adam).
  - Identity: Charu C. Aggarwal, *Linear Algebra and Optimization for Machine Learning: A Textbook*, Springer, 2020. Zotero
    `7YKRVYRJ`, PDF `RNW293Y9` (622 pages). Offset not constant: printed = PDF - 19 in Chs. 1-2, - 18 in Ch. 3, - 17 in Ch. 4,
    - 16 in Ch. 5.
  - Structure (verified starts, PDF pages): 1 Linear Algebra and Optimization: An Introduction ~20; 2 Linear Transformations and
    Linear Systems (Sec. 2.3 at 70, 2.6 at 89, 2.10 at 105); 3 Eigenvectors and Diagonalizable Matrices (Sec. 3.3 at 121); 4
    Optimization Basics: A Machine Learning View (Sec. 4.3 at 172, 4.5 at 181); 5 Advanced Optimization Solutions (Sec. 5.3 at
    228, 5.4 at 232); 6 Constrained Optimization and Duality; 7 SVD; 8 Matrix Factorization; 9 Similarity Matrices; later
    chapters not checked.
- **`aggarwalProbabilityStatisticsMachine2024`** (new to the bib; no reading note). Same chapter: Secs. 3.2-3.6 pp. 66-81
  (sample space, PMF Def. 3.8, sum rule, conditional probability with a die, conditional independence Def. 3.15, total probability,
  Bayes); Sec. 3.8 pp. 92-95; Sec. 3.9 pp. 97-104 (expectation, variance, covariance Def. 3.29); Secs. 4.3, 4.6, 4.7, 4.10 (pp.
  131, 138, 141, 152); Sec. 6.2 p. 246 (MLE); Sec. 6.6.2 pp. 277-281 (MAP); Sec. 6.7 pp. 284-287 (bias-variance); Sec. 7.7 pp.
  331-332 (Gaussian prior = L2, Laplace prior = L1); Sec. 10.2 p. 431 (Markov property).
  - Identity: Charu C. Aggarwal, *Probability and Statistics for Machine Learning: A Textbook*, Springer Nature Switzerland, 2024.
    Zotero `ZVVSSS7W`, PDF `ZKFRJSA4` (530 pages). Offset printed = PDF - 14.
  - Structure (printed pages from the contents; PDF = +14): 1 Introduction; 2 Summarizing and Visualizing Data; 3 Probability
    Basics and Random Variables (~63-126); 4 Probability Distributions 127-190; 5 Hypothesis Testing 191-244; 6 Reconstructing
    Distributions from Data 245-302; 7 Regression 303-352; 8 Classification 353-392; 9 Unsupervised Learning 393-434; 10 Discrete
    State Markov Processes 435-484; 11 Probabilistic Inequalities 485-; later chapters not checked.
- **`chambert-loirInformationTheory2022`** (new to the bib; no reading note). Same chapter: Sec. 1.1 pp. 23-27 (entropy, Example
  1.1.5 fair die, binary entropy); Sec. 1.2 pp. 28-31 (conditional entropy); Sec. 1.3 pp. 32-35 (divergence Def. 1.3.1, Rem. 1.3.3
  on Kullback-Leibler, mutual information, Cor. 1.3.7). No differential entropy in the parts read.
  - Identity: Antoine Chambert-Loir, *Information Theory: Three Theorems by Claude Shannon*, UNITEXT 144, Springer, 2022. Zotero
    `U5H4HRHV`, PDF `KAKBT58X` (221 pages). Offset printed = PDF - 12.
  - Structure (printed pages; PDF = +12): 0 Some bits of probability theory 1-22; 1 Entropy and mutual information 23-56 (1.4
    entropy rate, 1.5 Markov chains); 2 Coding / Kraft-McMillan from ~57; 3 Sampling theorem and Fourier analysis (3.5 at 119,
    3.6 at 123); later parts not checked.
- **`prudencioSurveyOfflineReinforcement2024`** (already in the bib). Same chapter: Sec. IV-C "Regularization", eq. 25 (policy
  entropy regularizer from SAC; robustness and stability, avoids premature convergence of the policy variance), p. 11 of the
  accepted-version PDF (published pagination 10237-10257) -> `sec-msf-cross-entropy`, the SAC sentence after
  `def-entropy-regularization`. Zotero `I7BYLVLL`, PDF `KGYLLK3P` (the attachment file is misnamed "A Survey On Large Language
  Model Based Autonomous Agents.pdf" but holds this paper).

#### Semantic-search pass (owner, 2026-11-18)

Gaps searched with `zotero_semantic_search`: entropy regularization / SAC ("soft actor-critic maximum entropy reinforcement
learning", "entropy regularization of the policy to encourage exploration", "entropy bonus temperature parameter stochastic policy
robustness", "maximum entropy reinforcement learning objective reward plus policy entropy"); the l-infinity unit square ("unit ball
of the infinity norm is a square, l1 unit ball diamond"). Found: `prudencioSurveyOfflineReinforcement2024` for the SAC sentence
(cited). Nothing in the library states the discounted maximum-entropy objective (Haarnoja stays proposed for
`def-entropy-regularization`) or the l-infinity square (left uncited-in-part, elementary). No bib additions.

#### Approved references cited (2026-11-18)

- `haarnoja2018sac` (Zotero `YJIF8FLI`, PDF `CRII7YAI`; arXiv v2, 14 pp., pages = PDF pages), Sec. 3.2, eq. 1, p. 3 -> lead-in
  of `def-entropy-regularization` (`sec-msf-cross-entropy`); Secs. 1, 3.2, pp. 2-3 -> the sentence after the block (SAC,
  exploration and robustness), next to the Prudencio citation. Pages read: 1-4, 7-8, 11 (Appendix A).
  - Note, not a disagreement: Haarnoja's eq. 1 is the finite-horizon, undiscounted form with state-action marginals
    rho_pi; p. 3 says the infinite-horizon case adds a discount factor, and Appendix A, eq. 14, p. 11 spells out the exact
    discounted objective (discounting from each visited (s_t, a_t)). The chapter's E_tau[sum_t gamma^t (R_{t+1} + alpha
    H(pi(.|S_t)))] is the usual discounted version; it agrees with eq. 1 at gamma = 1 and finite T. Text not changed.
  - The Haarnoja gap for `def-entropy-regularization` is closed.


**Gaps filled (2026-11-19).** `kallenberg2021foundations` (printed = PDF − 9):

- Ch. 1, pp. 10, 18; Ch. 4, pp. 81-82 -> lead-in of `def-msf-probability-space` (σ-field, measure, probability space).
- Lemma 1.4, p. 13; p. 36; Ch. 4, p. 81 -> lead-in of `def-msf-random-variable` (measurable function; generating class; the
  intervals (−∞, a] generate the Borel σ-field). Pages read: PDF 19-22, 27, 45, 88-90.
- Convention note (not changed): Kallenberg's σ-field is non-empty by definition; the chapter's σ-algebra lists only closure
  under complements and countable unions.

Still open: the l-infinity unit square (Mohri App. A.1.1, p. 409, defines the norm but not the shape of its ball).

### appendices-and-technical-background

Task 2.2. Page numbers are printed pages; PDF offsets are given under "Reading-note additions". Every cited page was read in
Zotero (`zotero_read_pdf_pages`); all PDFs have a text layer.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Technical Lemmas and Inequalities (`sec-tech-lemmas`) | `shalev2014ml` Lemmas A.1-A.6 | shalev pp. 369-371 (App. A, all of it) | supported: A.1-A.4, A.6 stated and proved as in the source. A.5: **disagreement** (notation, see below) | 6 citations had no locator | locators added (Lemma A.n, page) |
| Linear Algebra Recap (`sec-linear-algebra-recap`) | `shalev2014ml` App. C.1, C.2, Thm. C.1, C.3, Thm. C.2, C.4, Lemmas C.3-C.5, Cor. C.6, pp. 380-383; `deisenroth2020mml` Ch. 4, Def. 4.4, eq. 4.19, Def. 4.6, Thms. 4.16-4.17, Sec. 4.6 eq. 4.91, Def. 4.23, Thm. 4.24; `axler2024linear` Ch. 7, 7.29, 7.38, 7.70, Sec. 7F; `bishop2024deeplearning` App. A (A.2, A.4); `zhao2025rl` [Appendix] | shalev pp. 380-383; deisenroth pp. 103-105, 112-113, 129-131; axler pp. 244-246, 251-252, 273-275, 281; bishop pp. 609-615; zhao App. A-B pp. 237-249 and outline of App. C-D | shalev: supported (definitions and results are App. C nearly verbatim). deisenroth (operator norm = largest singular value, line 1091): supported, Thm. 4.24 p. 131. **`zhao2025rl` [Appendix]: unsupported** - Zhao's appendices are probability (A), measure-theoretic probability (B), convergence of sequences (C) and gradient descent (D); none covers linear algebra | 7 definitions copied from SSBD App. C had no citation (inner products and norms, subspaces, orthogonality, range/null space/transpose, eigenvectors, positive definite, singular vectors); 7 citations had no locator; only one textbook covered the section | locators added; SSBD App. C cited on each copied definition; Deisenroth, Axler and Bishop added at the spectral theorem, PSD characterisation, SVD, operator norm and trace/determinant. Zhao citation left in place for the owner (remove or replace). **D1 (owner, 2026-11-18): `zhao2025rl` [Appendix] removed** with its "For more on this topic, see" phrase. |
| Measure Concentration and Probability Inequalities (`sec-measure-concentration`) | `shalev2014ml` App. B (B.1-B.4, Lemmas B.1-B.7), Sec. 4.2 Cor. 4.6; `zhao2025rl` Box 5.1; `baldi2023probability` eqs. 2.28-2.29, Sec. 3.3 Thm. 3.11; `capinski2001probability` Problem 12.3, Thms. 12.1, 12.2, 12.4; `shiryaevProblemsProbability2012` Problems 4.5.11, 4.5.15, 4.5.16 | shalev pp. 33-34, 372-379; zhao pp. 78-80; baldi pp. 64-65, 124-125; capinski pp. 233-236; shiryaev pp. 253-256 | shalev: supported, except Lemma B.1 (**source error reproduced**, see below). Chernoff/Hoeffding converted correctly (source m, p, delta, h -> text n, mu, epsilon, psi). `zhao2025rl` at line 1177: **unsupported for that sentence** (Zhao has no concentration inequalities); its closest passage, Box 5.1 p. 80 (law of large numbers, Var of the sample mean), supports the variance identity, where it is now also cited | Markov and Chebyshev lemmas, their proofs, the strong-law paragraph and the variance identity were copied from SSBD App. B without citation; 12 citations had no locator | locators added; SSBD, Baldi, Capinski cited on Markov, Chebyshev and the strong law; Shiryaev on Chernoff (simplified form), Hoeffding's inequality and Hoeffding's lemma; SSBD Sec. 4.2 on "Applications to Learning Theory". Zhao locator Box 5.1 added at line 1177 and the owner may drop it there. **D1 (owner, 2026-11-18): `zhao2025rl` removed from the section intro**; it stays at the variance identity (Box 5.1). |
| Exercises (`sec-appendices-and-technical-background-exercises`) | `shalev2014ml` Sec. 4.2, Cor. 4.6 | shalev pp. 33-34 | supported: part (a) of `exr-app-int-finite-class-sample-size` is Cor. 4.6's derivation (union bound + Hoeffding, m >= log(2|H|/delta)/(2 eps^2)) | section cited nothing; exercise (a) adapted without citation | "Part (a) is adapted from [@shalev2014ml, Sec. 4.2, Cor. 4.6, pp. 33-34]" added after the exercise title. The other two integrative exercises are original combinations of the chapter's lemmas. |

**Counts.** Before: 3 works, 3 textbooks (`shalev2014ml`, `deisenroth2020mml`, `zhao2025rl`). After: 8 works, 8 textbooks
(+ `axler2024linear`, `bishop2024deeplearning`, `baldi2023probability`, `capinski2001probability`,
`shiryaevProblemsProbability2012`). `check.py` reports 7/7 until `shiryaevProblemsProbability2012` is merged into the bib; 0
citations without locator, 0 sections citing nothing. A10 met.

**Citations verified.** 23 existing citations (20 `shalev2014ml`, 1 `deisenroth2020mml`, 2 `zhao2025rl`), each a distinct (work,
locator) pair: 21 supported (two of them carry the disagreements below), 2 unsupported (`zhao2025rl` [Appendix];
`zhao2025rl` at line 1177). 0 not machine-readable.

**Other notes (no source disagreement, for the owner).**
- `def-app-trace-determinant` is titled "Trace and determinant" but defines only the trace; the determinant is described in the
  paragraph after it. **Fixed (owner, 2026-11-18):** retitled "Trace" (label kept), and the lead-in now says the definition fixes
  the trace and the determinant is described after it.
- `lem-app-markov` and its proof: the proof's final line states the inequality "for all a >= 0", as the source does (eq. B.3,
  p. 372); at a = 0 the right-hand side is undefined. The statement box correctly says a > 0. **Fixed (owner, 2026-11-18):** the final
  display now reads "for all a > 0" (the integral display before it holds for a >= 0 and is unchanged).

#### Bib additions

```bibtex
@book{shiryaevProblemsProbability2012,
  author = {Shiryaev, Albert N.},
  title = {Problems in Probability},
  series = {Problem Books in Mathematics},
  publisher = {Springer New York},
  address = {New York, NY},
  year = {2012},
  doi = {10.1007/978-1-4614-3688-1},
  isbn = {978-1-4614-3687-4},
  keywords = {textbook},
  zotero = {XSJL3WZY},
  zoteropdf = {I3WKQVGU}
}
```

#### Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| none: the library covered every section | | | | | |

#### Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `lem-app-markov-bounded` (Markov for bounded variables), second display | P(Z > a) >= (mu - a)/(1 - a) >= mu - a "for every a in (0,1)" | **Same as the text**: SSBD Lemma B.1 states the same chain for every a in (0,1) and proves only the first inequality. The step (mu - a)/(1 - a) >= mu - a holds only when mu >= a; for mu < a both sides are negative and it fails (mu = 0.1, a = 0.5: -0.8 >= -0.4 is false). The end bound P(Z > a) >= mu - a is still true for all a, since P >= 0 > mu - a when mu < a (the chapter's `exr-app-markov-bounded-proof` solution argues exactly this). So the text faithfully reproduces an error in the source. Possible fixes: add "if mu >= a" to the middle inequality, or state P(Z > a) >= max{(mu - a)/(1 - a), 0} >= mu - a. | shalev pp. 372-373 | fixed (owner, 2026-11-18): the display is now P(Z > a) >= max{(mu - a)/(1 - a), 0} >= mu - a; the last sentence of the `exr-app-markov-bounded-proof` solution concludes with the same max form. |
| `lem-app-binomial-partial-sum` (partial sums of binomial coefficients), statement and proof | Hypothesis "n, d positive integers with d <= n - 2" and left side sum_k binom(n, k), but the right side is (em/d)^d, and the proof uses em, (em/d)^d and (em/(d+1))^{d+1}: m is never defined | SSBD Lemma A.5 uses m throughout: sum_{k=0}^d binom(m, k) <= (em/d)^d for d <= m - 2. With the site's n for the sample size, the converted statement is sum_{k=0}^d binom(n, k) <= (en/d)^d, and every m in the proof should be n. The conversion m -> n was applied only partly. | shalev pp. 370-371 | fixed (owner, 2026-11-18): every m in the statement and proof is now n (right side (en/d)^d; base case "equals en"). |

#### Reading-note additions

- **`shalev2014ml`** (no reading note yet). Chapter `fundamentals-of-mathematics-for-machine-learning/appendices-and-technical-background`:
  App. A, Lemmas A.1-A.6 (pp. 369-371) -> `sec-tech-lemmas`; App. B, eqs. B.1-B.4, Lemmas B.1-B.7 (pp. 372-376) and the App. B
  introduction (p. 372) -> `sec-measure-concentration`; App. C.1-C.4, Thms. C.1-C.2, Lemmas C.3-C.5, Cor. C.6 (pp. 380-383)
  -> `sec-linear-algebra-recap`; Sec. 4.2, Lemma 4.5, Cor. 4.6 (pp. 33-34) -> "Applications to Learning Theory" and
  `exr-app-int-finite-class-sample-size`.
  - Identity: Shai Shalev-Shwartz and Shai Ben-David, *Understanding Machine Learning: From Theory to Algorithms*, Cambridge
    University Press, 2014. Zotero `K978GTLH`, PDF `PW7WX6W5` (416 pages, no embedded outline). Page offset: printed = PDF - 18
    (checked at pp. 33, 55, 362, 369, 380).
  - Structure (verified ranges only; the PDF has no outline): Ch. 4 Sec. 4.2 "Finite Classes Are Agnostic PAC Learnable" around
    PDF 50-52; App. A "Technical Lemmas" PDF 387-389 (pp. 369-371); App. B "Measure Concentration" PDF 390-397 (pp. 372-379:
    B.1 Markov, B.2 Chebyshev, B.3 Chernoff, B.4 Hoeffding, B.5 Bennet and Bernstein, B.6 Slud, B.7 chi-squared); App. C
    "Linear Algebra" PDF 398-401 (pp. 380-383: C.1 basic definitions, C.2 eigenvalues, C.3 positive definite matrices, C.4 SVD).
- **`deisenroth2020mml`** (no reading note yet). Chapter `.../appendices-and-technical-background`: Ch. 4 (pp. 98-138) as
  further reading; Def. 4.4, eq. 4.19 (pp. 103-104), Def. 4.6 (p. 105), Thms. 4.16-4.17 (pp. 112-113), Sec. 4.6 eq. 4.91
  (p. 130), Def. 4.23 and Thm. 4.24 (p. 131) -> `sec-linear-algebra-recap`.
  - Identity: Marc Peter Deisenroth, A. Aldo Faisal and Cheng Soon Ong, *Mathematics for Machine Learning*, Cambridge University
    Press, 2020. Zotero `KMLSHSM7`, PDF `M6Q9DRRC` (417 pages; the PDF is the 2024-01-15 draft from mml-book.com). Page offset:
    printed = PDF - 6.
  - Structure (PDF pages): Part I: 1 Introduction 17-22; 2 Linear Algebra 23-75; 3 Analytic Geometry 76-103; 4 Matrix
    Decompositions 104-144; 5 Vector Calculus 145-177; 6 Probability and Distributions 178-230; 7 Continuous Optimization 231-254.
    Part II: 8 When Models Meet Data 257-294; 9 Linear Regression 295-322; 10 PCA 323-353; 11 Gaussian Mixture Models 354-375;
    12 SVMs 376-400; References 401; Index 413.
- **`zhao2025rl`** (no reading note yet). Chapter `.../appendices-and-technical-background`: Box 5.1 "Law of large numbers"
  (p. 80) -> `sec-measure-concentration` (variance of the empirical mean). The "[Appendix]" citation in
  `sec-linear-algebra-recap` is unsupported (see table).
  - Identity: Shiyu Zhao, *Mathematical Foundations of Reinforcement Learning*, Springer Nature Singapore, 2025,
    doi:10.1007/978-981-97-3944-8. Zotero `CMDDS8QQ`, PDF `RKHU7D58` (288 pages). Page offset: printed = PDF - 13.
  - Structure (PDF pages): 1 Basic Concepts 14-27; 2 State Values and Bellman Equation 28-47; 3 Bellman Optimality Equation
    48-69; 4 Value Iteration and Policy Iteration 70-89; 5 Monte Carlo Methods 90-113; 6 Stochastic Approximation 114-137; 7
    Temporal-Difference Methods 138-163; 8 Value Function Methods 164-203; 9 Policy Gradient Methods 204-227; 10 Actor-Critic
    Methods 228-249; App. A Probability 250-255; App. B Measure-Theoretic Probability 256-263; App. C Convergence of Sequences
    264-271; App. D Gradient Descent 272-275; Bibliography 276; Symbols 284; Index 286.
- **`bishop2024deeplearning`** (no reading note yet). Chapter `.../appendices-and-technical-background`: App. A "Linear Algebra"
  (pp. 609-615): A.2 traces and determinants, eq. A.9 (p. 610); A.4 eigenvectors, eqs. A.43-A.48 and positive (semi)definite
  matrices (pp. 614-615) -> `sec-linear-algebra-recap`.
  - Identity: Christopher M. Bishop and Hugh Bishop, *Deep Learning: Foundations and Concepts*, Springer, 2024,
    doi:10.1007/978-3-031-45468-4. Zotero `LNJIQ4AH`, PDF `NBDEEY2I` (656 pages). Page offset: printed = PDF - 9.
  - Structure (PDF pages): 1 Deep Learning Revolution 21-42; 2 Probabilities 43-83; 3 Standard Distributions 84-129; 4
    Single-layer Networks: Regression 130-149; 5 Classification 150-188; 6 Deep Neural Networks 189-225; 7 Gradient Descent
    226-249; 8 Backpropagation 250-269; 9 Regularization 270-302; 10 Convolutional Networks 303-340; 11 Structured
    Distributions 341-372; 12 Transformers 373-422; 13 Graph Neural Networks 423-443; 14 Sampling 444-473; 15 Discrete Latent
    Variables 474-508; 16 Continuous Latent Variables 509-545; 17 GANs 546-558; 18 Normalizing Flows 559-573; 19 Autoencoders
    574-590; 20 Diffusion Models 591-617; App. A Linear Algebra 618-624; App. B Calculus of Variations 625-627; App. C Lagrange
    Multipliers 628-631; Bibliography 632; Index 648.
- **`axler2024linear`** (existing note). Chapter `.../appendices-and-technical-background`: Ch. 7 (pp. 227-296) as further
  reading; 7.29 real spectral theorem (p. 245); 7.38 characterization of positive operators (p. 252); 7.70 SVD (p. 273); Sec. 7F,
  norm of a linear map = largest singular value (pp. 280-281) -> `sec-linear-algebra-recap`. Offset printed = PDF - 20.
- **`baldi2023probability`** (existing note). Chapter `.../appendices-and-technical-background`: Markov's inequality eq. 2.28
  (p. 64), Chebyshev's inequality eq. 2.29 (p. 65), Sec. 3.3 Rajchman's strong law, Thm. 3.11 (pp. 124-125) ->
  `sec-measure-concentration`. Offset printed = PDF - 9.
- **`capinski2001probability`** (existing note). Chapter `.../appendices-and-technical-background`: Ch. 12, Problem 12.3
  (Markov), Thm. 12.1 (Chebyshev) (p. 234), Thm. 12.2 (weak law, p. 235), Thm. 12.4 (Kolmogorov strong law, p. 236) ->
  `sec-measure-concentration`. Offset printed = PDF - 9. (Problem 12.2, p. 234, is the tightness of Markov's inequality, the same
  idea as `exr-app-markov-tight`; not cited there.)
- **`shiryaevProblemsProbability2012`** (new to the bib; no reading note). Chapter `.../appendices-and-technical-background`:
  Sec. 4.5, Problem 4.5.11 (Hoeffding's lemma, p. 255), Problem 4.5.15 (Hoeffding's inequality, p. 256), Problem 4.5.16
  (multiplicative Chernoff bounds incl. the e^{-eps^2 ES_n/(2(1+eps/3))} form, p. 256) -> `sec-measure-concentration`.
  - Identity: Albert N. Shiryaev, *Problems in Probability*, Problem Books in Mathematics, Springer New York, 2012,
    doi:10.1007/978-1-4614-3688-1. Zotero `XSJL3WZY` (Textbooks collection), PDF `I3WKQVGU` (433 pages). Page offset: printed
    = PDF - 12 (checked in Ch. 4). Problems refer to the companion textbook Shiryaev, *Probability* ("[P §...]").
  - Structure (PDF pages): 1 Elementary Probability Theory 14-71; 2 Mathematical Foundations 72-192; 3 Topology and Convergence
    in Spaces of Probability Measures, CLT 193-244; 4 Sequences and Sums of Independent Random Variables 245-269 (4.5 Rate of
    Convergence in the SLLN 265-269); 5 Stationary (Strict Sense) Sequences and Ergodic Theory 270-277; 6 Stationary (Broad
    Sense) Sequences 278-292; 7 Martingale Sequences 293-337; 8 Markov Chains 338-366; App. A Review of Fundamental Concepts
    367-414; References 415; Author Index 420; Subject Index 423.

**Gaps filled (2026-11-19).** None: the record lists no open gap, and Mohri App. D and Kallenberg Chs. 4-5 only duplicate what
SSBD, Baldi, Capinski and Shiryaev already support, so nothing was added.

## Proposed new references

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|

## Final counts (2026-11-18, after the owner's decisions)

| Chapter | Works | Textbooks | Citations without locator | Sections citing nothing |
|---|---|---|---|---|
| mathematical-and-statistical-foundations | 11 | 9 | 0 | 0 |
| appendices-and-technical-background | 8 | 8 | 0 | 0 |

Every chapter meets A10. Rendered without warnings; harvest.py reports no problems.

## Owner decisions on the 2026-11-19 gap round

- mathematical-and-statistical-foundations, `def-msf-probability-space`: the sigma-algebra is a non-empty collection of subsets (so Ω, ∅ ∈ 𝓕), as in Kallenberg p. 10. Fixed (owner, 2026-11-19).
