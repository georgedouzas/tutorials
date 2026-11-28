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

## Chapter 2: the-web-stack (task 6.2, 2026-11-27)

Books read with `pdftotext -layout` from `~/Zotero/storage` (read-only); Liu by PDF page ranges with `pdftotext -f/-l`
after `zotero_get_pdf_outline` on `BS5WB6W7`. Tan's printed pages were taken from the running heads. Xu, Sinha-Chopra,
Pacheco-Sgro and Gilbert have no printed page numbers in their PDF text and are cited by chapter and section heading.
Standards were downloaded as text from rfc-editor.org (and the OpenID and WHATWG pages as HTML) into the session
scratchpad and read there. Sections: §1 `sec-request-path`, §2 `sec-load-balancing`, §3 `sec-cdn`,
§4 `sec-stateless-scaling`, §5 `sec-apis`, §6 `sec-real-time`, §7 `sec-auth` (the recorded section gap).

### Xu, vol. 1 (`SystemDesignInterview2021`)

- Read: Ch. 1 in full (single server and request flow, database, vertical vs horizontal, load balancer, replication,
  cache, CDN and its considerations, stateful and stateless tiers, data centres and GeoDNS, message queue, scaling the
  data tier); Ch. 12 Step 1-2 (polling, long polling, WebSocket, stateless and stateful services, scalability with the
  10 kB-per-connection figure) and "User disconnection" (heartbeat every 5 s, x = 30 s).
- Used: §1 intro, `exm-net-xu-request-flow`; §2 intro, `exm-lb-xu-pool`; §3 intro, `def-cdn` prose, `exm-cdn-xu-workflow`,
  `exm-cdn-versioning`, `exm-ttl-unpopular`, `exm-ttl-xu-trade-off`; §4 intro, `exm-scale-xu-stateful`,
  `exm-scale-xu-stateless`, `exm-scale-vertical-limits`, `exm-scale-vertical-advantages` (Stack Overflow),
  `exm-scale-autoscaling`, `exm-scale-chat-stateful`; §6 intro, `exm-rt-xu-receiver`, `exm-rt-xu-heartbeat`,
  `exm-rt-connection-memory`, `exm-poll-long-count`, `exm-poll-heartbeats`, `exr-rt-memory`.

### Tan (`tanAcingSystemDesign2024`)

- Read: Secs. 1.4-1.4.5 (pp. 6-13), 3.1-3.1.2 (pp. 56-59), 6.1.2 (p. 124), 6.7-6.7.6 (pp. 137-143), 12.7.1 (pp. 282-283),
  Ch. 13 Secs. 13.1-13.4, 13.6 start, 13.7 (pp. 287-297, 306), App. B (pp. 403-412).
- Used: §1 `exm-net-geodns`, `exm-net-osi` (Table 6.2); §2 intro, `exm-lb-l4-l7`, `exm-lb-tls-termination`,
  `exm-lb-nginx`; §3 intro, `exm-cdn-tan-static`, `exm-cdn-tan-webp`, `exm-cdn-signed-url`, `exm-cdn-versioning`; §4 intro,
  `exm-scale-vertical-limits`, `exm-scale-sticky-cookies`, `exm-scale-replication-ring`, `exm-scale-idempotent-not-stateless`;
  §5 `exm-api-retry-rule` (request deduplication), `exm-api-graphql`, `exm-api-versioning`, `exr-api-encoding-size`,
  `exr-api-over-fetching`, `exr-api-offset-shift`, the subsection intro and `exm-page-tan-thumbnails`,
  `exm-page-previous-last`, `exm-page-version`; §6 `exr-rt-tan-p2p`; §7 intro, section prose, `exm-auth-two-questions`,
  `exm-auth-simple-login`, `exm-auth-timeouts`, `exm-auth-tan-memory`, `exr-auth-password-hash`, the OAuth subsection
  intro, `exm-oauth-tan-roles`, `exm-oauth-token-request`, `exm-oauth-channels`, `exm-oauth-implicit`, `exm-oauth-oidc`,
  `exr-oauth-tan-state`, `exr-oauth-nonce`, `exr-oauth-scopes`.
- Problems found in the book and used as exercises: HTTP "creates a new connection for every request" (p. 142; RFC 9112
  Sec. 9.3 says the opposite) in `exr-net-persistent`; "WebSocket allows p2p communication, so no backend is required"
  (p. 142) in `exr-rt-tan-p2p`; idempotent called the reason for horizontal scalability (p. 10) in
  `exm-scale-idempotent-not-stateless`; `Max-Age: 86400` cookie syntax (p. 404) in `exm-auth-simple-login` and
  `exr-auth-cookie-attributes`; the state said to return with the access token (p. 409; RFC 6749 Secs. 4.1.2 and 5.1) in
  `exr-oauth-tan-state`; the nonce called "server-provided" (p. 408; OIDC Core Sec. 2) in `exr-oauth-nonce`; the implicit
  flow recommended for SPAs (Table B.2, p. 412; withdrawn by RFC 9700 Sec. 2.1.2) in `exm-oauth-implicit`. Tan's
  "left as a simple exercise to the reader" (p. 283) is proved as `prp-api-keyset-pagination`.

### Sinha and Chopra (`sinhaSystemDesignGuide2024`)

- Read: Ch. 2 "Scalability" (vertical and horizontal); Ch. 4 in full (DNS: name servers, records, hierarchy, iterative
  and recursive queries, caching, scalability, reliability, consistency; load balancers: placement, advantages, global and
  local, DNS and GSLB, algorithms, static and dynamic, stateful and stateless, OSI layers, deployment tiers,
  implementations; application gateways); Ch. 8 "REST APIs" to "Rate limiting".
- Used: §1 `exm-net-dns-hierarchy`, `exm-net-dns-ttl`, `exr-net-layers`, `exr-net-dns-failover`, `exr-net-recursive-load`;
  §2 intro and definition, `exm-lb-placement`, `exm-lb-l4-l7`, `exm-lb-least-connections`, `exm-lb-gslb`, `exm-lb-tiers`,
  `exr-lb-dns-round-robin`; §4 `exm-scale-vertical-advantages`; §5 section intro, `exm-api-rest-grpc`; §7 intro,
  `exm-auth-rbac`, `exm-auth-api-keys`.
- Problem found: the box "Can you guess which mechanism is preferred to reduce the load on the DNS infrastructure? ... it
  is not recursive" (Ch. 4, "DNS querying") credits the query direction with what the shared resolver cache does; used in
  `exr-net-recursive-load`.

### Liu (`liuSystemDesignInterview2020`)

- Read (PDF pages): Ch. 2 Step 2 (pp. 42-48); Ch. 5 "API Design" (pp. 123-124), "Real-Time Data Update" (pp. 148-157),
  "Security" (pp. 247-249), "Networking", "API Gateway", "Content Delivery Network" (pp. 275-285), "Service Discovery and
  Request Routing" (pp. 292-293); App. 6 (p. 439); Apps. 2-3 as in chapter 1.
- Used: §1 intro, `exm-net-dns-ttl`, `exm-net-anycast`, `exm-net-osi`, `exr-net-default-port`, `exm-rtt-same-dc`,
  `exm-rtt-atlantic`; §2 "For more"; §3 `exm-cdn-liu-considerations`, `exm-cdn-photoshare`; §5 intro, `exm-api-liu-quantity`,
  `exm-api-identifiers`, `exm-page-liu`; §6 intro, `exm-rt-liu-uses`, `exm-rt-short-polling`, `exm-rt-liu-ws-balancer`,
  `exr-rt-choose`, `exr-rt-liu-sse`, `exr-rt-routing-table`, `exm-poll-liu-cost`; §7 intro, `exm-auth-liu-transfer`,
  `exm-auth-encryption-in-transit`, `exr-auth-transfer-fix`.
- Problems found: "HTTP's ... default port is 8080" (p. 275; RFC 9110 Sec. 4.2.1 gives 80) in `exr-net-default-port`; SSE
  described as a connection the client "doesn't keep ... open" (p. 150) in `exr-rt-liu-sse`. Liu's TLS sketch (encrypt with
  the server's public key) describes RSA key transport, which TLS 1.3 removed; it is not used.

### Pacheco and Sgro (`pachecoPrinciplesSoftwareArchitecture2024`)

- Zotero `VTG294QD`, PDF `8NWGUMWE`; key from the Zotero record (BBT). Bib entry added (tagged `textbook`, as the coverage
  record treats it as a section source).
- Read: Ch. 6 "Contract first", "Coding contracts with OpenAPI", "Backward compatibility" (Codes 6.1-6.3, the versioning
  strategies).
- Used: §5 intro, `exm-api-breaking`, `exm-api-versioning`, `exr-api-compatibility-check`, `exr-api-pacheco-label`.
- Problem found: the text introduces the addition of `getUserByEmail` as "a breaking change" while Code 6.2 and the
  following text call it non-breaking; `exr-api-pacheco-label`.

### Gilbert (`gilbertSoftwareArchitecturePatterns2024`)

