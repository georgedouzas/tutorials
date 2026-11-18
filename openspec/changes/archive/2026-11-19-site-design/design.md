# Design

## Context

The site is one Quarto website (`_quarto.yml`) themed by cosmo plus `theme.scss`. Pages have no table of contents
(`toc: false`); `_includes/tutorials-nav.html` moves the single sidebar's tree into the empty right margin, and
`_includes/topics.html` prepends topic chips to the sidebar on every page. Chapters are thousands of lines, with headings
`#` (chapter), `##` (part), `###` (section) and `####` (subsection and block titles). A statement is a
`div.statement-box` around a Quarto theorem div (`div.theorem.definition`, ...); its examples and exercises sit in
collapsed callouts `div.callout.examples-fold` and `div.callout.exercises-fold`, and each exercise's solution is a
collapsed `div.callout.solution`. The theorem title is an inline `span.theorem-title > strong` at the start of the
first paragraph. `_filters/harvest.py` builds the cross-reference index by walking every `website.sidebar` entry of
`_quarto.yml`; `cross-references.lua` reads only the JSON index. The existing specs `physics-tutorials` and
`ml-tutorials` already require per-tutorial sidebars, which the single sidebar does not meet.

## Goals / Non-Goals

**Goals:** the requirements of the `site-design` spec, implemented in configuration and styles, with chapter sources
untouched.

**Non-Goals:** changing
figure files (SVGs keep their own colours; dark mode puts them on a light card instead); PDF output.

## Decisions

### D1. Fonts: system serif stack, no web fonts
Body: `"Iowan Old Style", "Charter", "Source Serif Pro", "Source Serif 4", ui-serif, Georgia, serif`; UI: the
existing system sans stack. `$web-font-path: false` stays. Iowan and Charter have a large x-height close to Computer
Modern's look at body size, so KaTeX is scaled from its default 1.21em to 1.1em. Headings use the serif at weight 600;
navigation, sidebar, TOC, block labels, figure captions and the fold headers use sans. Alternative: a web font such
as Source Serif from Google Fonts; rejected to keep the owner's no-web-fonts decision.

### D2. Measure and grid
Root size 17px, body text 1.0625rem (18px), line height 1.65. Grid: sidebar 270px, body 490px, margin 230px. In
Quarto's docked layout the text column is the body width plus about 130px, so it renders about 620px wide, about 70
characters of 18px Iowan. Paragraphs stay justified with hyphenation as before.

### D3. Colour tokens and the dark theme
`theme.scss` declares SCSS defaults (`$site-bg`, `$site-text`, `$site-muted`, `$site-border`, `$site-surface`,
`$site-accent`, `$site-statement`, `$site-example`, `$site-exercise`, `$site-figure-card`) with `!default`, and emits
them as CSS variables `--site-*` on `:root`. `theme-dark.scss` sets the dark values and the Bootstrap body colours,
and `_quarto.yml` uses `theme: {light: [cosmo, theme.scss], dark: [cosmo, theme-dark.scss, theme.scss]}`, so Quarto
compiles one stylesheet per mode from the same rules and adds its toggle to the navbar. Block tints are
`color-mix()` of the block colour into the background (6-8 %), so only the four hues need picking per mode.
Alternative: one stylesheet with `body.quarto-dark` overrides; rejected because Quarto's theme pair also switches
Bootstrap and the code highlighting.

Palette (light / dark), checked to 4.5:1 or better on the page and on the tint:
accent `#1d5b99` / `#8bb8ee`, statement (red) `#a33a2c` / `#ee958a`, example (green) `#2b7448` / `#7fcb9b`,
exercise (violet) `#6247a8` / `#b7a6f0`. Exercises move from blue to violet so they are not read as links.

### D4. Block styling
`.statement-box`, `.examples-fold` and `.exercises-fold` share one mixin: 3px left border in the block colour, tint
background, small radius on the right. The theorem title becomes a block-level small-caps sans label in its colour
(`font-variant-caps: small-caps`, letter spacing), with KaTeX inside it reset to normal caps. Fold headers drop
Quarto's callout icon and borders and show the label "Examples"/"Exercises" in small caps with a chevron. Solutions
lose the colour: a muted sans "Solution" header, a hairline left rule in the border colour, and a body indented under
it. Plain `div.theorem` blocks (remarks, conjectures) keep the statement colour on their title only.

### D5. Navigation
`toc: true`, `toc-depth: 3`, `toc-title: "On this page"`, `toc-location: right`; `website.search: true`. Sidebars:
one with id per tutorial (the folder name) holding a single section whose title is the tutorial's name and links to
its overview (`index.qmd`), with the tutorial's pages under it; Quarto does not show a docked sidebar's own `title`
when there is a navbar, so the section is what heads the sidebar. One more sidebar, `tutorials`, serves the home page
and lists the five overviews.
Because an overview is in two sidebars, each tutorial folder gets a `_metadata.yml` with `sidebar: <folder>`, and the
home page keeps `sidebar: tutorials`; the global `sidebar: tutorials` in `_quarto.yml` is removed. The navbar gets a
left "Tutorials" menu with the five overviews. `_includes/tutorials-nav.html` is deleted (the TOC fills the margin);
`topics.html` places its chips in the sidebar only on the home page, where they filter the cards. `harvest.py`
already walks every sidebar; it is changed only to visit each page once, since overviews now appear twice.

### D6. Landing pages
The chapter list is wrapped in `::: {.chapter-list}` and a planned chapter's trailing "(in preparation)" becomes
`[In preparation]{.chapter-badge}`. CSS turns the list into bordered rows in a responsive two-column grid, with the
badge as a small muted pill. The template `openspec/templates/tutorial-index.qmd` gets the same markup. Covers in the
home listing get one aspect ratio (2:1), `object-fit: cover` and a radius, so the set is uniform without editing the
SVGs.

### D7. Navbar, figures, code
Navbar links are plain muted sans; hover and the active link use the accent and an underline, without transforms,
gradients or shadows; the topic-chip "active" state uses a flat accent fill. Figures: centred, `max-width: 100%` of
the column, captions in 0.85rem sans muted text; in dark mode images inside figures get a light card
(`--site-figure-card`) with padding and radius. Interactive iframes get the border token. Code: `highlight-style`
pair github / github-dark (quiet), on the surface colour with a hairline border and 0.875em text.

### D8. Dead styles
`theme.scss` still carries the old blog's masthead, aurora, quick cards, page hero, posts list, tag chips and
publications timeline, none of which any page here uses, and most of the gradients and glows the owner wants gone.
They are removed rather than restyled.

## Risks / Trade-offs

- [Two stylesheets double the CSS] → only a few kB of extra CSS per page; acceptable.
- [Iowan and Charter are absent on most Linux and Windows systems] → the stack falls back to Source Serif, then
  Georgia, which still pairs reasonably with KaTeX.
- [`color-mix()` needs a 2023+ browser] → the tint is decorative; older browsers show the border and label on the
  page background.
- [Sidebar change affects page-to-sidebar mapping] → `_metadata.yml` per tutorial makes it explicit; the render and
  `harvest.py` check every page.
- [Topic chips leave chapter sidebars] → chapter pages still show the tutorial's categories as chips in the title
  block of its overview, which link to the filtered home page.
