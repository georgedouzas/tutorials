# Tasks

## 1. Navigation

- [x] 1.1 In `_quarto.yml`, delete the `navbar.left` "Tutorials" menu. Verify: the navbar shows the title once, plus
  search, the toggle and GitHub.
- [x] 1.2 Add a "← All tutorials" link to `index.qmd` as the first entry of each of the five per-tutorial sidebars.
  Verify: `.venv/bin/python _filters/harvest.py` reports no problems and an unchanged entry count.
- [x] 1.3 Remove the `tutorials` sidebar entry. Verify: `grep -rn "sidebar: tutorials"` finds nothing outside
  `openspec/`.
- [x] 1.4 Add a `page-footer` with the site title and the GitHub icon. Verify: the footer shows on a chapter in light
  and dark mode.

## 2. Home page

- [x] 2.1 Set the `order` of the five landing pages to the reading order: maths for physicists 1, theoretical physics
  2, Kaluza-Klein 3, maths for ML 4, ML 5. Remove their `date:` and the `date` line of
  `openspec/templates/tutorial-index.qmd`. Verify: `grep -n "^order:\|^date:" */index.qmd`.
- [x] 2.2 Rewrite `index.qmd`:
  - `sidebar: false`;
  - a centred article layout;
  - two listings, Physics and Machine learning, under `##` headings, sorted by `order`.

  Verify: a screenshot at 1440 px shows no sidebar, centred tracks and the cards in reading order.
- [x] 2.3 Remove `_includes/topics.html` and its include; keep the chip styling in the theme. Landing-page categories become
  plain chips with no links. Update the note in `openspec/templates/tutorial-index.qmd`. Verify: a landing page shows
  its category chips, and no link points to `#topics=`.

## 3. Chapter pages

- [x] 3.1 Hide the title entry of the table of contents with a theme rule (design decision 5).
  Verify:
  - the gauge theories TOC lists "Gauge theories" once;
  - `@sec-gauge-theories-chapter` still resolves;
  - search still finds the chapter by its title.
- [x] 3.2 Give the notation tables a narrow Symbol column, using the theme rule from design decision 6. Verify: a
  screenshot of a notation page at 1440 px.
- [x] 3.3 Left-align body text below 768 px, and remove the duplicated header bar and title on phones. Verify: chapter
  and home screenshots at 390 px.
- [x] 3.4 Centre the page grid with a maximum width on wide screens. Verify: a chapter screenshot at 2560 px shows
  equal side margins and the same measure.
- [x] 3.5 Mirror any new colours or rules in `theme-dark.scss`. Verify: the screenshots from 2.2, 3.2 and 3.3 also
  pass in dark mode, and the accent still has a contrast of at least 4.5:1.

## 4. Owner review: landing pages and topics

- [x] 4.1 Remove the chapter cards from the five landing pages and the template; add the `start-reading` link to the
  first page. Verify: landing page screenshots at 1440 and 390 px show no cards and the link.
- [x] 4.2 Mark the 12 planned chapters "planned" in the sidebars. Verify: `harvest.py` reports no problems with
  unchanged label counts, and the theoretical physics sidebar shows the mark on Cosmology.
- [x] 4.3 Rewrite `_includes/topics.html` as the home filter and the landing-page topic links, with styles in the
  theme. Verify, in a headless browser: Gauge Theories leaves 2 of 5 tutorials and hides the Machine learning track;
  a landing-page topic opens the filtered home page.
- [x] 4.4 Draw the back-link arrow in CSS. Verify: a landing page's previous link reads "All tutorials" once.
- [x] 4.5 Update the specs this touches (`site-design`, `chapter-coverage`, `physics-tutorials`, `notation`,
  `ml-tutorials`). Verify: `openspec validate site-polish --strict`.

## 5. Integration

- [x] 5.1 Run a full `quarto render`. Verify: no warnings, no unresolved cross-references, and `audit/check.py` is
  unchanged.
- [x] 5.2 Update the main specs through archive, after review. Verify:
  `openspec validate site-polish --strict` passes.

## Workflow follow-up

- Archive the change after the owner reviews the rendered site.
