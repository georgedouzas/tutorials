# Tasks

## 1. Order

- [x] 1.1 Move special relativity after classical electromagnetism in the `_quarto.yml` sidebar, the tutorial
  overview `index.qmd`, and `_tutorial_chapters.json`; update any prose in the electromagnetism and general relativity
  chapters that describes the order

## 2. Remove forward uses from the special relativity chapter

- [x] 2.1 Make `def-sr-lorentz-algebra` self-contained (S3)
- [x] 2.2 Move the examples and exercises that need spinors, gamma matrices, Klein-Gordon fields, charge conjugation,
  the Foldy-Wouthuysen Hamiltonian or quantisation to the chapter that defines them, keeping their labels, with
  connective prose and a citation back to the special relativity result (S2)
- [x] 2.3 Reword the remaining citations of classical field theory as forward pointers, including the introductions of
  "Electrodynamics in covariant form" and "Relativistic optics" (S4)
- [x] 2.4 Refill any statement that fell below the checker minimum, from the mapped textbooks (S5)
- [x] 2.5 Add citations of the special relativity chapter in classical field theory and the Dirac equation where they
  use or restate its results

## 3. Verify

- [x] 3.1 The forward-use script prints only prose pointers; all five checkers report 0 problems; the touched chapters
  render alone without warnings
- [x] 3.2 Full render twice with the cross-reference index rebuilt in between: no warnings, no undefined labels, no
  broken internal links
