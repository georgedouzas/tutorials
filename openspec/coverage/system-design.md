# Coverage: System Design

Coverage record for the new System Design tutorial (`system-design/`), written for task 3.2 of the change
`complexity-and-system-design-tutorials` (design C6). The tutorial has no pages yet, so this record maps the benchmark
tables of contents to the *proposed* chapter list rather than to written sections.

**Approved 2026-11-27 (owner).** All 15 chapters of the list below are approved, in its reading order and with its
slugs; none was rejected. The owner also approved adding these sources to Zotero, to close the source gaps (added
2026-11-27, see "Source gaps"): Zukerman's queueing textbook, Fischer-Lynch-Paterson 1985, Mattern 1988 (Fidge 1988
if a legal free copy exists), Karger et al. 1997, Bloom 1970, Broder-Mitzenmacher 2004, Cormode-Muthukrishnan 2005,
and Dean-Barroso 2013. The placeholders, sidebar, notation page and landing page were created the same day (task 4).

Scope (proposal): "estimation and the design process, the web stack, performance and queueing, storage and databases,
replication and partitioning, consistency and consensus, caching and asynchronous processing, architecture styles,
reliability and operations, and case studies". Diagrams are written in D2. Runnable examples use Python with SimPy and
SQLite. Exam-style interview preparation is out of scope (design, Non-Goals): the interview books supply case studies,
estimates and exercises, and the classic papers supply the theorems (design, Risks).

**How the statuses are used here.** They follow the Complexity Science record:
- **mapped** (`slug` §n): the benchmark material falls in a planned section. Each chapter of the list below has a
  section plan, and §n is the proposed order of sections inside the chapter, not a final `sec-` id.
- **section gap**: the material belongs to the subject of a listed chapter but adds a section beyond its core plan. The
  section is already written into the plan below and marked "(gap)".
- **proposed chapter**: no listed chapter contains the material (M4: in scope, and at least two sections of its own or
  a whole chapter in at least two benchmarks). A split of a listed chapter is recorded as a proposal too.
- **out of scope**: the row gives the reason.

## Benchmarks

| Key (Zotero item / citation key) | Title | Why chosen | TOC read via |
|---|---|---|---|
| UBAGKN6G / `SystemDesignInterview2021` | Xu, *System Design Interview: An Insider's Guide*, vol. 1, 2021 | The most widely used system-design text. It has a short foundation (scaling from one server, back-of-the-envelope estimation, a design framework) followed by twelve worked designs: rate limiter, consistent hashing, key-value store, unique IDs, URL shortener, crawler, notifications, news feed, chat, autocomplete, YouTube, Google Drive. It sets the canonical case studies and the estimation style of the pilot chapter. | `zotero_get_pdf_outline` (chapters only); section headings from read-only `pdftotext` of the stored PDF |
| 4KTQIAK5 / `tanAcingSystemDesign2024` | Tan, *Acing the System Design Interview*, Manning 2024 | The broadest concept coverage of the four. Part 1 has whole chapters on non-functional requirements, scaling databases (replication, sharding, ETL, caching), distributed transactions (event sourcing, CDC, sagas) and common services (service mesh, API paradigms). Part 2 has eleven designs, and the appendices cover monoliths versus microservices, OAuth 2.0 and OpenID Connect, the C4 model and two-phase commit. It is the main source for transactions, observability and authentication. | `zotero_get_pdf_outline` (three levels) |
| MQVW6QAV / `sinhaSystemDesignGuide2024` | Sinha & Chopra, *System Design Guide for Software Professionals*, Packt 2024 | The only benchmark with a chapter on distributed-systems theorems and data structures (CAP, PACELC, Paxos, Raft, Byzantine faults, FLP, consistent hashing, Bloom filters, count-min sketch, HyperLogLog). It also has component chapters (DNS and load balancers, databases and key-value stores, distributed cache, pub/sub and queues, APIs, security and metrics) and six designs. | `zotero_get_pdf_outline` (three levels) |
| BS5WB6W7 / `liuSystemDesignInterview2020` | Liu, *System Design Interview Fundamentals*, 2020 | A long "technical toolbox" chapter of about forty topics (estimation, API and schema design, indexing, real-time updates, concurrency control, replication, sharding, caching, batch and stream processing, delivery semantics, conflict resolution, ID generation, full-text search, networking), eight designs, and appendices of capacity numbers. It gives the widest topic checklist and many exercise prompts. | `zotero_get_pdf_outline` (three levels) |

**Why these four.** They are the only whole-subject system-design books in the library with PDFs, and their contents
overlap enough that a topic found in two or three of them is a core topic. Together they cover every chapter of the
proposal, though at a practitioner's level: none proves a theorem. The theorems come from the classic papers mapped
below, all of which except Brewer 2012 have PDFs.

**Metadata-only items (listed, no pages read):**
- van Steen & Tanenbaum, *Distributed Systems*, 4th ed., 2023 (`45MTYFDX`, `vansteen2023distributed`). This is the
  academic textbook the tutorial most lacks. A free personalised PDF exists (references-proposal item 19). Once the
  owner downloads it and attaches it, it should become a fifth benchmark and the main textbook source for
  replication-and-partitioning, consistency-and-consensus and the clocks material.
- Beyer, Jones, Petoff & Murphy (eds.), *Site Reliability Engineering*, 2016 (`AMEY7JDS`, `beyer2016site`). It is free
  as HTML only. Until a PDF built from the HTML is attached, reliability-and-operations §1 (SLOs and error budgets)
  and §4 (monitoring) cannot cite it with verifiable page locators.

**Section sources, not benchmarks.** These are mapped chapter by chapter below; their TOCs were read with
`zotero_get_pdf_outline`.
- Gandhi, Richards & Ford, *Head First Software Architecture*, 2024 (`G62XG6CY`, `gandhiHeadFirstSoftware2024`):
  architectural characteristics, trade-offs and ADRs, logical components and coupling, and the styles (layered,
  modular monolith, microkernel, microservices, event-driven). It is the main source for architecture-styles.
- Pacheco & Sgro, *Principles of Software Architecture Modernization*, 2024 (`VTG294QD`,
  `pachecoPrinciplesSoftwareArchitecture2024`): monolith anti-patterns, isolation, distributed monoliths, shared
  libraries and sidecars, service contracts, testing, cloud, and code and data migrations.
- Gilbert (with Lavi), *Software Architecture Patterns for Serverless Systems*, 2nd ed., 2024 (`GRGM4CJ3`,
  `gilbertSoftwareArchitecturePatterns2024`): event-first autonomous services, event sourcing and CQRS, stream
  processing, idempotence, BFF, sagas, multi-region, security, CI/CD and observability.
- Reis & Housley, *Fundamentals of Data Engineering*, 2022 (`P6ECV3FJ`, `reisFundamentalsDataEngineering2022`): source
  systems, storage, ingestion, transformation, serving, and data architectures (warehouse, lake, Lambda, Kappa). It is
  the main source for batch-and-stream-processing.

Not chosen as benchmarks: the four architecture books above (each covers one region of the subject: styles,
modernisation, serverless event-driven systems, data engineering), and *The Architecture of Open Source Applications*
I-II (`NQQCD3NW`, `Z25V5CKC`; essays on particular systems, a possible example source for case studies). The
commercial books Kleppmann (`BVZ84DP3`), Xu vol. 2 (`B5RF3GGH`) and Burns (`24JB4SCS`) are metadata-only by the
owner's decision (design C7), so chapters may not depend on them.

## Coverage

### UBAGKN6G: Xu, System Design Interview, vol. 1

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Single server setup; request flow, DNS, JSON API | One-server web stack | mapped | the-web-stack §1 | |
| 1 Database; which databases to use | Relational vs NoSQL | mapped | storage-and-databases §1 | |
| 1 Vertical vs horizontal scaling | Scaling | mapped | the-web-stack §4 | |
| 1 Load balancer | Load balancing | mapped | the-web-stack §2 | |
| 1 Database replication | Leader-follower replication | mapped | replication-and-partitioning §1 | |
| 1 Cache, cache tier, considerations | Cache-aside, TTL, eviction | mapped | caching §1-2 | |
| 1 Content delivery network | CDN | mapped | the-web-stack §3 | |
| 1 Stateless web tier (stateful vs stateless) | Sessions out of the server | mapped | the-web-stack §4 | |
| 1 Data centers (geoDNS, failover) | Multi-region | mapped | reliability-and-operations §6 | |
| 1 Message queue | Decoupling by queues | mapped | messaging-and-event-streams §1 | |
| 1 Logging, metrics, automation | Observability, CI | mapped | reliability-and-operations §4-5 | |
| 1 Database scaling (sharding, celebrity problem, resharding) | Sharding | mapped | replication-and-partitioning §4 | |
| 2 Power of two; latency numbers | Units and latency numbers | mapped | estimation-and-the-design-process §3 | |
| 2 Availability numbers (nines, SLA) | Availability arithmetic | mapped | estimation-and-the-design-process §5 | |
| 2 Example: Twitter QPS and storage; tips | QPS, peak, storage | mapped | estimation-and-the-design-process §4 | |
| 3 A framework for system design interviews (4 steps, time allocation) | Design process | mapped | estimation-and-the-design-process §1 | Time allocation is interview advice, left out. |
| 4 Design a rate limiter: token bucket, leaking bucket, fixed window, sliding log, sliding counter; rules, headers, race conditions, synchronisation | Rate limiting | mapped | reliability-and-operations §3 (algorithms); case-studies-infrastructure §2 (the design) | |
| 5 Design consistent hashing: ring, lookup, add/remove, virtual nodes, affected keys | Consistent hashing | mapped | replication-and-partitioning §4 | |
| 6 KV store: CAP theorem, ideal vs real systems | CAP | mapped | consistency-and-consensus §2 | |
| 6 KV store: data partition, data replication | Partitioning and replication | mapped | replication-and-partitioning §2, §4 | |
| 6 KV store: consistency (quorum N, W, R), consistency models | Quorums; consistency models | mapped | replication-and-partitioning §2; consistency-and-consensus §1 | |
| 6 KV store: inconsistency resolution, versioning, vector clocks | Version vectors | mapped | replication-and-partitioning §3 | |
| 6 KV store: failure detection (gossip), temporary failures (sloppy quorum, hinted handoff), permanent failures (Merkle trees), data center outage | Failure handling | mapped | replication-and-partitioning §2, §6; reliability-and-operations §6 | |
| 6 KV store: system architecture, write path, read path (commit log, memtable, SSTable, Bloom filter) | LSM storage engine | mapped | storage-and-databases §3; case-studies-infrastructure §3 | |
| 7 Unique ID generator: multi-master, UUID, ticket server, Snowflake | Unique IDs | section gap | replication-and-partitioning §7 | One section; also in Liu. |
| 8 URL shortener: API, redirects 301/302, hash vs base-62, data model | URL shortener | mapped | case-studies-infrastructure §1 | The spec's D2 scenario. |
| 9 Web crawler: frontier, politeness, priority, DNS, dedup, robustness | Web crawler | mapped | case-studies-infrastructure §5 | |
| 10 Notification system: push, SMS, email, reliability, retries, templates | Notification service | mapped | case-studies-infrastructure §4 | |
| 11 News feed: publishing, fan-out on write vs read, cache layers | News feed | mapped | case-studies-applications §1 | |
| 12 Chat: polling, long polling, WebSocket, stateful services, message IDs, presence | Chat | mapped | case-studies-applications §2; the-web-stack §6 | |
| 13 Search autocomplete: trie, top-k caching, data gathering | Autocomplete | mapped | case-studies-applications §3 | |
| 14 Design YouTube: upload, transcoding DAG, streaming, CDN, cost-saving | Video platform | mapped | case-studies-applications §4; estimation-and-the-design-process §6 (cost) | |
| 15 Design Google Drive: block servers, sync conflicts, metadata DB, notification, storage saving | File sync | mapped | case-studies-applications §5 | |
| 16 The learning continues | Reading list of real systems | out of scope | | Reading list; the papers it points to are mapped below. |

