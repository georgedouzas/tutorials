# Tasks

## 1. Tooling and layout

- [x] 1.1 Copy the coverage record of `2026-11-18-tutorials-missing-chapters` to
  `openspec/coverage/fundamentals-of-mathematics-for-physicists.md` and add a Status column to its section gaps and
  proposed chapters (design M9).
- [x] 1.2 Write `_filters/check_content.py` (design M4): statement counts against `_raised.txt` with exceptions,
  solution-tab structure, re-run of SageMath tabs and Sage examples in one Sage process per chapter with `--update`,
  figure scripts present and (with `--figures`) re-run, and the caption rule for every tutorial. Test it on Linear
  algebra before raising it: it must report the current shortfalls and the provenance captions.
- [x] 1.3 Write `_filters/figstyle.sage` (design M5): site palette, font sizes, transparent background, line colours
  that read in light and dark mode; one test figure checked in both modes with a headless screenshot.
- [x] 1.4 Add the solution-tab styles to `theme.scss` (design M3): the Proof tab plain, the SageMath tab with its own
  accent, label, code and output backgrounds, in light and dark mode; check one converted solution in the browser
  and in the PDF.
- [x] 1.5 Update `openspec/templates/chapter.qmd` with the solution-tab form, the `sage` and `sage-output` blocks and
  the caption rule; create `fundamentals-of-mathematics-for-physicists/_raised.txt` (empty, with a header comment).

## 2. Captions site-wide

- [x] 2.1 Rewrite every caption of Fundamentals of Mathematics for Physicists, Fundamentals of Theoretical Physics and
  Kaluza-Klein Theories to the rule of design M6 (no provenance, at most two sentences; explanations moved into the
  prose). `check_content.py` reports no caption, the site renders without warnings, `harvest.py` reports no problems.

## 3. Pilot: Linear algebra

- [x] 3.1 Raise Linear algebra (design M1-M10): add the sections on determinants and trace and on eigenvalues,
  diagonalisation and Jordan form (with SVD and polar decomposition as a unit) from the record's benchmarks; give
  every statement ten examples and ten exercises from the mapped textbooks; convert every solution to Proof and
  SageMath tabs; recreate and audit every figure with its `.sage` script and add the missing ones; list the chapter
  in `_raised.txt`; mark the gaps done in the coverage record. Gates: `check_content.py --figures` clean, `harvest.py`
  clean, the chapter renders without warnings, light and dark screenshots of a tabbed solution and of each figure.
  Draft the reading-note additions for the owner's approval.
- [x] 3.2 Owner review of the pilot. Fold the requested changes into design.md, the template and `theme.scss`, and
  apply them to Linear algebra, before any other chapter starts.

## 4. Remaining chapters, in reading order

Each task does for its chapter what 3.1 did: fill the recorded gaps, ten and ten, solution tabs, figure scripts and
audit, `_raised.txt`, coverage record, the same gates, and one commit. The chapters marked (by section) are done
one `##` section per agent run.

- [x] 4.1 Sets, relations and topology (gap: metric spaces, completeness, contraction mapping).
- [x] 4.2 Real analysis (gaps: inverse and implicit function theorems with Lagrange multipliers; vector calculus).
- [x] 4.3 Complex analysis (gap: steepest descent and stationary phase).
- [x] 4.4 Differential equations (gaps: further special functions; first-order PDEs and characteristics).
- [x] 4.5 Write Calculus of variations from the chapter template (functionals and the Euler-Lagrange equations;
  constraints, the second variation and Rayleigh-Ritz), ten and ten throughout; remove its planned badge in
  `_quarto.yml`; mark the proposed chapter written in the coverage record.
- [x] 4.6 Fourier analysis (gap: the Laplace transform and its inversion).
- [ ] 4.7 Hilbert spaces and operators (by section).
- [ ] 4.8 Probability.
- [ ] 4.9 Differential geometry (by section; gaps: submanifolds and the rank theorem; orientation and integration;
  Hodge star and codifferential; Frobenius; symplectic forms).
- [ ] 4.10 Group theory (gaps: characters and the regular representation; the symmetric group, cycle types, Young
  diagrams).
- [ ] 4.11 Lie groups and algebras (by section; gaps: Casimirs and the Dynkin index; Dynkin diagrams and su(N);
  Young tableaux; the Lorentz and Poincaré groups).
- [ ] 4.12 Homogeneous spaces and bundles.
- [ ] 4.13 Write Homotopy and cohomology from the chapter template (homotopy and the fundamental group, covering
  spaces, higher homotopy groups and the exact sequence of a fibration; de Rham cohomology, homotopy invariance,
  Mayer-Vietoris, degree; Chern-Weil, Chern classes, Euler class), ten and ten throughout; remove its planned badge;
  mark it written in the coverage record.
- [ ] 4.14 Spinors and the Dirac operator (by section).

## 5. Close

- [ ] 5.1 Update the landing page, glossary and notation page for the new sections, chapters, terms and symbols;
  `check_content.py` reports nothing for the whole tutorial; full render with no warnings; `harvest.py` clean;
  every chapter listed in `_raised.txt`; the reading notes in `reading-notes/` shown to the owner and, once
  approved, written to Zotero in one batch.
