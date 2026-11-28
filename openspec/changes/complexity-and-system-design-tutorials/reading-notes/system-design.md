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
