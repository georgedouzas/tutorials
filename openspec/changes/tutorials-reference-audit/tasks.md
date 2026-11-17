# Tasks

Each chapter task follows design A1-A7:

1. Read the cited pages and record each verdict.
2. Fill the gaps from the library, or propose new references.
3. Report disagreements to the owner.
4. Add citations with locators.
5. Extend the reading notes.

Verify each chapter by rerunning `audit/check.py` on it: the chapter must have no section without a covering source,
no citation without a locator, and at least eight distinct works with three textbooks if it is a written chapter (A10). Then render the chapter: it must have no
warnings and no unresolved citation.

## 1. Mechanical check

- [ ] 1.1 Write `audit/check.py` (A2) and run it on the whole site. Verify that it reproduces the measured baseline:
  151 entries, 3 cited nowhere, and the per-chapter key counts of design Context. Its findings seed the five
  `audit/<tutorial>.md` records (A9).
- [ ] 1.2 Resolve the entry-level findings: missing `zotero` fields, citation keys that differ, items without a PDF
  or reading note, and arXiv identifiers that do not resolve (A5, A7). Verify that `check.py` reports no entry-level
  finding except PDFs with a recorded reason.

## 2. Fundamentals of Mathematics for Machine Learning

- [ ] 2.1 Audit Mathematical and Statistical Foundations, choose its textbooks (A4), and resolve its findings.
- [ ] 2.2 Audit Appendices and Technical Background, and resolve its findings.
- [ ] 2.3 Get the owner's decisions on this tutorial's proposed references and disagreements (A5, A6), and apply
  them. Verify that `audit/fundamentals-of-mathematics-for-machine-learning.md` has no open item.

## 3. Fundamentals of Machine Learning

- [ ] 3.1 Audit Foundations of Learning Theory, including the four corrections made during the template conversion
  (A6).
- [ ] 3.2 Audit Supervised Learning, including the five corrections made during the conversion (A6).
- [ ] 3.3 Audit Unsupervised Learning.
- [ ] 3.4 Audit Reinforcement Learning, including the grid-world Bellman equations (A6).
- [ ] 3.5 Get the owner's decisions and apply them. Verify that the record has no open item.

## 4. Kaluza-Klein Theories

- [ ] 4.1 Audit the preface and the conventions.
- [ ] 4.2 Audit The Kaluza-Klein reduction.
- [ ] 4.3 Audit Gauge symmetry and the Kaluza-Klein tower.
- [ ] 4.4 Audit Isometries and gauge fields.
- [ ] 4.5 Audit The reduced theory.
- [ ] 4.6 Audit Symmetric fields and their constraints.
- [ ] 4.7 Audit The four-dimensional theory.
- [ ] 4.8 Audit Consistent reductions.
- [ ] 4.9 Audit Compactifications.
- [ ] 4.10 Get the owner's decisions and apply them. Verify that the record has no open item.

## 5. Fundamentals of Mathematics for Physicists

- [ ] 5.1 Audit Sets, relations and topology.
- [ ] 5.2 Audit Linear algebra.
- [ ] 5.3 Audit Real analysis.
- [ ] 5.4 Audit Complex analysis.
- [ ] 5.5 Audit Differential equations.
- [ ] 5.6 Audit Fourier analysis.
- [ ] 5.7 Audit Functional analysis.
- [ ] 5.8 Audit Probability and statistics.
- [ ] 5.9 Audit Differential geometry.
- [ ] 5.10 Audit Group theory.
- [ ] 5.11 Audit Lie groups and Lie algebras.
- [ ] 5.12 Audit Homogeneous spaces and fibre bundles.
- [ ] 5.13 Audit Spinors and the Dirac operator.
- [ ] 5.14 Get the owner's decisions and apply them. Verify that the record has no open item.

## 6. Fundamentals of Theoretical Physics

- [ ] 6.1 Audit Classical mechanics.
- [ ] 6.2 Audit Classical electromagnetism.
- [ ] 6.3 Audit Special relativity.
- [ ] 6.4 Audit Thermodynamics and statistical mechanics.
- [ ] 6.5 Audit Quantum mechanics.
- [ ] 6.6 Audit Classical field theory.
- [ ] 6.7 Audit The Dirac equation.
- [ ] 6.8 Audit Quantum field theory.
- [ ] 6.9 Audit Gauge theories.
- [ ] 6.10 Audit Renormalisation.
- [ ] 6.11 Audit General relativity.
- [ ] 6.12 Audit Supersymmetry and supergravity.
- [ ] 6.13 Get the owner's decisions and apply them. Verify that the record has no open item.

## 7. Whole site

- [ ] 7.1 Run `audit/check.py` on the whole site and render the site with `quarto render`.
  - Verify that `check.py` reports no finding except recorded PDF reasons.
  - Verify that every bib entry is cited.
  - Verify that the render has no warning and no unresolved citation.

## Workflow follow-up

- Archive the change, then sync the `reference-coverage`, `bibliography` and `tutorial-content` deltas into the main
  specs.