- Zotero `GRGM4CJ3`, PDF `3ALMIXPC`. Bib entry added with `edition = {2}` from the copyright page ("Second edition:
  February 2024"); the Zotero record says edition 1 and was not changed (no writes to Zotero).
- Read: Ch. 5 "Deterministic identifiers"; Ch. 6 "Focusing on user activities" and "Choosing between REST and GraphQL";
  Ch. 10 "Encryption in transit", "Federated identity", "Securing the frontend", "OpenID Connect", "Passing the JWT to BFF
  services", "JWT authorizer".
- Used: §5 `exm-api-gilbert-choice`, `exm-api-identifiers`; §7 `exm-auth-gilbert-authorizer`,
  `exm-auth-encryption-in-transit`, `exm-oauth-oidc`, `exr-oauth-id-token-as-bearer`.

### Reis and Housley (`reisFundamentalsDataEngineering2022`)

- Read: App. B "Regions", "Direct Network Connections to the Clouds", "CDNs" (pp. 400-402).
- Used: §3 `exm-cdn-cost` (9 and 2 cents per GB, p. 402).

### Mitzenmacher, Richa and Sitaraman, "The Power of Two Random Choices" (2001), new

- Not in Zotero. Downloaded from the first author's page (`handbook2001.pdf`, the authors' preprint of the Handbook of
  Randomized Computing chapter); key `mitzenmacher2001power`, bib entry added without Zotero fields. Read Sec. 1 (pp. 1-5 of
  the preprint: the balls-and-bins results, Azar-Broder-Karlin-Upfal, applications, load balancing with limited information).
  The TPDS paper (Mitzenmacher 2001, the supermarket model) was opened but only its abstract and introduction read, and it
  is not cited.
- Used: §2 intro, the quoted theorem after `prp-lb-random-assignment` (stated as quoted, not proved), `exm-lbr-two-choices`,
  `exm-lbr-stale`, `exr-lbr-max-simulation`, `exr-lbr-two-choices`.
- Owner action: the item should be added to Zotero (with its PDF) if it is to stay; it was not written there.

### Standards (all new, not in Zotero; bib entries added)

- RFC 1035 Secs. 2.3.4, 3.2.1 (UDP limit, TTL); RFC 9293 Sec. 3.5 (three-way handshake, data on SYN buffered until
  ESTABLISHED); RFC 8446 Secs. 1.2, 2, 2.1, 2.3 (TLS 1.3 handshake, HelloRetryRequest, 0-RTT); RFC 5246 Sec. 7.3 Figure 1
  (TLS 1.2 handshake); RFC 9110 Secs. 4.2.1-4.2.2, 9.2.1-9.2.3, 9.3.3 (ports, safe and idempotent methods, retries, POST);
  RFC 9111 Secs. 4.2, 4.3, 5.2.2.1, 5.2.2.5, 5.2.2.7, 5.2.2.10 (freshness, validation, max-age, no-store, private,
  s-maxage); RFC 9112 Secs. 2.1, 2.2, 9.3 (message format, persistence); RFC 6202 Secs. 1-2.2 (short and long polling,
  "three network transits"); RFC 6455 Secs. 1.1-1.3, 5.2, 5.5.2-5.5.3 (handshake and accept key example, framing, Ping and
  Pong); WHATWG HTML Sec. 9.2 (server-sent events: introduction, `Last-Event-ID`, stream format, authoring notes); RFC 6265
  Secs. 4.1.1, 4.1.2.2, 4.1.2.5-4.1.2.6, 6.1 (cookie syntax and attributes, limits); RFC 6749 Secs. 1.1, 1.3.1, 1.4, 1.5,
  4.1-4.1.3, 4.4, 5.1, 10.12; RFC 6750 Sec. 1.2; RFC 7515 App. A.1 (the HMAC key); RFC 7519 Secs. 3.1, 4.1.4 (example JWT,
  exp); RFC 7636 Secs. 1, 4.1-4.6, App. B (PKCE and its test vector); RFC 9700 Secs. 2.1.1-2.1.2; OpenID Connect Core 1.0
  (errata set 2) Secs. 2 and 3.1.3.7.
- The test vectors are recomputed in the chapter: the WebSocket accept value (`exr-rt-accept-key`), the RFC 7519 JWT
  signature with the RFC 7515 key (`exr-auth-verify-jwt`) and the RFC 7636 S256 challenge (`exr-oauth-pkce-vector`).

### Cross-tutorial and earlier chapter

- Probability: `def-binomial-distribution` (Bernoulli, binomial, geometric, Poisson, no memory), `prp-probability-rules`
  (union bound), `thm-strong-law-large-numbers`, `thm-poisson-limit`.
- Chapter 1: `exm-req-photoshare`, `exm-req-workload-assumptions`, `exm-load-servers`, `exm-load-photoshare-bandwidth`,
  `exm-budget-ocean`, `fig-request-path`, `prp-latency-budget`, `prp-series-parallel-availability`, `def-load-estimate`,
  `exm-cost-xu-cdn`, `exm-process-api`, `exr-process-idempotent`, `exr-process-cache-hit-ratio`, `exr-req-light-bound`,
  `exm-req-staleness`, `exr-load-chat`.

### Figures and software

- D2: `figures/request_sequence.d2` (sequence of a new request), `figures/lb_topology.d2` (global and local balancers),
  `figures/oauth_code_flow.d2` (authorisation-code grant with PKCE), `figures/client_credentials.d2` (solution of
  `exr-oauth-client-credentials`, source shown in the tab). Python: `figures/lb_algorithms.py` (rules compared, static and
  dynamic), `figures/ttl_hit_ratio.py` (hit ratio against lambda*Delta with simulations). Rasterised with `qlmanage`
  (WebKit), which honours D2's label masks; `rsvg-convert` does not and shows lines through edge labels.
- Run blocks: standard library (`http.client`, `sqlite3`, `hashlib`, `hmac`, `base64`, `urllib`, `http.cookies`), NumPy and
  SimPy (`exm-rtt-simulation`, `exr-rtt-simulate-tls12`, `exm-poll-simulation`). Illustrative: the curl session
  (`exm-net-curl-session`) and the nginx configuration (`exm-lb-nginx`), both `{.code .illustrative}`.

## Chapter 3: performance-and-queueing (task 6.2, 2026-11-28)

Zukerman read with `pdftotext -layout` from `~/Zotero/storage/4BU53CJJ` (read-only), after `zotero_get_pdf_outline` on
`7EYVLVB5`; printed page numbers from the running heads. Sections: §1 `sec-latency-throughput`, §2 `sec-littles-law`,
§3 `sec-mm1`, §4 `sec-mmc`, §5 `sec-open-closed`. No new references were needed.

### Zukerman, *Introduction to Queueing Theory and Stochastic Teletraffic Models* (`zukerman2013introduction`)

- Read: Sec. 2.2 (orderly and memoryless point processes, Bernoulli and Poisson processes, pp. 74-80: three-condition definition,
  exponential inter-arrival times, memorylessness, inspection paradox and Homework 2.3, superposition, competition of
  exponentials, small-interval conditions); Secs. 3.1-3.8 (Kendall notation, utilisation, Little's formula and its two forms and
  graphical proof, delay and loss systems, work conservation, PASTA and Homeworks 3.3-3.5, pp. 106-116); Sec. 4.1 (confidence
  intervals, p. 118); Ch. 6 intro and Secs. 6.1-6.6, 6.9, 6.11-6.12 (M/M/1: generator, balance equations, measures, delayed
  customers, delay distribution, dimensioning, multiplexing, pp. 130-146); Ch. 9 (M/M/k: steady state, Erlang C and its table,
  mean queue and delay, delayed customers, dimensioning, utilisation, Homeworks 9.9-9.10, pp. 178-184).
- Used: chapter intro; §1 `def-response-time` item 3, `exm-lat-utilisation`, `exm-qest-zukerman-means`; §2 intro,
  `thm-littles-law` (the chapter proves the sample-path version; Zukerman's argument assumes the system empties, which
  `exr-little-window-error` makes exact), `exm-little-park`, `exm-little-utilisation`, `exm-little-always-full`,
  `exm-little-queue-form`, `exr-little-blocking`; §3 intro, `def-poisson-process` (inter-arrival definition; independent increments
  and superposition quoted), `exm-pois-competition`, `exm-pois-inspection`, `thm-mm1` (birth-death property, ergodicity and PASTA
  quoted, everything else proved), `exm-mm1-dimension-mean`, `exm-mm1-dimension-percentile`, `exm-mm1-multiplexing`,
  `exm-mm1-delayed`, `exr-mm1-balance`, `exr-mm1-dimension`; §4 intro, `thm-erlang-c` (same quoted facts), `exm-mmc-two-servers`,
  `exm-mmc-zukerman-table`, `exm-mmc-dimension`, `exm-mmc-square-root`, `exm-mmc-hospital`, `exm-mmc-utilisation`,
  `exr-mmc-table`, `exr-mmc-two-proof`, `exr-mmc-hospital-rule`; §5 `exm-oc-zukerman-closed`, `exm-opb-zukerman`.