### 4KTQIAK5: Tan, Acing the System Design Interview

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 A discussion about trade-offs; overview | Trade-offs | mapped | estimation-and-the-design-process §2 | |
| 1 Prelude: small initial deployment; GeoDNS | One server, DNS | mapped | the-web-stack §1 | |
| 1 Adding a caching service | Cache | mapped | caching §1 | |
| 1 Content distribution network | CDN | mapped | the-web-stack §3 | |
| 1 Horizontal scalability, cluster management, CI/CD | Scaling out; deployment | mapped | the-web-stack §4; reliability-and-operations §5 | |
| 1 Functional partitioning, cross-cutting concerns; other common services | Service decomposition | mapped | architecture-styles §4 | |
| 1 Batch and streaming ETL | ETL | mapped | batch-and-stream-processing §2 | |
| 1 Cloud vs bare metal; serverless (FaaS) | Deployment models | mapped | architecture-styles §6 | |
| 2 Clarify requirements; draft the API; connections and processing | Design process; API | mapped | estimation-and-the-design-process §1; the-web-stack §5 | |
| 2 Design the data model; shared databases; concurrent update conflicts | Data model; optimistic concurrency | mapped | storage-and-databases §2, §4; architecture-styles §4 | |
| 2 Logging, monitoring, alerting; observability; responding to alerts | Observability | mapped | reliability-and-operations §4 | |
| 2 Streaming and batch audit of data quality; anomaly detection; silent errors | Data-quality auditing | mapped | reliability-and-operations §4 | One unit of the observability section. |
| 2 Search bar with Elasticsearch; index and ingestion | Full-text search | section gap | storage-and-databases §6 | See candidates: search. |
| 2 Other discussions (maintenance, other users, alternatives, edge cases, cloud native) | Extending a design | mapped | estimation-and-the-design-process §1 | |
| 2 Post-interview reflection; interviewing the company | Interview practice | out of scope | | Interview preparation is a non-goal. |
| 3 Scalability: stateless and stateful services; load balancer concepts | Scaling, LB | mapped | the-web-stack §2, §4 | |
| 3 Availability | Availability | mapped | estimation-and-the-design-process §5; reliability-and-operations §1 | |
| 3 Fault tolerance: replication and redundancy | Redundancy | mapped | replication-and-partitioning §1 | |
| 3 Forward error correction and error-correcting codes | Coding theory | out of scope | | Information and coding theory, not system design; one paragraph in reliability-and-operations §1 at most. |
| 3 Circuit breaker; exponential backoff and retry; caching others' responses; checkpointing; bulkhead; fallback | Fault-tolerance patterns | mapped | reliability-and-operations §2 | |
| 3 Dead letter queue; logging and periodic auditing | DLQ | mapped | messaging-and-event-streams §5 | |
| 3 Performance/latency and throughput | Latency, throughput | mapped | performance-and-queueing §1 | |
| 3 Consistency: full mesh, coordination service, distributed cache, gossip, random leader selection | Coordination | mapped | consistency-and-consensus §6; replication-and-partitioning §6 | |
| 3 Accuracy | Approximate answers | mapped | batch-and-stream-processing §6 | |
| 3 Complexity and maintainability; continuous deployment | Maintainability | mapped | architecture-styles §1; reliability-and-operations §5 | |
| 3 Cost | Cost | section gap | estimation-and-the-design-process §6 | See candidates: cost. |
| 3 Security; privacy; external vs internal services | Security | section gap | the-web-stack §7; reliability-and-operations §7 | See candidates: security. |
| 3 Cloud native | Cloud native | mapped | architecture-styles §6 | |
| 4 Prelude on storage services; when to use databases | Storage kinds | mapped | storage-and-databases §1, §5 | |
| 4 Replication: distributing replicas, single-leader, multi-leader, leaderless | Replication | mapped | replication-and-partitioning §1-2 | |
| 4 HDFS replication | Distributed file systems | mapped | storage-and-databases §5 | With GFS. |
| 4 Sharded databases; sharded RDBMS | Sharding | mapped | replication-and-partitioning §4 | |
| 4 Aggregating events: single- and multi-tier, partitioning, large key space, fault tolerance | Streaming aggregation | mapped | batch-and-stream-processing §4 | |
| 4 Batch and streaming ETL; messaging terminology; Kafka vs RabbitMQ; Lambda architecture | Pipelines; brokers | mapped | batch-and-stream-processing §2, §5; messaging-and-event-streams §2, §4 | |
| 4 Denormalization | Denormalisation | mapped | storage-and-databases §2 | |
| 4 Caching: read and write strategies; caching as a service; what to cache | Cache patterns | mapped | caching §1, §4 | |
| 4 Cache invalidation (browser, service); cache warming | Invalidation | mapped | caching §3, §5 | |
| 5 Event-driven architecture | EDA | mapped | architecture-styles §5 | |
| 5 Event sourcing; change data capture; comparison | ES, CDC | mapped | messaging-and-event-streams §6 | |
| 5 Transaction supervisor | Reconciliation | mapped | distributed-transactions §4 | |
| 5 Saga: choreography, orchestration, comparison | Sagas | proposed chapter | distributed-transactions §3 | See proposals. |
| 5 Other transaction types | 2PC and others | proposed chapter | distributed-transactions §1 | |
| 6 Common functionalities of services (security, error checking, performance, logging) | API gateway concerns | mapped | architecture-styles §4 | |
| 6 Service mesh / sidecar; metadata service; service discovery | Service infrastructure | mapped | architecture-styles §4 | |
| 6 Functional partitioning and frameworks; web server app; web and mobile frameworks | App tier | mapped | the-web-stack §4 | Framework surveys are left out. |
| 6 Library vs service | Library vs service | mapped | architecture-styles §4 | |
| 6 API paradigms: OSI, REST, RPC, GraphQL, WebSocket, comparison | APIs and protocols | mapped | the-web-stack §1, §5, §6 | |
| 7 Design Craigslist (monolith, SQL and object store, migrations, search, rate limiting) | Classifieds site | mapped | case-studies-applications §7 | Used as the warm-up design of the booking section. |
| 8 Design a rate-limiting service (stateful sharding, synchronising counts, algorithms, sidecar) | Rate limiter | mapped | case-studies-infrastructure §2; reliability-and-operations §3 | |
| 9 Design a notification/alerting service | Notifications | mapped | case-studies-infrastructure §4 | |
| 10 Design a database batch auditing service | Data auditing | mapped | reliability-and-operations §4 (examples); case-studies-infrastructure §7 (exercises) | |
| 11 Autocomplete/typeahead (weighted trie, pipeline, sampling) | Autocomplete | mapped | case-studies-applications §3 | |
| 12 Design Flickr (thumbnails, CDN directories) | Photo sharing | mapped | case-studies-applications §4 | |
| 13 Design a CDN (authn, key rotation, storage, reads and writes, invalidation) | CDN design | mapped | case-studies-infrastructure §6 | |
| 14 Design a text messaging app | Chat | mapped | case-studies-applications §2 | |
| 15 Design Airbnb (availability data model, overlapping bookings, locks) | Booking | mapped | case-studies-applications §7 | |
| 16 Design a news feed | News feed | mapped | case-studies-applications §1 | |
| 17 Top 10 products dashboard (batch and streaming, multi-tier aggregation, count-min sketch, Lambda vs Kappa) | Top-K | mapped | case-studies-infrastructure §7; batch-and-stream-processing §5-6 | |
| App. A Monoliths vs microservices | Monoliths vs services | mapped | architecture-styles §2, §4 | |
| App. B OAuth 2.0 authorisation and OpenID Connect authentication | Authentication and authorisation | section gap | the-web-stack §7 | See candidates: security. |
| App. C C4 model | Architecture diagrams | mapped | estimation-and-the-design-process §1 | The C4 levels set the conventions of the tutorial's D2 diagrams. |
| App. D Two-phase commit | 2PC | proposed chapter | distributed-transactions §1 | |

