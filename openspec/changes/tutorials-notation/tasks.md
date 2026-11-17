# Tasks

## 1. Inventory

- [ ] 1.1 Write `inventory.py` (N4) and run it on every written chapter. Verify that
  `inventory/<tutorial>.md` exists for all five tutorials, and that each defined symbol names its defining page.
- [ ] 1.2 Fill in the meanings from the defining statements and write `inventory/clashes.md`. It covers clashes
  within a tutorial and across tutorials, and gives each a proposed resolution (N3, N5). Verify that every symbol
  with two meanings, and every object with two symbols, is listed.
- [ ] 1.3 Get the owner's decisions on the clashes and the site defaults, and record them (N5). Verify that
  `clashes.md` has no open item.

## 2. Shared notation and pages

- [ ] 2.1 Write the `_notation/` partials from the decided inventory (N1). Verify that no symbol has two meanings
  across the partials.
- [ ] 2.2 Create `notation/index.qmd` in the four tutorials that lack one. Convert the Kaluza-Klein conventions page to
  include the shared partials, and move `sec-notation` out of the maths-for-ML foundations chapter (N2). List each
  page before the first subject chapter on its landing page and in the sidebar. Verify that `harvest.py` reports no problems and that the pages
  render without warnings.

## 3. Convert Fundamentals of Mathematics for Physicists

- [ ] 3.1 Convert its chapters to the notation, one at a time in sidebar order (N6). Verify each with `harvest.py`,
  a warning-free render, and a diff that changes only notation. Report any result that changes.

## 4. Convert Fundamentals of Theoretical Physics

- [ ] 4.1 Convert its chapters (N6), including the signature passages of special relativity, general relativity,
  quantum field theory, gauge theories and supersymmetry. Verify as in 3.1.

## 5. Convert Kaluza-Klein Theories

- [ ] 5.1 Convert its chapters (N6), with the Kaluza-Klein reduction's signature passages. Verify as in 3.1.

## 6. Convert Fundamentals of Mathematics for Machine Learning

- [ ] 6.1 Convert its chapters (N6). Verify as in 3.1.

## 7. Convert Fundamentals of Machine Learning

- [ ] 7.1 Convert its chapters (N6), including the learning-theory deviations such as $\mathcal{H}$ for the
  hypothesis class. Verify as in 3.1.

## 8. Keeping it up to date

- [ ] 8.1 Update `openspec/templates/chapter.qmd`, `openspec/templates/tutorial-index.qmd` and the `openspec/config.yaml`
  context (N7). Verify that the templates mention `_notation/` and list the notation page before the chapters.
- [ ] 8.2 Render the whole site. Verify that it has no warnings, that every tutorial lists its notation page before its first subject chapter,
  and that `harvest.py` reports no problems.

## Workflow follow-up

- Archive the change and sync the `notation` spec into the main specs.
