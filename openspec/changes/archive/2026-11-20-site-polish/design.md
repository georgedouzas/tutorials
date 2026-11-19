# Design

## Context

- The site is a Quarto 1.11.9 website. Navigation lives in `_quarto.yml`:
  - the navbar has the title "Tutorials" plus a "Tutorials" menu;
  - the sidebars include one with id `tutorials`, which the home page selects with `sidebar: tutorials`;
  - there is one sidebar per tutorial.
- `_filters/harvest.py` reads the per-tutorial sidebars to build the cross-reference index.
- `index.qmd` is a grid listing of the five landing pages, `sort: ["order"]`. The `order` values (KK 1, maths-phys 2,
  TP 3, ML 4, ML-maths 5) contradict the reading order stated in the same file.
- Chapters set `pagetitle:` and open with a level-1 heading `# Title {#sec-…-chapter}`. That id is a cross-reference
  target, and with `toc-depth: 3` the heading becomes the first TOC entry.
- `_includes/topics.html` is included after the body on every page. It does two things:
  - builds the topic-chip filter in the home sidebar, with the selection in the URL hash `#topics=`;
  - turns each landing page's `categories` into chips that link to that filter, and styles them.
- `theme.scss` justifies `main p, main li` on every screen. The page grid is set in `_quarto.yml`: sidebar 270 px,
  body 490 px, margin 230 px.

## Goals / Non-Goals

**Goals:**

- Each fix is made once, in configuration, theme or a filter, rather than by editing each of the roughly 70 chapter
  files.
- Every anchor and cross-reference keeps working.

**Non-Goals:**

- New colours, fonts or block styles: the `site-design` palette and typography stay.
- A custom Quarto template or partials.
- Changes to the PDF output.

## Decisions

1. **Navbar.**
   - Delete the `navbar.left` menu. The site title stays and links home; search, the GitHub icon and the dark-mode
     toggle stay on the right.
   - Alternative considered: rename the menu to "Browse". It still duplicates the home page, and five long titles in a
     dropdown read poorly.
2. **"All tutorials" link.**
   - Add `- text: "← All tutorials"` with `href: index.qmd` as the first entry of each per-tutorial sidebar, above
     the tutorial's section.
   - `harvest.py` must skip it. It reads `.qmd` pages, and `index.qmd` has no chapter id, so the plan is to confirm
     with a harvest run and add an explicit skip only if needed.
3. **Home page without a sidebar.**
   - Remove the `tutorials` sidebar entry and set `sidebar: false` in `index.qmd`. Use `page-layout: article` so the
     body is centred, with no `toc`.
   - Replace the single listing with two listings, Physics and Machine learning, each under an `##` heading, using
     Quarto's multiple-listing support (`listing:` as a list with ids, and `::: {#physics}` divs).
   - Set the `order` values to the reading order.
   - Alternative considered: one listing, with categories as track labels. It cannot show the track headings.
4. **Topics.**
   - `_includes/topics.html` is rewritten and included on every page:
     - **Home:** a "Filter by topic" box is inserted before the first track. Its chips are built from the cards'
       `data-categories` (Quarto adds them from each landing page's `categories`), so no topic list is kept by hand;
       Mathematics, Physics and Machine Learning come first. Selection is OR, kept in `#topics=A,B`; a track
       (`section.level2`) with no visible card is hidden; a count and a Clear button appear while filtering.
     - **Landing pages:** each title-block topic is replaced by an `a.topic-link` to `<home>#topics=<topic>`. It must
       not keep the class `quarto-category`, or Quarto's own handler sends the click to `#category=`; that form is
       also accepted by the filter, as a fallback.
   - Alternative considered: Quarto's built-in listing categories (`categories: true`). They show as a sidebar or
     cloud with single selection, and reintroduce the sidebar the home page just lost.
4b. **Landing pages without chapter cards.**
   - The `## Chapters` list and its `.chapter-list` / `.chapter-badge` styles are removed. A `::: {.start-reading}`
     note links to the first page; on phones it is the only visible way in, since the sidebar starts collapsed.
   - Planned chapters keep their mark in the sidebar: the entry becomes `text:` with a
     `<span class="sidebar-badge">planned</span>` plus `href:`. `harvest.py` already reads `href` from such entries.
   - The sidebar's back link is plain text "All tutorials" with the arrow drawn in CSS, so the landing page's
     "previous" navigation does not show two arrows.
5. **TOC without the chapter title.**
   - A theme rule hides the link of the TOC's single top-level entry (the page's level-1 heading) and shows its
     sub-list unindented and expanded, so the list starts at the parts. The heading, its id `#sec-…-chapter` and
     the cross-references are untouched.
   - Alternatives considered and rejected:
     - a Lua filter marking the h1 `unlisted`: tried first, but Pandoc then drops the heading's whole subtree,
       which emptied the TOC;
     - `toc-depth` cannot skip a level;
     - adding `.unlisted` by hand in about 70 files is churn, and has the same subtree problem.
6. **Notation tables.**
   - Scope the rule with `body-classes: notation-page` on the five notation pages: the table is a full-width
     `display: table`, and Pandoc's equal 50/50 `colgroup` widths are overridden with `width: auto !important`,
     so the browser sizes each column by its content.
   - `white-space: nowrap` on the Symbol column was tried and rejected: it widens the column to its longest entry.
7. **Phones.**
   - Under `@media (max-width: 767.98px)`, `main p, main li` become `text-align: left` and keep hyphenation.
   - The home page loses its sidebar, which removes its extra bar. On tutorial pages the collapsed sidebar toggle
     stays, since it is the chapter list, but its title bar and the page title are de-duplicated with CSS: the
     secondary-nav breadcrumb shows the chapter, and the duplicate heading is hidden.
8. **Centred grid on wide screens.**
   - Wrap `#quarto-content` in `max-width: calc(270px + 490px + 230px + gutters + slack)` with
     `margin-inline: auto` above about 1600 px.
   - Alternative considered: increase `body-width`. That breaks the 72-character measure.
9. **No date on landing pages.** Remove `date:` from the five landing pages and from the template; listings no
   longer sort or show by date.
10. **Footer.** Add `page-footer` with the site title on the left and the GitHub icon on the right, in the muted sans
    style.

## Risks / Trade-offs

- **[Risk]** Removing the `tutorials` sidebar breaks a page that still names it.
  - **Mitigation:** run `grep -rn "sidebar: tutorials"` before rendering.
- **[Risk]** A page whose TOC has one top-level entry that is not its title would lose that entry's link.
  - **Mitigation:** every page with a level-1 heading has exactly one, as its title; the rule only applies when
    that entry has sub-entries.
- **[Risk]** Two listings on the home page change the card markup the theme styles.
  - **Mitigation:** the same `.quarto-grid-item` classes are used, so the screenshots will catch any drift.
- **[Trade-off]** The landing-page chips lose their filter link. A reader browses topics from the home tracks
  instead.

## Migration Plan

- Each step is a reversible file edit with no data migration.
- Verify at 1440 px and 390 px in light and dark mode against the screenshots taken before the change.
- Rollback is `git revert`.
