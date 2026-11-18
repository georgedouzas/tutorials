# Design

## Context

Five tutorials, 46 published pages:

| Tutorial | Chapters now |
|---|---|
| Fundamentals of Mathematics for Physicists | 13 + glossary |
| Fundamentals of Theoretical Physics | 12 + glossary |
| Kaluza-Klein Theories | 8 + preface, conventions, glossary |
| Fundamentals of Mathematics for Machine Learning | 2 |
| Fundamentals of Machine Learning | 4 |

The library and the bibliography:

- The Zotero library has 926 items in four collections: Textbooks, Publications, Repositories and Notes. Items are
  tagged by field (Physics, Mathematics, Machine Learning, and subfields such as Gauge Theory, Lie Groups and
  Reinforcement Learning).
- `references/references.bib` has 151 entries, all linked to Zotero; 71 are tagged `textbook`.
- The two machine-learning tutorials cite six works each and no textbook.

Tools:

- The Zotero MCP reads PDF outlines and pages, and searches by tag, citation key and content. The semantic index uses
  OpenAI embeddings.
- `_filters/harvest.py` rebuilds the cross-reference index from the sources.

## Goals / Non-Goals

**Goals:**
- One coverage record per tutorial, built from textbooks in Zotero and reviewable by the owner.
- Approved missing chapters visible on the site as placeholders, in reading order.

**Non-Goals:**
- Writing chapter content. Splitting or merging existing chapters.
- Filling the section gaps the records find. They are recorded for the chapter rewrites, such as
  `physics-tutorials-ten-examples`.
- Adding references to Zotero or the bibliography. That is `tutorials-reference-audit`.

## Decisions

**M1. Benchmarks are three to six textbooks per tutorial, taken from Zotero.**
- **Selection order:**
  - First, textbooks the tutorial already cites, from the `textbook` keyword in the bib.
  - Then items in the Textbooks collection that carry the tutorial's main tag and a subfield tag of its landing
    page, found with `zotero_search_by_tag` and `zotero_semantic_search`.
- **Preference:** a standard text that covers the whole subject at the tutorial's level, over a specialised one.
- **Kaluza-Klein:** its subject is a research area, so its benchmarks are the review articles and monographs in
  Publications that survey Kaluza-Klein and coset space dimensional reduction.
- **Record:** the coverage record gives each benchmark's citation key and the reason it was chosen.
- **Alternative rejected:** taking every textbook with a matching tag. It produces hundreds of rows, many from texts
  outside the tutorial's level, and buries the real gaps.

**M2. A table of contents is read from the PDF, at chapter level.**
- `zotero_get_pdf_outline` gives the outline. Where a PDF has none, as with scanned books, the contents pages are read
  with `zotero_read_pdf_pages`.
- Each textbook chapter is one row. A chapter that is only partly covered is split into its sections, so that the
  uncovered part is named precisely.

**M3. "Covered" means taught, not mentioned.**
- A topic is covered when a tutorial chapter has a section or unit on it, with at least one statement box. The
  headings come from the sources, the same way `harvest.py` reads them.
- A topic named only in passing, or used without being defined, is uncovered.
- Each covered row names the tutorial page and its `sec-` id, so the owner can check it.

**M4. The chapter-or-section threshold.** An uncovered topic becomes a proposed chapter when both hold:
- it is in the scope stated on the tutorial's landing page;
- it would need at least two sections of its own, or it is a whole chapter in at least two benchmarks.

Otherwise it is a section gap of the chapter whose subject contains it.

**M5. A topic goes to one tutorial.**
- Within the physics group and within the machine-learning group, a topic goes to the tutorial whose reading order
  needs it first. Mathematics needed by physics goes to Fundamentals of Mathematics for Physicists, and mathematics
  needed by machine learning goes to Fundamentals of Mathematics for Machine Learning.
- A topic proposed for two tutorials is resolved before approval, so that no chapter is duplicated.

**M6. The coverage record is a Markdown file in this change.**
- **Location:** `coverage/<tutorial>.md`.
- **Contents:**
  - the benchmarks;
  - a table with one row per benchmark chapter: topic, benchmark and chapter, status (covered with page and
    `sec-` id, section gap of a chapter, proposed chapter, out of scope), and reason;
  - the list of proposed chapters, each with its slug, title, position, dependencies and Zotero sources.
- **Archive:** the record is archived with the change, where the chapter-writing changes can read it.
- **Alternative rejected:** a Zotero note. It is harder to review as a table and to diff.

**M7. Approval is per tutorial.** The proposed chapters of one tutorial are shown to the owner as a table. The owner's
decision on each, approve or reject with a reason, is written into the record before any page is created.

**M8. A placeholder page and its listing:**

```
---
pagetitle: "<Chapter title>"
---

# <Chapter title> {#sec-<chapter-slug>}

This chapter is in preparation.

<!-- Planned: depends on <chapters>; sources <citation keys>; coverage record
     openspec/changes/archive/<date>-tutorials-missing-chapters/coverage/<tutorial>.md -->
```

- **Landing page:** the entry follows the template's chapter list, with " (in preparation)" after the link.
- **Sidebar:** the same page at the same position in the tutorial's section of `_quarto.yml`.
- **When the chapter is written:** the placeholder is replaced from `openspec/templates/chapter.qmd`, and the marker
  is removed.

## Risks / Trade-offs

- [The semantic index is still rebuilding, or misses deep pages] → Benchmarks are chosen by tag and citation key
  first, and semantic search is a supplement. Contents pages are read directly from the PDFs.
- [A benchmark's level differs from the tutorial's, which inflates the proposals] → M4 needs two benchmarks or two
  sections, and the owner approves every chapter.
- [Placeholders on the public site look unfinished] → Each says plainly that it is in preparation, and only approved
  chapters get one.
- [A new slug clashes with a label in its group] → `harvest.py` reports labels defined on two pages, and it runs
  after the placeholders are added.

## Migration Plan

- **Adding chapters:** placeholders add pages and list entries only.
- **Rollback:** delete the page folder and its two list entries, then rerun `harvest.py`.