- Not used: the Z-transform derivations, M/G/1 and the Pollaczek-Khinchine formula (not read in detail; `exr-mm1-constant-service`
  only simulates constant service), Engset, Jackson networks.
- The operational bounds of `prp-operational-bounds` (utilisation law, response time law, asymptotic bounds, knee) are not in
  Zukerman; they are proved in the chapter from Little's law and the definitions, with Zukerman's Homework 3.3 as an instance.

### Dean and Barroso, "The Tail at Scale" (`dean2013tail`)

- Re-read pp. 74-78 (text without layout): sources of variability including "Queueing" (p. 76), keeping low-level queues short
  (p. 76), hedged requests (p. 77), probing queues and the remark on two choices (p. 77), tied requests (p. 78).
- Used: §1 intro, `exm-lat-dean-sources`, `exm-lat-fan-out` (recalls `prp-fan-out-tail` of chapter 1 by link), `exm-pois-not-poisson`.

### Dean and Ghemawat, "MapReduce" (`dean2004mapreduce`)

- Read Sec. 3.6 (backup tasks, the 44% slowdown without them). Used: `exm-lat-stragglers`, `exr-lat-backup`.

### Benchmarks and section sources

- Tan: Ch. 3 intro (p. 55, bandwidth vs throughput, "Throughput/bandwidth is the inverse of latency") and Sec. 3.4 (pp. 65-66).
  Used: §1 intro, `exm-lat-tan`, `exm-lat-tan-bandwidth`, `exm-qest-p999`, `exm-little-tan-inverse`, `exr-little-tan`. The inverse
  claim, set aside in the chapter-1 notes, is corrected by Little's law ($X = L/W$).
- Sinha-Chopra: Ch. 2 "Latency". Used: `exm-lat-sinha-factors`.
- Pacheco-Sgro: Ch. 7 "Practical stress testing" (stress vs load testing, Gatling, Code 7.4). Used: §5 intro,
  `exm-oc-stress-findings`, `exm-oc-gatling`, `exr-oc-stress-plan`.
- Gilbert: Ch. 12 "The USE method", "Capacity and concurrency limits" (60% alert), "The RED method". Used: `exm-lat-red`,
  `exm-oc-use`, §4 "For more".

### Cross-tutorial

- Probability: `def-binomial-distribution` (binomial, geometric, Poisson), `prp-probability-rules`,
  `thm-strong-law-large-numbers`, `thm-poisson-limit`. Complexity Science random-processes: `def-master-equation`,
  `prp-birth-death` (stationary law of birth-death processes, used for M/M/1 and M/M/c).

### Figures and software

- D2: `figures/closed_network.d2` (closed queueing network). Python: `figures/mm1_response.py` (mean and p99 against
  utilisation, with simulations), `figures/mmc_erlang_c.py` (Erlang C against servers), `figures/closed_bounds.py` (simulated
  closed system with the operational bounds).
- Run blocks: NumPy, the standard library and SimPy (`exm-mm1-simulation`, `exm-mmc-simulation`); all seeded. Illustrative: the
  open and closed load generators of `exm-oc-load-script`.

## Chapter 4: storage-and-databases (task 6.2, 2026-11-28)

Outline (approved row 4 of `openspec/coverage/system-design.md`): §1 data models; §2 schema design and normalisation; §3 indexes, B-trees,
LSM trees, SSTables and Bloom filters; §4 single-node transactions and isolation; §5 file, block and object storage, with GFS; §6
full-text search and inverted indexes (the gap section). Statements: `def-data-model`, `def-normal-forms`, `prp-lossless-decomposition`,
`def-storage-engine`, `prp-btree-height`, `prp-bloom-false-positive`, `def-transaction-isolation`, `prp-serializability`,
`def-storage-kinds`, `def-inverted-index`.

### Chang et al., "Bigtable" (`chang2006bigtable`)

- Read Secs. 2 (data model, Webtable, single-row atomicity, column families, timestamps), 4 (SSTable: "persistent, ordered immutable
  map", 64 KB blocks, block index, one disk seek; pp. 3-4), 5.3 (commit log with redo records, memtable, merged view; p. 6), 5.4 (minor,
  merging and major compactions, deletion entries; p. 6), 6 (Bloom filters per locality group; p. 6).
- Used: `def-data-model` item 4, `exm-dm-webtable`, `exm-se-bigtable-sstable`, `exm-se-xu-paths`, `exm-se-bigtable-bloom`,
  `exr-se-compaction`, `exr-dm-acid-claim`.

### Ghemawat, Gobioff and Leung, "The Google File System" (`ghemawat2003google`)

- Read Secs. 1, 2.1-2.7 (architecture, single master, 64 MB chunks and lazy allocation, hot spots, under 64 bytes of metadata per
  chunk, operation log, consistency model and Table 1, implications for applications), 3.1-3.3 (leases of 60 s, the seven write steps,
  pipelined data flow with B/T + RL, record append at least once) and 4.2 (replica placement across racks).
- Used: §5 intro, `def-storage-kinds` item 4, `fig-st-gfs`, `exm-st-gfs-metadata`, `exm-st-gfs-consistency`, `exr-st-master-memory`,
  `exr-st-chunk-size`, `exr-st-small-file-space`, `exr-st-pipeline`, `exr-st-record-append`, `exr-st-replica-loss`, `exr-st-regions`,
  `exr-storage-and-databases-int-3`.

### Broder and Mitzenmacher, "Network Applications of Bloom Filters" (`broder2004network`)

- Read Sec. 2.1 (journal pp. 486-490): the model of perfectly random hashes, $p'$ and $p$, the conditional rate $(1-\rho)^k$, the
  partitioned variant, the derivative and the symmetry argument for $k = (m/n)\ln 2$, $0.6185^{m/n}$, and the Azuma-Hoeffding tail
  bound $2e^{-2\varepsilon^2m^2/(nk)}$ cited from Mitzenmacher.
- Used: `def-storage-engine` item 4, `prp-bloom-false-positive` (parts (a)-(c) proved in the chapter, with the convexity argument for
  the maximum of $\ln p\ln(1-p)$ that the survey leaves to "symmetry"; part (d) quoted), `exm-bf-*`, `exr-bf-derivative`,
  `exr-bf-partitioned`, `exr-bf-too-many-k`, `exr-bf-p-close`. Bloom (1970) is metadata only and is not cited.

### SQLite documentation (new references, not in Zotero)

- `sqliteQueryPlanner` (queryplanner.html, Secs. 1.1-1.7): full scans, rowid lookup, index lookup with two binary searches, $(K+1)\log N$,
  covering indexes. `sqliteEQP` (eqp.html, Secs. 1.1-1.2): SCAN and SEARCH, USE TEMP B-TREE. `sqliteDbstat` (dbstat.html, Secs. 1-2):
  the page paths of a b-tree. `sqliteIsolation` (isolation.html): connections isolated, serializable by serialising writes, rollback and
  WAL modes, snapshot isolation in WAL, SQLITE_BUSY_SNAPSHOT, BEGIN IMMEDIATE, shared cache with read_uncommitted as the only dirty read.
  `sqliteTransaction` (lang_transaction.html, Sec. 2.2): deferred, immediate and exclusive transactions. `sqliteFTS5` (fts5.html, Secs. 1,
  3, 4.3.3, 5.1.1 with its three formula images, 6.1 and 6.5): query syntax, phrases, NEAR, porter tokenizer, bm25 with $k_1 = 1.2$, $b =
  0.75$, the merged b-trees of the index and tombstones.
- Observed, not documented: FTS5's bm25 uses natural logarithms, and returns about $-10^{-6}$ per phrase when the formula's IDF is
  $\leq 0$ (term in at least half the rows); `exr-ii-bm25` shows it.
- Used throughout §§3, 4 and 6 and in the integrative exercises; every behaviour cited is run in SQLite 3.54.1.

### Benchmarks and section sources

- Xu: Ch. 1 "Which databases to use?"; Ch. 6 "Write path", "Read path". Used: `exm-dm-relational-default`, `exm-se-xu-paths`.
- Tan: Sec. 2.4.2 (pp. 31-33, lock columns "not normalized", compare-and-set UPDATE), Sec. 2.6 (pp. 40-43: LIKE, Elasticsearch,
  query vs filter context, whose analogy is reversed: `exr-ii-tan-contexts`), Sec. 4.1 (pp. 77-79), Sec. 4.3.5 (pp. 85-87, HDFS; its
  "entire 64 MB block" claim is reconciled with GFS's lazy allocation in `exr-st-small-file-space`), Sec. 4.7 (pp. 98-99).
- Sinha-Chopra: Ch. 3 "Bloom filters" (m = 10, k = 2 example), Ch. 5 "NoSQL databases", Ch. 11 "Data flow and indexing" and
  "Relevance scoring and ranking" (pp. 222-224).
- Liu: Ch. 5 "Schema Design" (normalization vs denormalization), "Indexing Strategies" (sorted table, not hashmaps, primary,
  secondary, composite), "Databases" (relational with the ACID reminder, document, columnar, wide column), "Concurrency Control and
  Transaction" (counter, pessimistic locking, lock scope, write skew with phantoms, predicate locks, materialised slots, optimistic
  locking), "Cold Storage", "Full-Text Search" (analyser, posting lists, n-grams, merge k lists, MapReduce); App. 5 "Bloom Filter" and
  "TF / IDF" (no formula). Liu's "Consistency" is atomicity: `exr-tx-liu-consistency`.
