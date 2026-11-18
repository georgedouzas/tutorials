# Audit record: fundamentals-of-machine-learning

Design A9. First pass from `check.py`; chapter tables are filled as each chapter is audited (A1-A7, A10).

## Owner decisions applied (D1, D2, semantic pass), 2026-11-18

Progress (updated as each chapter is finished):

- [x] foundations-of-learning-theory (D1 3 locators replaced; D2 D1-D5 fixed; semantic pass: nothing new)
- [x] supervised-learning (D1 nothing to remove, GP link cited; D2 AdaBoost, MNIST fixed; semantic pass: Kamath cited for RLHF, DPO, CAI, efficient attention, Chinchilla)
- [x] unsupervised-learning (D1 3 James/Shalev citations removed, 2 locators narrowed; semantic pass: nothing new)
- [x] reinforcement-learning (D1 Theodoridis and Bishop Ch. 19 removed, GAIL citation removed; D2 grid world fixed; semantic pass: Hong 2023, Wang 2024 cited, Sutton Sec. 6.4 for GLIE)

## Mechanical findings (first pass)


| Chapter | Works | Textbooks | Meets A10 | Citations without locator | Sections citing nothing |
|---|---|---|---|---|---|
| notation | 0 | 0 | exempt | 0 | 6 |
| foundations-of-learning-theory | 4 | 4 | no | 20 | 2 |
| supervised-learning | 5 | 5 | no | 26 | 1 |
| unsupervised-learning | 5 | 5 | no | 16 | 0 |
| reinforcement-learning | 3 | 3 | no | 24 | 2 |

### notation

Works cited: none.

| Section | Works cited |
|---|---|
| Sets and logic (``) | **none** |
| Linear algebra (``) | **none** |
| Analysis (``) | **none** |
| Probability and statistics (``) | **none** |
| Learning (``) | **none** |
| Conventions specific to this tutorial (``) | **none** |

### foundations-of-learning-theory

Works cited: `bishop2024deeplearning`, `james2023statistical`, `shalev2014ml`, `theodoridis2025ml`.