### MQVW6QAV: Sinha & Chopra, System Design Guide for Software Professionals

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 What is system design; types (high-level, architecture, data flow, scalability, fault tolerance); importance | Design process | mapped | estimation-and-the-design-process §1 | |
| 1 Low-level design: algorithms, data structures, APIs, code optimisation | Programming | out of scope | | Low-level software design and algorithms are not this tutorial's subject; APIs are in the-web-stack §5. |
| 2 Hotel booking example; strong and eventual consistency | Consistency | mapped | consistency-and-consensus §1 | |
| 2 Availability | Availability | mapped | estimation-and-the-design-process §5 | |
| 2 Network partition; partition tolerance | Partitions | mapped | consistency-and-consensus §2 | |
| 2 Latency | Latency | mapped | performance-and-queueing §1 | |
| 2 Durability; reliability; fault tolerance | Dependability | mapped | reliability-and-operations §1 | |
| 2 Scalability: vertical, horizontal | Scaling | mapped | the-web-stack §4 | |
| 3 CAP theorem | CAP | mapped | consistency-and-consensus §2 | Proof from Gilbert-Lynch. |
| 3 PACELC theorem | PACELC | mapped | consistency-and-consensus §2 | A classification, stated as a definition. |
| 3 Paxos | Paxos | mapped | consistency-and-consensus §4 | |
| 3 Raft | Raft | mapped | consistency-and-consensus §5 | |
| 3 Byzantine generals; Byzantine fault tolerance; modern BFT | Byzantine faults | section gap | consistency-and-consensus §7 | Low priority; one benchmark section only, and no Zotero source beyond it. |
| 3 FLP impossibility theorem | FLP | mapped | consistency-and-consensus §3 | Stated, not proved (spec). |
| 3 Consistent hashing | Consistent hashing | mapped | replication-and-partitioning §4 | |
| 3 Bloom filters | Bloom filters | mapped | storage-and-databases §3 | |
| 3 Count-min sketch; HyperLogLog | Sketches | mapped | batch-and-stream-processing §6 | |
| 4 DNS, querying; scalability, reliability and consistency of DNS | DNS | mapped | the-web-stack §1 | |
| 4 Load balancers: placement, global and local, GSLB, algorithms, L4 vs L7, deployment | Load balancing | mapped | the-web-stack §2 | |
| 4 Application gateways | API gateway | mapped | architecture-styles §4 | |
| 4 Microservices architectures; cloud-native and on-premises options | Deployment | mapped | architecture-styles §4, §6 | |
| 5 Databases: relational, NoSQL, trade-offs | Data models | mapped | storage-and-databases §1 | |
| 5 Key-value stores: what, uses, designing one | KV store design | mapped | case-studies-infrastructure §3 | |
| 5 Scalability and replication: consistent hashing, virtual nodes, data duplication | Partitioning and replication | mapped | replication-and-partitioning §2, §4 | |
| 5 get and put with r and w | Quorums | mapped | replication-and-partitioning §2 | |
| 5 Temporary and permanent failures; ring membership | Failure handling | mapped | replication-and-partitioning §2, §6 | |
| 5 A system design interview: KV store questions | Interview | out of scope | | Interview preparation. |
| 5 DynamoDB: schema, API, partitioning, throughput, availability | A managed KV store | mapped | replication-and-partitioning §4 (examples) | Vendor product used as an example only. |
| 5 Column-family databases; HBase | Wide-column stores | mapped | storage-and-databases §1, §3 | With Bigtable. |
| 5 Graph databases; Neo4j; relational vs graph modelling | Graph data | mapped | storage-and-databases §1-2 | |
| 6 Distributed cache: what, uses, benefits, challenges | Distributed cache | mapped | caching §4 | |
| 6 Designing a distributed cache (requirements, design journey) | Cache design | mapped | caching §2, §4 | |
| 6 Redis; Memcached; choosing | Products | mapped | caching §4 (examples) | Illustrative only. |
| 7 Designing a distributed queue | Queues | mapped | messaging-and-event-streams §1 | |
| 7 Pub/sub systems: characteristics, design considerations | Pub/sub | mapped | messaging-and-event-streams §2 | |
| 7 Kafka; Kafka Streams; Kinesis | Logs, streams | mapped | messaging-and-event-streams §4; batch-and-stream-processing §4 | |
| 8 REST APIs; gRPC; comparison | APIs | mapped | the-web-stack §5 | |
| 8 API security: authentication, authorisation, secure communication | Security | section gap | the-web-stack §7 | |
| 8 Rate limiting | Rate limiting | mapped | reliability-and-operations §3 | |
| 8 Logging; metrics; alerting; tracing; best practices | Observability | mapped | reliability-and-operations §4 | |
| 9 URL shortener (estimates, core challenge, database choice) | URL shortener | mapped | case-studies-infrastructure §1 | |
| 10 Proximity service | Location search | mapped | case-studies-applications §8 | |
| 11 Twitter: data model, scale, tweet, user, timeline, search services | Social feed | mapped | case-studies-applications §1; storage-and-databases §6 (search) | |
| 12 Instagram: photo upload, news feed, user service | Photo sharing | mapped | case-studies-applications §4 | |
| 13 Google Docs: document, collaboration and access-control services | Collaborative editing | mapped | case-studies-applications §6 | |
| 14 Netflix: video service, transcoding, streaming, CDN, adaptive bitrate, DRM | Video streaming | mapped | case-studies-applications §4 | |
| 14 Recommendation service | Recommendation | out of scope | | Machine learning; see candidates: ML system design. |
| 15 Tips for interviewees | Interview practice | out of scope | | Non-goal. |
| 16 System design cheat sheet (data stores, data structures, components, protocols) | Summary tables | out of scope | | A summary of the earlier chapters; its tables serve as exercise prompts in storage-and-databases §1 and the-web-stack §5. |

### BS5WB6W7: Liu, System Design Interview Fundamentals

| Benchmark chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Understanding the system design interview | Interview | out of scope | | Non-goal. |
| 2 Framework flow; step 1 gather requirements (functional, non-functional, scale, performance constraints) | Requirements | mapped | estimation-and-the-design-process §1, §4 | |
| 2 Step 2 define API | API | mapped | the-web-stack §5 | |
| 2 Step 3 high-level diagram | Diagrams | mapped | estimation-and-the-design-process §1 | |
| 2 Step 4 data model and schema | Schema | mapped | storage-and-databases §2 | |
| 2 Steps 5-6 end-to-end flow; deep dives | Design process | mapped | estimation-and-the-design-process §1 | |
| 3 Interviewer's perspective (rubrics) | Interview | out of scope | | Non-goal. |
| 4 Communication tactics and common mistakes | Interview | out of scope | | Non-goal; "math with a purpose" informs estimation-and-the-design-process §3. |
| 5 Back-of-the-envelope math (types, techniques, mistakes) | Estimation | mapped | estimation-and-the-design-process §3-4 | |
| 5 API design: idempotency, client vs server data, efficiency, correctness | API design | mapped | the-web-stack §5 | |
| 5 Schema design | Schema | mapped | storage-and-databases §2 | |
| 5 Indexing strategies: primary, secondary, use cases | Indexes | mapped | storage-and-databases §3 | |
| 5 Databases: choosing, types | Data models | mapped | storage-and-databases §1 | |
| 5 Real-time data update: short poll, long poll, SSE, WebSocket, scaling WebSockets, liveness | Real-time delivery | mapped | the-web-stack §6 | |
| 5 Concurrency control and transactions: single thread, micro-batch, partitioned serial, pessimistic and optimistic locking | Concurrency control | mapped | storage-and-databases §4; distributed-transactions §5 | |
| 5 Replication: leader-follower, leader-leader, leaderless, replication factor | Replication | mapped | replication-and-partitioning §1-2 | |
| 5 Sharding: vertical, horizontal | Partitioning | mapped | replication-and-partitioning §4 | |
| 5 Cache strategies; thundering herd | Caching | mapped | caching §1-3 | |
| 5 Asynchronous processing | Async | mapped | messaging-and-event-streams §1 | |
| 5 Batch processing (reverse index, word count) | MapReduce-style jobs | mapped | batch-and-stream-processing §1 | |
| 5 Stream processing: downtime, late and out-of-order events, watermark, checkpointing, batch size | Streams | mapped | batch-and-stream-processing §4 | |
| 5 Lambda architecture | Lambda | mapped | batch-and-stream-processing §5 | |
| 5 Queue: message queue, pub/sub, delivery semantics, custom queue | Messaging | mapped | messaging-and-event-streams §1-3 | |
| 5 Conflict resolution: LWW, CRDT, keep records, custom | Conflicts | mapped | replication-and-partitioning §3 | |
| 5 Security: API security, man in the middle, authentication | Security | section gap | the-web-stack §7 | |
| 5 Timeout; exponential backoff; fail to open | Fault tolerance | mapped | reliability-and-operations §2 | |
| 5 Buffering | Buffers | mapped | messaging-and-event-streams §5 | |
| 5 Sampling | Sampling | mapped | batch-and-stream-processing §6 | |
| 5 ID generator: UUID, auto-increment, multi-machine, consistent, roughly sorted, offline, custom | Unique IDs | section gap | replication-and-partitioning §7 | |
| 5 Compression; pass only needed data (filtering, rsync deltas) | Transfer efficiency | mapped | case-studies-applications §5; estimation-and-the-design-process §4 | |
| 5 Distributed transaction: money transfer, blob and metadata, third party, DB and queue, cache and storage | Distributed transactions | proposed chapter | distributed-transactions §1, §4 | |
| 5 Cold storage | Storage tiers | mapped | storage-and-databases §5 | |
| 5 Networking: IP and port, DNS, closest region, OSI | Networking | mapped | the-web-stack §1 | |
| 5 API gateway | Gateway | mapped | architecture-styles §4 | |
| 5 Content delivery network | CDN | mapped | the-web-stack §3 | |
| 5 Monitoring: latency, QPS, error rate, storage | Monitoring | mapped | reliability-and-operations §4 | |
| 5 Full-text search: tokenise, normalise, stem, index, n-gram, ranking, indexing pipeline | Search | section gap | storage-and-databases §6 | |
| 5 Service discovery and request routing; shard discovery | Routing | mapped | replication-and-partitioning §5 | |
| 5 Product solutions | Vendor list | out of scope | | Product names date quickly (design, Risks). |
| 6 Ridesharing service | Location matching | mapped | case-studies-applications §8 | |
| 6 Top watched YouTube video | Top-K | mapped | case-studies-infrastructure §7 | |
| 6 Emoji broadcasting | Live fan-out | mapped | case-studies-applications §2 | |
| 6 Instagram | Photo sharing | mapped | case-studies-applications §4 | |
| 6 Distributed counter | Counting | mapped | case-studies-infrastructure §7 | |
| 6 Cloud file storage | File sync | mapped | case-studies-applications §5 | |
| 6 Rate limiter | Rate limiter | mapped | case-studies-infrastructure §2 | |
| 6 Chat application | Chat | mapped | case-studies-applications §2 | |
| App. 1-4 Number conversions; capacity numbers; math and product assumptions | Estimation tables | mapped | estimation-and-the-design-process §3-4 | |
| App. 5 HyperLogLog; count-min sketch | Sketches | mapped | batch-and-stream-processing §6 | |
| App. 5 Bloom filter | Bloom filters | mapped | storage-and-databases §3 | |
| App. 5 TF-IDF | Ranking | mapped | storage-and-databases §6 | |
| App. 5 Operational transform | OT | mapped | case-studies-applications §6 | |
| App. 5 Z-score | Anomaly detection | mapped | reliability-and-operations §4 | |
| App. 5 EdgeRank | Feed ranking | mapped | case-studies-applications §1 | |
| App. 5 Collaborative filtering | Recommendation | out of scope | | Machine learning. |
| App. 5 PageRank | PageRank | out of scope | | Taught in Complexity Science `dynamics-on-networks` §1; linked from case-studies-infrastructure §5. |
| App. 6 Security considerations | Security checklist | section gap | the-web-stack §7 | |
| App. 7 Framework cheat sheet | Summary | mapped | estimation-and-the-design-process §1 | |

## Section sources: the architecture books

### G62XG6CY: Gandhi, Richards & Ford, Head First Software Architecture

| Chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Software architecture demystified (four dimensions, architecture vs design, strategic vs tactical) | What architecture is | mapped | architecture-styles §1; estimation-and-the-design-process §2 | |
| 2 Architectural characteristics (the "-ilities", sourcing, limiting, composite) | Quality attributes | mapped | estimation-and-the-design-process §2 | |
| 3 The two laws of software architecture; queue vs topic trade-off; ADRs | Trade-offs, ADRs | mapped | estimation-and-the-design-process §2; messaging-and-event-streams §2 | |
| 4 Logical components; afferent and efferent coupling; Law of Demeter | Components, coupling | mapped | architecture-styles §1 | |
| 5 Categorisation: technical vs domain partitioning; monolithic vs distributed | Classifying styles | mapped | architecture-styles §1 | |
| 6 Layered architecture | Layered | mapped | architecture-styles §2 | |
| 7 Modular monolith | Modular monolith | mapped | architecture-styles §2 | |
| 8 Microkernel architecture | Microkernel | mapped | architecture-styles §3 | |
| 9 Do it yourself (TripEZ kata) | Kata | mapped | architecture-styles closing exercises | |
| 10 Microservices: granularity, data ownership, shared code, orchestration vs choreography | Microservices | mapped | architecture-styles §4; distributed-transactions §3 | |
| 11 Event-driven architecture: events vs messages, async, database topologies, hybrids | EDA | mapped | architecture-styles §5 | |
| 12 Testing your knowledge (Make the Grade kata) | Kata | mapped | architecture-styles closing exercises | |
| App. Leftovers: diagramming techniques | Diagrams | mapped | estimation-and-the-design-process §1 | |
| App. Leftovers: coding architect, expectations, soft skills, breadth vs depth, katas | The architect's role | out of scope | | Professional practice. |