- Reis-Housley: Ch. 5 p. 166; Ch. 6 pp. 199-208 (file, local disk, NAS, cloud file systems, block, RAID, SAN, object storage,
  buckets, prefix listing); Ch. 8 pp. 290-294 (normalisation, Tables 8-1 to 8-8; the open question on `Orders` is `exr-nf-orders-3nf`;
  the "6NF in the Boyce-Codd system" remark is corrected in `exr-nf-bcnf-remark`).
- Pacheco-Sgro: Ch. 8 "NoSQL databases". Gilbert: Ch. 13 "Polyglot persistence", "Duplicate data is good".

### Proved by the chapter, quoted, conventions

- Proved: Heath's lossless decomposition (with the inclusion and a lossy counterexample), the B-tree height bounds, Bloom parts
  (a)-(c), the precedence-graph criterion and the serialisability of 2PL (lock-point argument), merge intersection, heap merge, and
  the exercise-level results (closure, BCNF ⇒ 3NF, snapshot isolation excludes dirty and non-repeatable reads and lost updates, strict
  2PL excludes dirty reads, wait-for cycles, gap encoding).
- Quoted: the Bloom concentration bound (part (d)). The isolation levels, normal forms and tf-idf formula are definitions; the tf-idf
  formula $\mathrm{tf}\cdot\ln(|\mathcal D|/\mathrm{df})$ is the chapter's convention, since Liu and Sinha give none.

### Figures and software

- D2: `figures/lsm_paths.d2` (LSM write and read paths), `figures/gfs_architecture.d2` (GFS). Python: `figures/bloom_fp.py`
  (false-positive rate against bits per key, approximation and seeded simulations).
- Run blocks: the standard library (`sqlite3` with FTS5 and dbstat, `heapq`, `graphlib`, `threading`) and NumPy; all seeded.

## Chapter 5: replication-and-partitioning (task 6.2, 2026-11-28)

Outline (approved row 5 of `openspec/coverage/system-design.md`): §1 leader-follower replication; §2 multi-leader and leaderless replication,
quorums, sloppy quorums, hinted handoff, anti-entropy; §3 ordering events; §4 partitioning; §5 secondary indexes and request routing; §6 failure
detection and membership; §7 unique identifiers (gap section). Statements: `def-leader-follower`, `prp-failover-loss`, `def-quorum-replication`,
`thm-quorum-intersection`, `def-happens-before`, `thm-logical-clocks`, `def-partitioning`, `thm-consistent-hashing`, `def-request-routing`,
`def-failure-detector`, `prp-heartbeat-detector`, `def-unique-id`, `prp-id-collision`.

### DeCandia et al., "Dynamo" (`decandia2007dynamo`)

- Read Secs. 4.1-4.9 (pp. 209-213), 5 (read repair, p. 213), 6 and 6.1-6.3 (pp. 214-216). Used: ring, MD5, virtual nodes, preference lists,
  coordinator and $W - 1$ acknowledgements, $R + W > N$ and latency of the slowest replica, $(3,2,2)$, vector clocks and $D_1$-$D_5$, clock
  truncation, cart merge and resurfacing deletions, sloppy quorum, hinted handoff, $W = 1$, Merkle trees per key range, gossip every second,
  seeds and logical partitions, local failure detection, explicit membership, partitioning strategies 1-3 and membership size, imbalance
  15%/10-20%, LWW for sessions, read-mostly $R = 1$, $W = N$, durability window.

### Lamport (`lamport1978time`), Mattern (`mattern1988virtual`), Karger et al. (`karger1997consistent`)

- Lamport pp. 558-562: happened-before definition, irreflexivity assumption, clock condition and failing converse, C1, C2, IR1, IR2, total order
  $\Rightarrow$ and its non-uniqueness, strong clock condition. Proved in the chapter: the clock condition (`thm-logical-clocks` (a)).
- Mattern Secs. 6-8 and 10 (section attribution read from the two-column layout): defect of scalar clocks, vector clock tick and sup rules,
  Definition 4, non-transitive concurrency, Theorems 10 and 11 (stated as "easy to see"; proved in the chapter as (b), (c) via counts of the past),
  version vectors of Parker et al.
- Karger Secs. 4.1-4.2, Thm. 4.1: balance, monotonicity, spread, load, $\kappa\log C$ points per bucket, proof sketch. The chapter proves exact
  moments instead (arc law $(1-s)^{m-1}$, covariance from the constant sum, $\operatorname{Var}S = (n-1)/(n^2(nv+1))$) and the union bound on the
  largest arc; Karger's high-probability balance is cited, not proved.

### GFS and Bigtable (already in the bib)

- GFS Secs. 2.6.3 (operation log) and 5.1.1-5.1.3 (master replication, shadow masters). Bigtable Secs. 2, 5 (tablets 100-200 MB, ten to a
  thousand per server, clients rarely see the master), 5.1 (three-level hierarchy, $2^{34}$ tablets, 3 and 6 round trips) and 5.2 (Chubby locks,
  master polling, servers killing themselves).

### New reference (not in Zotero): `rfc9562`

- RFC 9562, Secs. 5.4 (UUIDv4, 122 random bits), 5.7 (UUIDv7 layout, 48-bit ms timestamp, 74 bits), 6.2 (monotonicity and counters), 6.4
  (distributed generation), 6.7 (collision resistance), 6.11 (sorting and index locality). Read from https://www.rfc-editor.org/rfc/rfc9562.txt.

### Benchmarks

- Xu: Ch. 1 "Database replication", "Database scaling" (sharding by `user_id % 4`, resharding, celebrity problem); Ch. 5 (rehashing, ring, add and
  remove, two issues, virtual nodes with the 5%/10% measurement, affected keys, wrap-up claim that consistent hashing mitigates hot keys, corrected in
  `exr-pt-hot-claims`); Ch. 6 (replication over N, quorum configurations and "strong consistency is guaranteed", corrected in `exr-thq-xu-strong`;
  consistency models; versioning and vector clocks; failure detection with two sources and gossip; sloppy quorum; hinted handoff; Merkle trees with
  12 keys and 1M buckets); Ch. 7 (requirements, multi-master, UUID with the 100-year claim checked in `exr-id-xu-uuid`, ticket server, Snowflake
  layout, 69 years, 4096 per ms, clock synchronisation).
- Tan: Secs. 3.5-3.5.5 (pp. 66-70; "DynamoDB uses a gossip protocol called vector clocks", corrected in `exr-fd-tan-claim`), 4.3-4.3.4 (pp. 79-85:
  single-leader with secondary leader, multi-level replication, multi-leader races including DELETE/INSERT, leaderless with $n/2 + 1$ quorums).
- Sinha: Ch. 3 "Consistent hashing" (ring, dummy points, cascade); Ch. 5 (modulo routing, virtual nodes, primary-secondary and peer-to-peer, preference
  lists, $(n, r, w)$ Table 5.1, the claim that larger $r$ "prioritizes availability", corrected in `exr-thq-sinha-claim`, sloppy quorum, hinted handoff,
  Merkle trees, membership gossip).
- Liu: Ch. 5 "Replication" (purposes, sync and async, read your own write, inconsistent replicas, follower and leader failure, leader-leader,
  leaderless, replication factor), "Sharding Strategies" (vertical and horizontal, hash key, consistent hashing and its non-solution for hot keys, range
  key and the tweet options, outlier keys, scatter-gather, hotspots), "Conflict Resolution" (LWW, CRDT counter), "ID Generator" (UUID, auto increment,
  multiple machines, ZooKeeper zxid, Snowflake with 10 machine bits), "Service Discovery and Request Routing" (shard discovery table, two options).

### Proved by the chapter, quoted, conventions

- Proved: `prp-failover-loss`, `thm-quorum-intersection`, `thm-logical-clocks`, `thm-consistent-hashing` (a)-(d), `prp-heartbeat-detector`,
  `prp-id-collision`; exercises prove Merkle equal-root and comparison cost, the gossip end-game bound, G-counter and PN-counter convergence,
  monotonicity, Mattern's Theorem 11, the impossibility of an exact scalar clock.
- Quoted: Karger's high-probability balance (Thm. 4.1); the $\log_2 n + \ln n$ rounds of push gossip are only compared with simulation, not proved.
- Isolation of the simulations: all distributed behaviour is simulated in one process; no real cluster.

### Figures and software

- D2: `figures/topologies.d2`, `figures/quorum_sequence.d2`. Python: `figures/ring.py` (ring with virtual nodes), `figures/vnode_balance.py`
  (relative sd of a share against $v$, formula and simulation).