| Section | Works cited |
|---|---|
| Statistical Learning Theory (`sec-statistical-learning`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Computational Learning Theory (`sec-computational-learning`) | shalev2014ml, theodoridis2025ml |
| Generalization, Complexity, and Stability (`sec-generalization`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Model Selection and Validation (`sec-model-selection`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Computational Complexity of Learning (`sec-computational-complexity`) | **none** |
| Nonuniform Learning and Structural Risk Minimization (`sec-nonuniform-learning`) | **none** |
| Multiple Testing and Error Control (`sec-multiple-testing`) | james2023statistical |
| Representation as Inductive Bias (`sec-representation`) | shalev2014ml, theodoridis2025ml |
| Online & Sequential Learning (`sec-online-learning`) | shalev2014ml |
| Exercises (`sec-foundations-of-learning-theory-exercises`) | **none** |

Citations without a locator: `shalev2014ml` (line 362), `shalev2014ml` (line 405), `shalev2014ml` (line 737), `theodoridis2025ml` (line 737), `james2023statistical` (line 1187), `bishop2024deeplearning` (line 1187), `james2023statistical` (line 1190), `bishop2024deeplearning` (line 1190), `shalev2014ml` (line 1320), `shalev2014ml` (line 1415), `theodoridis2025ml` (line 1415), `james2023statistical` (line 1566), `shalev2014ml` (line 1566), `james2023statistical` (line 1612), `james2023statistical` (line 1716), `shalev2014ml` (line 1752), `james2023statistical` (line 2773), `shalev2014ml` (line 3196), `theodoridis2025ml` (line 3196), `shalev2014ml` (line 3763).

### supervised-learning

Works cited: `bishop2024deeplearning`, `deisenroth2020mml`, `james2023statistical`, `shalev2014ml`, `theodoridis2025ml`.

| Section | Works cited |
|---|---|
| Linear and Generalized Linear Models (`sec-linear-models`) | bishop2024deeplearning, deisenroth2020mml, james2023statistical, shalev2014ml, theodoridis2025ml |
| Generative Probabilistic Models (`sec-generative-models`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Margin-Based Methods (`sec-margin-methods`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Tree-Based and Ensemble Methods (`sec-tree-methods`) | james2023statistical, shalev2014ml, theodoridis2025ml |
| Neural Networks and Deep Models (`sec-neural-networks`) | bishop2024deeplearning, james2023statistical, shalev2014ml, theodoridis2025ml |
| Convolutional Neural Networks (CNNs) (`sec-sup-convolutional-networks`) | bishop2024deeplearning, theodoridis2025ml |
| Recurrent Neural Networks (RNNs) (`sec-sup-recurrent-networks`) | bishop2024deeplearning, theodoridis2025ml |
| Transformers and Foundation Models (`sec-sup-transformers`) | bishop2024deeplearning, theodoridis2025ml |
| Large Language Models (LLMs) (`sec-sup-large-language-models`) | **none** |

Citations without a locator: `james2023statistical` (line 529), `bishop2024deeplearning` (line 529), `james2023statistical` (line 617), `bishop2024deeplearning` (line 617), `james2023statistical` (line 1108), `shalev2014ml` (line 1108), `bishop2024deeplearning` (line 1108), `shalev2014ml` (line 1644), `theodoridis2025ml` (line 1644), `shalev2014ml` (line 1662), `theodoridis2025ml` (line 1662), `james2023statistical` (line 2338), `shalev2014ml` (line 2338), `theodoridis2025ml` (line 2338), `bishop2024deeplearning` (line 2511), `theodoridis2025ml` (line 2511), `bishop2024deeplearning` (line 2645), `theodoridis2025ml` (line 2645), `bishop2024deeplearning` (line 2936), `theodoridis2025ml` (line 2936), `bishop2024deeplearning` (line 3314), `theodoridis2025ml` (line 3314), `bishop2024deeplearning` (line 3662), `theodoridis2025ml` (line 3662), `bishop2024deeplearning` (line 4033), `theodoridis2025ml` (line 4033).

### unsupervised-learning

Works cited: `bishop2024deeplearning`, `deisenroth2020mml`, `james2023statistical`, `shalev2014ml`, `theodoridis2025ml`.

| Section | Works cited |
|---|---|
| Clustering Methods (`sec-clustering`) | bishop2024deeplearning, deisenroth2020mml, james2023statistical, shalev2014ml, theodoridis2025ml |
| Dimensionality Reduction (`sec-dimensionality-reduction`) | bishop2024deeplearning, deisenroth2020mml, james2023statistical, shalev2014ml, theodoridis2025ml |
| Generative Models and Latent Variables (`sec-generative-latent`) | bishop2024deeplearning, deisenroth2020mml, james2023statistical, shalev2014ml, theodoridis2025ml |
| Exercises (`sec-unsupervised-learning-exercises`) | **none** |

Citations without a locator: `james2023statistical` (line 432), `shalev2014ml` (line 432), `james2023statistical` (line 744), `shalev2014ml` (line 744), `james2023statistical` (line 1061), `shalev2014ml` (line 1061), `bishop2024deeplearning` (line 1435), `deisenroth2020mml` (line 1435), `james2023statistical` (line 1463), `shalev2014ml` (line 1463), `james2023statistical` (line 1961), `deisenroth2020mml` (line 1961), `james2023statistical` (line 2109), `shalev2014ml` (line 2109), `bishop2024deeplearning` (line 2517), `theodoridis2025ml` (line 2517).

### reinforcement-learning

Works cited: `bishop2024deeplearning`, `theodoridis2025ml`, `zhao2025rl`.

| Section | Works cited |
|---|---|
| Foundations of RL (`sec-rl-foundations`) | bishop2024deeplearning, zhao2025rl |
| Value functions and Bellman equations (`sec-rl-value-functions-bellman`) | zhao2025rl |
| Dynamic Programming (`sec-rl-dynamic-programming`) | theodoridis2025ml, zhao2025rl |
| Monte Carlo Methods (`sec-rl-monte-carlo`) | theodoridis2025ml, zhao2025rl |
| Temporal-Difference Learning (`sec-rl-temporal-difference`) | theodoridis2025ml, zhao2025rl |
| Advanced RL (`sec-advanced-rl`) | bishop2024deeplearning, theodoridis2025ml, zhao2025rl |
| Policy Gradient Methods (`sec-rl-policy-gradient`) | theodoridis2025ml, zhao2025rl |
| Actor-Critic Methods (`sec-rl-actor-critic`) | theodoridis2025ml, zhao2025rl |
| Model-based and multi-agent RL (`sec-rl-model-based-multi-agent`) | **none** |
| Offline Reinforcement Learning (`sec-rl-offline`) | **none** |
| Imitation learning and LLM-enhanced RL (`sec-rl-imitation-llm`) | theodoridis2025ml, zhao2025rl |
| Exercises (`sec-reinforcement-learning-exercises`) | **none** |

Citations without a locator: `zhao2025rl` (line 23), `theodoridis2025ml` (line 23), `bishop2024deeplearning` (line 23), `zhao2025rl` (line 42), `zhao2025rl` (line 103), `zhao2025rl` (line 169), `zhao2025rl` (line 752), `zhao2025rl` (line 946), `zhao2025rl` (line 1549), `theodoridis2025ml` (line 1549), `zhao2025rl` (line 1847), `theodoridis2025ml` (line 1847), `zhao2025rl` (line 2221), `theodoridis2025ml` (line 2221), `zhao2025rl` (line 2462), `theodoridis2025ml` (line 2462), `zhao2025rl` (line 2709), `theodoridis2025ml` (line 2709), `zhao2025rl` (line 3092), `theodoridis2025ml` (line 3092), `zhao2025rl` (line 3288), `theodoridis2025ml` (line 3288), `zhao2025rl` (line 3869), `theodoridis2025ml` (line 3869).

## Chapter audits

Per chapter: one row per "##" section — works cited with locators, pages verified, verdict (supported / unsupported / disagreement / not machine-readable), gap, resolution.

### foundations-of-learning-theory

Audited 2026-11-18 (task 3.1). Pages read from the Zotero PDFs (local text layer; all eight PDFs are machine-readable).
Page offsets (PDF page = printed page + offset): SSBD `shalev2014ml` +18; ISL `james2023statistical` +18; Theodoridis
`theodoridis2025ml` +30; ESL `tibshiraniElementsStatisticalLearning2024` +19; He & Tao `heFoundationsDeepLearning2025` +12;
Sutton & Barto `suttonReinforcementLearningIntroduction2018` +22; de Mello & Ponti
`fernandesdemelloMachineLearningPractical2018` +7; Bishop `bishop2024deeplearning` +18 in Chs. 1-6, drifting to +11 by
Ch. 19 (unnumbered plate pages), so Bishop is cited by section.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Statistical Learning Theory (`sec-statistical-learning`) | james2023statistical Sec. 2.1, eq. 2.3, Secs. 2.1.2, 2.1.3, 2.1.4, 2.2.1; bishop2024deeplearning Sec. 4.2 (Ch. 4); theodoridis2025ml Sec. 3.15; shalev2014ml Chs. 2-8 (section line) | ISL pp. 15-28; Bishop pp. 120-123; Theodoridis p. 111; SSBD pp. 13-82 | supported, except section-line `theodoridis2025ml [Ch. 12]` | Theodoridis Ch. 12 (Bayesian learning, EM) does not cover this section; SSBD Chs. 2-8 cover the next section rather than this one | Locators added at point of use. Owner: replace `@theodoridis2025ml [Ch. 12]` on the section line by `[Ch. 3]` (not changed: brief allows additions only) |
| Computational Learning Theory (`sec-computational-learning`) | shalev2014ml Thm. 5.1, Sec. 5.1 (eq. 5.1), Sec. 2.1, eq. 3.1, eq. 2.2, Def. 3.1, Cor. 2.3, Def. 3.3, Thm. 6.8, Def. 6.3, Def. 6.5, Secs. 6.3, 6.3.3, 9.1.3, Thm. 6.7, Lemma 6.10; bishop2024deeplearning Sec. 9.1.2; theodoridis2025ml Sec. 3.14; fernandesdemelloMachineLearningPractical2018 Sec. 2.6; tibshiraniElementsStatisticalLearning2024 Sec. 7.9; heFoundationsDeepLearning2025 Sec. 3.2 | SSBD pp. 13-19, 22-25, 36-38, 44-50, 91-94; Bishop p. 255; Theodoridis pp. 109-111; de Mello pp. 118-119; ESL pp. 237-239; He & Tao pp. 43-44 | supported; disagreement D4 (Sauer remark) | none | 4 locatorless SSBD citations given locators; NFL theorem = SSBD eq. 5.2 inside the proof of Thm. 5.1 (the theorem's headline is P[L ≥ 1/8] ≥ 1/7), consistent |
| Generalization, Complexity, and Stability (`sec-generalization`) | james2023statistical Ch. 6 (section line), eq. 2.7, Secs. 2.2.2, 2.2.3; shalev2014ml eq. 2.3, Def. 4.3, Sec. 4.2, Lemma 4.2, Thm. 6.8, eq. 26.4, Thm. 26.5, Sec. 26.1, Thm. 13.2, Cor. 13.6; tibshiraniElementsStatisticalLearning2024 eq. 7.9, Sec. 7.3.1, eq. 7.46; bishop2024deeplearning Sec. 4.3; heFoundationsDeepLearning2025 Def. 3.1, Thm. 3.1, Def. 4.4, Thm. 4.3; theodoridis2025ml Sec. 3.14 | ISL pp. 31-34, 242; SSBD pp. 16, 31-33, 48, 139-142, 325-329; ESL pp. 223-227, 237-238; Bishop pp. 123-127; He & Tao pp. 39-40, 48-51; Theodoridis p. 111 | supported; disagreement D3 (Rademacher bound) | Bishop Sec. 4.3 covers only the regression trade-off, not the classification remark (line 1187) | ESL Sec. 7.3.1 added for the classification remark; 7 locatorless citations given locators |
| Model Selection and Validation (`sec-model-selection`) | james2023statistical Ch. 5 (section line), Secs. 5.1.1, 5.1.2, 5.1.3, eq. 5.2, Sec. 5.2, Sec. 5.4 Problem 2, Sec. 6.1.3; shalev2014ml Sec. 11.2.4, Secs. 7.2, 11.1; theodoridis2025ml Sec. 3.13, Sec. 12.3 (Chs. 12, 13 on section line); bishop2024deeplearning Sec. 1.2.6 (Ch. 12 on section line); tibshiraniElementsStatisticalLearning2024 Secs. 7.5, 7.7, 7.9, 7.10, eq. 7.55 | ISL pp. 202-213, 224, 235-237; SSBD pp. 60-62, 115-120; Theodoridis pp. 106-108, 597-599; Bishop pp. 14-15; ESL pp. 230-235, 237-239, 241, 251 | supported, except section-line `bishop2024deeplearning [Ch. 12]` (Transformers) — unsupported; `theodoridis2025ml [Chs. 12, 13]` partly (Sec. 12.3 evidence/BIC supports, Ch. 13 does not) | SSBD Sec. 11.2.4 defines LOO but does not state "almost unbiased" (ISL and Theodoridis do) | Owner: replace `@bishop2024deeplearning [Ch. 12]` by `[Sec. 1.2.6]` and `@theodoridis2025ml [Chs. 12, 13]` by `[Secs. 3.13, 12.3]` (not changed). LOOCV shortcut exercise flagged as adapted from ISL eq. 5.2, bootstrap example from ESL eq. 7.55 / ISL Problem 5.4.2, BIC exercise from ISL p. 237 / ESL p. 233 — citations added |
| Computational Complexity of Learning (`sec-computational-complexity`) | shalev2014ml Secs. 8.1, 8.2, Problem 8.1, Problem 8.3, Sec. 9.1.1, Sec. 8.4, Sec. 8.3, Secs. 8.2.4, 8.3, Thm. 20.7, Sec. 9.1.2 | SSBD pp. 74-85, 91-92, 235 | supported; disagreement D1 (k ≥ 2) | was citing nothing | Covered by SSBD; ERM-for-intervals exercise flagged as adapted from SSBD Problem 8.1 (cited); "decision lists", "sparse polynomials", "Gaussian mixtures" list items have no source in the library |
| Nonuniform Learning and Structural Risk Minimization (`sec-nonuniform-learning`) | shalev2014ml Def. 7.1, Thm. 7.2, Example 7.1, Sec. 7.2, Thm. 7.5, Sec. 7.3, Sec. 7.4; tibshiraniElementsStatisticalLearning2024 Secs. 7.8, 7.9; theodoridis2025ml Sec. 12.3 | SSBD pp. 58-67; ESL pp. 235-239; Theodoridis pp. 597-599 | supported (consistency: text's definition is SSBD Def. 7.8 with P = realizable distributions, a special case) | was citing nothing; NML (def-flt-nml) has no library source; "SRM achieves universal learning" (line ~2337) is not stated in SSBD (SSBD's universally consistent example is Memorize, Example 7.4) | Covered; NML → proposed Grünwald (A5); the universal-learning sentence is uncited and left for the owner |
| Multiple Testing and Error Control (`sec-multiple-testing`) | james2023statistical Ch. 13 (section line), Secs. 13.3.1, 13.3.2 (Algorithm 13.1), 13.4.1, Algorithm 13.2, Sec. 13.4; tibshiraniElementsStatisticalLearning2024 Sec. 18.7, eq. 18.43, Algorithm 18.2, Sec. 18.7.3 | ISL pp. 565-575; ESL pp. 683-693 | supported (Holm: see A6 check) | Storey's π̂0 (def-flt-storey) not in ISL or ESL; BH "positive dependence" — ISL p. 575 says "independent or only mildly dependent" | Storey → proposed Storey & Tibshirani 2003 (A5); 2 locatorless ISL citations given locators |
| Representation as Inductive Bias (`sec-representation`) | shalev2014ml Sec. 2.3, Sec. 25.1, Sec. 23.1, Sec. 25.3; bishop2024deeplearning Sec. 9.1, Sec. 16.1.1, Sec. 19.1.1, Sec. 19.1, Sec. 19.2, Sec. 6.3.5, Sec. 6.2.2, Sec. 6.3, Sec. 6.1.3; theodoridis2025ml Sec. 19.2.4, Sec. 19.6.5, Thm. 18.1, Sec. 20.9, Sec. 19.6 | SSBD pp. 16, 279-280, 309-311, 319; Bishop pp. 176, 181-182, 187-192, 254-255, 497-499, 564-570; Theodoridis pp. 930-931, 1006, 1052-1059, 1149 | supported | "Theoretical Perspectives" / "Evaluation of Representations" lists (MIG, SAP, DCI, information bottleneck) have no source | Covered at section level; lists left uncited (no library source; not proposed — survey-level material) |
| Online & Sequential Learning (`sec-online-learning`) | shalev2014ml Sec. 21.1, eq. 21.5, Sec. 21.3, Thm. 21.15, Thm. 21.16, Thm. 21.11, Problem 21.5; theodoridis2025ml eq. 8.77, Prop. 8.4 (eq. 8.89); bishop2024deeplearning Sec. 7.3.3; suttonReinforcementLearningIntroduction2018 Sec. 2.7 | SSBD pp. 245-262; Theodoridis pp. 387-390; Bishop pp. 222-223; Sutton & Barto pp. 35-36 | supported (OGD 3/2: see A6 check); disagreement D2 (Hedge) | FTRL (def-flt-ftrl), UCB1 regret bound (thm-flt-ucb1-regret; Sutton & Barto give the rule only), LinUCB (def-flt-linucb), Online Newton Step, and the convex online-to-batch theorem (SSBD Problem 21.5 is the mistake-bound version) have no library source | Proposed Orabona, Hazan, Lattimore & Szepesvári, Li et al. (A5) |
| Exercises (`sec-foundations-of-learning-theory-exercises`) | shalev2014ml Cor. 2.3, Sec. 4.2, Thm. 21.11; james2023statistical Secs. 6.1.3, 13.3, 13.4 | as above | supported | was citing nothing | Citation added to the fold introduction |

**Counts.** Before: 4 works, 4 textbooks (20 citations without locator, 2 sections citing nothing). After: 8 works, 8 textbooks
(0 citations without locator, 0 sections citing nothing). `check.py` reports 4/4 until the four bib additions below are merged.

**Corrections from the template conversion (A6), checked against sources:**

- Holm's procedure (def-flt-holm: smallest k with p_(k) > α/(m+1−k), reject H_(1..k−1)) — **supported**: ISL Algorithm 13.1,
  p. 569 (L = min{j : p_(j) > α/(m+1−j)}, reject p_j < p_(L)). The pre-conversion "largest k with p_(k) ≤ …" was a step-up
  rule, not Holm. Integrative exercise (c) recomputed: 2 / 3 / 4 rejections are correct.
- OGD regret (3/2)DG√T with η_t = D/(G√t) — **supported by derivation**: Theodoridis eq. 8.89, p. 389, gives
  Regret ≤ F²/(2μ_N) + (G²/2)Σμ_n; with μ_n = F/(G√n) and Σ 1/√n ≤ 2√N this is (1/2 + 1)FG√N. Theodoridis states only the
  μ_n = 1/√n case (F²√N/2 + G²√N), and SSBD Thm. 21.15 (p. 258) only the constant step (Bρ√T, which supports
  exr-flt-ogd-constant-step). The constant 3/2 is stated verbatim in Hazan, Thm. 3.1 (proposed below).
- VC dimension of intervals 2, thresholds 1 — **supported**: SSBD Secs. 6.3.1-6.3.2, p. 46 (pre-conversion "half-intervals … 2"
  was wrong).
- Stability bound |E_S[L_D(A(S)) − L_S(A(S))]| ≤ β — **supported**: SSBD Thm. 13.2, p. 139 (eq. 13.6) and Def. 13.3 (uniform
  stability implies on-average-replace-one stability with the same constant); He & Tao, proof of Thm. 4.3, p. 50
  (E_S[D(A(S))] ≤ β).

Bib additions:

```bibtex
@book{tibshiraniElementsStatisticalLearning2024,
  author = {Hastie, Trevor and Tibshirani, Robert and Friedman, Jerome},
  title = {The Elements of Statistical Learning: Data Mining, Inference, and Prediction},
  edition = {2},
  series = {Springer Series in Statistics},
  publisher = {Springer},
  address = {New York},
  year = {2009},
  keywords = {textbook},
  zotero = {W8CD6K73},
  zoteropdf = {SUY5WZ2R}
}
@book{heFoundationsDeepLearning2025,
  author = {He, Fengxiang and Tao, Dacheng},
  title = {Foundations of Deep Learning},
  series = {Machine Learning: Foundations, Methodologies, and Applications},
  publisher = {Springer Nature Singapore},
  address = {Singapore},
  year = {2025},
  doi = {10.1007/978-981-16-8233-9},
  isbn = {9789811682322},
  keywords = {textbook},
  zotero = {HUW5WWSF},
  zoteropdf = {ZTSIRTD3}
}
@book{suttonReinforcementLearningIntroduction2018,
  author = {Sutton, Richard S. and Barto, Andrew G.},
  title = {Reinforcement Learning: An Introduction},
  edition = {2},
  series = {Adaptive Computation and Machine Learning},
  publisher = {The MIT Press},
  address = {Cambridge, Massachusetts},
  year = {2018},
  isbn = {978-0-262-03924-6},
  keywords = {textbook},
  zotero = {XEUNQM6V},
  zoteropdf = {QAVS5EML}
}
@book{fernandesdemelloMachineLearningPractical2018,
  author = {Fernandes de Mello, Rodrigo and Antonelli Ponti, Moacir},
  title = {Machine Learning: A Practical Approach on the Statistical Learning Theory},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2018},
  doi = {10.1007/978-3-319-94989-5},
  isbn = {978-3-319-94988-8},
  keywords = {textbook},
  zotero = {H3GE6K9V},
  zoteropdf = {IJ9MQSSP}
}
```

Note for the owner: the Zotero record W8CD6K73 has wrong metadata (authors "Sami Tibshirani; Harry Friedman", date 2024),
so its Better BibTeX key is `tibshiraniElementsStatisticalLearning2024`. The PDF is ESL 2nd ed. (Hastie, Tibshirani,
Friedman, Springer 2009). Fixing the Zotero record and pinning a key such as `hastie2009esl` would change the key the chapter
uses; the entry above uses the existing key as the brief requires.

Proposed new references:

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Orabona, F. *A Modern Introduction to Online Learning*. arXiv:1912.13213 (2019, rev. 2023) | Machine Learning; Optimization | Textbooks | arXiv | sec-online-learning: OGD with η_t ∝ 1/√t, FTRL (def-flt-ftrl), AdaGrad, exponential weights, online-to-batch (thm-flt-online-to-batch) || added and cited (2026-11-18) |
| Hazan, E. *Introduction to Online Convex Optimization*, 2nd ed. arXiv:1909.05207 (2019/2022) | Machine Learning; Optimization | Textbooks | arXiv | thm-flt-ogd-regret (Thm. 3.1 states (3/2)GD√T), Online Newton Step, def-flt-oco || added and cited (2026-11-18) |
| Lattimore, T. and Szepesvári, C. *Bandit Algorithms*. Cambridge University Press, 2020 | Machine Learning; Reinforcement Learning | Textbooks | free PDF on the authors' site (tor-lattimore.com/downloads/book/book.pdf), distributed with the publisher's permission | thm-flt-ucb1-regret (UCB regret, Chs. 7-8), def-flt-linucb (LinUCB, Ch. 19) || added and cited (2026-11-18) |
| Li, L., Chu, W., Langford, J., Schapire, R. E. "A contextual-bandit approach to personalized news article recommendation." WWW 2010. arXiv:1003.0146 | Machine Learning; Reinforcement Learning | Publications | arXiv | def-flt-linucb || added and cited (2026-11-18) |
| Storey, J. D. and Tibshirani, R. "Statistical significance for genomewide studies." PNAS 100(16):9440-9445, 2003. doi:10.1073/pnas.1530509100 | Mathematical Statistics; Statistical Learning | Publications | PNAS open access | def-flt-storey (π̂0(λ) = #{p > λ}/(m(1−λ))) | added and cited (2026-11-18); verified from the PMC full text, no PDF in Zotero |
| Grünwald, P. "A tutorial introduction to the minimum description length principle." arXiv:math/0406077 (2004) | Information Theory; Statistical Learning | Publications | arXiv | def-flt-mdl (two-part code), def-flt-nml || added and cited (2026-11-18) |

Disagreements:

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| D1. thm-flt-hardness-halfspaces (sec-computational-complexity); also exr-flt-hard-but-learnable and exr-flt-int-xor-perceptron (c) "starts at intersections of two" | ERM for intersections of k halfspaces is NP-hard for k ≥ 2 | SSBD Problem 8.3(2): NP-hard for every k ≥ 3 (reduction from k-colouring). The k = 2 case is true in the literature (Blum & Rivest 1992, training a 3-node network) but is not in the cited source or the library | SSBD pp. 83-84 | fixed (owner, 2026-11-18) | k ≥ 3 in the theorem and in exr-flt-int-xor-perceptron (c) ("starts at intersections of three"); Blum-Rivest is not in the library (semantic search) |
| D2. thm-flt-hedge-regret (sec-online-learning) | η = √(log N / T) gives Regret ≤ √(2T log N) | SSBD Thm. 21.11: η = √(2 log d / T) gives ≤ √(2 log(d) T). With the text's η, the same proof gives log N/η + ηT/2 = (3/2)√(T log N) > √(2T log N). Either η should be √(2 log N/T) or the bound (3/2)√(T log N). exm-flt-hedge-numbers and exr-flt-int-thresholds (c) use the bound only | SSBD pp. 253-254 | fixed (owner, 2026-11-18) | η = √(2 log N/T); bound and examples unchanged |
| D3. thm-flt-rademacher-bound (sec-generalization) | L_D ≤ L_S + 2R_n(H) + √(log(1/δ)/(2n)), "for losses with values in [0, 1]", R_n of the hypothesis class | SSBD Thm. 26.5(1): 2E R(ℓ∘H∘S′) + c√(2 ln(2/δ)/m) (loss class, larger confidence term). He & Tao Thm. 3.1 (±1-valued H, 0-1 loss): R(H) + √(log(1/δ)/(2m)). The text's confidence term matches He & Tao; its complexity term 2R(H) is twice He & Tao's; for [0,1] losses the class should be ℓ∘H. Valid but mixes two forms; exm-flt-rademacher-numbers depends on it | SSBD p. 328; He & Tao p. 40 | fixed (owner, 2026-11-18) | now SSBD Thm. 26.5(1) with c = 1 on the loss class ℓ∘H: 2𝔑_n(ℓ∘H) + √(2 log(2/δ)/n); example recomputed (0.086, bound 0.286); exr-flt-rademacher-confidence recomputed (n ≥ 105,967) |
| D4. Remark after lem-flt-sauer (sec-computational-learning) | "For n > d, this bound is approximately (em/d)^d" | SSBD Lemma 6.10: for m > d + 1, τ_H(m) ≤ (em/d)^d — an upper bound, not an approximation, and for m > d + 1. The text also writes m where the chapter uses n | SSBD p. 49 | fixed (owner, 2026-11-18) | "For n > d + 1, this bound is at most (en/d)^d [@shalev2014ml, Lemma 6.10]" |
| D5. Solution of exr-flt-erm-intervals (O(m²) leftover) | "ERM takes O(m²) time" | Notation only: sample size is n in the chapter (SSBD Problem 8.1 uses m) | SSBD p. 83 | fixed (owner, 2026-11-18) | O(n²) |
| D6. "Online Newton Step" paragraph after exr-flt-adagrad-decay (sec-online-learning), found 2026-11-18 | w_{t+1} = w_t − H_t^{-1}∇f_t(w_t) with H_t = Σ_{s≤t} ∇²f_s(w_s), "the cumulative Hessian" | Hazan Algorithm 12: A_t = εI + Σ_{s≤t} ∇_s∇_sᵀ (rank-one gradient outer products, "related to the Hessian", not the Hessian), y_{t+1} = x_t − (1/γ)A_t^{-1}∇_t, then projection onto K in the A_t-norm; regret O((1/α + GD) n log T) for α-exp-concave losses (Thm. 4.5). Orabona Algorithm 7.6 is the same with A_t = µ Σ g_i g_iᵀ + λI. The text's update (true Hessians, no 1/γ, no projection) is neither source's algorithm | Hazan pp. 62-63; Orabona pp. 121-122 | open (left uncited) |

**Owner decisions applied (2026-11-18).**

- D1 (unsupported / wrong-chapter citations), all replaced by a supporting section of the same work, none removed:
  - section line of `sec-statistical-learning`: `@theodoridis2025ml [Ch. 12]` → `[Ch. 3]`;
  - section line of `sec-model-selection`: `@bishop2024deeplearning [Ch. 12]` → `[Sec. 1.2.6]`, `@theodoridis2025ml [Chs. 12, 13]`
    → `[Secs. 3.13, 12.3]`.
- D2: D1-D5 above fixed in the text (see the Owner decision column).
- Semantic pass (`zotero_semantic_search`, 2-3 phrasings each; keys resolved from a copy of `zotero.sqlite`): no library
  source found for Blum-Rivest (3-node network NP-completeness), FTRL / online convex optimization (only Theodoridis Secs.
  8.10.3-8.11 and SSBD Ch. 21, already cited), UCB regret bounds (Sutton & Barto Sec. 2.7 and Zai & Brown give the rule only),
  LinUCB, Online Newton Step, Storey's π̂0 (`vonstechowComputationalCellBiology2018` only names Storey-Tibshirani, p. 107), NML
  (SSBD Sec. 7.3 has MDL only), decision lists / sparse polynomials, disentanglement metrics, information bottleneck. All six
  proposals below stay open. No new bib additions.

**Approved references cited (2026-11-18).** PDFs read with `pdftotext`; pages are printed pages, offsets given per work.

- `hazan2022oco` (printed = PDF − 22): Sec. 1.1, eq. 1.1, pp. 2-3 -> lead-in of `def-flt-oco` (protocol and regret);
  Thm. 3.1, p. 43 (proof p. 44) -> lead-in of `thm-flt-ogd-regret`: η_t = D/(G√t) and Regret_T ≤ (3/2)GD√T verbatim;
  Secs. 5.4.1-5.4.2, pp. 81-82 -> "Different choices of R(w) lead to different algorithms" (R = ½‖x − x0‖² gives OGD,
  negative entropy on the simplex gives Hedge). Pages read: PDF 5-7, 24-25, 64-66, 84-85, 95-97, 103-104.
- `orabona2019online` (printed = PDF − 12): Sec. 7.1, Algorithm 7.1, p. 99 -> lead-in of `def-flt-ftrl` (index shift only:
  Orabona's x_t minimizes ψ_t + Σ_{i<t} ℓ_i); Sec. 4.2.4, Algorithm 4.1, pp. 45-46 -> lead-in of `def-flt-adagrad`
  (convention: the usual form, p. 49, puts ε outside the square root, the text inside; same role); Thm. 3.1, p. 24 ->
  lead-in of `thm-flt-online-to-batch` (with α_t = 1 it is the theorem, proof by the tower rule and Jensen as in the text).
  Pages read: PDF 4-5, 36-37, 57-61, 111-112, 132-134.
- `lattimore2020bandit` (printed = PDF − 9): Thm. 7.1, p. 105, and Sec. 7.3, p. 111 -> lead-in of `thm-flt-ucb1-regret`;
  Sec. 19.2, eq. 19.13, p. 245 -> LinUCB lead-in; eq. 19.6, p. 242 -> the sentence defining A_t = λI + Σ x xᵀ. Supported in
  form, not in the constant: Thm. 7.1 (1-subgaussian, δ = 1/n²) gives Σ 16 log n/Δ_i + 3ΣΔ_i, i.e. 4 log n/Δ_i + 3ΣΔ_i for
  [0, 1] rewards (1/2-subgaussian), which implies the text's 8 log T/Δ_i + O(K); p. 111 says the text's UCB1 (t in place
  of n, [0, 1] rewards) is Auer et al. 2002, whose constant 8 is not in the library. Not a disagreement. L&S's
  √β_t‖a‖_{V^{-1}} is the text's β_t√(xᵀA^{-1}x) (naming of the constant). Pages read: PDF 112-117, 120-121, 126-127,
  249-251, 254-255.
- `li2010linucb` (arXiv PDF, no printed pages): Sec. 3.1, eqs. 3-5, Algorithm 1, PDF pp. 3-4 -> LinUCB lead-in. Li's
  Algorithm 1 is the disjoint model (one A_a = D_aᵀD_a + I per arm, bonus α√(xᵀA_a^{-1}x)); the text's shared-θ form with
  λI is L&S eqs. 19.6, 19.13, cited next to it. Pages read: PDF 1, 3-4.
- `grunwald2004mdl` (printed = PDF): Sec. 2.4, p. 34 -> MDL section line (crude two-part principle, minimize L(H) + L(D|H));
  Sec. 2.4.1, p. 35 -> "the data description length is the code length −log₂ p(S|h)"; Sec. 2.5.3, Prop. 2.14, eq. 2.18,
  p. 43 -> lead-in of `def-flt-nml` (P̄_nml(xⁿ) = P(xⁿ|θ̂(xⁿ))/Σ_{yⁿ} P(yⁿ|θ̂(yⁿ)); agrees exactly). Pages read: 2-4, 11,
  34-35, 42-43.
- `storey2003significance` (no PDF in Zotero): read from the PMC open-access full text (PMC170937, HTML; the formula images
  M7 and M12 viewed). Section "Proposed Method and Results": π̂0(λ) = #{p_i > λ; i = 1..m}/(m(1 − λ)) (agrees exactly),
  and FDR̂(t) = π̂0 m t/#{p_i ≤ t}, q̂_i = min_{t ≥ p_i} FDR̂(t). Cited in the lead-in of `def-flt-storey` with the section
  name as locator (the PNAS page could not be checked: the PDF download was refused by the sandbox). Step 2 ("apply BH at
  level q/π̂0") is not stated in the paper; it follows by derivation: q̂_i ≤ q iff some t ≥ p_i has π̂0 m t/#{p ≤ t} ≤ q,
  which is the BH step-up rule at level q/π̂0. Not a disagreement.

Gaps still uncited in this chapter: the "Universal Learning" sentence after the consistency exercise (no new reference covers
it); the Online Newton Step paragraph (disagreement D6 with Hazan and Orabona, left uncited).

Reading-note additions:

- **shalev2014ml** — fundamentals-of-machine-learning/foundations-of-learning-theory: Sec. 2.1 (pp. 13-15) PAC setup;
  eq. 2.2 (p. 15) empirical error; eq. 2.3 (p. 16) memoriser; Sec. 2.3 (p. 16) inductive bias; Cor. 2.3 (p. 19); Def. 3.1
  (p. 22); eq. 3.1, Def. 3.3 (pp. 24-25); Lemma 4.2, Def. 4.3 (pp. 31-32), Sec. 4.2 (pp. 32-33); Thm. 5.1 and eqs. 5.1-5.2
  (pp. 37-38); Defs. 6.3, 6.5, Secs. 6.3.1-6.3.3, Thms. 6.7-6.8, Lemma 6.10 (pp. 45-49); Def. 7.1, Thm. 7.2, Example 7.1,
  Sec. 7.2, Thm. 7.5, Sec. 7.3, Def. 7.8 (pp. 58-66); Secs. 8.1-8.4, Problems 8.1, 8.3 (pp. 74-84); Secs. 9.1.1-9.1.3,
  Thm. 9.3 (pp. 91-94); Secs. 11.1, 11.2.4 (pp. 115-119); Thm. 13.2, Def. 13.3, Cor. 13.6 (pp. 139-142); Thm. 20.7 (p. 235);
  Secs. 21.1, 21.3, Thms. 21.11, 21.15, 21.16, eq. 21.5, Problem 21.5 (pp. 245-262); Sec. 23.1 (p. 279); Secs. 25.1, 25.3
  (pp. 309, 319); eq. 26.4, Thm. 26.5 (pp. 326-329). Identity: Shalev-Shwartz & Ben-David, *Understanding Machine Learning:
  From Theory to Algorithms*, Cambridge University Press, 2014; PDF 416 pp., offset +18. Structure: Ch. 1 PDF 19-30; Part 1
  Foundations, Chs. 2-8 PDF 31-103; Part 2 From Theory to Algorithms, Chs. 9-20 PDF 107-260; Part 3 Additional Learning
  Models, Chs. 21-25 PDF 263-341; Part 4 Advanced Theory, Chs. 26-31 PDF 343-386; Appendices A-C PDF 387-.
- **james2023statistical** — same chapter: Sec. 2.1, eqs. 2.1, 2.3 (pp. 15-18); Secs. 2.1.2-2.1.4 (pp. 20-26); Secs.
  2.2.1-2.2.3, eq. 2.7 (pp. 28-37); Secs. 5.1.1-5.1.3, eq. 5.2 (pp. 202-208); Sec. 5.2 (pp. 212-215); Sec. 5.4 Problem 2
  (p. 224); Sec. 6.1.3 (pp. 235-237); Sec. 6.2.1 (p. 242); Ch. 13: Secs. 13.3.1-13.3.2, Algorithm 13.1, Secs. 13.4-13.4.2,
  Algorithm 13.2 (pp. 565-575). Identity: James, Witten, Hastie, Tibshirani & Taylor, *An Introduction to Statistical
  Learning with Applications in Python*, Springer, 2023; PDF 625 pp., offset +18. Structure: Ch. 2 PDF 33-; Ch. 5 PDF 219-;
  Ch. 6 PDF 247-; Ch. 13 PDF 575-.
- **bishop2024deeplearning** — same chapter: Secs. 1.2.6, 4.2, 4.3, 6.1.3, 6.2.2, 6.3, 6.3.5, 7.3.3, 9.1, 9.1.2, 16.1.1,
  19.1, 19.1.1, 19.2. Identity: C. M. Bishop & H. Bishop, *Deep Learning: Foundations and Concepts*, Springer, 2024; PDF
  656 pp.; offset +18 in Chs. 1-6, drifting to +11 by Ch. 19. Structure (PDF start pages): Ch. 4 PDF ~129, Sec. 4.3 PDF 142;
  Ch. 6 PDF ~190; Ch. 7 PDF ~228; Ch. 9 PDF ~270; Ch. 16 PDF ~509; Ch. 19 PDF ~574.
- **theodoridis2025ml** — same chapter: Secs. 3.13-3.15 (pp. 106-111); eq. 8.77, Prop. 8.4, eq. 8.89 (pp. 387-390);
  Sec. 12.3 (pp. 597-599); Thm. 18.1 (pp. 930-931); Sec. 19.2.4 (p. 1006); Secs. 19.6, 19.6.5 (pp. 1052-1059); Sec. 20.9
  (p. 1149). Identity: S. Theodoridis, *Machine Learning: From the Classics to Deep Networks, Transformers, and Diffusion
  Models*, 3rd ed., Academic Press; PDF offset +30. Structure: Ch. 3 PDF ~125-175; Ch. 8 PDF ~373-445; Ch. 12 PDF ~613-;
  Ch. 18 PDF ~915-; Ch. 19 PDF ~1027-; Ch. 20 PDF ~1133-.
- **tibshiraniElementsStatisticalLearning2024** (new note) — same chapter: eq. 7.9 (p. 223); Sec. 7.3.1 (pp. 226-227);
  Sec. 7.5, eq. 7.29 (pp. 230-231); Sec. 7.7, eq. 7.35 (pp. 233-235); Sec. 7.8, eq. 7.44 (pp. 235-236); Sec. 7.9, eq. 7.46
  (pp. 237-239); Sec. 7.10 (p. 241); eq. 7.55 (p. 251); Sec. 18.7, eq. 18.43, Algorithm 18.2, Sec. 18.7.3 (pp. 683-693).
  Identity: Hastie, Tibshirani & Friedman, *The Elements of Statistical Learning*, 2nd ed., Springer, 2009; PDF 764 pp.,
  offset +19. Structure: Ch. 7 Model Assessment and Selection PDF 238-; Ch. 18 High-Dimensional Problems PDF ~668-; Sec.
  18.7 PDF 702-712.
- **heFoundationsDeepLearning2025** (new note) — same chapter: Def. 3.1, Thm. 3.1 (pp. 39-40); Sec. 3.2, Thm. 3.3
  (pp. 43-44); Def. 4.4, Thm. 4.3 (pp. 48-51). Identity: F. He & D. Tao, *Foundations of Deep Learning*, Springer Nature
  Singapore, 2025; PDF 298 pp., offset +12. Structure: Ch. 3 Hypothesis Complexity PDF 51-; Ch. 4 Algorithmic Stability PDF
  ~59-.
- **suttonReinforcementLearningIntroduction2018** (new note) — same chapter: Sec. 2.7, eq. 2.10 (pp. 35-36). Identity:
  Sutton & Barto, *Reinforcement Learning: An Introduction*, 2nd ed., MIT Press, 2018; PDF offset +22. Structure: Ch. 2
  Multi-armed Bandits PDF ~47-66.
- **fernandesdemelloMachineLearningPractical2018** (new note) — same chapter: Sec. 2.6 (pp. 118-121). Identity:
  Fernandes de Mello & Antonelli Ponti, *Machine Learning: A Practical Approach on the Statistical Learning Theory*,
  Springer, 2018; PDF 368 pp., offset +7. Structure: Ch. 2 Statistical Learning Theory PDF 82-134 (Sec. 2.4 shattering
  coefficient PDF 117, Sec. 2.6 VC dimension PDF 125); Ch. 3 PDF 136-.

### supervised-learning

Pages are printed pages unless marked "PDF". Offsets (printed = PDF − n): James 18, Shalev-Shwartz 18, Deisenroth 6,
Theodoridis 30, ESL 19, Aggarwal 21, Mall 20, Bishop 19 in Chs. 1-8 and 16 from Ch. 12. Zotero's MCP reader timed out
mid-audit, so later pages were read from the same Zotero PDFs with PyMuPDF.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Linear and Generalized Linear Models (`sec-linear-models`) | deisenroth Chs. 8, 9; james Chs. 3, 4, Secs. 4.6.3, 9.3.2; shalev Ch. 9; theodoridis Chs. 6, 9, 11, 12; bishop Chs. 4, 5, Secs. 5.4.3, 5.4.6 | Deisenroth pp. 258-260 (Ex. 8.1-8.2), 293-294 (eq. 9.12c), 313-314 (Sec. 9.4); Theodoridis pp. 250-254 (Secs. 6.2-6.3: projection, moments, BLUE); James pp. 172-173 (Sec. 4.6.3), p. 380 (eq. 9.21); Bishop pp. 131-132, 159-165 | supported, with two partial locators | Deisenroth "Ch. 8" only covers OLS as an ERM example; Theodoridis "Chs. 9, 11, 12" cover LASSO, kernel and Bayesian regression but not the OLS core; the Gaussian-process link (line 529) is in no cited work; lines 529, 617 had no locator | Added Deisenroth Ch. 9 and Theodoridis Ch. 6; located 529 (James Sec. 9.3.2, Bishop Chs. 4, 5) and 617 (James Sec. 4.6.3, Bishop Secs. 5.4.3 (IRLS), 5.4.6 (GLM)). GP link left for the owner |
| Generative Probabilistic Models (`sec-generative-models`) | james Ch. 4, Sec. 4.5.1; shalev Secs. 24.2, 24.3, Ch. 24; theodoridis Secs. 7.2-7.4; bishop Sec. 5.4.3 | James pp. 161-163; Shalev pp. 295, 299-301 (eq. 24.8); Theodoridis p. 303 (Sec. 7.3.1); Bishop p. 159 | supported after correction | **theodoridis [Ch. 10] unsupported**: Ch. 10 is sparsity-aware algorithms. Line 1108 had no locator; James does not say "large datasets", Bishop p. 159 (parameter count) and Shalev p. 295 (Vapnik's principle) carry the claim | Locator corrected to Secs. 7.2-7.4; Shalev Secs. 24.2-24.3 added; 1108 located |
| Margin-Based Methods (`sec-margin-methods`) | bishop Sec. 6.1.4; deisenroth Ch. 12; james Ch. 9; shalev Chs. 15, 16, Sec. 16.2; theodoridis Secs. 11.5, 11.10.3 | Bishop p. 179; Deisenroth pp. 377-380 (eqs. 12.15-12.26); Shalev pp. 181-185; Theodoridis p. 561 | supported after correction | **bishop [Ch. 6] marginal**: SVMs only named in Sec. 6.1.4, p. 179; lines 1644, 1662 had no locator | Bishop narrowed to Sec. 6.1.4; Deisenroth Ch. 12 and Shalev Chs. 15-16 added; 1644, 1662 located |
| Tree-Based and Ensemble Methods (`sec-tree-methods`) | james Ch. 8, Sec. 8.2; ESL Ch. 10, Alg. 10.1, Sec. 10.4; theodoridis Secs. 7.8, 7.10, 7.11, Alg. 7.1; shalev Thm. 10.2, Ch. 18 | ESL pp. 338-339 (Alg. 10.1), 343-344 (eqs. 10.12-10.15); Theodoridis pp. 331-336 (Alg. 7.1, Sec. 7.11); Shalev pp. 105-107 (Thm. 10.2 and proof); James Ch. 8 and Shalev Ch. 18 from the contents only | supported | The AdaBoost definition (ESL Alg. 10.1 verbatim) and training-error theorem (Shalev Thm. 10.2 proof) had no citation; line 2338 had no locator | Cited at the definition and theorem; 2338 located. See disagreement 1 |
| Neural Networks and Deep Models (`sec-neural-networks`) | james Ch. 10; shalev Ch. 20; theodoridis Ch. 18, Secs. 18.4, 18.4.2, 18.11.1; bishop Secs. 6.3.1, 8.1, 8.1.4, Chs. 7, 9 | Bishop PDF 200, 205 (Sec. 6.3.1), Sec. 8.1.4 (PDF 255-256, O(W) cost); James, Shalev, Theodoridis from contents | supported | Lines 2511, 2645, 2936 had no locator | Located; Bishop Sec. 8.1.4 cited for the operation count |
| Convolutional Neural Networks (`sec-sup-convolutional-networks`) | bishop Ch. 10; theodoridis Sec. 18.12; aggarwal Ch. 9 | contents (Bishop Ch. 10, Theodoridis 18.12, Aggarwal 9.2) | supported (section level) | No covering citation with a locator | Section citation added; line 3314 located |
| Recurrent Neural Networks (`sec-sup-recurrent-networks`) | bishop Secs. 12.2.5, 12.2.6, 12.1; theodoridis Secs. 18.13, 19.3.2; aggarwal Ch. 8 | Aggarwal pp. 281-284 (LSTM, GRU equations); others from contents | supported | No covering citation with a locator | Section citation added; line 3662 located |
| Transformers and Foundation Models (`sec-sup-transformers`) | bishop Secs. 12.1, 12.3, 12.3.5; theodoridis Secs. 19.3, 19.4, 19.5; aggarwal Sec. 12.2.5 | Bishop pp. 390-392 (Secs. 12.3.4-12.3.5); others from contents | supported | No covering citation with a locator | Section citation added; line 4033 located |
| Large Language Models (`sec-sup-large-language-models`) | bishop Sec. 12.3.5; theodoridis Sec. 19.4 | Bishop pp. 390-394 (pre-training, foundation models, LoRA, RLHF); Theodoridis PDF 1075-1077 | supported (general); RLHF/DPO/CAI details not verifiable | Cited nothing. The Bradley-Terry, PPO-RLHF, DPO and Constitutional AI derivations come from papers: Ouyang 2022 (`4ZWGRZJR`) and Rafailov 2023 (`DMGIXVNP`) are in Zotero without PDFs; Bai 2022 is missing | Section citation added; papers proposed below |
| Vision-Language Models (`sec-sup-vision-language-models`) | bishop Secs. 6.3.5, 12.4.5, 12.3.5; theodoridis Sec. 19.6.5; mall Chs. 12, 13 | Bishop PDF 210 (CLIP, Sec. 6.3.5), p. 402 (Sec. 12.4.5); Theodoridis PDF 1097 (CLIP, Remarks 19.11); Mall pp. 393-396 (adapters, LoRA ΔW = BA, matches def-sup-lora), p. 378 (MoE); Mall Ch. 13 from contents | supported | Cited nothing with a locator; line 4654 had no locator. FlashAttention, GQA, Chinchilla, GPT-3 cost figures have no library source | Section citation and LoRA citation added; 4654 located |
| Structured Outputs and Complex Prediction (`sec-structured-outputs`) | bishop Secs. 5.4.4, 11.3; shalev Ch. 17, Sec. 17.3; theodoridis Secs. 15.4.3, 16.5 | Bishop p. 161, pp. 349-352 (eq. 11.48); Shalev pp. 198-204 (Secs. 17.3-17.4: Viterbi DP, Kendall tau, NDCG, pairwise hinge); Theodoridis pp. 777-778 (CRF), 828-829 (HMM) | supported after correction | **bishop [Chs. 11, 17] partly unsupported**: Ch. 17 is GANs. Line 5424 had no locator. RankNet/LambdaRank are in no library source | Bishop corrected to Secs. 5.4.4, 11.3; Shalev Ch. 17 and Theodoridis added; 5424 located. Burges proposed |
| Exercises (`sec-supervised-learning-exercises`) | james Chs. 3, 8, 9 | contents | supported (original integrative exercises: OLS, hard SVM, stump) | Cited nothing | Section citation added |

Adapted blocks without their own citation (left as is, covered at section level): the hard-margin SVM and kernel
definitions (Deisenroth eqs. 12.18, 12.26; Shalev Sec. 16.2), the LSTM/GRU definitions (Aggarwal Secs. 8.5-8.6), the
attention, multi-head and positional-encoding definitions (Bishop Sec. 12.1), and the HMM and linear-chain CRF
definitions (Theodoridis Secs. 15.4.3, 16.5).

**Counts:** before 5 works, 5 textbooks; after 8 works, 8 textbooks (adds the ESL, Aggarwal and Mall, all in the Zotero
Textbooks collection). `check.py` shows 5 until the bib additions are merged; locators missing 26 → 0, sections citing
nothing 1 → 0 (and the three `##` sections that the first pass did not list: VLMs, Structured Outputs, Exercises).

**Template-conversion corrections (A6), checked against sources:**

| Correction | Check | Verdict |
|---|---|---|
| SVM example: w = (½, ½), w0 = 0 | Canonical constraint y(⟨w,x⟩+b) ≥ 1 with equality at the support vectors (Deisenroth eqs. 12.15-12.19, p. 377; Shalev Sec. 15.1): w·(1,1) = 1 gives w = (½, ½) | supported |
| AdaBoost: "with α_m replaced by α_m/2" in the exp(−α y G) form | ESL eq. 10.15, p. 344: α_m = 2β_m with β_m = ½ log((1−err)/err); Theodoridis Alg. 7.1, p. 332 and Shalev p. 106 use the halved weight | supported |
| MNIST backprop ≈ 469,000 operations | 2(784·256 + 256·128 + 128·10) = 2·234,752 = 469,504; Bishop Sec. 8.1.4: forward and backward passes are each O(W) | supported (arithmetic; no source gives the number) |
| Fully connected layer ≈ 8.6 billion parameters, 116,000× reduction | 65,536 · 131,072 = 8,589,934,592; 8.59×10⁹ / 73,856 ≈ 116,306 | supported (arithmetic; no source gives the number) |
| RankNet gradient sign σ(s_i − s_j) − 1 | d/ds_i[−log σ(s_i − s_j)] = σ(s_i − s_j) − 1, and +σ(s_i − s_j) for (j, i) pairs; matches the solution of exr-sup-ranknet-gradient | supported (derivation; no library source has RankNet) |

**Bib additions:**

```bibtex
@book{tibshiraniElementsStatisticalLearning2024,
  author = {Hastie, Trevor and Tibshirani, Robert and Friedman, Jerome},
  title = {The Elements of Statistical Learning: Data Mining, Inference, and Prediction},
  edition = {Second},
  publisher = {Springer},
  year = {2009},
  keywords = {textbook},
  zotero = {W8CD6K73},
  zoteropdf = {SUY5WZ2R}
}

@book{aggarwalNeuralNetworksDeep2023,
  author = {Aggarwal, Charu C.},
  title = {Neural Networks and Deep Learning: A Textbook},
  edition = {Second},
  publisher = {Springer},
  address = {Cham},
  year = {2023},
  doi = {10.1007/978-3-031-29642-0},
  isbn = {978-3-031-29641-3},
  keywords = {textbook},
  zotero = {YZ32PIBE},
  zoteropdf = {5XMKYT79}
}

@book{mallDeepLearningScale2024,
  author = {Mall, Suneeta},
  title = {Deep Learning at Scale: At the Intersection of Hardware, Software, and Data},
  publisher = {O'Reilly Media},
  year = {2024},
  isbn = {978-1-09-814528-6},
  keywords = {textbook},
  zotero = {BLGJ3IP3},
  zoteropdf = {R53WUVW8}
}
```

The ESL item's Zotero metadata is wrong. It lists the authors as "Sami Tibshirani, Harry Friedman" and the date as 2024,
and the citation key follows from that. The PDF is Hastie, Tibshirani and Friedman, 2nd edition (2009). The bib entry
above gives the correct metadata. The owner may want to fix the item and pin a key such as `hastie2009elements`, then
rename the key in this chapter (three places).

**Proposed new references:**

| Reference | Tags | Collection | PDF source | Sections |
|---|---|---|---|---|
| Burges, C. J. C. (2010). From RankNet to LambdaRank to LambdaMART: An Overview. Microsoft Research Technical Report MSR-TR-2010-82 | Artificial Intelligence; Machine Learning | Publications | Microsoft Research site (free technical report) | sec-structured-outputs (RankNet, LambdaRank, LambdaMART); added and cited (2026-11-18) |
| Ouyang, L. et al. (2022). Training language models to follow instructions with human feedback. NeurIPS. arXiv:2203.02155 | already in Zotero (`4ZWGRZJR`), no PDF | Publications | arXiv | covered by `kamathLargeLanguageModels2024` Sec. 5.4.4.1 (eqs. 5.3-5.4); primary source optional |
| Rafailov, R. et al. (2023). Direct Preference Optimization. NeurIPS. arXiv:2305.18290 | already in Zotero (`DMGIXVNP`), no PDF | Publications | arXiv | covered by `kamathLargeLanguageModels2024` Sec. 5.5.2 (eqs. 5.5-5.12); primary source optional |
| Bai, Y. et al. (2022). Constitutional AI: Harmlessness from AI Feedback. arXiv:2212.08073 | Artificial Intelligence; Large Language Models; Reinforcement Learning | Publications | arXiv | covered by `kamathLargeLanguageModels2024` Sec. 5.5.1 |
| Vaswani, A. et al. (2017). Attention Is All You Need. NeurIPS. arXiv:1706.03762 | Artificial Intelligence; Deep Learning; Transformers | Publications | arXiv | sec-sup-transformers (named in the text, "Vaswani et al., 2017"); added and cited (2026-11-18) |

**Disagreements:**

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| sec-tree-methods, "Theoretical Justification" after def-sup-adaboost | "AdaBoost minimizes exponential loss exp(−y f(x)) where f(x) = Σ α_m G_m(x)", with α_m = log((1−err_m)/err_m) as in the definition | The stagewise exponential-loss fit is f = Σ β_m G_m with β_m = ½ log((1−err_m)/err_m) = α_m/2 (ESL eqs. 10.12-10.15; Theodoridis eq. 7.96). The sign of f, and so the classifier, is unchanged, but the loss is minimized by f/2 in the text's scaling: the same factor 2 as the corrected weight update | ESL pp. 343-344; Theodoridis p. 331 | fixed (owner, 2026-11-18): f = Σ β_m G_m with β_m = α_m/2, same sign as Σ α_m G_m [@tibshiraniElementsStatisticalLearning2024, Sec. 10.4] |
| sec-neural-networks, line after the MNIST count | "over 200,000 parameters" | 200,960 + 32,896 + 1,290 = 235,146 parameters, as the chapter's own example computes. The statement holds but understates the count. Minor | (arithmetic) | fixed (owner, 2026-11-18): "gradients for 235,146 parameters" |

**Owner decisions applied (2026-11-18).**

- D1: no citation in this chapter was recorded as unsupported after the audit's own corrections (`theodoridis [Ch. 10]` →
  Secs. 7.2-7.4, `bishop [Chs. 11, 17]` → Secs. 5.4.4, 11.3, `bishop [Ch. 6]` → Sec. 6.1.4 were already applied). Nothing removed.
  The uncited Gaussian-process link (sec-linear-models) is now supported by `theodoridis2025ml` Sec. 13.12 (pp. 695-697:
  f(x) = θᵀφ(x) viewed as a random process, linear kernel κ(x, x′) = xᵀx′).
- D2: both disagreements fixed (see the table).
- Semantic pass. New library source in this chapter: `kamathLargeLanguageModels2024` (already in the bib, Textbooks), read at
  PDF pp. 71, 77, 102, 228-240 (printed = PDF − 30):
  - Sec. 5.4.4.1, eq. 5.3 (p. 202): reward-model loss −E log σ(r(x, y_w) − r(x, y_l)) → Stage 2 / def-sup-reward-model;
  - eq. 5.4 (pp. 202-203): KL-penalized RLHF objective → J_RLHF;
  - Sec. 5.5.2, eqs. 5.5-5.12 (pp. 210-212): closed-form optimal policy (5.6), cancellation of Z(x) (5.10-5.11), L_DPO (5.12)
    → prp-sup-dpo-optimal-policy and the DPO objective;
  - Sec. 5.5.1 (pp. 206-209): Constitutional AI, critique/revision then RLAIF → sec. Constitutional AI;
  - Sec. 2.3.10.5 (p. 41): FlashAttention, multi-query attention → efficient attention paragraph (GQA only named, p. 424);
  - Secs. 2.4.3 (p. 47), 2.6.3.5 (p. 72): Chinchilla, model and data size grow in proportion, 70B on 1.4T tokens → Chinchilla
    scaling paragraph.
  - Not found in the library: RankNet / LambdaRank / LambdaMART (Burges stays proposed), the Vaswani et al. paper (content covered
    by Bishop Sec. 12.1; proposal kept because the text names the paper), the GPT-3 training-cost figures (3.14 × 10²³ FLOPs, $5M,
    1,287 MWh) and the scaling-law exponent α ≈ 0.076. `naveedComprehensiveOverviewLarge2024` (Z8RQKFJ7, survey with PDF) mentions
    GQA and Chinchilla and could serve later.
- Works: 8 → 9 (adds `kamathLargeLanguageModels2024`).

**Approved references cited (2026-11-18).** PDFs read with `pdftotext`.

- `burges2010ranknet` (MSR-TR-2010-82, printed = PDF): Secs. 2, 2.1, pp. 2-4 -> the sentence defining the preference pairs
  P before `def-sup-ranknet` (with σ = 1 and S_ij = 1, C = log(1 + e^{−(s_i − s_j)}) = −log σ(s_i − s_j): agrees); Sec. 2.1,
  eqs. 3-4, p. 4 -> after the **Gradient** display (λ_ij = σ(s_i − s_j) − 1, λ_i = Σ_{j:(i,j)} λ_ij − Σ_{j:(j,i)} λ_ji:
  agrees with the text and with exr-sup-ranknet-gradient); Sec. 4.1, eq. 6, p. 8 -> LambdaRank line (RankNet λ_ij times
  |ΔNDCG|); Secs. 1, 7, pp. 1, 16 -> LambdaMART line (MART with the λ's as gradients; the Yahoo! 2010 challenge win,
  p. 1, supports "state of the art"). Pages read: 1-9, 16.
- `vaswani2017attention` (arXiv PDF): abstract p. 1, Sec. 1, p. 2 (recurrence precludes parallelization; the Transformer
  relies entirely on attention) and Sec. 4, pp. 6-7 (sequential operations and path length for long-range dependencies)
  -> the opening paragraph of `sec-sup-transformers`. The hand-typed "(Vaswani et al., 2017)" after the paper's title was
  replaced by `[@vaswani2017attention, Secs. 1, 4]`, which renders the same author-year. Pages read: 1-2, 6-7.

Gaps still uncited in this chapter after this round: none from the proposals. Ouyang 2022 and Rafailov 2023 stay optional
(covered by Kamath).

**Reading-note additions:**

- `bishop2024deeplearning`: fundamentals-of-machine-learning/supervised-learning: Chs. 4-5 (p. 131: linear models as
  single-layer networks); Secs. 5.4.3 (logistic regression, IRLS, pp. 159-160), 5.4.4 (softmax, p. 161), 5.4.6 (canonical
  link / GLM, pp. 164-165), 6.1.4 (SVM mention, p. 179), 6.3.1 (hierarchical representations), 6.3.5 (CLIP), Chs. 7, 9
  (training practice), Sec. 8.1 / 8.1.4 (backprop, O(W) cost), Ch. 10 (CNNs), Sec. 11.3 (sequence models, HMM eq. 11.48,
  pp. 349-352), Secs. 12.1, 12.2.5-12.2.6, 12.3, 12.3.5 (LLMs, LoRA, RLHF, pp. 390-394), 12.4.5 (vision and language,
  p. 402). No note yet. Identity: Bishop, C. M. and Bishop, H., *Deep Learning: Foundations and Concepts*, Springer
  2024; printed = PDF − 19 in Chs. 1-8, PDF − 16 from Ch. 12. Structure (PDF pages): Ch. 1 21-42; 2 43-83; 3 84-129; 4
  130-149; 5 150-188; 6 189-225; 7 226-249; 8 250-269; 9 270-302; 10 303-340; 11 341-372; 12 373-422; 13 423-443; 14
  444-473; 15 474-508; 16 509-545; 17 546-558; 18 559-573; 19 574-590; 20 591-; App. B 625, C 628; bibliography 632.
- `deisenroth2020mml`: supervised-learning: Sec. 8.2 (Ex. 8.1-8.2, OLS as ERM, pp. 258-260); Ch. 9 (eq. 9.12c, p. 294;
  Sec. 9.4 projection, pp. 313-314); Ch. 12 (hard/soft-margin SVM, eqs. 12.15-12.26, pp. 377-380). No note yet. Identity:
  Deisenroth, Faisal, Ong, *Mathematics for Machine Learning*, CUP 2020 (PDF is the 2024-01-15 draft); printed = PDF − 6.
  Structure (PDF): Ch. 1 17; 2 23; 3 76; 4 104; 5 145; 6 178; 7 231; 8 257; 9 295; 10 323; 11 354; 12 376-400;
  references 401; index 413.
- `james2023statistical`: supervised-learning: Chs. 3, 4 (Secs. 4.5.1 pp. 161-163, 4.6.3 pp. 172-173), Ch. 8 (Sec. 8.2),
  Ch. 9 (eq. 9.21, p. 380), Ch. 10. No note yet. Identity: James, Witten, Hastie, Tibshirani, Taylor, *An Introduction to
  Statistical Learning with Applications in Python*, Springer 2023; printed = PDF − 18. Structure (PDF): Ch. 1 19; 2 33;
  3 87; 4 153; 5 219; 6 247; 7 307; 8 349; 9 385; 10 417; 11 487; 12 521; 13 575; index 615.
- `shalev2014ml`: supervised-learning: Ch. 9; Sec. 10.2 (AdaBoost, w_t = ½ log(1/ε_t − 1), Thm. 10.2 and proof,
  pp. 105-107); Chs. 15, 16 (Sec. 16.2 kernel trick, pp. 181-185); Ch. 17 (Secs. 17.3 structured output with dynamic
  programming, 17.4 ranking, pp. 198-204); Ch. 18; Ch. 20; Ch. 24 (intro p. 295, Secs. 24.2-24.3, pp. 299-301). No note
  yet. Identity: Shalev-Shwartz and Ben-David, *Understanding Machine Learning: From Theory to Algorithms*, CUP 2014;
  printed = PDF − 18; the PDF has no outline. Structure (printed pages): Part 1 Chs. 2-8 pp. 13-83; Part 2 Chs. 9-20 pp.
  89-240 (9: 89, 10: 101, 15: 167, 16: 179, 17: 190, 18: 212, 20: 228); Part 3 Chs. 21-25 pp. 245-322 (24: 295); Part 4
  Chs. 26-31 pp. 325-366; App. A-C from p. 369.
- `theodoridis2025ml`: supervised-learning: Ch. 6 (Secs. 6.2-6.3, pp. 250-254); Ch. 9; Ch. 11 (Secs. 11.5, 11.10.3
  p. 561); Ch. 12; Secs. 7.2-7.4 (p. 303), 7.8, 7.10 (Alg. 7.1, a_i = ½ ln((1−P_i)/P_i), pp. 331-332), 7.11 (pp. 334-336);
  Sec. 15.4.3 (CRF, pp. 777-778); Sec. 16.5 (HMM, pp. 828-829); Ch. 18 (Secs. 18.4, 18.4.2, 18.11.1, 18.12, 18.13); Ch. 19
  (Secs. 19.3, 19.3.2, 19.4, 19.5, 19.6.5 CLIP Remarks 19.11). No note yet. Identity: Theodoridis, *Machine Learning: From
  the Classics to Deep Networks, Transformers, and Diffusion Models*, 3rd ed., Elsevier 2026; printed = PDF − 30.
  Structure (PDF): Ch. 1 31; 2 49; 3 95; 4 149; 5 207; 6 279; 7 323; 8 373; 9 447; 10 493; 11 549; 12 613; 13 665; 14 747;
  15 785; 16 835; 17 885; 18 915; 19 1027; 20 1133; index 1211.
- `tibshiraniElementsStatisticalLearning2024` (ESL, new): supervised-learning: Ch. 10, Alg. 10.1 (pp. 338-339), Sec. 10.4
  (eqs. 10.8-10.15, pp. 343-344). Identity: Hastie, Tibshirani, Friedman, *The Elements of Statistical Learning*, 2nd ed.,
  Springer 2009 (Zotero metadata wrong, see above); printed = PDF − 19; no PDF outline. Structure: not extracted (the
  PDF has no outline). Ch. 10 starts p. 337 (PDF 356).
- `aggarwalNeuralNetworksDeep2023` (new): supervised-learning: Ch. 8 (Secs. 8.5 LSTM, 8.6 GRU, pp. 280-284); Ch. 9
  (CNNs); Sec. 12.2.5 (Transformers). Identity: Aggarwal, *Neural Networks and Deep Learning: A Textbook*, 2nd ed.,
  Springer 2023; printed = PDF − 21. Structure (PDF): Ch. 1 22; 2 49; 3 92; 4 137; 5 182; 6 231; 7 247; 8 281; 9 321; 10
  377; 11 404; 12 449; bibliography 500; index 537.
- `mallDeepLearningScale2024` (new): supervised-learning: Ch. 12 (adapters p. 393, LoRA ΔW = BA p. 395), MoE (p. 378),
  Ch. 13 (foundation models, multimodal LLMs pp. 401-412). Identity: Mall, *Deep Learning at Scale*, O'Reilly 2024;
  printed = PDF − 20. Structure (printed, from contents): Ch. 11 Scaling experiments 349; Ch. 12 Efficient fine-tuning
  of large models 391; Ch. 13 Foundation models 401; index 413 (earlier chapters not extracted).

### unsupervised-learning

Pages are printed book pages; PDF offsets used: James +18, Shalev-Shwartz +18, Deisenroth +6, Theodoridis +30, ESL +19,
Foster +28, Aggarwal (LA) +14, Bishop +11 to +15 (varies; section numbers given). All sources were read in the PDF text
layer, so nothing is "not machine-readable".

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Clustering Methods (`sec-clustering`) | james2023statistical Ch. 12, Secs. 12.4.1, 12.4.2, Table 12.3; theodoridis2025ml Ch. 12, Secs. 12.6, 12.7; shalev2014ml Secs. 22.1, 22.2, 22.3, Lemma 22.1; bishop2024deeplearning Secs. 15.2–15.3, 15.4.1, eqs. 15.16–15.21; deisenroth2020mml Ch. 11, Sec. 11.1, Theorems 11.1–11.3; ESL Secs. 14.3.6, 14.3.11, 14.5.3, eqs. 14.41–14.43, 7.29, 7.35; aggarwal Sec. 10.5.2 | James pp. 520–532; Theodoridis pp. 604–615; Shalev pp. 264–273; Bishop pp. 460–489; Deisenroth pp. 348–358; ESL pp. 231, 233, 509–510, 518–523, 544–547; Aggarwal pp. 426–429 | supported, except: line 1067 (DBSCAN closing sentence) `[@james2023statistical; @shalev2014ml]` **unsupported** (neither book treats DBSCAN or density-based clustering); line 1479 `@james2023statistical` **unsupported** (James has no spectral clustering; Shalev and ESL support the sentence); `theodoridis2025ml [Ch. 12]` at line 25 is weak: Theodoridis says clustering "is not treated in this book" and covers only GMM clustering (Sec. 12.6.1, pp. 608–610) | Adapted blocks with no library source: K-means++ seeding and `thm-uns-kmeans-plus-plus`; `def-uns-silhouette`; `def-uns-ward-linkage`; `prp-uns-lance-williams`; DBSCAN `def-uns-dbscan-points`, `def-uns-density-reachable`, `def-uns-dbscan-cluster` | Locators added at lines 436, 750, 1449; citations added after the K-means objective, Lloyd convergence, linkage, GMM, EM updates, EM convergence, BIC/AIC and Laplacian blocks, and on the gap statistic; Arthur–Vassilvitskii, Ester et al. and Murtagh–Contreras proposed (A5). Owner: consider narrowing `theodoridis2025ml [Ch. 12]` to `Sec. 12.6.1`, and replacing the unsupported James/Shalev citations at 1067 |
| Dimensionality Reduction (`sec-dimensionality-reduction`) | bishop2024deeplearning Ch. 16, Secs. 16.1.1, 16.1.2, eq. 16.3; james2023statistical Ch. 12, Secs. 12.2, 12.2.1, 12.2.3, eq. 12.11; theodoridis2025ml Ch. 20, Secs. 20.9.1, 20.9.2; deisenroth2020mml Ch. 10, Secs. 10.2–10.4, eq. 10.1; shalev2014ml Lemma 23.4, Secs. 23.2–23.3; ESL Secs. 14.5.4, 14.8, 14.9; aggarwal Secs. 7.3.4, 9.4.3 | Bishop pp. 497–501; James pp. 504–512; Theodoridis pp. 1103–1116, 1149–1159; Deisenroth pp. 317–339; Shalev pp. 278–285; ESL pp. 547–550, 570–576; Aggarwal pp. 320–322, 391–392 | supported, except line 2141 `@james2023statistical` **unsupported** (James has no random projections or Johnson–Lindenstrauss; Shalev supports) | t-SNE `def-uns-tsne` has no library source; UMAP paragraph uncited | Locators added at lines 1989 and 2141 (Shalev); citations added after PCA definition, max-variance theorem, reconstruction, SVD, PVE, kernel PCA, MDS stress, JL lemma, and in Manifold Learning; van der Maaten–Hinton proposed (A5) |
| Generative Models and Latent Variables (`sec-generative-latent`) | deisenroth2020mml Ch. 11, Sec. 11.4; james2023statistical Ch. 4; shalev2014ml Ch. 24; bishop2024deeplearning Secs. 16.2.4, 17.1, Ch. 18, eqs. 16.54, 18.1, Secs. 19.1, 19.2; theodoridis2025ml Secs. 12.4, 19.2.4–19.2.6, 20.8.1, eq. 20.80; ESL Sec. 14.7.1; foster Chs. 3, 4, 6, eq. 6-1 | Deisenroth pp. 348–368; James pp. 146–147; Shalev pp. 295–307; Bishop pp. 513, 533–537, 547–558, 564–575; Theodoridis pp. 599–601, 1006–1022, 1140–1142; ESL pp. 558–560; Foster pp. 59–94, 95–112, 167–188 | supported, except `@james2023statistical [Ch. 4]` at line 2178 is **weak**: James 4.4 treats generative models for classification (class-conditional densities), not latent-variable or deep generative models. Line 2563 "stable training": Bishop says this only of flow matching (p. 558); exact likelihood is supported (Bishop eq. 18.1, p. 548; Foster p. 174; Theodoridis Remarks 19.4, pp. 1021–1022) | none | Locators added at line 2563 (+ Foster Ch. 6); citations added after latent-variable, factor analysis, FA marginal, autoencoder, ELBO, GAN and change-of-variables blocks. Owner: consider replacing `@james2023statistical [Ch. 4]` with `@bishop2024deeplearning [Ch. 16]` |
| Exercises (`sec-unsupervised-learning-exercises`) | james2023statistical Secs. 12.2, 12.4.1; bishop2024deeplearning Secs. 15.3–15.4 | James pp. 504–512, 521–524; Bishop pp. 474–489 | supported (the exercises are the author's own and combine K-means, PCA, GMM responsibilities, BIC and the ELBO) | section cited nothing | Covering citation added under the heading |

**Checks requested by the coordinator (conversion corrections):**
- **K-means++ sampling.** The text defines $D(\mathbf{x}_i) = \min_{j<k}\|\mathbf{x}_i - \boldsymbol{\mu}_j\|^2$, which is already a
  squared distance, and samples $\propto D(\mathbf{x}_i)$. Arthur and Vassilvitskii (2007, Sec. 2.2, step 1b, p. 1028 of the
  SODA proceedings) define $D(x)$ as the shortest distance (not squared) and sample with probability
  $D(x')^2/\sum_x D(x)^2$ ("$D^2$ weighting"). After conversion the two agree: **no disagreement**. The same paper's
  Theorem 3.1 gives $\mathbb{E}[\phi] \le 8(\ln k + 2)\phi_{\mathrm{OPT}}$, which matches `thm-uns-kmeans-plus-plus`, since the
  site's $\log$ is natural. Read from the authors' copy, theory.stanford.edu/~sergei/papers/kMeansPP-soda.pdf. The paper is not
  in Zotero, so the chapter does not cite it yet; see the proposed references.
- **PCA covariance $1/n$.** The text's $\mathbf{S} = \frac1n\sum_i(\mathbf{x}_i-\bar{\mathbf{x}})(\mathbf{x}_i-\bar{\mathbf{x}})^\top$,
  and $\lambda_j = \sigma_j^2/n$, agree with Bishop eq. 16.3 (p. 498), Deisenroth eqs. 10.1 and 10.45 (pp. 318, 333), Aggarwal
  $C = M^\top M/n$ (p. 321), and James eqs. 12.3 and 12.8–12.11 (pp. 506, 511), where the variances carry $1/n$. The reconstruction
  error $\frac1n\sum\|\mathbf{x}_i-\tilde{\mathbf{x}}_i\|^2 = \sum_{j>k}\lambda_j$ matches Deisenroth eq. 10.62 (p. 339). **Supported.**
- **Conversions that are not disagreements:** James's K-means objective (12.17) is twice $J$ by identity (12.18) (p. 523). ESL's AIC (7.29)
  is the text's AIC divided by $N$, with the same minimizer. ESL's stress (14.98) is the square of the text's, and ESL's footnote 13
  (p. 570) notes the square-root convention. The DBSCAN definitions match Ester et al. (1996, Defs. 1–5, pp. 227–228), read
  from the AAAI copy.

**Counts:** before 5 works, 5 textbooks; after 8 works, 8 textbooks (adds the ESL, Foster and Aggarwal entries below). `check.py`
reports 5 until the bib additions are merged. It still reports 4 citations without a locator: lines 1067 (James, Shalev), 1479
(James) and 2141 (James). No covering passage exists for them, so they are recorded as unsupported for the owner.

**Bib additions:**

```bibtex
@book{tibshiraniElementsStatisticalLearning2024,
  author = {Hastie, Trevor and Tibshirani, Robert and Friedman, Jerome},
  title = {The Elements of Statistical Learning: Data Mining, Inference, and Prediction},
  edition = {Second},
  series = {Springer Series in Statistics},
  publisher = {Springer},
  year = {2009},
  keywords = {textbook},
  zotero = {W8CD6K73},
  zoteropdf = {SUY5WZ2R}
}
@book{fosterGenerativeDeepLearning2023,
  author = {Foster, David},
  title = {Generative Deep Learning: Teaching Machines to Paint, Write, Compose, and Play},
  edition = {Second},
  publisher = {O'Reilly},
  year = {2023},
  isbn = {978-1-09-813418-1},
  keywords = {textbook},
  zotero = {2UZP4YKN},
  zoteropdf = {YKC3SLJA}
}
@book{aggarwalLinearAlgebraOptimization2020,
  author = {Aggarwal, Charu C.},
  title = {Linear Algebra and Optimization for Machine Learning},
  publisher = {Springer},
  year = {2020},
  doi = {10.1007/978-3-030-40344-7},
  keywords = {textbook},
  zotero = {7YKRVYRJ},
  zoteropdf = {RNW293Y9}
}
```

**Zotero metadata problems (owner):**
- W8CD6K73 (ESL) lists the authors "Sami Tibshirani; Harry Friedman" and the date 2024. These names come from the
  dedication page. The PDF is Hastie, Tibshirani and Friedman, second edition, Springer 2009. As a result, the Better
  BibTeX key `tibshiraniElementsStatisticalLearning2024` is misleading. The bib entry above gives the correct metadata, but
  keeps the existing key as the brief requires. Recommendation: fix the Zotero item, pin a key (for example `hastie2009esl`),
  and update the chapter citations before merging.
- 2UZP4YKN (Foster) lists K. J. Friston as a second author. Friston wrote the foreword, so the bib entry above omits him.

**Proposed new references** (none added to Zotero):

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Arthur, D. and Vassilvitskii, S. (2007). k-means++: the advantages of careful seeding. *Proc. 18th ACM-SIAM SODA*, 1027–1035 | Machine Learning; Clustering | Publications | authors' copy, theory.stanford.edu/~sergei/papers/kMeansPP-soda.pdf (verify licence; not arXiv) | `sec-clustering`: K-means++ seeding, `thm-uns-kmeans-plus-plus` (Sec. 2.2, Thm. 3.1); read and checked || added and cited (2026-11-18) |
| Ester, M., Kriegel, H.-P., Sander, J. and Xu, X. (1996). A density-based algorithm for discovering clusters in large spatial databases with noise. *Proc. KDD-96*, 226–231 | Machine Learning; Clustering | Publications | AAAI open access, cdn.aaai.org/KDD/1996/KDD96-037.pdf | `sec-clustering`: DBSCAN definitions and algorithm (Defs. 1–6); read and checked || added and cited (2026-11-18) |
| van der Maaten, L. and Hinton, G. (2008). Visualizing data using t-SNE. *JMLR* 9, 2579–2605 | Machine Learning; Dimensionality Reduction | Publications | JMLR open access, jmlr.org/papers/v9/vandermaaten08a.html | `sec-dimensionality-reduction`: `def-uns-tsne`; not yet read || added and cited (2026-11-18) |
| Murtagh, F. and Contreras, P. (2011). Methods of hierarchical clustering. arXiv:1105.0121 | Machine Learning; Clustering | Publications | arXiv:1105.0121 | `sec-clustering`: Ward linkage, Lance–Williams formula; not yet read, so check that it covers both || added and cited (2026-11-18) |

The silhouette coefficient (Rousseeuw 1987, *J. Comput. Appl. Math.* 20) has no open-access copy, so it remains uncovered.

**Disagreements:** none. The K-means++ and PCA $1/n$ checks above agree with the sources after conversion.

**Owner decisions applied (2026-11-18).**

- D1:
  - line ~1067 (DBSCAN closing sentence): `[@james2023statistical; @shalev2014ml]` **removed** (neither book treats DBSCAN; the
    semantic search found only `changMachineLearningInterviews2024`, PDF p. 138, which names DBSCAN but does not support the
    sentence);
  - line ~1479 (spectral clustering advantages): `@james2023statistical` **removed**; Shalev Sec. 22.3 and ESL Sec. 14.5.3 remain;
  - line ~2141 (random projections applications): `@james2023statistical` **removed**; Shalev Secs. 23.2-23.3 remain;
  - section line of `sec-clustering`: `@theodoridis2025ml [Ch. 12]` → `[Sec. 12.6.1]`;
  - section line of `sec-generative-latent`: `@james2023statistical [Ch. 4]` → `[Sec. 4.4]` (the section that treats generative
    models; p. 146).
  - Also: the Exercises line had `@bishop2024deeplearning` and its locator split across two lines, so `check.py` counted it as
    locatorless; rewrapped.
- D2: no disagreements in this chapter.
- Semantic pass: nothing found in the library for K-means++ (only the reference in Theodoridis's bibliography), DBSCAN,
  silhouette, Ward linkage / Lance-Williams, t-SNE (Aggarwal NN only names it, p. 95), UMAP. All four proposals stay open.
- Bib keys: the coordinator renamed `tibshiraniElementsStatisticalLearning2024` → `hastie2009elements` and
  `DeepReinforcementLearning2024` → `zai2020deeprl` in `references/references.bib`; the four chapters of this tutorial now use the
  new keys (FLT 17, SL 4, UL 10, RL 4 occurrences).
- Counts: 8 works, 8 textbooks (unchanged; the removals dropped no work), 0 citations without locator.

**Approved references cited (2026-11-18).** PDFs read with `pdftotext`.

- `arthur2007kmeanspp` (authors' copy, 9 pages, no proceedings page numbers; SODA pp. 1027-1035): Sec. 2.2, steps 1a-1c,
  PDF p. 2 -> the K-Means++ item (D² weighting; the text's D is already squared, see the check above); Thm. 3.1, PDF p. 3
  -> lead-in of `thm-uns-kmeans-plus-plus` (E[φ] ≤ 8(ln k + 2)φ_OPT, φ = the text's J). Pages read: PDF 1-4.
- `ester1996dbscan` (KDD-96, printed pp. 226-231 = PDF + 225): Sec. 3, Def. 1, p. 227 (Eps-neighbourhood; core and border
  points named), Def. 2, p. 228 (core point condition), Def. 6, p. 228 (noise) -> lead-in of `def-uns-dbscan-points`;
  Defs. 2-4, p. 228 (with the asymmetry remarks and "density-connectivity is a symmetric relation") -> lead-in of
  `def-uns-density-reachable`; Def. 5, p. 228 -> lead-in of `def-uns-dbscan-cluster` (maximality, connectivity: agrees);
  Secs. 1, 5, pp. 226, 230-231 (arbitrary shape, noise; more effective than CLARANS) -> the closing sentence of the DBSCAN
  unit, whose citation was removed in D1. Conversion: Ester defines noise as the points in no cluster (Def. 6); by Defs. 2
  and 5 these are the points that are neither core nor in a core point's neighbourhood, the text's "neither core nor
  border". Pages read: PDF 1-6.
- `murtagh2011hierarchical` (arXiv:1105.0121, printed = PDF): Sec. 4, p. 8 and Table 1, p. 6 -> lead-in of
  `def-uns-ward-linkage` (V(c) − V(c1) − V(c2) = |c1||c2|/(|c1| + |c2|)‖c1 − c2‖², where V is the sum of squares about
  the centre, as V({c1, c2}) = ½‖c1 − c2‖² shows: the text's two forms); Sec. 4, pp. 5-6, Table 1 -> lead-in of
  `prp-uns-lance-williams` (formula and the single, complete, group-average and Ward coefficients: agree). Pages read: 1-8.
- `vandermaaten2008tsne` (JMLR 9, printed = PDF + 2578): Sec. 2, eq. 1, p. 2581 (p_{j|i}); Sec. 3.1, pp. 2583-2584
  (C = KL(P‖Q), p_ij = (p_{j|i} + p_{i|j})/2n); Sec. 3.3, eq. 4, p. 2585 (Student-t q_ij) -> lead-in of `def-uns-tsne`
  (agrees; the paper calls σ_i the "variance" but writes 2σ_i², as the text does). Pages read: PDF 3-7.

Gaps still uncited in this chapter after this round: `def-uns-silhouette` (Rousseeuw 1987, no open copy) and the UMAP
paragraph.

**Reading-note additions** (chapter `fundamentals-of-machine-learning/unsupervised-learning`):
- **james2023statistical:** Ch. 12 pp. 503–555 (clustering intro); Sec. 12.2 PCA pp. 504–515, with eq. 12.3 (p. 506), eqs.
  12.8–12.11 PVE and the decomposition (p. 511), and Sec. 12.2.3 (pp. 510–512); Sec. 12.4.1 K-means pp. 521–524 (Alg. 12.2,
  eqs. 12.17–12.18); Sec. 12.4.2 hierarchical clustering pp. 525–532 (Alg. 12.3, Table 12.3); Sec. 4.4 p. 146 (generative
  classifiers). New note. Identity: *An Introduction to Statistical Learning with Applications in Python*, James, Witten,
  Hastie, Tibshirani and Taylor, Springer 2023, PDF offset +18. Structure (PDF pages): Ch. 1 p. 19, Ch. 2 p. 33, Ch. 3 p. 87,
  Ch. 4 p. 153, Ch. 5 p. 219, Ch. 6 p. 247, Ch. 7 p. 307, Ch. 8 p. 349, Ch. 9 p. 385, Ch. 10 p. 417, Ch. 11 p. 487, Ch. 12 pp.
  521–574, Ch. 13 pp. 575–614, Index p. 615.
- **shalev2014ml:** Sec. 22.1 linkage pp. 266–268; Sec. 22.2 k-means pp. 268–271 (Lemma 22.1, p. 270); Sec. 22.3 spectral
  clustering pp. 271–273 (Def. 22.2, Lemma 22.3); Sec. 23.1 PCA pp. 278–283; Secs. 23.2–23.3 random projections and
  compressed sensing pp. 283–285 (Lemma 23.3, Lemma 23.4 JL, p. 284); Ch. 24 generative models pp. 295–307 (Sec. 24.4 EM pp.
  301–305). New note. Identity: *Understanding Machine Learning: From Theory to Algorithms*, Shalev-Shwartz and Ben-David,
  CUP 2014, PDF offset +18. The PDF has no outline. Structure (PDF pages): Ch. 22 Clustering pp. 282–295, Ch. 23
  Dimensionality Reduction pp. 296–312, Ch. 24 Generative Models pp. 313–326. The other chapters are not mapped here.
- **bishop2024deeplearning:** Sec. 15.1 K-means pp. 460–465; Sec. 15.2 GMM p. 466 ff., eqs. 15.16–15.21 (pp. 471–472); Sec.
  15.3 EM pp. 474–484; Sec. 15.4 ELBO pp. 485–489 (15.4.1); Sec. 16.1 PCA pp. 497–501 (eq. 16.3 p. 498, 16.1.2); Sec. 16.2.4
  factor analysis p. 513 (eq. 16.54); Sec. 17.1 GAN pp. 533–537; Ch. 18 normalizing flows pp. 547–558 (eq. 18.1 p. 548); Sec.
  19.1 autoencoders p. 564 ff.; Sec. 19.2 VAE pp. 569–575 (eq. 19.9 p. 571). New note. Identity: *Deep Learning: Foundations
  and Concepts*, C. M. Bishop and H. Bishop, Springer 2024; the PDF offset varies from +11 to +15. Structure (PDF pages from
  the outline): Ch. 1 p. 21, 2 p. 43, 3 p. 84, 4 p. 130, 5 p. 150, 6 p. 189, 7 p. 226, 8 p. 250, 9 p. 270, 10 p. 303, 11 p.
  341, 12 p. 373, 13 p. 423, 14 p. 444, 15 pp. 474–508, 16 pp. 509–545, 17 pp. 546–558, 18 pp. 559–573, 19 pp. 574–590, 20 pp.
  591–614, App. B p. 625, App. C p. 628, Bibliography p. 632.
- **deisenroth2020mml:** Ch. 10 PCA pp. 317–343 (eq. 10.1 p. 318; Sec. 10.2 p. 320; Sec. 10.3 pp. 325–332; Sec. 10.4 pp.
  333–334, eqs. 10.45–10.48; eq. 10.62 p. 339); Ch. 11 GMM pp. 348–368 (Sec. 11.1 p. 349; Theorems 11.1–11.3 pp. 353–358; Sec.
  11.4 p. 363 ff.). New note. Identity: *Mathematics for Machine Learning*, Deisenroth, Faisal and Ong, CUP 2020, PDF offset +6.
  Structure (PDF pages): Ch. 1 p. 17, 2 p. 23, 3 p. 76, 4 p. 104, 5 p. 145, 6 p. 178, 7 p. 231, 8 p. 257, 9 p. 295, 10 pp.
  323–353, 11 pp. 354–375, 12 pp. 376–400, References p. 401, Index p. 413.
- **theodoridis2025ml:** Sec. 12.4 pp. 599–601; Sec. 12.6 GMM pp. 604–610 (12.6.1 clustering pp. 608–610); Sec. 12.7 EM as lower
  bound pp. 611–615; Sec. 19.2.4 autoencoders p. 1006; Sec. 19.2.5 GAN pp. 1007–1014 (eqs. 19.12–19.13 p. 1009); Sec. 19.2.6
  VAE pp. 1016–1022 (Remarks 19.4 on normalizing flows, pp. 1021–1022); Ch. 20 pp. 1103–1170 (20.3 PCA p. 1105; 20.8.1 FA pp.
  1140–1142, eq. 20.80; 20.9.1 kernel PCA p. 1149; 20.9.2 LLE/ISOMAP pp. 1151–1159). New note. Identity: *Machine Learning:
  From the Classics to Deep Networks, Transformers, and Diffusion Models*, 3rd ed., Theodoridis, Elsevier 2026 (the bib says
  2026, the key says 2025), PDF offset +30. Structure (PDF pages from the outline): Ch. 1 p. 31, 2 p. 49, 3 p. 95, 4 p. 149, 5 p.
  207, 6 p. 279, 7 p. 323, 8 p. 373, 9 p. 447, 10 p. 493, 11 p. 549, 12 p. 613, 13 p. 665, 14 p. 747, 15 p. 785, 16 p. 835, 17
  p. 885, 18 p. 915, 19 p. 1027, 20 pp. 1133–1210, Index p. 1211.
- **tibshiraniElementsStatisticalLearning2024 (ESL):** Sec. 7.5 eq. 7.29 AIC p. 231; Sec. 7.7 eq. 7.35 BIC p. 233; Sec. 14.3.6
  K-means pp. 509–510; Sec. 14.3.11 gap statistic pp. 518–520; Sec. 14.3.12 hierarchical pp. 520–528 (eqs. 14.41–14.43 p.
  523); Sec. 14.5.3 spectral pp. 544–547 (eq. 14.63); Sec. 14.5.4 kernel PCA pp. 547–550 (eq. 14.65); Sec. 14.7.1 factor
  analysis pp. 558–560; Sec. 14.8 MDS pp. 570–572 (eq. 14.98, footnote 13); Sec. 14.9 Isomap/LLE/local MDS pp. 572–576. New
  note. Identity: *The Elements of Statistical Learning*, 2nd ed., Hastie, Tibshirani and Friedman, Springer 2009 (see the
  metadata problem above), PDF offset +19. Structure (PDF pages): Ch. 1 p. 20, 2 p. 28, 3 p. 62, 4 p. 120, 5 p. 158, 6 p. 210, 7
  p. 238, 8 p. 280, 9 p. 314, 10 p. 356, 11 p. 408, 12 p. 436, 13 p. 478, 14 pp. 504–605, 15 p. 606, 16 p. 624, 17 p. 644, 18 p.
  668.
- **fosterGenerativeDeepLearning2023:** Ch. 3 autoencoders and VAEs pp. 59–94 (reparameterization p. 79, loss with closed-form
  KL pp. 80–81); Ch. 4 GANs pp. 95–128 (mode collapse pp. 111–112, WGAN p. 114); Ch. 6 normalizing flows pp. 167–188 (eq. 6-1
  p. 173, exact tractable density p. 174, RealNVP p. 174, GLOW p. 186). New note. Identity: *Generative Deep Learning*, 2nd
  ed., D. Foster, O'Reilly 2023, PDF offset +28. Structure (PDF pages): Ch. 1 p. 31, 2 p. 51, 3 p. 87, 4 p. 123, 5 p. 157, 6 p.
  195, 7 p. 217, 8 p. 233, 9 p. 263, 10 p. 295, 11 p. 325, 12 p. 359, 13 p. 387, 14 p. 419.
- **aggarwalLinearAlgebraOptimization2020:** Sec. 7.3.4 PCA pp. 320–322 ($C = M^\top M/n$, p. 321); Sec. 9.4.3 centering a
  similarity matrix and kernel PCA p. 391; Sec. 10.5.2 Laplacian view of spectral clustering pp. 426–429 (eqs. 10.4–10.5). New
  note. Identity: *Linear Algebra and Optimization for Machine Learning: A Textbook*, C. C. Aggarwal, Springer 2020, PDF
  offset +14. Structure (PDF pages): Ch. 3 p. 111, 4 p. 155, 5 p. 219, 6 p. 269, 7 p. 313, 8 p. 353, 9 p. 393, 10 p. 425, 11 p.
  461. Chs. 1–2 start at PDF pp. 15 and 55 (approximate).

### reinforcement-learning

Task 3.4. Page numbers are printed pages (running heads). Zhao's PDF is the author's online version: printed = PDF - 13.
Prudencio et al. is the early-access version (pp. 1-21). All PDFs have a text layer. Pages were read with
`zotero_read_pdf_pages` (Zhao Chs. 1-2) and from `pdftotext` of the same Zotero attachments (other works).

**Key finding: two of the three works the chapter cited do not treat RL.** Theodoridis (3rd ed.) says, Sec. 1.6, pp. 12-13:
"Reinforcement learning is beyond the scope of this book" (no RL chapter; the outline has none). Bishop & Bishop has no RL
chapter: its Ch. 19 is "Autoencoders" (p. 563); the only RL passage is the RLHF remark in Sec. 12.3.5, p. 394. Every
`theodoridis2025ml` citation (9) and both `bishop2024deeplearning [Ch. 19]` citations are therefore **unsupported**. The text
was not changed (A6); the owner should decide whether to remove them. Their places now also carry a supporting citation.

| Section (sec-id) | Works cited with locators | Pages verified | Verdict | Gap | Resolution |
|---|---|---|---|---|---|
| Foundations of RL (`sec-rl-foundations`) | `zhao2025rl` Sec. 1.7 pp. 11-12, Secs. 1.4, 1.6 pp. 4-10, Sec. 2.5 Fig. 2.5 p. 24, Secs. 2.5, 2.8.1 pp. 23-32; `suttonReinforcementLearningIntroduction2018` Sec. 1.1 p. 3, Sec. 3.1 pp. 47-50, Secs. 3.3, 3.5 pp. 54-58; `aggarwalNeuralNetworksDeep2023` Sec. 11.3 pp. 393-394; `bishop2024deeplearning` [Ch. 19] | zhao pp. 1-12, 23-25; sutton pp. 3, 47-50, 54-58; aggarwal pp. 393-394; bishop TOC p. 563 | zhao: supported (agent/environment passage at p. 12 is verbatim; MDP elements p. 11). bishop [Ch. 19]: **unsupported** | 4 zhao citations lacked locators; no textbook on MDPs/returns; four-state grid example blocks without citation | locators added; Sutton and Aggarwal added; Zhao cited in the policy example |
| Value functions and Bellman equations (`sec-rl-value-functions-bellman`) | `zhao2025rl` Secs. 2.3-2.8 (eqs. 2.7, 2.10-2.15, pp. 19-33), Sec. 2.7.3 Fig. 2.7 pp. 28-30, Sec. 3.2 p. 37, Secs. 3.3-3.4 Thms. 3.1-3.5 pp. 38-48, Sec. 10.2 pp. 216-220; `suttonReinforcementLearningIntroduction2018` Sec. 3.5 eq. 3.14 p. 59, Sec. 3.6 eqs. 3.19-3.20 pp. 62-64 | zhao pp. 19-33 (read in full), 37-48, 216-220; sutton pp. 58-64 | supported, except the four-state grid-world action values and action-value Bellman equations: **disagreement** (see Disagreements) | 2 zhao citations lacked locators; examples adapted from Zhao (state values, action values, Bellman equations, matrix form, good/bad policies) had no citation | locators added; Zhao cited inside each adapted example; Sutton added for the Bellman and optimality equations |
| Dynamic Programming (`sec-rl-dynamic-programming`) | `zhao2025rl` Sec. 2.7.2 Box 2.1 p. 28, Sec. 4.1 pp. 58-62, Sec. 4.2 Lemma 4.1, Thm. 4.1 pp. 62-64, Sec. 4.4 p. 74; `suttonReinforcementLearningIntroduction2018` Secs. 4.1-4.4, 4.6 pp. 74-86; `theodoridis2025ml` (no locator) | zhao pp. 28, 58-64, 74; sutton pp. 74-86 | zhao, sutton: supported (GPI passage, Sutton p. 86, is close to the text's wording). theodoridis: **unsupported** | GPI citation lacked locators | locators added; Sutton added |
| Monte Carlo Methods (`sec-rl-monte-carlo`) | `zhao2025rl` Ch. 5 pp. 77-100, Secs. 5.2-5.4 pp. 80-91; `suttonReinforcementLearningIntroduction2018` Secs. 5.1, 5.3-5.5 (eqs. 5.3-5.6) pp. 92-105, Ch. 5; `theodoridis2025ml` (no locator) | zhao pp. 77-100; sutton pp. 92-105 | supported (first/every visit, epsilon-greedy formula, ordinary vs weighted IS and their bias/variance as in Sutton p. 105). theodoridis: **unsupported** | GLIE definition (`def-rl-glie`) has no source in the library (neither Sutton nor Zhao defines GLIE) | left for the owner (source: Singh et al. 2000, not open access) |
| Temporal-Difference Learning (`sec-rl-temporal-difference`) | `zhao2025rl` Ch. 7 pp. 125-150, Sec. 7.1 Thm. 7.1 pp. 126-130, Secs. 7.2, 7.4 pp. 132-144, Thm. 6.1 p. 106; `suttonReinforcementLearningIntroduction2018` Sec. 6.1 (eqs. 6.2, 6.5) pp. 119-121, Secs. 6.4-6.5, 6.7 pp. 129-135, Sec. 2.5 eq. 2.7 p. 33, Sec. 7.1 eq. 7.1 pp. 142-143, Secs. 12.1-12.2 pp. 288-293; `theodoridis2025ml` (no locator) | zhao pp. 106, 125-150; sutton pp. 33, 119-135, 142-143, 288-293 | supported (Q-learning w.p. 1 convergence, Sutton p. 131; maximization bias p. 134). theodoridis: **unsupported** | closing citation lacked locators | locators added; Sutton added |
| Advanced RL (`sec-advanced-rl`) | `zhao2025rl` Ch. 8 pp. 151-190, Secs. 8.1-8.2, 8.4; `suttonReinforcementLearningIntroduction2018` Secs. 9.1-9.4 (eqs. 9.1, 9.14) pp. 199-207, Sec. 11.3, Sec. 16.5 pp. 436-441; `aggarwalNeuralNetworksDeep2023` Sec. 11.5.2 pp. 400-402; `DeepReinforcementLearning2024` Secs. 3.3-3.4 pp. 75-86; `bishop2024deeplearning` [Ch. 19]; `theodoridis2025ml` (no locator) | zhao pp. 151-190 (DQN loss and target network p. 182, replay p. 183); sutton pp. 199-207, 436-441; aggarwal pp. 400-402; zai-brown pp. 75-86 | supported (linear TD bound 1/(1-gamma), Sutton eq. 9.14 p. 207; DQN loss as Zhao p. 182). bishop [Ch. 19], theodoridis: **unsupported** | 2 closing citations lacked locators; no textbook on DQN | locators added; Sutton, Aggarwal, Zai & Brown added. Breakout examples (`exm-rl-dqn-breakout` etc.) are illustrative numbers, not from a source |
| Policy Gradient Methods (`sec-rl-policy-gradient`) | `zhao2025rl` Ch. 9 pp. 191-214, Thm. 9.1 p. 198, Sec. 10.2.1 pp. 217-220, Sec. 10.4 Thm. 10.2 p. 228; `suttonReinforcementLearningIntroduction2018` Secs. 13.2-13.4 pp. 324-330; `aggarwalNeuralNetworksDeep2023` Sec. 11.6.2 pp. 409-410; `DeepReinforcementLearning2024` Ch. 4 pp. 90-108; `theodoridis2025ml` (no locator) | zhao pp. 191-220, 226-235; sutton pp. 324-330; aggarwal pp. 409-410; zai-brown pp. 90-108 | supported. theodoridis: **unsupported** | natural policy gradient (`def-rl-natural-policy-gradient`) and compatible function approximation (`thm-rl-compatible-function-approximation`) have no source in the library | proposed new references (Kakade 2001; Sutton et al. 2000) |
| Actor-Critic Methods (`sec-rl-actor-critic`) | `zhao2025rl` Ch. 10 pp. 215-235, Secs. 10.1-10.2, 10.4; `suttonReinforcementLearningIntroduction2018` Sec. 13.5 pp. 331-332; `aggarwalNeuralNetworksDeep2023` Sec. 11.6.3 pp. 411-412; `DeepReinforcementLearning2024` Ch. 5 pp. 111-136; `prudencioSurveyOfflineReinforcement2024` Sec. IV-C eq. 25 p. 11; `theodoridis2025ml` (no locator) | zhao pp. 215-235; sutton pp. 331-332; aggarwal pp. 411-412; zai-brown pp. 111-136; prudencio p. 11 | supported for actor-critic, DPG and the entropy term. theodoridis: **unsupported** | GAE (`def-rl-generalized-advantage-estimation`), PPO (`def-rl-ppo-clipped-objective`), TRPO, SAC's soft Bellman equation have no source in the library | proposed new references (Schulman 2015, 2016, 2017; Haarnoja 2018) |
| Model-based and multi-agent RL (`sec-rl-model-based-multi-agent`) | `suttonReinforcementLearningIntroduction2018` Secs. 8.1-8.2 pp. 159-164; `DeepReinforcementLearning2024` Sec. 9.1 pp. 244-245 | sutton pp. 159-164 (Dyna-Q); zai-brown pp. 244-245 (independent Q-learning) | supported (Dyna, independent Q-learning) | section cited nothing; MPC, world models, CTDE/MADDPG and learned communication have no source in the library | Sutton and Zai & Brown added; MADDPG proposed (Lowe 2017); Murphy's overview (in library, no PDF) would cover the rest |
| Offline Reinforcement Learning (`sec-rl-offline`) | `prudencioSurveyOfflineReinforcement2024` Secs. I, II-C pp. 1-4, Secs. III-A, IV-A eq. 16 pp. 5, 8-9, Sec. IV-C eqs. 27-28 p. 11, Sec. IV-F eqs. 41-42 p. 13 | prudencio pp. 1-5, 8-9, 11, 13 | supported (CQL log-sum-exp penalty = eq. 28; expectile loss eq. 41 agrees with the text after the sign convention u = Q - V vs x = V - Q). Prudencio names CQL "constrained Q-learning" (a slip in the survey) | section cited nothing | Prudencio added in each subsection; original papers (BCQ, CQL, IQL) optional, proposed |
| Imitation learning and LLM-enhanced RL (`sec-rl-imitation-llm`) | `suttonReinforcementLearningIntroduction2018` Sec. 17.4 pp. 470-471; `aggarwalNeuralNetworksDeep2023` Sec. 11.6.2 pp. 410-411; `prudencioSurveyOfflineReinforcement2024` Sec. III-G pp. 7-8; `bishop2024deeplearning` Sec. 12.3.5 pp. 390-394; `kamathLargeLanguageModels2024` Secs. 1.4.3 (pp. 12-13), 3.5.2 (p. 118), 4.2 (p. 136), 4.5.4-4.5.6 (pp. 166-167); `zhao2025rl`, `theodoridis2025ml` (GAIL, no locator) | sutton pp. 470-471; aggarwal pp. 410-411; prudencio pp. 7-8; bishop pp. 390-394; kamath pp. 12-13, 118, 136, 166-167 | supported for IRL/behavioral cloning and the LLM bullets. GAIL citation `[@zhao2025rl; @theodoridis2025ml]` (line ~3934): **unsupported** by both (neither treats imitation learning or GAIL) | MaxEnt IRL, GAIL; the LLM-enhanced-RL taxonomy (adapted from Cao et al. 2024, `GI627LWX`, in the library without PDF) | sources added; GAIL, MaxEnt IRL proposed; attach the arXiv PDF of `GI627LWX` and cite it for the taxonomy |
| Exercises (`sec-reinforcement-learning-exercises`) | `suttonReinforcementLearningIntroduction2018` Chs. 3-6, 13 | sutton exercises in Chs. 3-6, 13 | supported (further exercises) | cited nothing; the integrative exercises are original | further-exercises pointer added |

**Counts.** Before: 3 works, 3 textbooks (`zhao2025rl`, `theodoridis2025ml`, `bishop2024deeplearning`). After: 8 works, 7 textbooks
(+ `suttonReinforcementLearningIntroduction2018`, `aggarwalNeuralNetworksDeep2023`, `DeepReinforcementLearning2024`,
`kamathLargeLanguageModels2024` (all Textbooks collection), and `prudencioSurveyOfflineReinforcement2024`). Counting only works
that actually support RL content, 6 works and 5 textbooks (Theodoridis supports nothing here; Bishop only the LLM paragraph).
`check.py` reports 3/3 and 2 empty sections until the 5 keys are merged into the bib. Citations without locator: 24 -> 11, all
of them the unsupported `theodoridis2025ml` ones, the `bishop2024deeplearning` mention in the intro, and the GAIL citation. A10
met once the bib additions are merged.

**Citations verified.** 26 existing citation occurrences (14 `zhao2025rl`, 9 `theodoridis2025ml`, 3 `bishop2024deeplearning`;
the intro sentence counts once per work), 12 distinct (work, locator) pairs after adding locators. Zhao: 13 supported (locators
added), 1 unsupported (GAIL). Theodoridis: 9 unsupported. Bishop: 3 unsupported (`[Ch. 19]` at lines ~44 and ~2229, and the
intro mention). 0 not machine-readable.

**Other notes (for the owner).**
- `DeepReinforcementLearning2024` (`BK4YSJZH`) has no authors and the date 2024 in Zotero. The book is Alexander Zai and Brandon
  Brown, *Deep Reinforcement Learning in Action*, Manning, 2020 (ISBN 9781617295430). Better: fix the metadata and pin a key
  such as `zai2020deeprl` before merging; then rename the 5 citations.
- The library has `D2WQNMZL` (Murphy, "Reinforcement Learning: An Overview", arXiv:2412.05265) without a PDF. With the PDF it
  would cover model-based RL, MARL, PPO/SAC and LLM-RL in one source.
- The NumPy unit (`exm-rl-software-four-state-values`) encodes the model correctly: its `P` and `R` arrays match Zhao's reward
  rules (Sec. 1.5, p. 7, Table 1.3) on the 2x2 grid of Fig. 2.5, and it returns v = (8.5, 10, 10, 10).

#### Bib additions

```bibtex
@book{suttonReinforcementLearningIntroduction2018,
  author = {Sutton, Richard S. and Barto, Andrew G.},
  title = {Reinforcement Learning: An Introduction},
  edition = {Second},
  series = {Adaptive Computation and Machine Learning},
  publisher = {The MIT Press},
  address = {Cambridge, Massachusetts},
  year = {2018},
  isbn = {978-0-262-03924-6},
  keywords = {textbook},
  zotero = {XEUNQM6V},
  zoteropdf = {QAVS5EML}
}

@book{aggarwalNeuralNetworksDeep2023,
  author = {Aggarwal, Charu C.},
  title = {Neural Networks and Deep Learning: A Textbook},
  edition = {Second},
  publisher = {Springer International Publishing},
  address = {Cham},
  year = {2023},
  doi = {10.1007/978-3-031-29642-0},
  isbn = {978-3-031-29641-3},
  keywords = {textbook},
  zotero = {YZ32PIBE},
  zoteropdf = {5XMKYT79}
}

@book{DeepReinforcementLearning2024,
  author = {Zai, Alexander and Brown, Brandon},
  title = {Deep Reinforcement Learning in Action},
  publisher = {Manning},
  address = {Shelter Island, NY},
  year = {2020},
  isbn = {978-1-61729-543-0},
  keywords = {textbook},
  zotero = {BK4YSJZH},
  zoteropdf = {QYDRHPKG}
}

@article{prudencioSurveyOfflineReinforcement2024,
  author = {Prudencio, Rafael Figueiredo and Maximo, Marcos R. O. A. and Colombini, Esther Luna},
  title = {A Survey on Offline Reinforcement Learning: Taxonomy, Review, and Open Problems},
  journal = {IEEE Transactions on Neural Networks and Learning Systems},
  volume = {35},
  number = {8},
  pages = {10237--10257},
  year = {2024},
  doi = {10.1109/TNNLS.2023.3250269},
  eprint = {2203.01387},
  archiveprefix = {arXiv},
  zotero = {I7BYLVLL},
  zoteropdf = {KGYLLK3P}
}

@book{kamathLargeLanguageModels2024,
  author = {Kamath, Uday and Keenan, Kevin and Somers, Garrett and Sorenson, Sarah},
  title = {Large Language Models: A Deep Dive. Bridging Theory and Practice},
  publisher = {Springer Nature Switzerland},
  address = {Cham},
  year = {2024},
  doi = {10.1007/978-3-031-65647-7},
  isbn = {978-3-031-65646-0},
  keywords = {textbook},
  zotero = {LJLVTKSS},
  zoteropdf = {GB3GPKL6}
}
```

#### Proposed new references

Tags for all: main `Reinforcement Learning`, plus `Artificial Intelligence`; collection Publications. Already in the library
without PDF (attach only): `GI627LWX` Cao et al. 2024, "Survey on Large Language Model-Enhanced Reinforcement Learning"
(arXiv:2404.00282) -> `sec-llm-enhanced-rl` taxonomy; `D2WQNMZL` Murphy 2024, "Reinforcement Learning: An Overview"
(arXiv:2412.05265) -> `sec-rl-model-based-multi-agent`, `sec-rl-actor-critic`.

| Reference | Tags | Collection | PDF source | Sections | Owner decision |
|---|---|---|---|---|---|
| Schulman, Wolski, Dhariwal, Radford, Klimov (2017), Proximal Policy Optimization Algorithms | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1707.06347 | `sec-rl-actor-critic` (PPO, `def-rl-ppo-clipped-objective`) | added and cited (2026-11-18) |
| Schulman, Levine, Moritz, Jordan, Abbeel (2015), Trust Region Policy Optimization, ICML | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1502.05477 | `sec-rl-actor-critic` (trust region) | added and cited (2026-11-18) |
| Schulman, Moritz, Levine, Jordan, Abbeel (2016), High-Dimensional Continuous Control Using Generalized Advantage Estimation, ICLR | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1506.02438 | `sec-rl-actor-critic` (`def-rl-generalized-advantage-estimation`) | added and cited (2026-11-18) |
| Haarnoja, Zhou, Abbeel, Levine (2018), Soft Actor-Critic, ICML | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1801.01290 | `sec-rl-actor-critic` (SAC, `def-rl-maximum-entropy-objective`) | added and cited (2026-11-18) |
| Kakade (2001), A Natural Policy Gradient, NIPS 14 | Reinforcement Learning; Artificial Intelligence | Publications | NeurIPS proceedings (open access) | `sec-rl-policy-gradient` (`def-rl-natural-policy-gradient`) | added and cited (2026-11-18) |
| Sutton, McAllester, Singh, Mansour (2000), Policy Gradient Methods for RL with Function Approximation, NIPS 12 | Reinforcement Learning; Artificial Intelligence | Publications | NeurIPS proceedings (open access) | `sec-rl-policy-gradient` (`thm-rl-compatible-function-approximation`) | added and cited (2026-11-18) |
| Lillicrap et al. (2016), Continuous Control with Deep Reinforcement Learning (DDPG), ICLR | Reinforcement Learning; Artificial Intelligence; Deep Learning | Publications | arXiv:1509.02971 | `sec-rl-actor-critic` (DDPG) | added and cited (2026-11-18) |
| Lowe et al. (2017), Multi-Agent Actor-Critic for Mixed Cooperative-Competitive Environments (MADDPG) | Reinforcement Learning; Artificial Intelligence; Agents | Publications | arXiv:1706.02275 | `sec-rl-model-based-multi-agent` (CTDE, MADDPG) | added and cited (2026-11-18) |
| Ho, Ermon (2016), Generative Adversarial Imitation Learning, NIPS | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1606.03476 | `sec-rl-imitation-llm` (GAIL objective) | added and cited (2026-11-18) |
| Fujimoto, Meger, Precup (2019), Off-Policy Deep RL without Exploration (BCQ), ICML | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:1812.02900 | `sec-rl-offline` (optional, primary source) | |
| Kumar, Zhou, Tucker, Levine (2020), Conservative Q-Learning for Offline RL, NeurIPS | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:2006.04779 | `sec-rl-offline` (optional, primary source) | |
| Kostrikov, Nair, Levine (2022), Offline RL with Implicit Q-Learning, ICLR | Reinforcement Learning; Artificial Intelligence | Publications | arXiv:2110.06169 | `sec-rl-offline` (optional, primary source) | |

#### Disagreements

Model (Zhao, Sec. 1.5 p. 7 reward rules; Sec. 2.5 Fig. 2.5 p. 24; same as the chapter's NumPy arrays): 2x2 grid, s2 forbidden,
s4 target; r = -1 at a boundary or on entering/staying in the forbidden cell, +1 on entering/staying in the target, 0
otherwise; policy pi(right|s1) = pi(down|s1) = 0.5, pi(down|s2) = pi(right|s3) = pi(stay|s4) = 1. Write
Q1 = q(s1,right) + q(s1,down), so sum_a' pi(a'|s1) q(s1,a') = 0.5 Q1. At gamma = 0.9: v = (8.5, 10, 10, 10).

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|
| `exm-rl-bellman-four-state` (Bellman equations in the four-state grid world), action values for (s1,left), (s1,up), (s1,stay) | q(s1,left) = q(s1,up) = -1 + gamma Q1; q(s1,stay) = gamma Q1 | q(s1,left) = q(s1,up) = -1 + 0.5 gamma Q1; q(s1,stay) = 0.5 gamma Q1 (the next state s1 is weighted by pi(.\|s1), eq. on p. 32). At gamma = 0.9 the text's right-hand sides give 14.3, 14.3, 15.3 instead of the true 6.65, 6.65, 7.65 | Zhao pp. 31-32 (q(s1,a1) = -1 + gamma v(s1), q(s1,a5) = 0 + gamma v(s1)) and p. 32 | fixed (owner, 2026-11-18): factor 0.5 inserted in the three equations |
| same, (s2,left) | q(s2,left) = gamma (q(s1,right) + q(s4,down)) | q(s2,left) = 0 + 0.5 gamma Q1 (moving left from s2 reaches s1, reward 0). Text gives 14.4, true 7.65 | Zhao pp. 7, 24, 32 | fixed (owner, 2026-11-18): q(s2,left) = 0.5 gamma (q(s1,right) + q(s1,down)) |
| same, (s3,up) | q(s3,up) = 1 + gamma Q1 | q(s3,up) = 0 + 0.5 gamma Q1 (moving up from s3 reaches s1, reward 0, not +1). Text gives 16.3, true 7.65 | Zhao pp. 7, 24, 32 | fixed (owner, 2026-11-18): q(s3,up) = 0.5 gamma (q(s1,right) + q(s1,down)) |
| `exm-rl-action-values-four-state`, q(s3,up) | 1 + gamma(-0.5 + gamma/(1-gamma)) (= 8.65 at 0.9) | 0 + gamma v(s1) = gamma(-0.5 + gamma/(1-gamma)) (= 7.65) | Zhao pp. 7, 24, 31-32 | fixed (owner, 2026-11-18): the "1 +" removed |
| Note (A6 item from the brief): q(s1,down) = gamma q(s3,right) | text has no reward term | **not a disagreement**: the reward of s1 -> s3 is 0; Zhao writes q(s1,a3) = 0 + gamma v(s3) | Zhao p. 31 | |

All other equations in `exm-rl-bellman-four-state` and all other values in `exm-rl-action-values-four-state` agree. Correct
action values at gamma = 0.9 (up, down, left, right, stay): s1 (6.65, 9, 6.65, 8, 7.65); s2 (8, 10, 7.65, 8, 8); s3 (7.65, 8,
8, 10, 9); s4 (8, 8, 9, 8, 10).

#### Owner decisions applied (2026-11-18)

- D1, removed (no supporting section in the same work):
  - all 7 bracketed `@theodoridis2025ml` citations (Dynamic Programming, Monte Carlo, TD, Advanced RL x2, Policy Gradient,
    Actor-Critic closing sentences) and the intro mention "and @theodoridis2025ml";
  - the intro mention "with @bishop2024deeplearning for the deep-learning methods" (the sentence now reads "The chapter follows
    @zhao2025rl [Chs. 1--10].");
  - both "For more on this topic, see @bishop2024deeplearning [Ch. 19]." lines (`sec-rl-foundations`, `sec-advanced-rl`);
  - the GAIL citation `[@zhao2025rl; @theodoridis2025ml]` (`sec-rl-imitation-llm`); GAIL is now uncited, Ho & Ermon stays
    proposed.
  - `bishop2024deeplearning` remains, at Sec. 12.3.5 (LLM paragraph). `theodoridis2025ml` is no longer cited in this chapter.
- D2: the grid-world items fixed (see the Disagreements table). Values at gamma = 0.9 now match the corrected list above.
- Semantic pass (two or three phrasings per topic; keys resolved from a copy of `zotero.sqlite`). New library sources, read
  and cited:
  - `hongUniformSamplingOffline2023` (XZ7DDANC, PDF VVPCGQ5A), Sec. 2, eqs. 1-2, p. 3: offline RL from a fixed dataset of a
    behavior policy, inaccurate return estimates off the data, conservative regularized objective → `def-rl-offline-rl-problem`
    lead-in and the distributional-shift paragraph (`sec-rl-offline`).
  - `wangLLMEmpoweredStateRepresentation2024` (3IHM7ZVS, PDF BEEY3ZJY), Sec. 2, p. 2: LLMs inside the RL architecture as policy,
    high-level planner, state-representation extractor; Sec. 3: LLM-coded intrinsic reward → the definition bullet of
    LLM-enhanced RL (`sec-llm-enhanced-rl`).
  - Existing work, newly used: `suttonReinforcementLearningIntroduction2018` Sec. 6.4, p. 129 (Sarsa converges w.p. 1 if all
    pairs are visited infinitely often and the policy becomes greedy in the limit, e.g. epsilon = 1/t) → `def-rl-glie`. The
    GLIE gap is closed.
  - Not found: PPO, TRPO, GAE, SAC, DDPG, natural policy gradient, compatible function approximation, MaxEnt IRL, GAIL, MADDPG /
    CTDE, world models / MPC (only references in the bibliographies of Prudencio, Hong and Cao et al.), the LLM-enhanced RL
    taxonomy itself (Cao et al. `GI627LWX` still has no PDF). Also seen but not needed: `caoModelBasedOfflineReinforcement2025`
    (SJ5V2U4J, model-based offline RL, PDF), `puttaAgentAdvancedReasoning2024` (KMY48KSN), `duranteAgentAISurveying2024`
    (Q3GPYAID); they could support model-based offline RL and agentic RL later.
- Bib keys: `DeepReinforcementLearning2024` is now `zai2020deeprl` (renamed in the bib by the coordinator; 4 citations
  renamed).
- Counts: works 8 → 9 once the two bib additions below are merged (`zhao2025rl`, `suttonReinforcementLearningIntroduction2018`,
  `aggarwalNeuralNetworksDeep2023`, `zai2020deeprl`, `kamathLargeLanguageModels2024`, `bishop2024deeplearning`,
  `prudencioSurveyOfflineReinforcement2024`, `hongUniformSamplingOffline2023`, `wangLLMEmpoweredStateRepresentation2024`);
  textbooks 7 → 6 (Theodoridis removed); all citations have locators. `check.py` shows 7 / 6 until the merge.

Bib additions (owner decisions, 2026-11-18):

```bibtex
@misc{hongUniformSamplingOffline2023,
  author = {Hong, Zhang-Wei and Kumar, Aviral and Karnik, Sathwik and Bhandwaldar, Abhishek and Srivastava, Akash and Pajarinen, Joni and Laroche, Romain and Gupta, Abhishek and Agrawal, Pulkit},
  title = {Beyond Uniform Sampling: Offline Reinforcement Learning with Imbalanced Datasets},
  year = {2023},
  eprint = {2310.04413},
  archiveprefix = {arXiv},
  doi = {10.48550/arXiv.2310.04413},
  note = {NeurIPS 2023},
  zotero = {XZ7DDANC},
  zoteropdf = {VVPCGQ5A}
}
@misc{wangLLMEmpoweredStateRepresentation2024,
  author = {Wang, Boyuan and Qu, Yun and Jiang, Yuhang and Shao, Jianzhun and Liu, Chang and Yang, Wenming and Ji, Xiangyang},
  title = {{LLM}-Empowered State Representation for Reinforcement Learning},
  year = {2024},
  eprint = {2407.13237},
  archiveprefix = {arXiv},
  doi = {10.48550/arXiv.2407.13237},
  note = {ICML 2024},
  zotero = {3IHM7ZVS},
  zoteropdf = {BEEY3ZJY}
}
```

Reading-note additions (new works): **`hongUniformSamplingOffline2023`** — reinforcement-learning: Sec. 2, eqs. 1-2, p. 3.
Identity: Z.-W. Hong et al., "Beyond Uniform Sampling: Offline Reinforcement Learning with Imbalanced Datasets", arXiv:2310.04413
(NeurIPS 2023); PDF 25 pp., pages = PDF pages. Structure: 1 Introduction 1; 2 Preliminaries 3; 3 Problem statement 3-4; 4 Method
4-6; 5 Experimental evaluation 6-10; references 11-13; Appendix A 14-25. **`wangLLMEmpoweredStateRepresentation2024`** — reinforcement-learning:
Sec. 2, p. 2; Sec. 3.2, pp. 3-4. Identity: B. Wang et al., "LLM-Empowered State Representation for Reinforcement Learning",
arXiv:2407.13237 (ICML 2024); PDF 30 pp., pages = PDF pages. Structure: 1 Introduction 1; 2 Related work 2; 3 Method 3-5; 4
Experiments 5-8; conclusion and references 9-15; appendices (A Theoretical analysis) 16-30.

#### Approved references cited (2026-11-18)

All PDFs have a text layer, read with `pdftotext`. Page numbers are PDF pages, except Sutton et al. 2000 (NIPS 12, printed
pp. 1057-1063, printed = PDF + 1056) and Ziebart et al. 2008 (AAAI, printed pp. 1433-1438, printed = PDF + 1432).

- `kakade2001npg`: Sec. 2, eqs. 2-4, p. 2 -> lead-in of `def-rl-natural-policy-gradient` (Fisher matrix weighted by the
  state distribution of pi, natural gradient F^{-1} grad); Sec. 2, p. 2 (Amari: the Fisher metric is invariant) and Sec. 5,
  pp. 5-7 (faster than the plain gradient, plateaus) -> the sentence after the block. Pages read: 1-7.
- `sutton2000policygradient`: Sec. 2, Thm. 2, eqs. 3-5, p. 1060 -> lead-in of `thm-rl-compatible-function-approximation`;
  Sec. 3, pp. 1060-1061 -> lead-in of `exm-rl-compatible-softmax` (Gibbs policy, compatible approximator linear in the
  centered features); Sec. 3, p. 1061 -> lead-in of `exr-rl-compatible-zero-mean` (zero mean for each state, so f_w
  approximates the advantage). Pages read: 1057-1061. Note: the theorem's condition 2 ("w minimizes the mean squared error")
  is Sutton's eq. 3, the stationarity condition of the d^pi-weighted squared error (a local optimum); same content.
- `schulman2016gae`: Sec. 3, eqs. 14, 16, pp. 4-5 -> the GAE item of the advantage list (lead-in of
  `def-rl-generalized-advantage-estimation`); Sec. 3, p. 5 (analogy with TD(lambda)) -> the lambda-return sentence; Sec. 3,
  eqs. 17-18, p. 5 -> the lambda = 0 / lambda = 1 trade-off list; Sec. 6.1, p. 8 (TRPO policy updates) -> "GAE is widely used
  ... PPO and TRPO". Pages read: 1-5, 7-8. The definition agrees after the index shift r_t -> R_{t+1}.
- `schulman2017ppo`: Sec. 5, eqs. 11-12, p. 5 -> "GAE is widely used ..."; Sec. 2.2, eqs. 3-4, p. 2 -> the TRPO problem; Sec. 3,
  eq. 7, p. 3 -> lead-in of `def-rl-ppo-clipped-objective`; Sec. 3, Fig. 1, p. 3 and Sec. 6.2, pp. 6-7 -> the sentence after
  the block (pessimistic bound, no incentive beyond 1 +/- epsilon; PPO beats TRPO on almost all continuous tasks). Pages read:
  1-7.
- `schulman2015trpo`: Secs. 4-5, eqs. 12-14, p. 4 -> the TRPO problem (average-KL constraint KL(pi_old || pi_theta) <= delta,
  importance-sampled objective with q = pi_old); Sec. 6, p. 5 (conjugate gradient and line search; App. C) -> "requires
  second-order machinery". Pages read: 1-6.
- `lillicrap2016ddpg`: Sec. 3, eqs. 6-7, pp. 3-5 -> DDPG paragraph (`sec-rl-actor-critic`, "Deterministic Policy Gradient")
  (actor gradient eq. 6, replay buffer and soft target networks p. 4, exploration noise eq. 7 p. 4, Algorithm 1 p. 5). Pages
  read: 1-5. TD3 stays uncited (Fujimoto et al. 2018 is not in the library; Haarnoja p. 2 only names it).
- `haarnoja2018sac`: Sec. 3.2, eq. 1, p. 3 and Sec. 4.1, eqs. 2-3, p. 4 -> lead-in of `def-rl-maximum-entropy-objective`
  (next to the Prudencio sentence); Secs. 1, 3.2, 5.2, pp. 1-3, 7-8 -> the "Benefits" list; Sec. 4.1, eq. 4, p. 4 (improvement
  towards exp(Q)/Z) -> lead-in of `exr-rl-soft-greedy-policy`. Pages read: 1-4, 7-8, 11. Notes, not disagreements: Haarnoja
  sets alpha = 1 after p. 3 (subsumed into the reward), so its eq. 3 has -log pi where the chapter has -alpha log pi; for
  "robustness to hyperparameters" the paper reports stability across seeds but sensitivity to the reward scale
  (= temperature), the one hyperparameter it tunes (Sec. 5.2, pp. 7-8).
- `lowe2017maddpg`: Sec. 4.1, p. 4 -> CTDE; Sec. 4.1, eqs. 4-6, pp. 4-5 -> MADDPG (centralized critic Q_i(x, a_1..a_N),
  actor mu_i(o_i)); Sec. 2, p. 3 -> learned communication over a differentiable channel (as prior work cited there). Pages
  read: 1-5.
- `ziebart2008maxent`: eq. 2, p. 1434 (path distribution exp(theta^T f)/Z) and "Learning from Demonstrated Behavior",
  p. 1435 (maximum likelihood of the demonstrations; l1-type regularization from bounded feature-expectation uncertainty)
  -> "Maximum Entropy IRL" heading. Pages read: 1433-1436.
- `ho2016gail`: Sec. 1, p. 1 (behavioral cloning, compounding error from covariate shift) and Sec. 4, eq. 8, p. 4
  (occupancy-measure matching) -> the sentence after `def-rl-behavioral-cloning`; Sec. 5, eq. 16, p. 6 -> the GAIL objective
  (agrees exactly). The GAIL gap is closed. Pages read: 1-7.

Gaps still uncited in this chapter after this round: TD3 (no source), model-based MPC and world models, the LLM-enhanced-RL
taxonomy (Cao et al. `GI627LWX`, no PDF), BCQ/CQL/IQL primary sources (optional).

#### Reading-note additions

All for chapter `fundamentals-of-machine-learning/reinforcement-learning`.

- **`zhao2025rl`** (identity and structure in the record of `fundamentals-of-mathematics-for-machine-learning`): Sec. 1.4-1.7
  pp. 4-12 (policy, reward rules p. 7, returns pp. 8-10, MDP p. 11, agent-environment p. 12) -> `sec-rl-foundations`; Secs.
  2.3-2.8 pp. 19-33 (eq. 2.7 p. 21, examples pp. 23-25, matrix form pp. 25-26, solutions pp. 27-28, Fig. 2.7 pp. 28-30, action
  values pp. 30-32, eq. 2.15 p. 32) -> `sec-rl-value-functions-bellman` and the four-state grid world; Sec. 3.2 p. 37, Secs.
  3.3-3.4 Thms. 3.1-3.5 pp. 38-48 -> Bellman optimality; Secs. 4.1-4.2, 4.4 pp. 58-64, 74 -> `sec-rl-dynamic-programming`; Ch.
  5 pp. 77-100 -> `sec-rl-monte-carlo`; Thm. 6.1 p. 106, Ch. 7 pp. 125-150 -> `sec-rl-temporal-difference`; Ch. 8 pp. 151-190
  (Sec. 8.4 pp. 181-186) -> `sec-advanced-rl`; Ch. 9 pp. 191-214 -> `sec-rl-policy-gradient`; Ch. 10 pp. 215-235 (Sec. 10.2
  pp. 216-220, Sec. 10.4 Thm. 10.2 p. 228) -> `sec-rl-actor-critic`, advantages, DPG. Not covered: imitation learning, GAIL.
- **`theodoridis2025ml`** (no reading note yet): no RL content. Sec. 1.6, pp. 12-13 states RL is beyond the book's scope. The
  9 RL citations are unsupported (owner to decide).
- **`bishop2024deeplearning`** (no reading note yet): Sec. 12.3.5 "Large language models" pp. 390-394 (RLHF remark p. 394) ->
  `sec-llm-enhanced-rl`. The `[Ch. 19]` citations are wrong: Ch. 19 is "Autoencoders" (pp. 563-).
- **`suttonReinforcementLearningIntroduction2018`** (new; no reading note yet). Sec. 1.1 p. 3; Sec. 3.1 pp. 47-50; Secs. 3.3,
  3.5-3.6 pp. 54-64 (eqs. 3.14, 3.19-3.20); Secs. 4.1-4.4, 4.6 pp. 74-86; Ch. 5 pp. 91-117 (5.1, 5.3-5.5, eqs. 5.3-5.6); Sec.
  2.5 eq. 2.7 p. 33; Ch. 6 pp. 119-135; Sec. 7.1 pp. 142-143; Secs. 8.1-8.2 pp. 159-164; Secs. 9.1-9.4 pp. 197-207 (eqs. 9.1,
  9.14), Sec. 11.3; Secs. 12.1-12.2 pp. 288-293; Secs. 13.2-13.5 pp. 324-332; Sec. 16.5 pp. 436-441; Sec. 17.4 pp. 470-471;
  exercises of Chs. 3-6, 13.
  - Identity: Richard S. Sutton and Andrew G. Barto, *Reinforcement Learning: An Introduction*, 2nd ed., MIT Press, 2018.
    Zotero `XEUNQM6V`, PDF `QAVS5EML` (548 pp. book; PDF has no embedded outline readable by the MCP). Page offset: printed
    = PDF - 19 in Ch. 3 (pp. 51, 61), drifting to about - 16 by p. 300; use the running heads.
  - Structure (printed pages): 1 Introduction 1; Part I: 2 Multi-armed Bandits 25; 3 Finite MDPs 47; 4 Dynamic Programming 73;
    5 Monte Carlo Methods 91; 6 TD Learning 119; 7 n-step Bootstrapping 141; 8 Planning and Learning with Tabular Methods 159;
    Part II: 9 On-policy Prediction with Approximation 197; 10 On-policy Control with Approximation 243; 11 Off-policy Methods
    with Approximation 257; 12 Eligibility Traces 287; 13 Policy Gradient Methods 321; Part III: 14 Psychology 341; 15
    Neuroscience 377; 16 Applications and Case Studies 421; 17 Frontiers 459.
- **`aggarwalNeuralNetworksDeep2023`** (new). Sec. 11.3 pp. 393-394; Sec. 11.5.2 pp. 400-402 (eqs. 11.6-11.8); Sec. 11.6.2
  pp. 409-411 (eq. 11.25, baselines, supervised learning from expert moves); Sec. 11.6.3 pp. 411-412.
  - Identity: Charu C. Aggarwal, *Neural Networks and Deep Learning: A Textbook*, 2nd ed., Springer, Cham, 2023,
    doi:10.1007/978-3-031-29642-0. Zotero `YZ32PIBE`, PDF `5XMKYT79`. Offset about printed = PDF - 19 near p. 100.
  - Structure: Ch. 11 "Deep Reinforcement Learning" pp. 389-433 (11.2 bandits 391, 11.3 framework 393, 11.4 Monte Carlo 395,
    11.5 bootstrapping/Q-learning 398, 11.6 policy gradients 407, 11.7 MCTS 413, 11.8 case studies 415, 11.12 exercises 432).
- **`DeepReinforcementLearning2024`** (new; metadata to fix, see above). Secs. 3.3-3.4 pp. 75-86 (experience replay, target
  network); Ch. 4 pp. 90-108 (policy gradient, REINFORCE); Ch. 5 pp. 111-136 (actor-critic, A2C); Sec. 9.1 pp. 244-245
  (independent Q-learning).
  - Identity: Alexander Zai and Brandon Brown, *Deep Reinforcement Learning in Action*, Manning, 2020. Zotero `BK4YSJZH`, PDF
    `QYDRHPKG`. Offset about printed = PDF - 17.
  - Structure: Part 1: 1 What is RL 3; 2 MDPs 23; 3 Deep Q-networks 54; 4 Policy gradient 90; 5 Actor-critic 111. Part 2: 6
    Evolutionary 141; 7 Distributional DQN 167; 8 Curiosity 210; 9 Multi-agent RL 243; 10 Interpretable RL 283; 11 Review 329.
- **`prudencioSurveyOfflineReinforcement2024`** (new). Secs. I, II-C pp. 1-4; Sec. III-A p. 5; Sec. III-G pp. 7-8; Sec. IV-A
  eq. 16 pp. 8-9; Sec. IV-C eqs. 25, 27-28 p. 11; Sec. IV-F eqs. 41-42 p. 13 -> `sec-rl-offline`, SAC entropy term, imitation.
  - Identity: R. F. Prudencio, M. R. O. A. Maximo, E. L. Colombini, "A Survey on Offline Reinforcement Learning: Taxonomy,
    Review, and Open Problems", IEEE TNNLS 35(8), 2024, doi:10.1109/TNNLS.2023.3250269, arXiv:2203.01387. Zotero `I7BYLVLL`,
    PDF `KGYLLK3P` (early-access, 21 pp., pages = PDF pages).
  - Structure: I Introduction 1; II Background 3 (II-C offline RL 4); III Taxonomy 4-8 (A policy constraints 5, B IS, C
    regularization, D uncertainty, E model-based, F one-step, G imitation 7, H trajectory optimization 8); IV Algorithmic review
    8-14; V Off-policy evaluation 15; VI Benchmarks 15-17; VIII Open problems 19; IX Conclusion 19.
- **`kamathLargeLanguageModels2024`** (new). Sec. 1.4.3 pp. 12-13 (emergent abilities); Sec. 3.5.2 p. 118 (in-context
  learning); Sec. 4.2 p. 136 (instruction tuning); Secs. 4.5.4-4.5.6 pp. 166-167 (chain-, tree-of-thought) ->
  `sec-llm-enhanced-rl`.
  - Identity: Uday Kamath, Kevin Keenan, Garrett Somers, Sarah Sorenson, *Large Language Models: A Deep Dive*, Springer, Cham,
    2024, doi:10.1007/978-3-031-65647-7. Zotero `LJLVTKSS`, PDF `GB3GPKL6`. Offset about printed = PDF - 30.
  - Structure (from the TOC): 1 Introduction (1.4 era of LLMs); 3 prompt-based learning (3.5 multi-prompt, ICL); 4 LLM
    adaptation (4.2 instruction tuning 136, 4.5 prompting 166); 5 alignment and RLHF (5.4 RLHF 189, 5.6 tutorial 213); 9
    multimodal (9.3.5 multimodal RLHF 395).

## Proposed new references

Consolidated after the owner decisions and the semantic pass (2026-11-18). Covered and removed: Bai et al. 2022 (Constitutional
AI) → `kamathLargeLanguageModels2024` Sec. 5.5.1; Ouyang 2022 and Rafailov 2023 → Kamath Secs. 5.4.4.1, 5.5.2 (PDFs optional).

| Reference | PDF source | Tags | Collection | Sections |
|---|---|---|---|---|
| Orabona, F. *A Modern Introduction to Online Learning*, arXiv:1912.13213 | arXiv | Machine Learning; Optimization | Textbooks | FLT sec-online-learning: def-flt-ftrl, online-to-batch, AdaGrad |
| Hazan, E. *Introduction to Online Convex Optimization*, 2nd ed., arXiv:1909.05207 | arXiv | Machine Learning; Optimization | Textbooks | FLT thm-flt-ogd-regret ((3/2)GD√T), Online Newton Step, def-flt-oco |
| Lattimore, T. & Szepesvári, C. *Bandit Algorithms*, CUP 2020 | authors' free PDF (tor-lattimore.com/downloads/book/book.pdf) | Machine Learning; Reinforcement Learning | Textbooks | FLT thm-flt-ucb1-regret, def-flt-linucb |
| Li, Chu, Langford, Schapire (2010), contextual-bandit news recommendation, WWW, arXiv:1003.0146 | arXiv | Machine Learning; Reinforcement Learning | Publications | FLT def-flt-linucb |
| Storey, J. D. & Tibshirani, R. (2003), Statistical significance for genomewide studies, PNAS 100:9440 | PNAS open access | Mathematical Statistics; Statistical Learning | Publications | FLT def-flt-storey |
| Grünwald, P. (2004), A tutorial introduction to the MDL principle, arXiv:math/0406077 | arXiv | Information Theory; Statistical Learning | Publications | FLT def-flt-mdl, def-flt-nml |
| Burges, C. J. C. (2010), From RankNet to LambdaRank to LambdaMART, MSR-TR-2010-82 | Microsoft Research (free report) | Artificial Intelligence; Machine Learning | Publications | SL sec-structured-outputs (RankNet, LambdaRank, LambdaMART) |
| Vaswani, A. et al. (2017), Attention Is All You Need, arXiv:1706.03762 | arXiv | Artificial Intelligence; Deep Learning; Transformers | Publications | SL sec-sup-transformers (paper named in the text; content covered by Bishop Sec. 12.1) |
| Ouyang et al. 2022 (`4ZWGRZJR`), Rafailov et al. 2023 (`DMGIXVNP`): in Zotero without PDF | arXiv:2203.02155, arXiv:2305.18290 (attach PDF only) | existing | Publications | optional primary sources; SL RLHF / DPO now covered by kamathLargeLanguageModels2024 |
| Arthur, D. & Vassilvitskii, S. (2007), k-means++, SODA | authors' copy (theory.stanford.edu; licence to check) | Machine Learning; Clustering | Publications | UL K-means++, thm-uns-kmeans-plus-plus |
| Ester, Kriegel, Sander, Xu (1996), DBSCAN, KDD-96 | AAAI open access (cdn.aaai.org/KDD/1996/KDD96-037.pdf) | Machine Learning; Clustering | Publications | UL DBSCAN definitions (and the closing sentence whose citation was removed) |
| van der Maaten, L. & Hinton, G. (2008), Visualizing data using t-SNE, JMLR 9 | JMLR open access | Machine Learning; Dimensionality Reduction | Publications | UL def-uns-tsne |
| Murtagh, F. & Contreras, P. (2011), Methods of hierarchical clustering, arXiv:1105.0121 | arXiv | Machine Learning; Clustering | Publications | UL Ward linkage, Lance-Williams |
| Schulman et al. (2017), Proximal Policy Optimization, arXiv:1707.06347 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL def-rl-ppo-clipped-objective; added and cited (2026-11-18) |
| Schulman et al. (2015), Trust Region Policy Optimization, arXiv:1502.05477 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL sec-rl-actor-critic (trust region); added and cited (2026-11-18) |
| Schulman et al. (2016), Generalized Advantage Estimation, arXiv:1506.02438 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL def-rl-generalized-advantage-estimation; added and cited (2026-11-18) |
| Haarnoja et al. (2018), Soft Actor-Critic, arXiv:1801.01290 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL SAC, def-rl-maximum-entropy-objective; added and cited (2026-11-18) |
| Kakade, S. (2001), A Natural Policy Gradient, NIPS 14 | NeurIPS proceedings (open access) | Reinforcement Learning; Artificial Intelligence | Publications | RL def-rl-natural-policy-gradient; added and cited (2026-11-18) |
| Sutton, McAllester, Singh, Mansour (2000), Policy gradient methods with function approximation, NIPS 12 | NeurIPS proceedings (open access) | Reinforcement Learning; Artificial Intelligence | Publications | RL thm-rl-compatible-function-approximation; added and cited (2026-11-18) |
| Lillicrap et al. (2016), DDPG, arXiv:1509.02971 | arXiv | Reinforcement Learning; Artificial Intelligence; Deep Learning | Publications | RL sec-rl-actor-critic (DDPG); added and cited (2026-11-18) |
| Lowe et al. (2017), MADDPG, arXiv:1706.02275 | arXiv | Reinforcement Learning; Artificial Intelligence; Agents | Publications | RL sec-rl-model-based-multi-agent (CTDE, MADDPG); added and cited (2026-11-18) |
| Ho, J. & Ermon, S. (2016), Generative Adversarial Imitation Learning, arXiv:1606.03476 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL GAIL objective (now uncited); added and cited (2026-11-18) |
| Ziebart et al. (2008), Maximum Entropy Inverse Reinforcement Learning, AAAI | AAAI open access | Reinforcement Learning; Artificial Intelligence | Publications | RL sec-rl-imitation-llm (MaxEnt IRL); added and cited (2026-11-18) |
| Fujimoto et al. (2019) BCQ arXiv:1812.02900; Kumar et al. (2020) CQL arXiv:2006.04779; Kostrikov et al. (2022) IQL arXiv:2110.06169 | arXiv | Reinforcement Learning; Artificial Intelligence | Publications | RL sec-rl-offline (optional primary sources; Prudencio covers) |
| Cao et al. 2024 (`GI627LWX`), Murphy 2024 (`D2WQNMZL`): in Zotero without PDF | arXiv:2404.00282, arXiv:2412.05265 (attach PDF only) | existing | Publications | RL sec-llm-enhanced-rl taxonomy; model-based and multi-agent RL, PPO/SAC |

## Disagreements

| Location | Text | Source (converted) | Page | Owner decision |
|---|---|---|---|---|

## Final counts (2026-11-18, after the owner's decisions)

| Chapter | Works | Textbooks | Citations without locator | Sections citing nothing |
|---|---|---|---|---|
| foundations-of-learning-theory | 14 | 11 | 0 | 0 |
| supervised-learning | 11 | 9 | 0 | 0 |
| unsupervised-learning | 12 | 8 | 0 | 0 |
| reinforcement-learning | 20 | 6 | 0 | 0 |

Every chapter meets A10. Rendered without warnings; harvest.py reports no problems.
