# Design

## Context

What the tutorials cite now:

| Tutorial | Distinct works cited | "##" sections | "###" units |
|---|---|---|---|
| Fundamentals of Mathematics for Physicists | 65 | 100 | 323 |
| Fundamentals of Theoretical Physics | 76 | 110 | 286 |
| Kaluza-Klein Theories | 50 | 61 | 83 |
| Fundamentals of Mathematics for Machine Learning | 6 | 18 | 58 |
| Fundamentals of Machine Learning | 6 | 38 | 183 |

- **Bibliography:** `references/references.bib` has 151 entries, 71 tagged `textbook`; 3 are cited nowhere.
- **Thin chapters:**
  - complex analysis cites 2 works, linear algebra 3, group theory 4;
  - Kaluza-Klein's isometries chapter cites 2 and its reduced-theory chapter 4;
  - each machine-learning chapter cites 3 to 6 works and no textbook.
- **The bib's link to Zotero:** each entry carries `zotero = {ITEMKEY}`, and `zoteropdf = {ATTACHMENTKEY}` when Zotero
  has the PDF.
- **In Zotero:** Better BibTeX citation keys equal the bib keys. Reading notes are child notes tagged
  `tutorial-reading-note`, and a standalone note "Tutorials: reference search log" records searches.
- **Citation links:** `_filters/pdf-links.lua` links every citation to the Zotero web reader. Pages print no
  bibliography.
- **Adding PDFs:** the memory of earlier work records that PDF uploads through the MCP's add tools do not arrive. A
  PDF has to go through Zotero desktop's local connector (`saveItems`, `saveAttachment`, `updateSession`).

## Goals / Non-Goals

**Goals:**
- Every "##" section of every written chapter is supported by a read and located source, recorded per tutorial.
- Every bibliography entry is complete in Zotero.
- The thin chapters and the machine-learning tutorials draw on textbooks.

**Non-Goals:**
- Rewriting content, or adding examples and exercises. Those belong to the chapter rewrites, such as
  `physics-tutorials-ten-examples`.
- Placeholder chapters from `tutorials-missing-chapters`.
- The `ml-tutorials` requirement "References in every chapter" asks for a References section at the end of each
  chapter. The site deliberately prints none, because citations link to Zotero. That conflict is left for a separate
  decision.

## Decisions

**A1. The unit of audit is the "##" section; locators are checked per citation.**
- A section passes when it cites at least one covering work with a locator.
- Every citation in the section is checked against its pages, whatever unit it sits in.
- Statements, examples and exercises adapted from a source need their own citation, as the template already
  requires. The audit flags any adapted block that has none.
- **Alternative rejected:** auditing every "###" unit, about 930 of them. It roughly triples the reading for little
  gain, since units share their section's sources.

**A2. A mechanical check runs first.**
- **Script:** `audit/check.py` in this change folder reads the bib, the chapter sources and Zotero (the local SQLite
  copy and the Better BibTeX JSON-RPC).
- **What it reports:**
  - keys cited but missing from the bib, and entries cited nowhere;
  - entries without `zotero`;
  - Better BibTeX keys that differ from the bib key;
  - items without a PDF;
  - items without a reading note;
  - arXiv identifiers that do not resolve;
  - citations without a locator;
  - sections that cite nothing;
  - chapters below eight distinct works or three textbooks (A10).
- **Output:** the first pass of each audit record. The script stays in the change folder, out of the site, and is
  archived with the change.

**A3. Citations are verified by reading.**
- For each citation, the pages it points to are read with `zotero_read_pdf_pages`, or `zotero_get_item_fulltext` for
  short papers.
- The cited material must be stated or contained there.
- The record notes the page range read and the verdict: supported, unsupported, or disagreement (A6).

**A4. Gaps are filled from the library first.** For a section without a covering source, candidates are searched in
this order:
1. textbooks already in the bib;
2. Zotero items with the tutorial's tags, through `zotero_search_by_tag`;
3. `zotero_semantic_search` on the section's topic.

The candidate is read at the relevant pages before it is cited. If nothing in the library covers the section, the
gap goes to A5.

**A5. New references follow the owner's Zotero conventions and need approval.**
- **Proposal:** a list per tutorial, giving for each reference:
  - its metadata;
  - one broad main tag plus existing subfield tags;
  - its collection (Publications, Textbooks or Repositories);
  - the PDF source.
- **Constraints:** arXiv papers and legally available PDFs only.
- **After approval:**
  1. The item is added through the local connector, with its PDF named "Author et al. - Year - Title.pdf".
  2. The citation key is pinned to the bib key with `zotero_update_item`, then checked after sync.
  3. The bib entry gets its `zotero` and `zoteropdf` fields.
  4. A reading note is created.
- **Bulk updates:** for many items, a local script may call the Zotero web API with the API key from the zotero
  MCP entry in `~/.claude.json`, without printing it, as approved on 2026-11-16.

**A6. A disagreement is reported, not fixed.**
- The record gives the location, the text's version, the source's version after converting conventions, and the
  page.
- The owner decides each one. The decision, and any edit, is recorded.
- This follows the errors found during the template conversion of the machine-learning chapters, which were
  corrected without a source check.

**A7. Reading notes are extended with every mapping.** When a chapter starts citing a work, its reading note gets the
chapter (`<tutorial>/<chapter-slug>`) and the sections, equations or problems used. A newly cited work gets a new note.

**A8. Order: weakest coverage first.**
1. Mathematics for machine learning, then machine learning: no textbooks yet.
2. Kaluza-Klein: thin chapters, and many papers to verify.
3. Mathematics for physicists.
4. Theoretical physics.

Within a tutorial, chapters are audited in sidebar order. One chapter per task, so that each task is small enough
for one session.

**A9. The audit record is a Markdown file in this change.**
- **Location:** `audit/<tutorial>.md`.
- **Contents:**
  - the mechanical findings;
  - a table per chapter with one row per "##" section: works cited with locators, verified pages, verdict, gap or
    disagreement, and resolution;
  - the proposed new references with the owner's decisions.

**A10. The per-chapter minimum is eight works, three of them textbooks.**
- **Why these numbers:** the best-covered chapters today cite 13 to 20 works, and the median written page cites 8. Eight
  works and three textbooks lift every thin chapter without forcing citations where nothing supports them.
- **Order:** the minimum is reached through A4. Library textbooks come first, then the tutorial's tagged items, then
  new references through A5.
- **Exception:** a page that is not a subject chapter, such as the Kaluza-Klein preface, is exempt. The record says so.
- **Measure:** `check.py` reports each chapter's distinct works and textbooks.

## Risks / Trade-offs

- [Reading every cited passage is long: about 5,000 citation occurrences] → The same work and locator is verified
  once and reused. Pages are read in ranges. The thin chapters come first, so the largest gains land early.
- [Scanned PDFs have no text layer] → The record marks the citation as "not machine-readable". It is verified from
  the rendered pages, or listed for the owner.
- [The semantic index is incomplete while it rebuilds] → Search by tag and citation key first (A4), and check the
  index status before relying on semantic search.
- [A web-API write takes about a minute to reach Zotero desktop] → Check citation keys after sync, before the bib is
  updated.
- [Removing unused entries could drop a reference the owner wants] → Uncited entries are cited where they support
  a section. Otherwise they are listed for the owner, not deleted.

## Migration Plan

- **What changes:** citations and bib entries are added in place. Nothing is renamed.
- **Rollback:** revert the chapter and bib commits. Zotero additions stay, and are harmless if uncited.
