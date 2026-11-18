# Proposal

## Why

The tutorials are long-form mathematics, but the site reads like a generic Bootstrap page: sans-serif body text at a wide
measure beside KaTeX's Computer Modern, statement, example and exercise blocks styled three different ways, one
sidebar listing every chapter of all five tutorials, no table of contents or search on chapters thousands of lines
long, no dark mode, and navbar pills with gradients and glows. The owner approved a design that makes the pages calm,
legible and easy to navigate.

## What Changes

- Body text in a system serif stack (no web fonts, as before), sans for navigation, sidebar, labels and captions;
  line height about 1.65, a measure of about 70 characters, a heading scale, and KaTeX sized to match the text.
- One visual system for the blocks: statements, examples and exercises each get a thin coloured left border, a faint
  tint and a small-caps label in their colour; the Examples and Exercises folds match it; solutions are subordinate.
  One accent colour and three block colours, all CSS variables that meet WCAG AA contrast. The exercise colour moves
  from blue to violet so that it is not confused with the link colour.
- Navigation: a right-hand "On this page" table of contents (depth 3), search switched back on, and one sidebar per
  tutorial, so a page lists only its own tutorial's pages. The script that moved the sidebar tree into the right
  margin (`_includes/tutorials-nav.html`) is removed, and the topic chips appear in the sidebar of the home page only.
  A navbar menu links to the five tutorials.
- Dark mode: a light and dark theme pair with a toggle; KaTeX, code and figures stay readable (figures sit on a light
  card in dark mode).
- Landing pages: the chapter list becomes a list of tidy cards, and planned chapters carry an "In preparation" badge;
  the landing-page template follows. Tutorial covers are shown at one size and shape.
- Calmer accents: the navbar pills lose their gradient and glow.
- Figures and code: centred figures with a maximum width, consistent sans captions, a quieter code style.
- The Kaluza-Klein conventions legend describes the new block styling.

## Capabilities

### New Capabilities
- `site-design`: the site's typography, colour system, block styling, navigation (sidebars, table of contents,
  search), dark mode, landing-page chapter lists, figure and code presentation.

### Modified Capabilities
- `tutorial-content`: "Block kinds are colour coded" and "Examples and exercises are folded under their statement"
  describe the new styling (left border and tint instead of a red box and coloured titles only; violet instead of blue
  for exercises). The Verification boxes they mention no longer exist in the repo and are dropped from the text.

## Impact

- `_quarto.yml` (theme pair, grid, TOC, search, sidebars, navbar, code highlighting), `theme.scss`, a new
  `theme-dark.scss`, `_includes/topics.html`, `_includes/tutorials-nav.html` (removed), one `_metadata.yml` per
  tutorial folder (selects its sidebar), the five tutorial landing pages, `openspec/templates/tutorial-index.qmd`,
  `kaluza-klein-theories/conventions/index.qmd` (legend), `_filters/harvest.py` (reads the new sidebars), `README.md`.
- No chapter content changes; cross-references and labels are unchanged.