### VTG294QD: Pacheco & Sgro, Principles of Software Architecture Modernization

| Chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 What's wrong with monoliths (anti-patterns, side effects, types, modular monoliths) | Monoliths | mapped | architecture-styles §2 | Team "amplifiers" are organisational, left out. |
| 2 Lack of isolation (BFF, event sourcing and CQRS, shared databases, contracts, bulkheads, fallbacks) | Isolation | mapped | architecture-styles §4; reliability-and-operations §2 | |
| 3 Distributed monoliths (shared DBs, binary and temporal coupling) | Anti-pattern | section gap | architecture-styles §7 | |
| 4 Internal shared libraries; sidecar pattern; service meshes | Libraries vs services | mapped | architecture-styles §4 | |
| 5 Assessments (build vs buy, rewrite vs refactor, backward compatibility) | Modernisation planning | section gap | architecture-styles §7 | |
| 6 Principles of proper services (SOA, contract first, OpenAPI, backward compatibility) | Service contracts | mapped | architecture-styles §4; the-web-stack §5 | |
| 7 Proper service testing (test pyramid, testing in production, chaos testing) | Testing | mapped | reliability-and-operations §5 | |
| 8 Embracing new technology: cloud accounts, serverless, Kubernetes, Kafka, NoSQL, REST/gRPC/GraphQL | Platforms | mapped | architecture-styles §6; messaging-and-event-streams §4; the-web-stack §5 | Programming-language choice is out of scope. |
| 9 Code migrations (strangler fig, lazy migrations, rollback) | Migrations | section gap | architecture-styles §7 | |
| 10 Data migrations (replication, CDC, dual writes, testing, observability) | Data migrations | section gap | architecture-styles §7; distributed-transactions §4 | |
| 11 Epilogue | Outlook | out of scope | | |

### GRGM4CJ3: Gilbert (with Lavi), Software Architecture Patterns for Serverless Systems

| Chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Architecting for innovation (lead time, integration styles, autonomous services, event-first) | Integration styles | mapped | architecture-styles §1, §5 | |
| 2 Defining boundaries (DDD, SOLID, hexagonal, event storming, subsystems, BFF/ESG/control services) | Boundaries | mapped | architecture-styles §4 | SOLID is object-level design, left out. |
| 3 Taming the presentation tier (micro frontends, offline-first, WebSocket, long polling) | Front end | out of scope | | Front-end engineering; only live updates are used, in the-web-stack §6. |
| 4 Trusting facts and eventual consistency (event hub, event sourcing, stream processing, backpressure, poison events) | Event streams | mapped | messaging-and-event-streams §4-6; batch-and-stream-processing §4 | |
| 5 Turning the cloud into the database (data life cycle, CQRS, idempotence, partition keys, CDC) | CQRS, data modelling | mapped | messaging-and-event-streams §3, §6; storage-and-databases §2 | |
| 6 A best friend for the frontend (BFF, REST vs GraphQL) | BFF | mapped | architecture-styles §4; the-web-stack §5 | |
| 7 Bridging intersystem gaps (anti-corruption layer, webhooks, circuit breaker, idempotence) | Integration | mapped | architecture-styles §4; reliability-and-operations §2 | |
| 8 Reacting to events with more events (choreography, control services, sagas, CEP) | Sagas | proposed chapter | distributed-transactions §3 | |
| 9 Running in multiple regions (topologies, failover, health checks, regional routing, replication) | Multi-region | mapped | reliability-and-operations §6 | |
| 10 Securing autonomous subsystems (IAM, perimeter, OIDC, JWT, envelope encryption) | Security | section gap | the-web-stack §7; reliability-and-operations §7 | |
| 11 Choreographing deployment and delivery (feature flags, zero downtime, canaries, contract testing) | Delivery | mapped | reliability-and-operations §5 | |
| 12 Optimizing observability (FinOps, USE and RED methods, RUM, synthetics, tuning) | Observability, cost | mapped | reliability-and-operations §4; estimation-and-the-design-process §6 | |
| 13 Don't delay, start experimenting (strangler pattern, polyglot) | Migration | section gap | architecture-styles §7 | Funding and culture are out of scope. |

### P6ECV3FJ: Reis & Housley, Fundamentals of Data Engineering

| Chapter | Topic | Status | Tutorial chapter (§) / gap target | Reason |
|---|---|---|---|---|
| 1 Data engineering described (roles, maturity, organisation) | The profession | out of scope | | Organisational. |
| 2 The data engineering lifecycle and its undercurrents | Pipeline lifecycle | proposed chapter | batch-and-stream-processing §2 | |
| 3 Designing good data architecture (principles; warehouse, lake, Lambda, Kappa, dataflow model, data mesh) | Data architectures | proposed chapter | batch-and-stream-processing §3, §5 | Principles 2 and 6 (plan for failure, loose coupling) also in architecture-styles §1. |
| 4 Choosing technologies (TCO, FinOps, build vs buy, monolith vs modular, serverless vs servers) | Technology choice | mapped | estimation-and-the-design-process §6; architecture-styles §6 | |
| 5 Data generation in source systems (OLTP, OLAP, CDC, logs, types of time) | Sources | mapped | batch-and-stream-processing §2; messaging-and-event-streams §6 | |
| 6 Storage (disks, SSD, RAM, serialisation, compression; file, block, object storage; HDFS; streaming storage; indexes and partitioning; warehouse, lake, lakehouse) | Storage | mapped | storage-and-databases §5; batch-and-stream-processing §3 | |
| 7 Ingestion (bounded vs unbounded, ETL vs ELT, schema evolution, late data, DLQ) | Ingestion | proposed chapter | batch-and-stream-processing §2, §4 | |
| 8 Queries, modelling and transformation (query optimiser, normalisation, dimensional models, streaming queries) | Transformation | mapped | storage-and-databases §2; batch-and-stream-processing §3-4 | |
| 9 Serving data for analytics, ML and reverse ETL | Serving | proposed chapter | batch-and-stream-processing §3 | ML serving is out of scope. |
| 10 Security and privacy | Security | section gap | reliability-and-operations §7 | |
| 11 The future of data engineering | Outlook | out of scope | | |
| App. A Serialisation (row, columnar, hybrid), storage engines, compression | Formats | mapped | batch-and-stream-processing §3; storage-and-databases §3 | |
| App. B Cloud networking (egress, zones, regions), CDNs | Cloud network | mapped | reliability-and-operations §6; the-web-stack §3 | |

## Classic papers as section sources

All are in Zotero, with bib entries in `references/references.bib`. Section names below were read from the PDFs
(`zotero_get_pdf_outline` for Spanner; read-only `pdftotext` of the stored PDFs for the others).

