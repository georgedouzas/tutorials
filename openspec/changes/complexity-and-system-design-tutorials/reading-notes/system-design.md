# Reading notes: System Design

Reading notes for the System Design tutorial (change `complexity-and-system-design-tutorials`), kept here until the owner
approves writing them to Zotero as `tutorial-reading-note` child notes (design C7, bibliography spec). One section per
chapter, then one entry per source: the Zotero item and attachment, the citation key used in `references/references.bib`,
how the pages were read, the parts used and where, and the problems adapted. Page numbers are the printed ones where the
book prints them; Xu, Liu and Sinha-Chopra are cited by chapter and section heading, because their PDFs have no printed page
numbers (Xu, Sinha-Chopra) or none that match the outline (Liu).

## Chapter 1: estimation-and-the-design-process (pilot, task 5.2, 2026-11-27)

Read with `pdftotext -layout` from `~/Zotero/storage` (read-only) and, for Liu, `zotero_get_pdf_outline` plus page ranges of
`pdftotext -f/-l`. Sections of the chapter: §1 `sec-design-process`, §2 `sec-architectural-characteristics`,
§3 `sec-units-and-latency`, §4 `sec-estimating-load`, §5 `sec-availability-arithmetic`, §6 `sec-estimating-cost` (the
section gap of the coverage record).

### Xu, *System Design Interview: An Insider's Guide*, vol. 1 (2021)

- Zotero `UBAGKN6G`, PDF `83EF6YHR`; key `SystemDesignInterview2021` (kept from the references proposal); tagged
  `textbook` in the bib. Bib entry added for this chapter.
- No printed page numbers in the PDF text; cited by chapter and step.
- Read: Ch. 2 in full (back-of-the-envelope estimation: Dean's definition, power of two, latency numbers and Xu's five
  conclusions, availability numbers and SLAs, the Twitter estimate, tips); Ch. 3 in full (the 4-step framework, the news-feed
  example, dos and don'ts, time allocation); Ch. 8 Step 1 (URL shortener use cases and estimate); Ch. 14 Step 1 (video
  service assumptions and CDN cost) and the "Cost-saving optimization" deep dive.
- Tables 2-1 to 2-3 are images in the PDF and were not read as text; the chapter cites Xu for the existence of the
  power-of-two table and the latency lessons, and takes the numbers from Liu App. 3 and Tan Table 3.1.
- Used: chapter intro; §1 intro, `exm-req-url-shortener`, `exm-req-xu-twitter`, `exm-process-xu-four-steps`,
  `exm-process-news-feed-flows`, `exm-process-iteration`, `exr-req-growth`, `exr-process-url-shortener-diagram`,
  `exr-process-next-scale`; §3 intro and `exm-budget-compress`; §4 intro, `exm-load-xu-twitter`, `exr-load-xu-url`,
  `exr-load-tweet-text`, `exr-load-video`, the prose of `prp-estimate-error`, `exm-error-xu-rounding`,
  `exm-error-twitter-worst`; §5 intro and `exm-avail-sla`; §6 intro, `exm-cost-xu-cdn`, `exm-cost-popular`,
  `exr-cost-xu-year`.
- Problems adapted: the Twitter estimate (Ch. 2) is recomputed in `exm-load-xu-twitter` and its error analysed in
  `exm-error-twitter-worst`/`-typical`; the URL-shortener storage figure (Ch. 8: `365 billion * 100 bytes * 10 years = 365 TB`)
  counts the ten years twice, which `exr-load-xu-url` asks the reader to find (correct value 36.5 TB); the video
  estimate (Ch. 14) underlies `exr-load-video` and `exr-cost-xu-year`.

### Tan, *Acing the System Design Interview* (Manning, 2024)

- Zotero `4KTQIAK5`, PDF `W2EGK9VB`; key `tanAcingSystemDesign2024`; tagged `textbook`. Bib entry added.
- Printed page numbers (from the running heads of the text) cited.
- Read: Ch. 1 intro and Sec. 1.1 (pp. 3-4); Ch. 2 intro and Secs. 2.1-2.3 (pp. 25-29); Ch. 3 intro and Secs. 3.1-3.4 and
  3.7-3.8 (pp. 54-66, 71-73); App. C (C4 model, pp. 413-417).
