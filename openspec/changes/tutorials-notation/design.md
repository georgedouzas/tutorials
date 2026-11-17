# Design

## Context

- **Existing notation material:**
  - `kaluza-klein-theories/conventions/index.qmd`: sections on coordinates, indices and signature, connection and
    curvature, Lie algebras and gauge fields, and units. It fixes the signature (+, −, −, −) and its consequences
    for the field-theory formulas.
  - `fundamentals-of-mathematics-for-machine-learning/mathematical-and-statistical-foundations/index.qmd`: section
    `sec-notation`, a "consolidation of notations used in the primary reference textbooks".
  - The two physics tutorials have no notation page. Their glossaries define terms, not symbols.
- **Signature mentions:** (+, −, −, −) appears about 100 times. "Mostly-plus" and (−, +, +, +) appear about 40
  times, in 13 pages, mostly as comparisons. Supersymmetry and supergravity, general relativity and the Kaluza-Klein
  reduction mention both often.
- **Site structure:** pages are rendered from `<tutorial>/<slug>/index.qmd`. Files and folders starting with `_` are
  not rendered, and central helpers live in `_filters/` and `_includes/`.

## Goals / Non-Goals

**Goals:**
- One site-wide notation, shown at the start of every tutorial.
- Every written chapter follows it.
- A clear way to extend the notation as chapters are written.

**Non-Goals:**
- Changing content. A symbol is renamed or a convention converted, but statements, examples and exercises keep their
  meaning.
- Notation for the placeholder chapters. They adopt it when written.
- Typographic macros. LaTeX macro definitions could come later, but the requirement is about what the reader sees.

## Decisions

**N1. The shared tables are Quarto partials in `_notation/`.**
- There is one file per area: `sets-logic.qmd`, `linear-algebra.qmd`, `analysis.qmd`, `probability-statistics.qmd`,
  `geometry-spacetime.qmd`, `groups-algebras.qmd`, `fields-particles.qmd`, `learning.qmd` and `units.qmd`. The
  final set of areas follows the inventory (N4).
- Each partial is a table with three columns: symbol, meaning, and first defined in (a link to the defining
  statement).
- A notation page includes the partials it needs with `{{< include ../../_notation/<area>.qmd >}}`. The leading
  underscore keeps them out of the render, the way `_includes/` is used now.
- **Alternative rejected:** a copy of the notation on each page. Copies drift, which is the problem being fixed.

**N2. The notation pages.**
- **Location:** the page is `<tutorial>/notation/index.qmd`, titled "Notation", with `# Notation {#sec-notation-<group>}`.
  Labels must be unique within a cross-reference group, so the physics and machine-learning pages need distinct ids.
- **Layout:**
  - one `##` section per included area;
  - a final `## Conventions specific to this tutorial`, which holds the deviations (N3) and the tutorial's own
    symbols.
- **Kaluza-Klein:** the conventions page stays and becomes the tutorial's notation page. It includes the shared
  partials in place of its own copies of the shared conventions, and keeps its Kaluza-Klein material: internal
  coordinates, hats on higher-dimensional fields, and the negative-definite internal metric.
- **Maths for ML:** `sec-notation` in the foundations chapter moves to the new notation page. The label moves with
  it, so existing cross-references still resolve.
- **Listing:** each page is the first entry on its landing page and in its sidebar section.

**N3. One meaning per symbol across the site. Deviations are explicit.**
- **Groups:** the physics group (the three physics tutorials) and the machine-learning group share every area
  partial.
- **Where fields genuinely differ**, for example $x$ as a position in physics and a feature vector in ML, or
  bold vectors in ML and plain vectors with indices in physics:
  - the shared partial gives the site default;
  - a tutorial's own section states the deviation and why it is needed;
  - the deviation then holds throughout that tutorial.
- **Fixed site defaults:**
  - signature (+, −, −, −);
  - $\hbar = c = 1$ only where the conventions page says so;
  - the Einstein summation convention;
  - $\mathbb{E}$ for expectation;
  - $\mathcal{H}$ for a Hilbert space in physics. In learning theory $\mathcal{H}$ is the hypothesis class, which is
    a deviation to record.

  The owner confirms these in N5.

**N4. A scripted inventory comes first.**
- **Script:** `inventory.py` in this change folder reads the written chapters. Per chapter, it extracts:
  - TeX symbols and macros;
  - decorated letters, such as hats, bars and tildes;
  - the definitions that introduce a symbol, found as the first statement box that names it;
  - convention phrases, such as signature, Fourier sign and normalisation, the order of commutators, and curvature
    signs.
- **Output:** `inventory/<tutorial>.md`, a table of symbol, meaning, pages and count.
- **Clashes:** a list in `inventory/clashes.md`, covering one symbol with two meanings, two symbols for one object,
  and conventions that differ.
- The meaning column is filled by reading the defining statement. The script only finds candidates.

**N5. The owner decides the clashes before any chapter is converted.** `inventory/clashes.md` proposes a resolution
for each clash: the site default, a deviation, or a rename. The owner's decision is recorded next to it. Conversion
starts only when no clash is open.

**N6. Conversion is per chapter, and checked.**
- **Renames:** symbols are renamed only inside math, never in prose words or labels.
- **Conventions:** a sign or normalisation conversion is applied per equation, with care for consequences. For
  example, under a signature flip $\Box$, $p^2 = m^2$ and the gamma-matrix algebra change together.
- **Comparisons:** a passage that compares conventions keeps the other convention, but names it as the reference's.
- **Verification:**
  - `harvest.py` reports no problems;
  - the chapter renders without warnings;
  - a diff review confirms that only notation changed.
- A conversion that would change a result is reported to the owner, as `tutorials-reference-audit` A6 does.

**N7. The notation is kept up to date.**
- `openspec/templates/chapter.qmd` gains a comment: before using a new symbol, add it to the right `_notation/`
  partial, and reuse existing symbols.
- `openspec/templates/tutorial-index.qmd` lists the notation page first.
- `openspec/config.yaml` context gains a line naming `_notation/`, so that later changes see the rule.

**N8. Order:** mathematics for physicists first, since it defines most of the shared mathematics. Then theoretical
physics, Kaluza-Klein, mathematics for machine learning, and machine learning.

## Risks / Trade-offs

- [Converting signs can introduce errors] → Conversion is per equation with a diff review, and conventions are
  changed only where a clash decision requires it. Comparison passages are left in the other convention, labelled.
- [The inventory is large, with thousands of formulas] → The script narrows it to symbols that are defined or that
  clash. Common symbols, such as $\mathbb{R}$, are filled in once.
- [A shared default suits one field badly] → Deviations are allowed per tutorial, stated on its notation page.
- [Moving `sec-notation` breaks links] → The label moves with the content, and `harvest.py` reports any undefined
  label.

## Migration Plan

- **What changes:** new pages and partials are added, and chapters are edited in place. No page is renamed.
- **Rollback:** revert the commits. The partials and pages are self-contained.