- Run blocks: standard library (`sqlite3` log shipping between two files, `hashlib`, `bisect`, `graphlib`, `uuid`) and NumPy; all seeded; `zlib.crc32`
  instead of `hash()` where a run must be reproducible.

## Chapter 6: consistency-and-consensus (task 6.2, 2026-11-28)

Outline (approved row 6 of `openspec/coverage/system-design.md`): §1 consistency models and session guarantees; §2 CAP and PACELC; §3 consensus,
replicated state machines, FLP; §4 Paxos; §5 Raft; §6 coordination services (locks, leases, fencing); §7 Byzantine faults (gap, low priority).
Statements: `def-consistency-models`, `prp-linearisability`, `def-cap`, `thm-cap`, `def-consensus`, `prp-consensus-quorums`, `def-paxos`,
`thm-paxos-safety`, `def-raft`, `thm-raft-safety`, `def-coordination`, `prp-lease-fencing`, `def-byzantine`.

### Primary sources (all in Zotero; no new references)

- Gilbert-Lynch (`gilbert2002brewer`), Secs. 2.1-2.3, 3.1 (Theorem 1 with proof, Corollary 1.1), 3.2.1-3.2.3, 4.1-4.4 (Theorem 2, timeout
  algorithm, Delayed-t consistency, Definition 3). Proved in the chapter: Theorems 1 and 2 and the constructions; Corollary 1.1 quoted.
- FLP (`fischer1985impossibility`), Abstract, Sec. 2 (model, partially/totally correct, admissible runs, p. 377), Sec. 3 Theorem 1 (quoted, not proved).
- Paxos Made Simple (`lamport2001paxos`), Secs. 2.1-2.5 and 3 (requirements, P1-P2c derivation, phases, learning, progress, implementation, state
  machine with no-ops). Proved: safety (P2c invariant, P2b by strong induction, one value, validity).
- Raft (`ongaro2014search`), Secs. 2, 3, 5.1-5.6, 6, 8 and Figure 3. The PDF in Zotero is the extended technical report (May 2014); section numbers
  agree with the conference paper in the bib. Proved: Election Safety, Log Matching, Leader Completeness (the paper's step-by-step argument written out),
  State Machine Safety.
- Chubby (`burrows2006chubby`), Abstract, Secs. 1, 2.1, 2.2, 2.4, 2.6, 2.8, 2.9. Proved: lease safety under bounded drift, fencing tokens, lock-delay
  under a delay bound.
- Brewer 2012 (`brewer2012cap`): metadata only, no abstract; not cited. PACELC is taken from Sinha.

### Benchmarks

- Sinha: Ch. 2 strong and eventual consistency; Ch. 3 CAP, PACELC (acronym expanded with a spurious "Consistency Level", corrected in
  `exr-cap-sinha-acronym`), Paxos (1990 date and "Simple Paxos" merging phases, corrected in `exr-pax-sinha-claims`), Raft (claims that GFS and
  ZooKeeper use Raft, corrected in `exr-raft-sinha-uses`), BGP (two inconsistent bounds, corrected in `exr-byz-sinha-bounds`), Byzantine faults,
  BFT, FLP (the "triangle" reading, corrected in `exr-cons-sinha-triangle`).
- Xu: Ch. 6 CAP (n3 "goes down" as a partition, corrected in `exr-cap-xu-n3`), consistency models.
- Tan: Sec. 3.5 (linearizability wording, discussed in `exr-cmod-tan`; table of systems), Sec. 3.5.2 coordination service.

### Definitions taken as the chapter's own

- Sequential and causal consistency and the four session guarantees are standard definitions not taken from a read source (the benchmark books name only
  strong and eventual consistency); flagged in the report.

### Figures and software

- D2: `figures/cap_partition.d2`, `figures/raft_sequence.d2`, `figures/chubby_cell.d2`. Python: `figures/raft_split.py` (split-vote probability, exact
  spacing formula and simulation).
- Run blocks: plain Python and NumPy; brute-force linearisability checker; seeded single-process simulations of single-decree Paxos (loss, reordering,
  several proposers) and of Raft (elections, AppendEntries, crashes, loss) that check the safety properties on every run, with deliberately broken
  variants (no promise, own value, no election restriction, forgotten votes) that do violate them. SimPy was not needed.

## Chapter 7: caching (task 6.2, 2026-11-28)

Outline (approved row 7): §1 where caches sit and the access patterns; §2 eviction and hit ratio, Zipf workloads; §3 invalidation, consistency,
stampede protection; §4 distributed caches; §5 HTTP caching and cache warming. Statements: `def-cache-patterns`, `prp-cache-load`, `def-eviction`,
`prp-irm-bound`, `def-invalidation`, `prp-stampede`, `def-distributed-cache`, `def-http-caching`. The TTL hit ratio is recalled from chapter 2
(`prp-cdn-ttl-hit-ratio`) by link, not proved again.

### Sources

- Tan Secs. 4.8-4.12 (pp. 99-107): benefits and limits, cache-aside, read-through, write-through, write-back, write-around, caching as a service and
  request coalescing, what to cache, fingerprinting, dependent responses, replacement policies (random, LRU, FIFO, LIFO), cache warming. Tan Ch. 13 not
  needed: chapter 2 covered HTTP caching at the edge.
- Liu Ch. 5 "Cache Strategies" (purposes, hit rate, what to cache, write-through/back/around with delete-on-update, invalidation options, eviction LRU/LFU and
  their failure cases, custom eviction, failures) and "Thundering Herd" (cache blocking with timeout).
- Xu Ch. 1 "Cache tier" (calls cache-aside "read-through", corrected in `exm-cp-xu-name`), "Considerations for using cache".
- Sinha Ch. 6 (eviction policies incl. MRU, questioned in `exr-ev-sinha-mru`; O(1) LRU; co-located and standalone caches; consistent hashing; replicas).
- Chubby Sec. 2.7 (consistent write-through cache with invalidations; why invalidate rather than update).
- RFC 9111 (already in the bib, approved with chapter 2), Secs. 4.2.4, 4.3, 4.3.3, 5.2.2.2, 5.2.2.4, 5.2.2.5, re-read for validation and directives.

### Proved, quoted, conventions

- Proved: `prp-cache-load` (load, latency, staleness bounded by the TTL counted from the store read), `prp-irm-bound` (no online policy beats the top-C
  popularity under the IRM; static top-C reaches it; Zipf brackets), `prp-stampede` (Poisson stampede size, coalescing, jitter bound).
- The independent reference model and Zipf law are the chapter's definitions; no source on them was read (the benchmark books mention skew only
  informally). No new references.

### Figures and software

- D2: `figures/cache_flows.d2`. Python: `figures/hit_curve.py` (LRU, LFU and the IRM bound), `figures/stampede.py` (store requests per expiry).
- Run blocks: plain Python and NumPy; LRU/LFU/FIFO/random replays on seeded Zipf traces; stampede simulations without SimPy.

## Chapter 8: messaging-and-event-streams (task 6.2, 2026-11-28)

Outline (approved row 8): §1 synchronous and asynchronous work, queues and workers; §2 publish-subscribe and topics; §3 delivery semantics,
idempotence, the end-to-end argument; §4 the partitioned log; §5 failure handling; §6 event sourcing, CQRS and change data capture.
Statements: `def-message-queue`, `prp-backlog`, `def-pubsub`, `def-delivery-semantics`, `prp-idempotent-consumer`, `def-partitioned-log`,
`prp-consumer-group`, `def-failure-handling`, `prp-retry-dlq`, `def-event-sourcing`, `prp-replay`. The M/M/1 and M/M/c results are recalled
from chapter 3 (`thm-mm1`, `thm-erlang-c`, `thm-littles-law`) in `prp-backlog` (d), not proved again.

### Sources

- Kafka paper (`kreps2011kafka`, Zotero BLHD3E5S), read whole: Sec. 2 (pull model, "overkill" guarantees), Sec. 3 (point-to-point and
  publish/subscribe models), 3.1 (segments, byte offsets "increasing but not consecutive", cumulative acknowledgement, in-memory segment index,
  page cache, sendfile, stateless broker, 7-day retention, rewind), 3.2 (consumer groups, partition as unit of parallelism, over-partitioning,
  ZooKeeper registries, Algorithm 1, rebalance retries), 3.3 (at-least-once, per-partition order, CRC), 4 (auditing counts, Hadoop loader storing
  data and offsets together), 5 (producer without acknowledgements, batching, 9 vs 144 bytes overhead).
  Corrections turned into exercises: Algorithm 1's `N = |P_T|/|C_T|` with integer division leaves `N_p mod N_c` partitions unowned
  (`exr-cg-kafka-integer`); "70% more space" is 65% from the stated overheads (`exr-plog-space`); the 2011 producer path was at most once
  (`exr-dl-kafka-producer`).
- Saltzer-Reed-Clark (`saltzer1984end`, Zotero RW4NCIZ2), read whole; cited by section name (the PDF is a reprint paginated 1-10):
  Introduction (the argument), "End-to-end caretaking", "Performance aspects", "Delivery guarantees", "Duplicate message suppression",
  "Transaction management" (SWALLOW versions), "Identifying the ends". The two-phase-commit passages are not quoted (that topic is chapter 9).
