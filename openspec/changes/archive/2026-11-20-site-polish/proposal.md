# Proposal

## Why

The `site-design` change (archived 2026-11-19) gave the site a coherent look. Screenshots of the site rendered by the
owner on 2026-11-19, at 1440 px and 390 px wide, show what is left:

- **"Tutorials" is repeated.** The navbar shows the site title "Tutorials" next to a "Tutorials" dropdown. The home
  page then adds a "Tutorials" heading, and on a phone a "Tutorials" sidebar bar as well.
- **The home page has a sidebar it does not need.** It holds about 40 topic chips, pushes the tutorial cards to the
  left, and leaves the right half of a wide screen empty.
- **The home cards are out of order.** The `order` fields put Kaluza-Klein first, but the home page's own text gives
  the reading order as mathematics for physicists, theoretical physics, Kaluza-Klein, then the two machine-learning
  tutorials.
- **The chapter table of contents repeats the title.** The `#` heading appears as the first entry, so a chapter whose
  first part has the same name, such as Gauge theories, lists it twice.
- **Notation tables split the width 50/50**, although the Symbol column holds a single symbol.
- **On phones, justified text leaves wide gaps** between words, and the page header stacks three bars.
- **Wide screens:** the page sticks to the left edge.
- **Owner review, 2026-11-20:**
  - each landing page repeats as cards the chapter list its sidebar already shows;
  - the topics are no longer usable: after the first pass of this change they are plain labels.

## What Changes

- **Navbar:** the site title links to the home page, and the redundant "Tutorials" dropdown is removed. Switching
  tutorials happens from the home page and from an "All tutorials" link at the top of every tutorial sidebar.
- **Home page:**
  - no sidebar;
  - a centred layout;
  - the tutorials grouped into two reading tracks, Physics (three tutorials) and Machine learning (two), with cards
    in reading order;
  - a topic filter above the tracks: one chip per topic, broad topics first; selecting chips shows the tutorials with
    any selected topic and hides an empty track; the selection is kept in the address, so a filtered view can be
    shared.
- **Landing pages:**
  - no chapter cards; a short note says the chapters are in the sidebar and links to the first page (notation or
    preface), which matters on phones, where the sidebar is collapsed;
  - the topics in the title block link to the home page filtered by that topic;
  - planned chapters carry a small "planned" mark in the sidebar instead of the card badge.
- **Reading order:** the `order` fields follow the reading order: maths for physicists 1, theoretical physics 2,
  Kaluza-Klein 3, maths for ML 4, ML 5.
- **Table of contents:** the chapter title is no longer an entry, so the list starts at the parts.
- **Notation tables:** a narrow Symbol column, and Meaning takes the rest of the width.
- **Phones:**
  - text is left-aligned with hyphenation;
  - a single compact header;
  - no repeated title bar.
- **Wide screens:** the page grid is centred, with a maximum width.
- **Smaller polish, found while doing the above:**
  - landing pages no longer show a "Published" date, since the tutorials are living documents;
  - a footer with the site name and the GitHub link;
  - consistent spacing between the landing-page lead paragraph and the chapter cards.

## Capabilities

### New Capabilities

None.

### Modified Capabilities

- `site-design`:
  - **"Landing-page chapter lists":** removed; the sidebar is the chapter list.
  - **New requirements:** landing pages point to the first page, planned chapters are marked in the sidebar, the
    home page's topic filter, and topic links on landing pages.
  - **"One sidebar per tutorial":** the navbar no longer links each tutorial; the sidebars and the home page do.
  - **"Table of contents and search":** the table of contents omits the chapter title.
  - **New requirements:** the home page layout, notation tables, reading on phones, and the centred layout.
- `chapter-coverage`, `physics-tutorials`, `notation`, `ml-tutorials`: the requirements that said the landing page
  lists the chapters now say the sidebar does.

## Impact

- **Files:**
  - `_quarto.yml` (navbar, sidebars, footer);
  - `index.qmd`;
  - `theme.scss` and `theme-dark.scss`;
  - the `order` fields of the five landing pages;
  - `_notation/*.qmd`, only if a table class is needed;
  - `_includes/topics.html`, rewritten as the home filter and the landing-page topic links;
  - the five landing pages' chapter lists, removed;
  - `openspec/templates/tutorial-index.qmd`, for the sidebar link.
- **No content changes.** Chapters, citations and cross-references are untouched. `_filters/harvest.py` still reads
  the same sidebars.
- **Verification:** headless screenshots at 1440 px and 390 px in light and dark mode, and a full render with no
  warnings.