- Used: §1 intro (Sec. 2.1 "Every functional and non-functional requirement must have a number"), `exm-req-availability-target`,
  `exm-req-accuracy` (Ch. 3 list), `exr-req-derive-rate` (Sec. 2.1, 1 billion users x 10 searches), `exr-req-api-coverage`
  and `exm-process-api` (Sec. 2.2, 2.2.1), `exm-process-context` (App. C, Fig. C.1), the C4 levels in `def-design-process`;
  §2 intro, `exm-char-vertical-horizontal` (Sec. 3.1), `exm-char-availability-consistency` (Sec. 3.2), `exm-char-cost`
  (Sec. 3.8, three trade-offs); §5 intro, `def-availability` prose, `exm-avail-nines` (Table 3.1), `exm-avail-mttf`
  (MTTR, MTBF), `exm-avail-maintenance` (Sec. 3.1), `exm-avail-durability` (Sec. 3.3), `exr-req-dependency-cap`
  (Sec. 3.2, acknowledgement instead of immediate response); §6 intro and `exm-cost-people` (Sec. 3.8).
- Not used: Tan's statement that "throughput/bandwidth is the inverse of latency" (Ch. 3 intro), which is not true in
  general (Little's law relates them through concurrency) and is left to the queueing chapter.

### Sinha and Chopra, *System Design Guide for Software Professionals* (Packt, 2024)

- Zotero `MQVW6QAV`, PDF `Q92CFYUW`; key `sinhaSystemDesignGuide2024`; tagged `textbook`. Bib entry added.
- No printed page numbers in the PDF text; cited by chapter and section heading.
- Read: Ch. 1 "What is system design?", "Understanding system design" (the six-step process), "What are the types of system
  design?"; Ch. 2 intro, "Availability" (techniques: redundancy, replication, load balancing, fault detection, failover).
- Used: chapter intro and §1 intro (Ch. 1), §3 "For more" (Ch. 2, "Latency"), §5 intro (Ch. 2, "Availability").
- The book gives no series/parallel formula; the proposition `prp-series-parallel-availability` is proved from elementary
  probability, as the coverage record planned.

### Liu, *System Design Interview Fundamentals* (2020)

- Zotero `BS5WB6W7`, PDF `SFGN2MZS`; key `liuSystemDesignInterview2020`; tagged `textbook`. Bib entry added.
- Cited by chapter and section heading (the outline's page numbers are PDF pages).
- Read: Ch. 2 (PDF pp. 27-42: framework flow and the warning on doing the math after API and schema, Step 1 functional
  requirements, scale, performance constraints including availability/consistency, accuracy, response time, freshness);
  Ch. 5 "Back-of-the-Envelope Math" (PDF pp. 115-122: purpose, QPS and storage formulas, scientific-notation technique,
  common mistakes); Apps. 1-4 (PDF pp. 426-434: conversions, capacity numbers, latency numbers, product numbers).
- Used: §1 intro, `exm-req-latency-quantile` (500 ms p99), `exm-req-durability`, `exm-req-workload-assumptions` (2 MB
  photo), `exm-req-staleness`, `exm-req-accuracy`, `exm-req-infeasible` (150 ms California-Netherlands),
  `exm-process-liu-order`, `exm-process-data-model`, `exm-process-flow`, `exm-process-iteration` (App. 2 capacities),
  `exr-process-row-sizes` (App. 3 field sizes), `exr-process-idempotent` (Ch. 5 API design), `exr-process-revisit` (90 MB
  per minute of 1080p video); §3 intro and the latency table (App. 3), unit conventions (App. 1),
  `exm-budget-read-one-mb`, `exm-budget-ocean`; §4 intro, `def-load-estimate` (formulas), `exm-load-liu-photos`,
  `exm-load-photoshare-bandwidth` (bits vs bytes warning), `exm-load-cache-size`, `exm-load-measure-capacity`,
  `exr-load-shards`, `exr-load-peak-factor`, `exr-load-sqlite-row-size`, `exr-load-chat`, `exm-error-seconds`,
  `exm-error-liu-rounding`, `exr-error-seconds`.
- Problems adapted: Liu's photo-volume worked example (Ch. 5) is `exm-load-liu-photos`. Liu prints the seconds of a day as
  "84,600 (24 x 60 x 60)"; `exr-error-seconds` asks for the correct 86,400 and the error of the 10^5 shortcut.

### Gandhi, Richards and Ford, *Head First Software Architecture* (O'Reilly, 2024)

- Zotero `G62XG6CY`, PDF `8THDR9MF`; key `gandhiHeadFirstSoftware2024`; tagged `textbook`. Bib entry added (publisher from
  the copyright page).
- Printed pages cited. Read: Ch. 2 pp. 44-48 (definition of architectural characteristics in three parts, nondomain,
  structural influence, limiting them) and p. 70 (limit to seven, pick the top three); Ch. 3 pp. 90-97 (first law,
  second law, ADRs and their seven sections).
- The first law ("Everything in software architecture is a trade-off") is printed as an image on p. 90; only the
  surrounding text ("it depends!") is quoted.
- Used: §2 intro, `def-architectural-characteristic`, `exm-char-performance`, `exm-char-security`, `exm-char-bank-auction`,
  `exm-char-queue-topic`, `exm-char-limit`, `exm-char-adr`, `exr-char-pairs`, `exr-char-write-adr`.

### Reis and Housley, *Fundamentals of Data Engineering* (O'Reilly, 2022)

- Zotero `P6ECV3FJ`, PDF `3NKKMHYC`; key `reisFundamentalsDataEngineering2022`; tagged `textbook`. Bib entry added.
- Printed pages cited. Read: Ch. 3 "Principle 9: Embrace FinOps" (pp. 85-86); Ch. 4 "Cost Optimization and Business
  Value": TCO, capex and opex, TOCO, FinOps (pp. 118-120).
- Used: §6 intro, `def-total-cost-of-ownership`, `exm-cost-capex-opex` ("opex-first approach"), `exm-cost-opportunity`,
  `exm-cost-attack` (cost attacks, requester-pays, monitoring spending).

### Dean and Barroso, "The Tail at Scale" (CACM 2013)

- Zotero `LKLVUIML`, PDF `48WKQDCF`; key `dean2013tail` (existing bib entry). Journal pages 74-80 cited.
- Read pp. 74-77: why variability exists, component-level variability amplified by scale (the 1-in-100 / 100 servers and
  1-in-10,000 / 2,000 servers cases, the figure), Table 1 (root vs leaf percentiles), reducing component variability,
  synchronised background activity, hedged requests (the BigTable benchmark, 1,800 ms to 74 ms with 2% more requests).
- Used: §3 (100 ms responsiveness, shared resources and daemons as sources of dependence), `prp-fan-out-tail` and its
  commentary, `exm-fanout-hundred`, `exm-fanout-two-thousand`, `exm-fanout-figure` (redraws the paper's figure),
  `exm-fanout-partial` (Table 1), `exm-fanout-hedged`, `exm-fanout-simulation`, `exr-fanout-hedge`, `exr-fanout-tree`,
  `exr-fanout-dependent`, `exr-fanout-synchronised`.
- Note: the coverage record places fan-out amplification in performance-and-queueing §1. The pilot states and proves it in
  §5, as the series rule applied to latency; the queueing chapter should recall it rather than restate it.

### Saltzer, Reed and Clark, "End-to-End Arguments in System Design" (TOCS 1984)

- Zotero `RW4NCIZ2`, PDF `GUK8X3PH` (the authors' reprint, without journal page numbers); key `saltzer1984end` (existing).
  Cited by section heading.
- Read: introduction, "End-to-end caretaking" (careful file transfer), "A too-real example", "Performance aspects".
- Used: `exm-char-end-to-end`, `exr-char-end-to-end-retries` (one message in a hundred dropped; success probability
  decreasing exponentially with file length), `exr-char-hop-retries`.

### Probability (cross-tutorial)

- Fundamentals of Mathematics for Physicists, Probability: `prp-probability-rules` (union bound), `def-independence`
  (complements of independent events), `def-binomial-distribution`, `def-variance`, `thm-strong-law-large-numbers`, linked
  from §3, §4 and §5.

### Figures and software

- D2: `figures/three_tier.d2` (container diagram), `figures/request_path.d2` (request path with budgets),
  `figures/url_shortener.d2` (solution of `exr-process-url-shortener-diagram`, source shown in the tab). Python:
  `figures/availability_replicas.py`, `figures/fan_out_tail.py`.
- Run blocks: plain Python, NumPy, `sqlite3` (`exr-process-sqlite-feed`, `exr-load-sqlite-row-size`) and SimPy
  (`exm-fanout-simulation`, `exr-fanout-synchronised`). One illustrative block (`exm-load-measure-capacity`, a load test).
- Prices in §6 are round assumptions stated as such in the text, apart from Xu's $0.02 per GB for the CDN.