- Xu Ch. 1 "Message queue"; Liu Ch. 5 ("Synchronous and Asynchronous", "Reasons for Asynchronous Processing", "Batch vs Stream Processing",
  "Message Queue", "Publisher Subscriber", "Delivery Semantics and Guarantees", "Custom Queue", "Buffering", "Idempotency", "Conflict Resolution",
  "Database and Queue"); Sinha Ch. 7 (distributed queue advantages, pub/sub, Kafka; "read once and in order" corrected in `exr-plog-sinha`);
  Tan Secs. 3.3.4, 3.3.6, 3.3.7 (pp. 62-63), 4.6.2-4.6.3 (pp. 95-97; superset claim checked against its own Table 4.1 in
  `exr-ps-tan-superset`), 5.1-5.4 (pp. 110-114; "CDC ... lower latency" examined in `exr-es-tan-latency`); Gandhi Ch. 3 pp. 86-90 (text from
  the sd-pilot extraction); Gilbert Chs. 1, 4, 5, 7 (sections named in the chapter); Pacheco Ch. 2 ("What is event sourcing?", CQRS sidebar),
  Ch. 3 ("Embrace async with an Event-Driven Architecture"; "same topic and consumer group" refined in `exm-cg-pacheco`), Ch. 8 ("Apache Kafka",
  "Kafka and CQRS / ES"; dual write examined in `exr-es-pacheco-dual`); Reis Ch. 5 pp. 159-161, 178-181 and Ch. 7 pp. 248-249.

### Proved, quoted, conventions

- Proved: `prp-backlog` (a)-(c) in the fluid model; `prp-idempotent-consumer` (acknowledgement order, atomic deduplication, idempotent commuting
  effects, version guard); `prp-consumer-group` (range assignment, per-key order, duplicates or losses by commit order); `prp-retry-dlq`
  (attempts and DLQ probability, poison delay, head-of-line bound, n_a^layers amplification); `prp-replay` (snapshots, projections, ordered
  application with a buffer, rebuild time).