| Citation key (Zotero) | PDF | Paper sections | Tutorial chapter (§) |
|---|---|---|---|
| `lamport1978time` (P7QRNYR2) | yes | The Partial Ordering; Logical Clocks; Ordering the Events Totally (mutual exclusion) | replication-and-partitioning §3 (happens-before, clock condition, total order) |
| | | Anomalous Behavior; Physical Clocks (THEOREM on clock synchronisation) | replication-and-partitioning §3 (stated); distributed-transactions §2 (background for TrueTime) |
| `lamport2001paxos` (QQZ6RRJJ) | yes | §2 The Consensus Algorithm (problem, choosing a value, learning, progress) | consistency-and-consensus §4 |
| | | §3 Implementing a State Machine | consistency-and-consensus §4-5 (replicated state machines) |
| `ongaro2014search` (PWLY7FRX) | yes | §2 Replicated state machines | consistency-and-consensus §3 |
| | | §5.1-5.3 Raft basics, leader election, log replication | consistency-and-consensus §5 |
| | | §5.4 Safety (election restriction, committing from previous terms, §5.4.3 safety argument) | consistency-and-consensus §5 (theorem) |
| | | §5.6 Timing and availability; §6 Membership changes; §7 Log compaction; §8 Client interaction | consistency-and-consensus §5 (exercises; membership and compaction as examples) |
| `saltzer1984end` (RW4NCIZ2) | yes | The careful file transfer example; performance aspects; other examples (delivery guarantees, duplicate suppression, FIFO, transaction management) | messaging-and-event-streams §3; architecture-styles §1 |
| `gilbert2002brewer` (84ELIU7C) | yes | §2 Formal model (atomic and available data objects, partition tolerance) | consistency-and-consensus §1-2 |
| | | §3 Asynchronous networks: Theorem 1, Corollary 1.1, solutions | consistency-and-consensus §2 (theorem with proof) |
| | | §4 Partially synchronous networks: Theorem 2, solutions; weaker consistency (delayed-t consistency) | consistency-and-consensus §2 |
| `brewer2012cap` (7IRSZQ66) | **no** (IEEE paywall; HTML reprint only) | "2 of 3" is misleading; managing partitions; latency | consistency-and-consensus §2 (commentary only; no page locators until a PDF exists) |
| `ghemawat2003google` (AUY4Z5N4) | yes | §2 Design overview (architecture, single master, chunk size, metadata, consistency model) | storage-and-databases §5 |
| | | §3 System interactions (leases and mutation order, data flow, atomic record append) | storage-and-databases §5; replication-and-partitioning §1 (primary-backup) |
| | | §4-5 Master operation; fault tolerance (re-replication, garbage collection, stale replicas) | replication-and-partitioning §1; reliability-and-operations §1 |
| `dean2004mapreduce` (3WXTGZ3B) | yes | §2 Programming model; §3 Implementation (execution, master, fault tolerance, locality, backup tasks) | batch-and-stream-processing §1 |
| | | §4 Refinements (partitioning function, combiner, skipping bad records); §5 Performance (stragglers) | batch-and-stream-processing §1; performance-and-queueing §1 (tail latency) |
| `chang2006bigtable` (EB4MS6T6) | yes | §2 Data model; §3 API | storage-and-databases §1 (wide-column) |
| | | §4 Building blocks (GFS, SSTable, Chubby); §5.3-5.4 tablet serving, compactions; §6 refinements (Bloom filters, caching) | storage-and-databases §3 |
| | | §5.1-5.2 Tablet location and assignment | replication-and-partitioning §4-5 (range partitioning, routing) |
| `decandia2007dynamo` (V6LEGKRR) | yes | §4.2 Partitioning algorithm (consistent hashing, virtual nodes) | replication-and-partitioning §4 |
| | | §4.3 Replication; §4.5 Execution of get and put (R, W, N) | replication-and-partitioning §2 (quorum intersection) |
| | | §4.4 Data versioning (vector clocks) | replication-and-partitioning §3 |
| | | §4.6 Hinted handoff; §4.7 Replica synchronisation (Merkle trees); §4.8 Membership and failure detection (gossip) | replication-and-partitioning §2, §6 |
| | | §6 Experiences (balancing, divergent versions, client vs server coordination) | replication-and-partitioning §4 (load skew); case-studies-infrastructure §3 |
| `burrows2006chubby` (3EDPA33Y) | yes | Design: rationale, system structure, files and handles, locks and sequencers, events, caching, sessions and KeepAlives, fail-overs | consistency-and-consensus §6 (locks, leases, fencing with sequencers) |
| | | Mechanisms for scaling (proxies, partitioning); use, surprises and design errors | consistency-and-consensus §6 (examples); caching §3 (invalidation-based caching) |
| `corbett2012spanner` (8PTIQPRD) | yes | §2 Implementation (spanserver stack, directories and placement, data model) | distributed-transactions §2 |
| | | §3 TrueTime; §4 Concurrency control (Paxos leader leases, timestamps for RW and RO transactions, commit wait) | distributed-transactions §2 (external consistency, proved at the paper's level) |
| `kreps2011kafka` (BLHD3E5S) | yes | §3.1 Efficiency on a single partition; §3.2 Distributed coordination (consumer groups, partitions); §3.3 Delivery guarantees | messaging-and-event-streams §3-4 |
| | | §4 Usage at LinkedIn | batch-and-stream-processing §2 (log-based pipelines) |

## Approved chapter list (reading order)

Approved by the owner on 2026-11-27 as proposed (14 chapters); chapter 13, ML, LLM and agent systems, added by the owner the same day (15 chapters).

Chapters from the proposal keep their wording; **new** marks a proposed chapter, **split** a proposed split of a listed
chapter. "(gap)" marks a section that comes from a section gap. Software support uses three kinds:
- **D2**: architecture, data-flow and sequence diagrams, as `figures/<name>.d2`;
- **Run**: code run by the checker in `.venv-systems` (Python 3.12, SimPy, NumPy, matplotlib, `sqlite3`), with fixed
  seeds and recorded output;
- **Illustrative**: code marked `{.code .illustrative}` and never run, used where a live service would be needed.

| # | Slug | Title | Sections (sources) | Software support |
|---|---|---|---|---|
| 1 | estimation-and-the-design-process | Estimation and the design process | §1 The design process: requirements, API, high-level design, deep dives; C4 levels and diagrams (Xu 3; Liu 2; Tan 2, App. C; Sinha 1; Gandhi App.). §2 Architectural characteristics, trade-offs and decision records (Gandhi 1-3; Tan 1, 3). §3 Units, powers of two and latency numbers (Xu 2; Liu 5, App. 1-2). §4 Estimating load: QPS, peak, storage, bandwidth, servers (Xu 2; Liu 2, 5, App. 3-4; Sinha 9-14 scale sections). §5 Availability arithmetic: nines, series and parallel composition (Xu 2; Sinha 2; Tan 3). §6 Estimating cost (gap) (Tan 3; Reis 3-4; Gilbert 12). | D2: C4 context and container diagrams of the pilot's running example. Run: plain-Python estimates (QPS, storage, nines) printed with units; a NumPy Monte Carlo check of series and parallel availability. Illustrative: none. |
| 2 | the-web-stack | The web stack | §1 The request path: DNS, TCP, TLS, HTTP, OSI layers (Sinha 4; Liu 5 networking; Tan 6; Xu 1). §2 Load balancing: L4 vs L7, algorithms, health checks, global load balancing (Sinha 4; Tan 3; Xu 1). §3 Content delivery networks and edge caching (Xu 1; Tan 1, 13; Liu 5; Reis App. B). §4 Stateless application servers, sessions, vertical vs horizontal scaling (Xu 1; Tan 3, 6; Sinha 2). §5 APIs: REST, RPC, GraphQL; idempotency keys, pagination, versioning and backward compatibility (Tan 6; Sinha 8; Liu 2, 5; Pacheco 6; Gilbert 6). §6 Real-time delivery: polling, long polling, SSE, WebSocket (Liu 5; Xu 12; Tan 6). §7 Authentication and authorisation: sessions, tokens, OAuth 2.0 and OpenID Connect (gap) (Tan App. B; Sinha 8; Liu 5, App. 6; Gilbert 10). | D2: request-path sequence diagrams, LB topologies, the OAuth authorisation-code flow. Run: load-balancing algorithms (round robin, least connections, random, power of two choices) simulated in SimPy or plain Python; a toy HTTP request and response parsed with the standard library. Illustrative: nginx and HTTP-server configs, curl sessions. |
| 3 | performance-and-queueing | Performance and queueing | §1 Latency, throughput, percentiles and tail latency; fan-out amplification (Tan 3; Sinha 2; Xu 2; MapReduce §3.6). §2 Little's law. §3 Poisson arrivals and the M/M/1 queue. §4 Multi-server queues: M/M/c, Erlang C, capacity planning. §5 Open and closed systems, load testing, saturation and the knee of the curve (Pacheco 7 stress testing; Gilbert 12 USE). | D2: queueing-network diagrams. Run: SimPy discrete-event simulations of M/M/1 and M/M/c with fixed seeds, checked against the closed forms (the spec's Little's-law scenario); NumPy for percentile estimates. Illustrative: a load-testing script (the spec's load-test scenario). Sources: see source gaps; none of the benchmarks treats queueing quantitatively. |
| 4 | storage-and-databases | Storage and databases | §1 Data models: relational, key-value, document, wide-column, graph (Sinha 5; Liu 5; Bigtable §2-3; Pacheco 8). §2 Schema design, normalisation and denormalisation (Liu 2, 5; Tan 4; Reis 8; Gilbert 5). §3 Indexes and storage engines: B-trees, LSM trees and SSTables, Bloom filters (Xu 6; Liu 5; Bigtable §4-6; Sinha 3; Reis App. A). §4 Transactions on one node: ACID, isolation levels, locking and optimistic concurrency (Liu 5; Tan 2). §5 File, block and object storage; distributed file systems (Reis 6; Tan 4; GFS §2-5; Liu 5 cold storage). §6 Full-text search and inverted indexes (gap) (Liu 5, App. 5; Tan 2; Sinha 11). | D2: storage-engine read and write paths, GFS architecture. Run: `sqlite3` for schemas, `EXPLAIN QUERY PLAN` with and without indexes, isolation anomalies with two connections, FTS5 inverted indexes; plain-Python LSM tree and Bloom filter, with the false-positive rate checked against the formula. Illustrative: PostgreSQL- or Cassandra-specific DDL. |
| 5 | replication-and-partitioning | Replication and partitioning | §1 Leader-follower replication, synchronous vs asynchronous, failover (Xu 1; Tan 4; Liu 5; GFS §3, §5). §2 Multi-leader and leaderless replication; quorums; sloppy quorums, hinted handoff, anti-entropy with Merkle trees (Tan 4; Liu 5; Xu 6; Sinha 5; Dynamo §4.3, §4.5-4.7). §3 Ordering events: happens-before, Lamport clocks, version vectors, conflict resolution (LWW, CRDTs) (Lamport 1978; Dynamo §4.4; Xu 6; Liu 5). §4 Partitioning: range and hash, consistent hashing, virtual nodes, rebalancing, hot keys (Xu 1, 5; Sinha 3, 5; Liu 5; Dynamo §4.2, §6; Bigtable §5.1). §5 Secondary indexes on partitioned data and request routing (Liu 5; Bigtable §5.1-5.2). §6 Failure detection and membership: heartbeats, gossip (Xu 6; Tan 3; Sinha 5; Dynamo §4.8). §7 Unique identifiers without coordination: UUIDs, ticket servers, Snowflake (gap) (Xu 7; Liu 5). | D2: replication topologies, the hash ring with virtual nodes, quorum read and write sequences. Run: plain Python for consistent hashing (load per node and keys moved on join, against the theorem), quorum simulations with stale replicas, Lamport and vector clocks on recorded message traces, Merkle-tree diffing, gossip spread (rounds to full infection), UUID collision probability; `sqlite3` for leader-follower log shipping on two files. Illustrative: database replication configs. |
| 6 | consistency-and-consensus | Consistency and consensus | §1 Consistency models: linearisability, sequential, causal, eventual; session guarantees (Sinha 2; Xu 6; Gilbert-Lynch §2). §2 The CAP theorem and PACELC (Gilbert-Lynch §2-4; Sinha 3; Xu 6; Brewer 2012). §3 The consensus problem, replicated state machines, FLP (Raft §2; Sinha 3; Paxos §1). §4 Paxos (Paxos §2-3; Sinha 3). §5 Raft: election, log replication, safety (Raft §5-8; Sinha 3). §6 Coordination services: locks, leases, fencing tokens (Chubby; Tan 3). §7 Byzantine faults (gap, low priority) (Sinha 3). | D2: partition scenarios for the CAP proof, Raft message sequences, Chubby cell. Run: a plain-Python linearisability checker for small histories; the two-node CAP construction as a deterministic script; single-decree Paxos and simplified Raft in a seeded discrete-event simulation (SimPy) with message loss and leader crashes, checking the safety invariants on every run. Illustrative: ZooKeeper or etcd client code. |
| 7 | caching | **split** Caching | §1 Where caches sit and the access patterns: cache-aside, read-through, write-through, write-back, write-around (Xu 1; Tan 4; Liu 5; Sinha 6). §2 Eviction and hit ratio: LRU, LFU, TTL; skewed (Zipf) workloads (Sinha 6; Tan 4). §3 Invalidation and consistency; thundering herd and stampede protection (Liu 5; Tan 4; Chubby caching). §4 Distributed caches and partitioning (Sinha 6; Tan 4). §5 HTTP caching and cache warming (Tan 4, 13). | D2: cache-aside and write-through flows (the spec's cache-aside scenario). Run: plain-Python LRU/LFU caches replayed on seeded Zipf traces, hit ratio against cache size; SimPy model of a stampede with and without request coalescing. Illustrative: Redis and Memcached commands. |
| 8 | messaging-and-event-streams | **split** Messaging and event streams | §1 Synchronous and asynchronous work; queues and workers (Xu 1; Liu 5; Sinha 7). §2 Publish-subscribe and topics; queue vs topic trade-offs (Sinha 7; Gandhi 3; Tan 4). §3 Delivery semantics: at most once, at least once, effectively once; idempotent consumers; the end-to-end argument (Liu 5; Gilbert 4-5; Saltzer-Reed-Clark; Kafka §3.3). §4 The partitioned log: offsets, consumer groups, ordering (Kafka §3; Sinha 7; Pacheco 8). §5 Failure handling: retries, dead-letter queues, poison messages, backpressure, buffering (Tan 3; Gilbert 4; Liu 5). §6 Event sourcing, CQRS and change data capture (Tan 5; Gilbert 4-5; Pacheco 2; Reis 5). | D2: producer-broker-consumer topologies, consumer groups over partitions, outbox flow. Run: SimPy producer-consumer queues (backlog growth when the arrival rate exceeds the service rate, links to chapter 3); a plain-Python append-only log with offsets and replay; duplicate delivery with and without idempotency keys; event-sourced state rebuilt from a log in `sqlite3`. Illustrative: Kafka and RabbitMQ client code. |
| 9 | distributed-transactions | **new** Distributed transactions | §1 Atomic commitment and two-phase commit (Tan App. D, 5; Liu 5). §2 Global time and Spanner: TrueTime, commit wait, external consistency (Spanner §3-4; Lamport 1978 physical clocks). §3 Sagas: choreography, orchestration, compensation (Tan 5; Gilbert 8; Gandhi 10). §4 The transactional outbox, CDC and dual writes; reconciliation (Tan 5; Pacheco 10; Gilbert 5; Liu 5). §5 Concurrency across services: reservations, locks and optimistic checks (Liu 5; Tan 15). | D2: 2PC and saga sequence diagrams, outbox architecture. Run: 2PC in a seeded simulation with coordinator crashes (showing blocking); TrueTime commit wait with a simulated uncertainty interval; a saga with compensations over `sqlite3` databases; outbox relay over two `sqlite3` files. Illustrative: workflow-engine code. |
| 10 | batch-and-stream-processing | **new** Batch and stream processing | §1 Batch processing and MapReduce (MapReduce §2-4; Liu 5). §2 Data pipelines: sources, ingestion, ETL and ELT, orchestration (Reis 2, 5, 7; Tan 1, 4; Kafka §4). §3 Analytical storage: row vs columnar formats, warehouses, lakes (Reis 3, 6, 8, App. A). §4 Stream processing: event time and processing time, windows, watermarks, late data, checkpointing (Liu 5; Reis 7-8; Gilbert 4; Tan 4). §5 Lambda and Kappa architectures (Liu 5; Tan 4, 17; Reis 3). §6 Approximate aggregation: sampling, count-min sketch, HyperLogLog (Tan 17; Sinha 3; Liu 5, App. 5). | D2: pipeline DAGs, Lambda and Kappa diagrams. Run: a plain-Python MapReduce (word count, inverted index) with a combiner; tumbling and sliding windows with watermarks on a seeded out-of-order stream; `sqlite3` star schema queries; count-min and HyperLogLog against exact counts. Illustrative: Spark, Flink and Airflow code. |
| 11 | architecture-styles | Architecture styles | §1 Components, coupling and partitioning; monolithic vs distributed deployment (Gandhi 1, 4-5; Gilbert 1; Reis 3). §2 Layered architecture and the modular monolith (Gandhi 6-7; Pacheco 1; Tan App. A). §3 Microkernel (plugin) architecture (Gandhi 8). §4 Microservices: granularity, data ownership, gateways, BFF, service discovery, sidecars and meshes, contracts (Gandhi 10; Tan 6, App. A; Sinha 4; Pacheco 2, 4, 6; Gilbert 2, 6-7). §5 Event-driven architecture (Gandhi 11; Tan 5; Gilbert 1, 4). §6 Serverless and managed services (Tan 1; Reis 4; Pacheco 8; Gilbert). §7 Evolving an architecture: distributed monoliths, strangler fig, code and data migrations (gap) (Pacheco 3, 5, 9-10; Gilbert 13). | D2: the main diagrams of the chapter: each style's component and deployment views, the strangler-fig migration. Run: little; a plain-Python coupling metric (afferent and efferent coupling, instability) on a small component graph. Illustrative: service skeletons, Kubernetes manifests. |
| 12 | reliability-and-operations | Reliability and operations | §1 Faults, failures and dependability; SLIs, SLOs and error budgets (Sinha 2; Tan 3; SRE book once a PDF exists). §2 Fault-tolerance patterns: timeouts, retries with backoff and jitter, circuit breakers, bulkheads, fallbacks (Tan 3; Liu 5; Pacheco 2; Gilbert 7). §3 Overload control: rate limiting (token and leaky bucket, windows), load shedding, backpressure (Xu 4; Tan 8; Sinha 8; Liu 6). §4 Observability: logs, metrics, traces, alerting; USE and RED; anomaly detection and data-quality audits (Tan 2, 10; Sinha 8; Liu 5; Gilbert 12). §5 Safe change: CI/CD, canaries, feature flags, zero-downtime schema change, testing in production, chaos testing (Gilbert 11; Pacheco 7; Tan 1). §6 Multi-region deployment, failover and disaster recovery (Gilbert 9; Xu 1, 6; Reis App. B). §7 Security operations: least privilege, secrets, encryption in transit and at rest, audit (gap) (Gilbert 10; Reis 10; Tan 3). | D2: failure-domain and multi-region diagrams, circuit-breaker state machine. Run: SimPy retry storms with and without jittered backoff; token-bucket and sliding-window limiters on seeded request traces, checked against the token-bucket bound; error-budget arithmetic; a circuit breaker on a simulated flaky dependency. Illustrative: Prometheus queries, alert rules, deployment pipelines. |
| 13 | ml-llm-and-agent-systems | **new** ML, LLM and agent systems | §1 The ML system: training and serving pipelines, feature stores, train/serve skew, data and model versioning, hidden technical debt (Huyen DMLS 1-2, 7-9; Sculley 2015). §2 Model serving: batch vs online inference, dynamic batching and its latency-throughput trade-off, model cascades, shadow and canary rollout, drift monitoring (Huyen DMLS 7-9; recalls performance-and-queueing). §3 LLM inference: prefill and decode, KV-cache memory arithmetic, continuous batching, paged KV cache, speculative decoding, cost per token (Pope 2022; Orca; vLLM; Leviathan 2023; Huyen AIE 9). §4 Retrieval-augmented generation: embeddings, chunking, approximate nearest-neighbour indexes (HNSW, IVF), hybrid search, semantic caching, retrieval evaluation (Lewis 2020; Malkov-Yashunin 2018; Johnson-Douze-Jegou 2019; Kamath 7; Huyen AIE 6). §5 Agents: the tool-calling loop, planning and reflection, workflows vs autonomous agents, tool protocols (MCP), durable and idempotent tool calls, budgets and timeouts, multi-agent patterns, compounding step failures (ReAct; Reflexion; Toolformer; Wang et al. 2024; Arunkumar et al. 2026; MCP spec; Huyen AIE 6). §6 Operating AI systems: evaluation pipelines, guardrails, prompt injection and tool permissions, observability of traces, cost and rate control (Huyen AIE 3-4, 10; Berryman). | D2: training/serving pipeline, RAG pipeline, agent loop with tool server. Run: SimPy simulation of static vs continuous batching; KV-cache sizing in NumPy; brute-force vs IVF nearest-neighbour recall and speed in NumPy; a deterministic agent loop over a stub model with retries, budgets and an idempotency table; reliability of an n-step agent. No network calls, no model weights. |
| 14 | case-studies-infrastructure | **split** Case studies: infrastructure services | §1 URL shortener (Xu 8; Sinha 9). §2 Rate limiter (Xu 4; Tan 8; Liu 6). §3 Distributed key-value store (Xu 6; Sinha 5; Dynamo). §4 Notification service (Xu 10; Tan 9). §5 Web crawler (Xu 9). §6 Content delivery network (Tan 13). §7 Counting and top-K: distributed counters, dashboards (Tan 17; Liu 6; Tan 10 as exercises). | D2: one full architecture per section (the URL shortener is the spec's D2 scenario). Run: the estimate of each design (chapter 1 style), plus one algorithmic core per section: base-62 encoding and collision check; limiter under bursty traffic; a three-node in-process KV store with quorums; crawler frontier politeness queue; CDN hit ratio by TTL; count-min top-K. Illustrative: service code. |
| 15 | case-studies-applications | **split** Case studies: applications | §1 News feed (Xu 11; Tan 16; Sinha 11; Liu App. 5 EdgeRank). §2 Chat and live fan-out (Xu 12; Tan 14; Liu 6 chat, emoji broadcasting). §3 Search autocomplete (Xu 13; Tan 11). §4 Media upload and streaming (Xu 14; Sinha 12, 14; Tan 12; Liu 6 Instagram). §5 File storage and sync (Xu 15; Liu 6 cloud file storage, 5 rsync). §6 Collaborative editing: OT and CRDTs (Sinha 13; Liu App. 5). §7 Booking and inventory (Tan 15; Tan 7 as warm-up). §8 Location services: proximity search and ride matching (Sinha 10; Liu 6). | D2: one full architecture per section. Run: fan-out on write vs read cost model; a trie with top-k caching; chunked deduplication with content hashes; a list CRDT merge; booking without double booking in `sqlite3`; geohash or quadtree proximity search. Illustrative: client and service code. |

## Proposed chapters

| Slug | Title | Position (after) | Depends on | Zotero sources | Reason (benchmarks and size) | Decision | Status |
|---|---|---|---|---|---|---|---|
| caching / messaging-and-event-streams | Caching; Messaging and event streams | consistency-and-consensus (both, in that order) | caching: replication-and-partitioning (§4 consistent hashing), consistency-and-consensus (§1); messaging: performance-and-queueing, caching | Caching: `sinhaSystemDesignGuide2024` ch. 6; `tanAcingSystemDesign2024` ch. 4; `liuSystemDesignInterview2020` ch. 5; `burrows2006chubby`. Messaging: `sinhaSystemDesignGuide2024` ch. 7; `kreps2011kafka`; `saltzer1984end`; `gilbertSoftwareArchitecturePatterns2024` ch. 4-5; `tanAcingSystemDesign2024` ch. 5 | Split of the listed "caching and asynchronous processing". Each half is a whole chapter in Sinha-Chopra (ch. 6 and ch. 7), and each has long sections in Tan and Liu. Together they need eleven sections, against five to seven elsewhere. Their questions differ: hit ratios and invalidation on one side, delivery semantics, ordering and replay on the other. If the owner prefers one chapter, both section lists stand as written. | approved 2026-11-27 | approved |
| distributed-transactions | Distributed transactions | messaging-and-event-streams | storage-and-databases (§4), consistency-and-consensus, messaging-and-event-streams | `tanAcingSystemDesign2024` ch. 5, App. D; `liuSystemDesignInterview2020` ch. 5 (distributed transaction, concurrency control); `gilbertSoftwareArchitecturePatterns2024` ch. 8; `corbett2012spanner`; `pachecoPrinciplesSoftwareArchitecture2024` ch. 10 | A whole chapter in Tan (ch. 5) and in Gilbert (ch. 8), plus an appendix (Tan D) and a long Liu section. No listed chapter contains it: consensus decides one value, while atomic commitment, sagas and outboxes coordinate several databases or services. Spanner is a classic paper that would otherwise have no home. Five sections. | approved 2026-11-27 | approved |
| batch-and-stream-processing | Batch and stream processing | distributed-transactions | storage-and-databases, messaging-and-event-streams | `dean2004mapreduce`; `reisFundamentalsDataEngineering2022` ch. 2-3, 6-8; `liuSystemDesignInterview2020` ch. 5 (batch, stream, Lambda); `tanAcingSystemDesign2024` ch. 4, 17; `kreps2011kafka` §4 | Covers the candidate "data pipelines and batch processing". It has a whole book among the sources (Reis-Housley), several sections in Liu and Tan, and a classic paper (MapReduce). No listed chapter contains it: the proposal's "asynchronous processing" is about messaging, not bulk computation. Six sections, including the sketches. | approved 2026-11-27 | approved |
| ml-llm-and-agent-systems | ML, LLM and agent systems | reliability-and-operations | performance-and-queueing, caching, messaging-and-event-streams, batch-and-stream-processing, reliability-and-operations | Huyen 2022, 2025 (metadata only); Sculley 2015; Orca; vLLM; Pope 2022; Leviathan 2023; Lewis 2020; HNSW; FAISS; ReAct; Reflexion; Toolformer; Wang et al. 2024; Arunkumar et al. 2026; Kamath; Berryman; MCP spec | No benchmark covers it; the owner asked for it as a system-design view of ML, LLMs and agents. Six sections, about the size of caching. | approved (owner, 2026-11-27) | sources to add |
| case-studies-infrastructure / case-studies-applications | Case studies: infrastructure services; Case studies: applications | reliability-and-operations (both, in that order) | all earlier chapters | Xu ch. 4, 6, 8-15; Tan ch. 7-17; Sinha ch. 9-14; Liu ch. 6; `decandia2007dynamo` | Split of the listed "case studies". The benchmarks hold 35 designs: Xu 11, Tan 11, Sinha 6, Liu 8. With overlaps merged there are 15 distinct topics. Each needs ten examples and ten exercises, so one chapter would have 15 sections. The split groups building blocks (shorteners, limiters, stores, crawlers, CDNs, counters) and user-facing products (feeds, chat, media, sync, editing, booking, location), with seven and eight sections. | approved 2026-11-27 | approved |

## Section gaps

All are written into the plan above as "(gap)" sections.

| Chapter | Missing topic | Benchmarks | Status |
|---|---|---|---|
| estimation-and-the-design-process | Estimating cost (§6) | Tan 3; Xu 14 (cost-saving); Reis 3-4 (FinOps, TCO); Gilbert 12 | open |
| the-web-stack | Authentication and authorisation (§7) | Tan App. B; Sinha 8; Liu 5, App. 6; Gilbert 10 | open |
| storage-and-databases | Full-text search and inverted indexes (§6) | Liu 5, App. 5; Tan 2; Sinha 11 | open |
| replication-and-partitioning | Unique identifiers without coordination (§7) | Xu 7; Liu 5 | open |
| consistency-and-consensus | Byzantine faults (§7, low priority) | Sinha 3 | open |
| architecture-styles | Evolving an architecture: distributed monoliths, strangler fig, migrations (§7) | Pacheco 3, 5, 9-10; Gilbert 13 | open |
| reliability-and-operations | Security operations (§7) | Gilbert 10; Reis 10; Tan 3 | open |

## Candidates judged

| Candidate | Classification | Reason |
|---|---|---|
| Security and authentication | two section gaps: the-web-stack §7 (authentication and authorisation) and reliability-and-operations §7 (security operations) | No benchmark has a security chapter, only Tan's appendix B and sections in Sinha 8 and Liu 5. Gilbert 10 and Reis 10 are whole chapters, but in section-source books, and each is a checklist of practices. Cryptography itself is outside the tutorial's subject, and the library has no security textbook to prove anything from. Two sections place authentication where requests enter and the operational practices with operations. |
| Observability | section of reliability-and-operations (§4) | In every benchmark as sections (Tan 2, Sinha 8, Liu 5). Only Gilbert 12 gives it a chapter. One section with logs, metrics, traces, alerting and audits fits the chapter. |
| Data pipelines and batch processing | proposed chapter `batch-and-stream-processing` | See proposals. |
| ML system design | proposed chapter `ml-llm-and-agent-systems` (added by the owner, 2026-11-27) | Earlier judged out of scope: no benchmark has a chapter on it, only the recommendation service in Sinha 14, collaborative filtering in Liu App. 5, and ML control flow in Gilbert 8. The machine-learning tutorials teach models. A feature store or model-serving design could become a later exercise in case-studies-applications if the owner wants one. |
| Rate limiting | section of reliability-and-operations (§3, algorithms and the token-bucket bound) and a case study (case-studies-infrastructure §2) | A whole design chapter in Xu (4) and Tan (8), but both mix the algorithms (a reliability mechanism) with the service design (a case study). Splitting them keeps each part in its subject. |
| Unique IDs | section gap of replication-and-partitioning (§7) | One chapter in Xu (7) and a section in Liu. It is a single question (unique, roughly ordered identifiers without coordination), so it is one section. It uses the birthday bound from the mathematics tutorial. |
| Search | section gap of storage-and-databases (§6), with autocomplete as a case study (case-studies-applications §3) | Sections in Liu, Tan and Sinha, and no whole chapter on search indexing. The inverted index is an index structure, so it sits with B-trees and LSM trees, and SQLite FTS5 runs it. |
| API design | section of the-web-stack (§5) | Sections in all four benchmarks (Tan 6, Sinha 8, Liu 2 and 5) and in Pacheco 6 and Gilbert 6. One section covering paradigms, idempotency, pagination and compatibility is enough. |
| Cost | section gap of estimation-and-the-design-process (§6) | Sections in Tan 3, Reis 3-4 and Gilbert 12. Cost is estimated with the same arithmetic as load and storage, so it closes the estimation chapter. |

## Results to state as theorems or propositions

Hypotheses are stated in full in each chapter. "Proof" names where the proof comes from. Spec: a result with a published
proof is a theorem or proposition and is proved; FLP is stated only.

| Result | Chapter (§) | Statement (short) | Source of statement and proof |
|---|---|---|---|
| Availability of series and parallel systems | estimation-and-the-design-process §5 | With independent failures, a chain of components is up with probability $\prod a_i$ and a redundant group with $1 - \prod (1 - a_i)$ | Elementary probability (maths `sec-probability-spaces`, independence); figures from Xu 2, Sinha 2. No paper needed. |
| Fan-out tail amplification | performance-and-queueing §1 | If each of $n$ independent calls is slow with probability $p$, a request that waits for all of them is slow with probability $1 - (1 - p)^n$ | Elementary; motivated by MapReduce §3.6 (stragglers). `dean2013tail` (added 2026-11-27). |
| Little's law | performance-and-queueing §2 | $L = \lambda W$ for a stable system with long-run averages | `zukerman2013introduction` (added 2026-11-27), with its proof. |
| M/M/1 | performance-and-queueing §3 | For $\rho = \lambda/\mu < 1$: $\pi_n = (1 - \rho)\rho^n$, $L = \rho/(1 - \rho)$, $W = 1/(\mu - \lambda)$ | `zukerman2013introduction`. The birth-death chain uses Markov chains from ML maths `sec-msf-stochastic-processes` and Complexity Science `random-processes` §2. |
| M/M/c and Erlang C | performance-and-queueing §4 | Stationary distribution, probability of waiting $C(c, a)$, mean wait | `zukerman2013introduction`. |
| Quorum intersection | replication-and-partitioning §2 | If $R + W > N$, every read quorum meets every write quorum, so a read sees the latest acknowledged write when there are no concurrent writes and no sloppy quorums | Statement: Dynamo §4.5, Sinha 5 ("Using r and w"), Xu 6. Proof by counting (pigeonhole), in the chapter. Gifford 1979 (weighted voting) is the original but not in the library (optional). |
| Lamport clock condition and total order | replication-and-partitioning §3 | Rules IR1-IR2 give $a \to b \Rightarrow C(a) < C(b)$; ties broken by process order give a total order extending $\to$ | `lamport1978time`, "Logical Clocks" and "Ordering the Events Totally", with the paper's proof. |
| Vector clocks characterise causality | replication-and-partitioning §3 | $a \to b \iff V(a) < V(b)$ | Used by Dynamo §4.4 and Xu 6 without proof. Both directions: `mattern1988virtual` (added 2026-11-27). |
| Physical clock synchronisation | replication-and-partitioning §3 (stated) | Lamport's THEOREM bounding clock skew under rule IR2' | `lamport1978time`, "Physical Clocks". Stated, with the proof referred to the paper. |
| Consistent hashing load | replication-and-partitioning §4 | With $n$ nodes at uniform random positions, each node owns an expected $1/n$ of the ring, and a join moves an expected $K/(n+1)$ of $K$ keys. The largest arc is $\Theta(\log n / n)$ with high probability, and $v$ virtual nodes per node reduce the spread | Expectations proved in the chapter from uniform spacings (maths `sec-random-variables`). Dynamo §4.2 and §6.2 give the virtual-node motivation and the measured skew. High-probability bound: `karger1997consistent` (added 2026-11-27). |
| Bloom-filter false-positive rate | storage-and-databases §3 | With $m$ bits, $k$ hashes and $n$ keys, $p \approx (1 - e^{-kn/m})^k$, minimised at $k = (m/n)\ln 2$ | Stated in Sinha 3 and Liu App. 5, used in Bigtable §6. Proof: `broder2004network`; original: `bloom1970space` (metadata only); both added 2026-11-27. The chapter's derivation uses the independence approximation explicitly. |
| UUID collision bound | replication-and-partitioning §7 | The birthday bound $1 - e^{-n^2/2N}$ for $n$ random IDs in a space of size $N$ | Maths probability `exr-prob-birthday`; Xu 7, Liu 5 for the setting. |
| CAP theorem (Gilbert-Lynch) | consistency-and-consensus §2 | In the asynchronous model, no read/write register is both atomic and available in all fair executions, including those in which messages are lost (Theorem 1, Corollary 1.1). The same holds in the partially synchronous model (Theorem 2) | `gilbert2002brewer` §2-4, with the paper's proofs. The spec's CAP scenario. |
| FLP impossibility (stated) | consistency-and-consensus §3 | No deterministic consensus protocol in the asynchronous model tolerates one crash failure | Stated in Sinha 3, cited by Paxos Made Simple [1]. `fischer1985impossibility` (added 2026-11-27). |
| Paxos safety | consistency-and-consensus §4 | Only a proposed value is chosen, only one value is chosen, and a learner learns only a chosen value (via invariant P2c) | `lamport2001paxos` §2.2, with the paper's argument. |
| Raft safety | consistency-and-consensus §5 | Election Safety, Log Matching, Leader Completeness and State Machine Safety | `ongaro2014search` Fig. 3, §5.2-5.4; Leader Completeness and State Machine Safety proved at the paper's level (§5.4.3). |
| Two-phase commit: safety and blocking | distributed-transactions §1 | 2PC never commits at one participant and aborts at another; a participant that has voted yes cannot decide while the coordinator is unreachable | Tan App. D (description). The blocking argument is in the chapter. **Source gap** for a textbook proof: van Steen-Tanenbaum once its PDF is attached. |
| Spanner external consistency | distributed-transactions §2 | With TrueTime bounds and commit wait, if $T_1$ commits before $T_2$ starts then $s_1 < s_2$ | `corbett2012spanner` §4.1.2, with the paper's proof. |
| Token-bucket bound | reliability-and-operations §3 | A bucket of capacity $b$ refilled at rate $r$ admits at most $b + rt$ requests in any interval of length $t$ | Algorithm from Xu 4 and Tan 8; proof elementary, in the chapter. |
| Count-min error bound | batch-and-stream-processing §6 | With width $\lceil e/\varepsilon \rceil$ and depth $\lceil \ln(1/\delta) \rceil$, the estimate exceeds the true count by more than $\varepsilon N$ with probability at most $\delta$ | Used in Tan 17 and Sinha 3 without proof. `cormode2005improved` (added 2026-11-27), with its proof. |
| HyperLogLog standard error (stated) | batch-and-stream-processing §6 | Relative standard error about $1.04/\sqrt{m}$ | Sinha 3, Liu App. 5. Stated only; Flajolet et al. 2007 is not in the library. |

## Prerequisites from other tutorials

Links are cross-tutorial and allowed (design C10). "Maths" is Fundamentals of Mathematics for Physicists
(`fundamentals-of-mathematics-for-physicists/`), "ML maths" is Fundamentals of Mathematics for Machine Learning
(`fundamentals-of-mathematics-for-machine-learning/`), and "Complexity" is the Complexity Science tutorial.

| Chapter | Needs |
|---|---|
| estimation-and-the-design-process | Maths probability `sec-probability-spaces` (independence, for availability composition), `sec-random-variables` (expectation). |
| the-web-stack | None. Probability `sec-random-variables` for the randomised load-balancing examples. |
| performance-and-queueing | Maths probability `sec-random-variables` (exponential, binomial and Poisson distributions), `sec-limit-theorems` (law of large numbers, used in Little's law; the Poisson limit, for Poisson arrivals); ML maths `mathematical-and-statistical-foundations` `sec-msf-stochastic-processes` (Markov property); Complexity `random-processes` §2 (Markov chains and the master equation, for birth-death chains). Continuous-time chains and the Poisson process are taught in the chapter, since no tutorial has them. |
| storage-and-databases | Maths probability `sec-random-variables` (for Bloom filters). |
| replication-and-partitioning | Maths probability `sec-random-variables` (uniform spacings, for consistent hashing), the birthday problem `exr-prob-birthday` (unique IDs); sets-relations-topology `sec-relations-products` (relations; partial orders are defined in the chapter, for happens-before); Complexity `dynamics-on-networks` §2 (epidemic spreading, for gossip). |
| consistency-and-consensus | Maths sets-relations-topology `sec-relations-products` (relations, for consistency models as orders on histories). |
| caching | Maths probability `sec-random-variables`; Complexity `fractals-and-scaling` §4 (power laws, for Zipf workloads). |
| messaging-and-event-streams | This tutorial's performance-and-queueing §2-3. |
| distributed-transactions | This tutorial's consistency-and-consensus. |
| batch-and-stream-processing | Maths probability `sec-random-variables`, `sec-limit-theorems` (Chebyshev and union bounds, for sketches), `sec-statistics` (sampling estimators). |
| architecture-styles | None; Complexity `networks` §1 (graph measures) for the coupling examples. |
| reliability-and-operations | Maths probability `sec-statistics` (estimators and confidence intervals, for SLO measurement and anomaly detection). |
| ml-llm-and-agent-systems | performance-and-queueing (batching, tail latency), caching, messaging-and-event-streams, batch-and-stream-processing, reliability-and-operations; the machine-learning tutorials for the models themselves (linked, not taught). |
| case-studies-infrastructure, case-studies-applications | All earlier chapters; Complexity `dynamics-on-networks` §1 (PageRank) for the crawler. |

## Source gaps

**Missing from Zotero, needed for the planned theorems.** Free copies are noted where known, to be confirmed. They
would go through the same approval as references-proposal.md.
- **Queueing theory (performance-and-queueing §2-4).** This is the largest gap: no item in the library states or proves
  Little's law, M/M/1 or M/M/c. Semantic and title searches on 2026-11-27 found only general probability texts
  (Kallenberg `UCFQEEAW`, Cufaro Petroni `789IXIC2`, Gusak et al. `ALSR5FDK`), with Poisson processes but no queues.
  Options:
  - Zukerman, *Introduction to Queueing Theory and Stochastic Teletraffic Models* (free, arXiv:1307.2968);
  - Little 1961, "A Proof for the Queuing Formula L = λW" (Operations Research; paywalled);
  - Harchol-Balter, *Performance Modeling and Design of Computer Systems* (commercial).

  Without one of them the chapter cannot meet the citation requirement.
- **FLP**: Fischer, Lynch & Paterson 1985, JACM 32(2) (author copies circulate).
- **Vector clocks**: Mattern 1988 or Fidge 1988.
- **Consistent hashing**: Karger et al. 1997, STOC (free from MIT).
- **Bloom filters**: Bloom 1970, CACM 13(7), or Broder & Mitzenmacher 2004, *Internet Mathematics* (free).
- **Count-min sketch**: Cormode & Muthukrishnan 2005, *J. Algorithms*; optionally Flajolet et al. 2007 for
  HyperLogLog.
- **Tail latency (optional)**: Dean & Barroso 2013, "The Tail at Scale", CACM.

**Closed on 2026-11-27 (owner-approved).** Added to Zotero through the desktop connector, each with its citation key,
a bib entry with `zotero`/`zoteropdf`, and a `tutorial-reading-note` child note:

| Citation key | Zotero item | PDF | Closes |
|---|---|---|---|
| `zukerman2013introduction` | `7EYVLVB5` (Textbooks) | `4BU53CJJ`, arXiv v27 (2025) | queueing: Little's law, M/M/1, M/M/c, Erlang C |
| `fischer1985impossibility` | `42SA3BV8` | `X5XLVUIF`, MIT TDS group copy | FLP |
| `mattern1988virtual` | `45CZ9XKZ` | `P884B9GR`, author's copy (ETH) | vector clocks, both directions |
| `karger1997consistent` | `ZUEJZYGK` | `CA685T3H`, authors' copy (MIT) | consistent hashing, high-probability bound |
| `bloom1970space` | `A7ZGRBZJ` | none: the ACM open-access PDF refuses automated download, and there is no author copy | Bloom filters (original) |
| `broder2004network` | `YCR6IT32` | `E9BBSTID`, author's copy (Harvard) | Bloom-filter false-positive rate |
| `cormode2005improved` | `BQN95LQ6` | `E8D7HJ5A`, authors' preprint (Internet Archive copy of Cormode's DIMACS page) | count-min error bound |
| `dean2013tail` | `LKLVUIML` | `48WKQDCF`, author-hosted (barroso.org) | tail latency, fan-out |

Fidge 1988 was not added: its author-hosted copy (QUT) no longer resolves, and no other legal free copy was found.
Mattern 1988 alone proves that vector clocks characterise causality. HyperLogLog (Flajolet et al. 2007) stays stated
only.

**In Zotero without a readable PDF:**
- `brewer2012cap`: no PDF (IEEE paywall, HTML reprint only; recorded in its reading note). It may support commentary
  but no locator-backed section.
- `beyer2016site`: metadata only. reliability-and-operations §1 and §4 need it, or a PDF built from the free HTML.
- `vansteen2023distributed`: metadata only. Attaching the free personalised PDF would add a fifth benchmark, a
  textbook source for chapters 5, 6 and 9, and proofs for 2PC.

**Level.** The four benchmarks are practitioner books without proofs. Every theorem above comes from a classic paper,
from elementary probability proved in the chapter, or from a source still to be added. No chapter depends on the
commercial metadata-only books (design C7).

## Notes for the owner

- **Length.** The list has 14 chapters against the proposal's 10. The changes are two new chapters
  (distributed-transactions, batch-and-stream-processing) and two splits (caching into caching and
  messaging-and-event-streams, case studies into two chapters).
  - Rejecting both splits gives 12 chapters.
  - Rejecting distributed-transactions moves 2PC and Spanner into consistency-and-consensus and sagas and the outbox
    into messaging-and-event-streams. Each of those chapters then has eight to nine sections.
  - Rejecting batch-and-stream-processing leaves MapReduce and the sketches without a home: MapReduce would be one
    section of storage-and-databases and the sketches one section of caching.
- **Pilot unaffected.** The pilot (estimation-and-the-design-process, C8) is the same under every option. Its §6
  (cost) is a section gap the owner may drop from the pilot.
- **Order.** Ordering events (Lamport and vector clocks) sits in replication-and-partitioning §3, before
  consistency-and-consensus, because version vectors are needed for leaderless conflicts (Dynamo §4.4). Starting
  consistency-and-consensus with clocks instead would leave §2 of replication with a forward reference.
- **Spec update.** If the list is approved, the chapter-list requirement in `specs/system-design-tutorial/spec.md` must
  name the approved chapters (task 3.3), as was done for Complexity Science.
- **Notation (task 4.4).** Expected clashes for `_notation/systems.qmd`:
  - $\lambda$: arrival rate here; also eigenvalue, Poisson mean and Lyapunov exponent elsewhere;
  - $\mu$: service rate; also measure and mean;
  - $\rho$: utilisation; also density;
  - $N$: replication factor; also the number of agents in Complexity Science;
  - $R$, $W$: quorum sizes;
  - $m$, $k$, $n$: Bloom-filter parameters;
  - $C(c, a)$: Erlang C.

  **Decided 2026-11-27**, following the owner's Complexity Science decision (design C9): the field's symbols are kept,
  each clash is listed in "Conventions specific to this tutorial" on `system-design/notation/index.qmd`, and where two
  meanings meet in one chapter one of them takes a subscript or is named in words. The clash found inside the new
  table, $W$ as the mean time in the system and as the write quorum, is resolved by writing the quorum sizes $q_R$,
  $q_W$ in any chapter that needs both.
- **Decisions of 2026-11-27.** All 14 chapters approved as proposed (none rejected); later that day the owner added
  chapter 13, ML, LLM and agent systems, before the case studies, with its sources added to Zotero (open papers, the two
  Huyen books as metadata-only records, the MCP specification); the source-gap items above
  approved and added. The spec's chapter-list requirement now names the 14 chapters (task 3.3).
- **Citation keys.** The benchmarks and architecture books carry Better BibTeX auto-keys (for example
  `tanAcingSystemDesign2024`) and are not yet in `references/references.bib`. Xu vol. 1 keeps
  `SystemDesignInterview2021` (references-proposal). Short keys can be pinned when bib entries are added for the pilot.
- **Software.** `.venv-systems` (pinned in `system-design/requirements.lock`: SimPy 4.1.2, NumPy, matplotlib) covers
  every Run item above with the standard library's `sqlite3`. SQLite's FTS5 and `EXPLAIN QUERY PLAN` are built in. No
  new dependency is needed. Everything that would need a broker, a database server or a container is Illustrative.
