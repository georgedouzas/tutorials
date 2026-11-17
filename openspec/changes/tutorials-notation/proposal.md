# Proposal

## Why

Notation is not fixed anywhere a reader can find it, and it drifts between chapters:

- **Where it lives now:**
  - The Kaluza-Klein conventions page fixes coordinates, signature, curvature and Lie-algebra conventions.
  - The first chapter of Fundamentals of Mathematics for Machine Learning has a "Notation" section that is described
    as applying "to the remainder of these tutorials".
  - The two physics tutorials have no notation page at all.
- **Why it drifts:** chapters take their notation from the reference they adapt. The site uses the signature
  (+, −, −, −), but "mostly-plus" and (−, +, +, +) also appear in 13 pages. Most are comparisons, but nothing records
  which form is the site's.
- **The owner's request (2026-11-17):**
  - Each tutorial defines its notation at its start.
  - The notation is consistent across all chapters, independently of the references.
  - It is updated when a chapter needs a new symbol.
  - The same notation is kept across the tutorials.

## What Changes

- **Shared notation:** one set of notation tables for the whole site, by area, for example sets and logic, linear
  algebra, analysis, probability and statistics, geometry and spacetime, groups and algebras, fields and particles,
  and learning. Each symbol has one meaning site-wide. A tutorial-specific deviation is allowed only where two fields
  genuinely clash, and it is stated with its reason.
- **Notation page per tutorial:** each tutorial gets a notation page at the start of its chapter list and sidebar.
  The page shows the shared tables the tutorial uses, plus its own entries. For Kaluza-Klein, the existing
  conventions page takes this role. The notation section of the maths-for-ML foundations chapter moves to that
  tutorial's notation page.
- **Notation over references:** a chapter uses the site notation even where its reference uses another. Formulas
  taken from a source are converted, including sign conventions. A chapter may mention a source's convention only
  as an explicit comparison.
- **Inventory and conversion:**
  - Every written chapter's symbols are inventoried.
  - Clashes, within a tutorial and across tutorials, are resolved by the owner.
  - Chapters are converted to the agreed notation.
- **Kept up to date:** a chapter that introduces a symbol adds it to the notation tables first. The chapter and
  landing-page templates say so.

## Capabilities

### New Capabilities

- `notation`: one site-wide notation, shown on a notation page at the start of every tutorial and followed by every
  chapter, regardless of the references the chapter adapts.

### Modified Capabilities

None. The templates in `openspec/templates/` are updated, but they are not a spec capability.

## Impact

- **New pages:** a notation page in four tutorials, plus the Kaluza-Klein conventions page extended. Each is listed
  first on its landing page and in the sidebar.
- **New shared files:** the notation tables, kept outside the tutorial folders as central helpers, like `_filters/`,
  and included by each notation page.
- **Chapter edits:** symbols in the written chapters are renamed or converted. Meaning, statements, examples and
  exercises are not changed.
- **Templates:** `openspec/templates/chapter.qmd` and `tutorial-index.qmd`.
- **Related changes:**
  - `tutorials-reference-audit` compares each text with its source "after converting conventions", so it relies on
    this notation.
  - The placeholder chapters of `tutorials-missing-chapters` adopt the notation when they are written.