- Recalled by link, proved in chapter 3: `prp-backlog` (d) (M/M/c and M/M/1 means).
- Standard notions with no source read: the name "effectively once"; the fluid model of a queue; "consumer lag" as end minus committed offset;
  the name "transactional outbox" (Liu describes the mechanism as a transactional database queue, Tan the log-tailing alternative); the range
  assignment with remainders (the paper's text says "range-partitions", its pseudocode drops the remainder); full jitter as a uniform draw.
- No new references.

### Figures and software

- D2: `figures/topologies.d2`, `figures/consumer_groups.d2`, `figures/outbox.d2`. Python: `figures/backlog.py` (SimPy burst against the fluid line).
- Run blocks: plain Python, NumPy, SimPy and `sqlite3`; all seeded; Erlang C by the stable Erlang B recursion.

## Chapter 9: distributed-transactions (task 6.2, 2026-11-28)

Outline (approved row 9): §1 atomic commitment and 2PC; §2 global time and Spanner; §3 sagas; §4 the transactional outbox, CDC, dual writes and
reconciliation (this chapter owns the outbox; chapter 8's `def-event-sourcing` item 4 and `fig-es-outbox` are recalled by link); §5 concurrency across
services. Statements: `def-atomic-commit`, `thm-two-phase-commit`, `def-truetime`, `thm-commit-wait`, `def-saga`, `prp-saga`, `def-outbox`,
`prp-outbox`, `def-cross-service-concurrency`, `prp-reservation`.

### Sources

- Spanner (`corbett2012spanner`, Zotero 8PTIQPRD), read Secs. 1, 2.3, 3, 4.1-4.2, 5.1-5.3: TrueTime API and implementation (sawtooth 1-7 ms, 30 s
  polls, 200 us/s drift), start and commit-wait rules with the proof of external consistency, 2PC over Paxos (coordinator skips prepare, client drives
  2PC), Table 4 (2PC latency vs participants), commit wait about 5 ms, Paxos about 9 ms, TrueTime tails and evictions.
- Lamport 1978 (`lamport1978time`, Zotero P7QRNYR2), pp. 562-563: anomalous behaviour, strong clock condition, PC1/PC2, eps/(1-kappa) <= mu (proved
  here), IR1'/IR2' and the synchronisation theorem (quoted; its appendix proof not reproduced).
- Tan App. D pp. 418-421 (2PC; "inconsistency" claim corrected in `exr-ac-tan-inconsistency`), Secs. 5.3, 5.5, 5.6 pp. 112-120 (sagas; "a saga
  has no state" and "double the events" examined in `exr-sg-stateless`, `exr-sg-double`), 3.3.8 p. 63, 2.4.2 pp. 31-32, 15.2.2-15.2.5, 15.7-15.8
  pp. 334-335, 345-350 (check-then-insert booking examined in `exr-hold-select-insert`).
- Liu Ch. 5: "Distributed Transaction" (money transfer, blob and metadata), "Database and Queue", "Concurrency Control and Transaction",
  "Pessimistic Locking", "Write Skew With Phantom Data", "Optimistic Locking", "Change Product Requirement to Simplify".
- Gilbert Ch. 4 "Stream-first event sourcing", Ch. 5 "Database-first event sourcing", Ch. 8 "Employing the Saga pattern", "Compensating
  transactions", "Abort events". Gandhi Ch. 10 pp. 314, 326-329. Pacheco Ch. 10 "Table diff", "Change Data Capture", "Dual writing". Kafka Sec. 4.

### Gaps, proved and quoted

- Garcia-Molina and Salem 1987 ("Sagas") is not in Zotero; added to the bib as `garciamolina1987sagas` (metadata from memory, to verify) for
  approval, not cited. Van Steen-Tanenbaum and Kleppmann have no PDF in Zotero and were not used.
- Proved: `thm-two-phase-commit` (a)-(d) ((d) relative to the consensus properties of chapter 6), `thm-commit-wait` (a)-(c), `prp-saga`,
  `prp-outbox`, `prp-reservation`. Quoted: `thm-commit-wait` (d), Lamport's theorem.
- Standard notions with no source read: the agreement/validity/non-triviality list of atomic commitment; "in doubt" and "blocking" as terms; saga
  isolation as a property (implied by Gilbert); the high-water-mark relay and its skip; the name "polling relay"; the ABA problem of wrapped versions.

### Figures and software

- D2: `figures/twopc_sequence.d2`, `figures/saga_orchestration.d2`. Python: `figures/commit_wait.py`.
- Run blocks: plain Python, NumPy and `sqlite3` (the outbox relay over two database files in the working directory); all seeded.

## Chapter 10: batch-and-stream-processing (task 6.2, 2026-11-28)

Outline (approved row 10): §1 MapReduce; §2 pipelines and orchestration; §3 analytical storage; §4 stream processing; §5 Lambda and Kappa; §6
approximate aggregation. Statements: `def-mapreduce`, `prp-mapreduce`, `def-pipeline`, `prp-dag`, `def-analytical-storage`, `prp-columnar`,
`def-stream-processing`, `prp-windows`, `def-lambda-kappa`, `def-approximate`, `thm-count-min`, `prp-cardinality`.

### Sources

- MapReduce (`dean2004mapreduce`, Zotero 3WXTGZ3B), Secs. 2-5 read: model, examples (word count, grep, URL counts, reverse links, term vectors,
  inverted index, sort), execution, master, fault tolerance and semantics, locality, granularity (M = 200,000, R = 5,000), backups (44%),
  partitioning, ordering, combiner, side effects, bad records, local execution, grep and sort measurements.
- Count-min (`cormode2005improved`, Zotero BQN95LQ6), Secs. 1-4.1 and 5.2: data structure, w = ceil(e/eps), d = ceil(ln 1/delta), Theorem 1 with
  its Markov proof (reproduced), Theorem 2 (median, quoted), range queries, heavy hitters.
- Liu Ch. 5 (Batch Processing, Stream Processing, Late and Out of Order Events, Watermark, Checkpointing, Lambda Architecture, Sampling, Columnar
  Store), Ch. 6 (Number of Unique Users; Top Watched YouTube Video), App. 5 (HyperLogLog, Count-Min Sketch; bit-pattern examples corrected in
  `exr-apx-liu-bits`, memory in `exr-hll-liu-memory`).
- Reis Ch. 2 pp. 33, 64-65; Ch. 3 pp. 98-100, 104-106; Ch. 5 pp. 157-158, 162; Ch. 6 pp. 213-216; Ch. 7 pp. 236-237, 246-247; Ch. 8 pp. 283-285,
  297-298; App. A pp. 391-394 (page numbers read from the extracted footers).
- Tan Secs. 3.3.6, 3.6 (pp. 70-71), 4.5 (pp. 88-90), 4.6 (pp. 93-95), 4.6.4 (pp. 97-98), 17.7-17.9 (pp. 386-392); the "second highest" procedure
  examined in `exr-apx-tan-second`, the merged-heaps slip (C = 10, not 11) in `exr-mrp-tan-heaps`.
- Sinha Ch. 3 count-min walk-through and HyperLogLog ("2^(L+1)" of a harmonic mean of ranks examined in `exr-apx-sinha-hll`).
- Gilbert Ch. 4 "Optimizing throughput"; Kafka Sec. 4.

### Gaps, proved and quoted

- HyperLogLog paper (Flajolet et al. 2007) not in Zotero: added to the bib as `flajolet2007hyperloglog` for approval (metadata from memory, to
  verify), not cited. The estimator's form follows the books; its constant c_m is calibrated by simulation; no accuracy bound is claimed.
- Proved: `prp-mapreduce`, `prp-dag` (incl. Graham's list-scheduling bound), `prp-columnar`, `prp-windows`, `thm-count-min` (the paper's proof),
  `prp-cardinality`. Quoted: count-min Theorems 2 and 4.
- Unsourced standard notions: the HyperLogLog estimator's constant and layout (p, q bits, 6-bit registers); the list-scheduling bound; "disorder"
  as a name; Bernoulli sampling as a term; conservative update; Kahn's procedure by name (not named in the chapter).

### Figures and software

- D2: `figures/mapreduce_flow.d2`, `figures/pipeline_dag.d2`, `figures/lambda_kappa.d2`. Python: `figures/watermark.py`.
- Run blocks: plain Python, NumPy and `sqlite3`; all seeded; longest block about 7 s.

## Chapter 11: architecture-styles (task 6.2, 2026-11-28)

Outline (approved row 11, with the owner's scope change: technical debt, fitness functions, ADRs and design inside a service go to the planned
Fundamentals of Software Engineering tutorial, mentioned without a link): §1 components, coupling and deployment; §2 layered and modular monolith;
§3 microkernel; §4 microservices (service-level boundaries only); §5 event-driven architecture; §6 serverless and managed services; §7 evolving an
architecture (distributed monoliths, strangler fig, code and data migrations). Statements: `def-components`, `prp-coupling`, `def-layered`,
`def-microkernel`, `def-microservices`, `prp-service-calls`, `def-event-driven`, `def-serverless`, `prp-cold-start`, `def-evolution`,
`prp-phased-migration`.

### Sources

- Gandhi et al. (Head First Software Architecture) Ch. 4 pp. 127, 136, 145-153 (components, afferent and efferent coupling, Law of Demeter); Ch. 5
  pp. 170-177 (partitioning, monolithic and distributed deployment); Ch. 6 pp. 192-206 (layered); Ch. 7 pp. 218-236 (modular monolith); Ch. 8
  pp. 251-264 (microkernel); Ch. 10 pp. 307-320, 326-329 (microservices, granularity, shared code); Ch. 11 pp. 351-370 (event-driven).
- Pacheco Ch. 1 (types of monolith, modular monolith); Ch. 2 "Binary coupling", "Advanced isolation"; Ch. 3 "What is a distributed monolith?",
  "Traits of distributed monoliths", "Temporal coupling" (the booking chain), "Embrace async with an Event-Driven Architecture", "Types of
  distributed monoliths"; Ch. 4 "Sidecar pattern", "Sidebar: Service meshes"; Ch. 9 "Red vs green migrations", "Lazy migrations", "Strangler
  Fig", "Converting a classical/distributed monolith to proper SOA", "Amazon two-way doors"; Ch. 10 "Data migration patterns", "Cold data".
- Tan Sec. 1.4.10 pp. 22-23 (FaaS, cold start); Sec. 5.1 p. 110; Secs. 6.1-6.4 pp. 123-128 (gateway, mesh, discovery); App. A pp. 395-397
  (monolith vs services, Table A.1, Prime Video merge).
- Sinha Ch. 4 "Application gateways". Gilbert Ch. 1 (autonomous services, bulkheads, BFF). Reis Ch. 3 "Principle 6"; Ch. 4 pp. 142-145
  (distributed monolith pattern, Hadoop example, serverless, containers, cost crossover).

### Gaps, proved and quoted

- No new references.
- Proved: `prp-coupling`, `prp-service-calls`, `prp-cold-start` (the strong law by link), `prp-phased-migration`.
- Unsourced standard notions: instability I = C_e/(C_a + C_e) (the books read give only C_a and C_e); "registry" as the microkernel's
  name for its plugin list; the independence assumptions in the availability products; the compatibility formalisation of phased migrations
  (reads-set and write-format pairs) and its 3-step lower bound; the facade-routing formalisation of the strangler fig; the Poisson warm-copy model.

### Figures and software

- D2: `figures/deployment_models.d2`, `figures/layered_modular.d2`, `figures/microkernel.d2`, `figures/microservices.d2`,
  `figures/event_driven.d2`, `figures/serverless.d2`, `figures/strangler_fig.d2`.
- Run blocks: plain Python and NumPy, all seeded. Illustrative: a FastAPI service skeleton, a function handler, a Kubernetes Deployment.

## Chapter 12: reliability-and-operations (task 6.2, 2026-11-28)

Outline (approved row 12, with the owner's scope rules: §5 treats canaries, flags, rollbacks, zero-downtime change and chaos testing as
reliability mechanisms only, CI/CD pipelines and release engineering left to the planned Fundamentals of Software Engineering tutorial, mentioned
without a link; §7 kept operational). §1 SLIs, SLOs, error budgets; §2 fault tolerance; §3 overload control; §4 observability; §5 safe change;
§6 multi-region and recovery; §7 security operations. Statements: `def-slo`, `prp-error-budget`, `def-fault-tolerance`, `prp-retry-load`,
`prp-circuit-breaker`, `def-overload`, `thm-rate-limits`, `prp-overload`, `def-observability`, `prp-monitoring`, `def-safe-change`,
`prp-rollout`, `def-multi-region`, `prp-regions`, `def-security-operations`.

### Sources

- SRE book (`beyer2016site`, Zotero AMEY7JDS has no PDF): read in the free online edition at sre.google/sre-book (fetched 2026-11-28), Chs. 3
  (Embracing Risk: Measuring Service Risk, Motivation for Error Budgets, Forming Your Error Budget, Benefits), 4 (Service Level Objectives:
  Indicators, Objectives, Agreements, Aggregation, Defining Objectives, Choosing Targets, Control Measures, the Chubby planned outage), 6
  (Monitoring Distributed Systems: Definitions, Symptoms Versus Causes, Black-Box Versus White-Box, The Four Golden Signals, Worrying About Your
  Tail, Resolution, Tying These Principles Together), 21 (Handling Overload: degraded responses, Per-Customer Limits, Client-Side Throttling with
  the rejection-probability formula, read from its equation image, Handling Overload Errors, Deciding to Retry) and 22 (Addressing Cascading
  Failures: Server Overload, Service Unavailability, Preventing Server Overload, Queue Management, Load Shedding and Graceful Degradation,
  Retries, Latency and Deadlines, New Rollouts). The online edition has no page numbers; cited by chapter and section.
- Tan Sec. 1.4.5 "Gradual rollouts and rollbacks" pp. 11-12; Sec. 2.5 pp. 34-40; Secs. 3.2-3.3 pp. 59-65; Sec. 3.7.1 p. 72; Sec. 3.9 p. 73;
  Sec. 8.9 pp. 187-193.
- Xu Ch. 1 "Data centers"; Ch. 4 (rate limiter, algorithms, placement, Redis INCR/EXPIRE); Ch. 6 "Handling data center outage".
- Sinha Ch. 2 "Availability", "Reliability", "Fault tolerance"; Ch. 8 "Rate limiting" to "Distributed tracing".
- Liu Ch. 5 "Timeout", "Exponential Backoff"; Ch. 6 "Rate Limiter Failure Scenario".
- Gilbert Ch. 4 "Backpressure and rate limiting"; Ch. 7 "Egress – circuit breaker"; Ch. 9 (regional disruptions, topologies, health checks,
  query and command failover); Ch. 10 (shared responsibility, encryption in transit, least privilege, envelope encryption, crypto-shredding,
  shared secrets, identity access management, auditing); Ch. 11 (small batch size, decoupling deployment from release, feature flags, fail forward
  fast, zero-downtime deployments, canary acceptance, regional canaries); Ch. 12 (USE, RED, anomaly detection, synthetics, timeouts and retries).
- Pacheco Ch. 7 "Strategies for testing in production", "Chaos Testing", "Netflix Simian Army".
- Reis Ch. 3 "Principle 2: Plan for Failure" p. 79; Ch. 10 pp. 371-376; App. B pp. 399-401.

### Gaps, proved and quoted

- No new references.
- Proved: `prp-error-budget`, `prp-retry-load`, `prp-circuit-breaker`, `thm-rate-limits`, `prp-overload`, `prp-monitoring` (Chebyshev by link),
  `prp-rollout`, `prp-regions`. Nothing quoted without proof.
- Unsourced standard notions: the fault/failure distinction; the burn rate and burn-rate alerting (in the SRE workbook, not read); the counter,
  gauge and histogram metric kinds; "kill switch"; measuring the RPO in time; tail-based trace sampling; hedged requests (exercise only); the
  circuit-breaker run-length formula and the token-bucket bound (proved, no source states them); the formalisation of retry storms as rounds.

### Figures and software

- D2: `figures/failure_domains.d2`, `figures/circuit_breaker.d2`, `figures/multi_region.d2`. Python: `figures/retry_storm.py` (SimPy),
  `figures/token_bucket.py`.
- Run blocks: plain Python, NumPy and SimPy, all seeded. Illustrative: Prometheus-style rules and queries, a rollout configuration, IAM role
  statements, Redis commands.

## Chapter 10 revision: HyperLogLog (2026-11-28)

Supersedes the chapter 10 gap note on the HyperLogLog paper. Source: `flajolet2007hyperloglog` (Zotero E9QU92FR, PDF EEPUSUQG), DMTCS proc. AH (AofA 07),
pp. 137-156. The Zotero item has no PDF attachment (checked with the MCP tools and in a copy of zotero.sqlite); the open-access PDF was read from
the publisher (dmtcs.episciences.org/3545) in the scratchpad, read-only, and nothing was written to Zotero. The PDF has since been attached in Zotero (E9QU92FR, PDF EEPUSUQG).

- Read in full: Introduction (bit-pattern observable p. 139; 2048 registers, 5 bits, 2%, 1.5 kB p. 140; Fig. 1 p. 140); Sec. 1 (Eqs. (1)-(3),
  Fig. 2 and Definition 1 p. 141; Theorem 1 p. 142); Sec. 2.1 (register law p. 143); Secs. 2.2-3.1 (Mellin and depoissonization proof, not
  reproduced); Sec. 3.2 (alpha_m = 1/(m J_0(m)), beta_m = sqrt(m) sqrt(J_1/J_0^2 - 1), Eq. (29), pp. 149-150); Sec. 4 (Fig. 3 program and
  alpha_16, alpha_32, alpha_64, 0.7213/(1 + 1.079/m) p. 151; small-range correction m log(m/V) below 5m/2 pp. 151-152; large-range correction
  -2^L log(1 - E/2^L) p. 152; registers 0..L+1-log2 m and 5 bits p. 152; 65/95/99% within 1, 2, 3 sigma p. 152; Fig. 4 p. 153; merge by max,
  note 4 p. 154).
- Changed: `def-approximate` item 3 (indicator Z, alpha_m by its integral, raw and corrected estimates; c_m removed) and its commentary;
  `exm-apx-hll-calibrate` (integral 0.7092 vs Figure 3's 0.709, simulation kept as a check); `exr-apx-sinha-hll`, `exr-apx-liu-bits`,
  `exr-apx-memory-compare`; `prp-cardinality` part (e) quoted (Theorem 1 with its hypotheses) and the paper's versions of (a)-(c);
  `exm-hll-estimate` (seeded check of 1.04/sqrt(m) at m = 256, 400 trials: 0.0623), `exm-hll-bits`, `exm-hll-small` (raw estimate and the
  small-range correction), `exr-hll-registers-size` (large-range correction), `exr-hll-union-not-sum`, `exr-hll-max-error`,
  `exr-hll-liu-memory`; integrative exercise 2; chapter introduction and references.
- Proved: `prp-cardinality` (a)-(d) unchanged. Quoted: Theorem 1 (bias < 5e-5, standard error beta_m/sqrt(m) + delta_2 with |delta_2| < 5e-4
  for m >= 16; beta_16..beta_128 and beta_inf), the Gaussian 65/95/99% remark. Checked numerically: alpha_16, alpha_32, alpha_64 from the
  integral (0.6731, 0.6971, 0.7092) and beta_16..beta_128 (1.1062, 1.0708, 1.0545, 1.0466) against the paper's values.
- Notes on the paper: Fig. 3's second test, read literally, would undo the small-range correction; the chapter reads the three cases as
  exclusive. The paper's 65% within one sigma is its own figure (a Gaussian gives 68%). The large-range threshold 2^L/30 for L = p + q bits is the
  chapter's extension of Fig. 3's 2^32/30.
- Notation: `_notation/systems.qmd` gains Z, alpha_m, n-hat, n-hat-star, V, beta_m, E_n, Var_n (c_m removed); clashes (Z, V, beta_m,
  delta_1, delta_2, the paper's rho and E) recorded in `system-design/notation/index.qmd`.

## Chapter 13: ml-llm-and-agent-systems (task 6.2, 2026-11-28)

Outline (row 13 as narrowed in 0de2f9a): models as components; internal quantities (KV-cache size, what continuous batching, paged KV caches and
speculative decoding buy) taken as given, mechanisms left to the planned Fundamentals of AI tutorial (named, not linked; Fundamentals of machine
learning linked). §1 the ML system; §2 model serving; §3 serving LLMs; §4 RAG; §5 agents; §6 operating AI systems. Statements: `def-ml-system`,
`prp-freshness`, `def-model-serving`, `prp-dynamic-batching`, `def-llm-serving`, `prp-llm-capacity`, `def-rag`, `prp-retrieval`, `def-agent`,
`prp-agent-reliability`, `def-ai-operations`, `prp-evaluation`.

### Sources

- The Zotero items GB6EBSTV, 332SZHL9, U8Y7LPBR, X7RSQIJ6, N4K5TQCL and CS7QV4NI have no attachment in the local Zotero (no child items, no storage
  directory), so their arXiv PDFs (2309.06180, 2211.05102, 2211.17192, 2005.11401, 1603.09320, 1702.08734) were downloaded to the scratchpad and read
  with pdftotext; the same for ReAct (2210.03629), Reflexion (2303.11366), Toolformer (2302.04761) and Arunkumar et al. (2601.12560), which have no
  PDFs either. Sculley (PD2JD6S3), Orca (ZTDSHFFR), Wang et al. (F9ZU84ZN), Kamath (GB3GPKL6) and Berryman (HBERLVF2) read from Zotero storage.
  The MCP specification (2025-06-18: overview, architecture, tools) fetched from modelcontextprotocol.io.
- Sculley Secs. 1-5, 7. Orca Abstract, Secs. 2-4 (4.2 max batch size). vLLM Abstract, Secs. 1-3, 4.4. Pope Abstract, Secs. 1-2. Leviathan Abstract,
  Secs. 1, 3.1 (Eq. 1), 3.3 (Def. 3.7, Thm. 3.8; quoted, not proved). Lewis Abstract, Fig. 1, Sec. 2. FAISS Secs. 2, 6. HNSW Abstract, Sec. 1. ReAct
  Abstract, Secs. 1-2. Reflexion Abstract. Toolformer Abstract. Wang et al. Secs. 2 (2.1.2), 3. Arunkumar et al. Abstract, Sec. 1.
  Kamath Sec. 7.2 p. 276, 7.3 p. 279, 7.4.2 p. 284 (RRF), 7.4.3.1 p. 287, 7.5.1 pp. 295-297, 7.6.3 p. 310, 8.5.3-8.5.4 pp. 337-339, 8.7.2 pp. 352-354,
  8.8 pp. 354-361. Berryman and Ziegler Ch. 3 p. 55, Ch. 4 p. 82, Ch. 9 p. 200.
- Huyen 2022 (XQFA9HUS) and 2025 (C2DA4KIQ) are metadata only: not read, not cited, although the outline names chapters of both.

### Gaps, proved and quoted

- New bib entries (Zotero keys as BBT citation keys): kwonEfficientMemoryManagement2023, popeEfficientlyScalingTransformer2022,
  leviathanFastInferenceTransformers2022, lewisRetrievalAugmentedGenerationKnowledgeIntensive2020, malkovEfficientRobustApproximate2016,
  johnsonBillionscaleSimilaritySearch2017, react2023, reflexion2023, toolformer2023, vAgenticArtificialIntelligence2026, wangSurveyLargeLanguage2024,
  sculleyHiddenTechnicalDebt2015, yuOrcaDistributedServing2022, berrymanPromptEngineeringLLMs2025, HttpsModelcontextprotocolioSpecification.
- Proved: `prp-freshness`, `prp-dynamic-batching`, `prp-llm-capacity` (under an assumed linear step-time model), `prp-retrieval`,
  `prp-agent-reliability`, `prp-evaluation` (Chebyshev by link). Quoted: Leviathan's Eq. (1) and Theorem 3.8 (in an example), the KV-cache formula.
- Unsourced standard notions: feature store, train-serve skew, batch versus online inference, model cascade, data and concept drift, the population
  stability index, time to first token and time per output token, chunk overlap, semantic cache, durable and idempotent tool calls and budgets for
  agents, the linear batch and step time models, the HNSW layer ratio in an example.

### Figures and software

- D2: `figures/ml_pipeline.d2`, `figures/rag_pipeline.d2`, `figures/agent_loop.d2`.
- Run blocks: plain Python, NumPy and SimPy, seeded; stub models only, no network, no weights (dynamic batching and static vs continuous batching in
  SimPy, IVF vs brute force in NumPy, a stub agent with retries, budgets and an idempotency table).
