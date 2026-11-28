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
