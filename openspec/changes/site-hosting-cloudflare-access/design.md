# Design

## Context

See proposal.md for why. The relevant current state:

- **The workflow.** `.github/workflows/publish.yml` runs on pushes to `main`. It sets up Python 3.12 and `.venv` from
  `requirements.txt`, installs Quarto 1.11.9 and runs `quarto render`. Then it runs `quarto publish posit-connect-cloud
  --no-render` if the Posit token secrets are set. A run takes about 40–46 minutes.
- **`_publish.yml`** holds the Posit content id.
- **The rendered `_site/`** measured on 2026-11-28:
  - 927 files, 248 MB;
  - the largest page is 9.2 MB (Differential geometry);
  - `search.json` is 68 MB: 755 entries, nearly all of it section text, with single sections up to 2.9 million
    characters.
- **Cloudflare Pages limits:**
  - 20,000 files per deployment on the free plan;
  - 25 MiB per file.

  So only `search.json` is over a limit, and it will grow as chapters are added.
- **Cloudflare Access** (Zero Trust) is free for up to 50 users. It protects a hostname with a login screen. It supports
  one-time PIN, Google, GitHub and other identity providers, and allow-list policies.

## Goals / Non-Goals

**Goals:**
- One host, reached on the owner's domain, with every address behind one login.
- Publishing stays automatic from `main`.
- Full-text search keeps working.

**Non-Goals:**
- Per-tutorial permissions (some readers seeing only some tutorials). One allow-list covers the whole site. Access can
  add path-based applications later.
- Self-service sign-up or payments.
- Moving the render off GitHub Actions.

## Decisions

**H1. Cloudflare Pages with Direct Upload from GitHub Actions.**
- The workflow keeps rendering on GitHub. It then deploys `_site/` with `cloudflare/wrangler-action@v3`, running
  `wrangler pages deploy _site --project-name=<project> --branch=main`.
- Secrets: `CLOUDFLARE_API_TOKEN`, scoped to the account with Pages:Edit and, for H5, Workers R2 Storage:Edit; and
  `CLOUDFLARE_ACCOUNT_ID`.
- If the token is missing, the site is still rendered and the deploy is skipped. This keeps the current safety
  behaviour.
- Alternatives considered:
  - Cloudflare's Git integration, where Cloudflare builds the site itself, was rejected. Its build image would need
    Quarto, the Python environment and 45 minutes of build time, and the GitHub render already works.
  - Workers Static Assets was rejected for now. It has the same 25 MiB file limit, and the owner asked for Pages.

**H2. The domain.**
- The owner chose `proofandcode.dev` (2026-11-28) and buys it through Cloudflare Registrar, so the zone is on Cloudflare at once.
- The Pages project gets two custom domains, `proofandcode.dev` and `www.proofandcode.dev`.
- A Redirect Rule (Single Redirect) sends `www` to the bare domain with a 301.
- "Always Use HTTPS" is turned on.
- Certificates come from Cloudflare automatically.

**H3. One Access application covering every address.**
- A self-hosted Access application lists these destinations:
  - `proofandcode.dev` and `www.proofandcode.dev`;
  - `<project>.pages.dev`;
  - `*.<project>.pages.dev`, which covers preview deployments.

  So there is no unprotected way to the content.
- The Pages project's built-in "Enable access policy" for previews is not needed once the wildcard is in the app.
- Session duration: 24 hours (to confirm with the owner).
- One policy: action Allow, include "Emails in list `tutorial-readers`" (a Zero Trust list).
- Alternative considered: a separate application per hostname. Rejected, because one app keeps a single policy and a
  single audit log.

**H4. The login screen.**
- Login methods:
  - **One-time PIN.** Built in.
  - **Google.** An OAuth client in a Google Cloud project, with the redirect URI
    `https://<team>.cloudflareaccess.com/cdn-cgi/access/callback`.
  - **GitHub.** An OAuth app with the same callback.
- The application shows exactly these three. Instant Auth is off, so all three appear.
- The Access login page is customised under Zero Trust → Custom Pages: the site's name, its logo (from the home page
  cover), background and button colours from the site theme, and a short line on how to request access.
- An "access denied" message tells a refused reader how to ask the owner to be added.

**H5. The search index on R2, served by a Pages Function.**
- After `quarto render`, the workflow uploads `_site/search.json` to a private R2 bucket at `search/<commit>.json` and
  `search/current.json`, then deletes it from `_site/`.
- A Pages Function at `functions/search.json.js` answers `/search.json` by streaming `current.json` from the bucket
  binding, with `Content-Type: application/json` and a short cache lifetime.
- Pages Functions run on the same hostnames, so the index is behind the same Access login. The bucket has no public
  URL.
- Quarto's search code requests `search.json` by relative path, so no change to the site is needed.
- **Alternatives considered:**
  - Capping each entry's text to keep the index under 25 MiB. Measured: a 4,000-character cap gives 2.6 MB. It was
    rejected because terms deep in long sections would no longer be found.
  - Algolia. Rejected: an external service, and readers' queries would leave Cloudflare.
  - Splitting the index. Rejected: Quarto loads one file.
- **Cost.** The index is downloaded on a reader's first search, as it is today. R2 egress is free, and the reads stay
  within the free tier.

**H6. Secrets and personal data stay out of the repository.**
- The allow-list, the OAuth client secrets and the API token live in Cloudflare or in GitHub secrets.
- The owner enters them. Agents never print, store or read them back.
- The workflow reads only the two Cloudflare secrets.

**H7. Retiring Posit, last.**
- First the Cloudflare deployment must pass the verification of task 5. Only then:
  - remove the Posit step and env from the workflow and the entry from `_publish.yml`;
  - the owner deletes the Posit secrets;
  - the Posit content is deleted, which needs the owner's explicit confirmation at that moment.
- Until then, the old link keeps working. The workflow publishes only to Cloudflare from the first green run, because
  the owner chose not to run both hosts.

## Risks / Trade-offs

- **[The search index keeps growing.]** At 68 MB today, it may double as the tutorials grow.
  → R2 has no practical file limit. A reader's first search downloads more, so if that becomes slow, gzip compression
  in the Function (`Content-Encoding`) cuts it about tenfold.
- **[An unprotected address is missed.]** For example, a new preview alias.
  → The wildcard `*.<project>.pages.dev` in the app, and a verification task that opens every address without a
  session.
- **[The 50-user ceiling of the free Zero Trust plan.]**
  → Fine for an invited audience. Beyond it, the paid plan or a different identity setup.
- **[Lock-out.]** For example, the owner's own address missing from the list.
  → The owner's address is the first on the list. One-time PIN works even if the Google and GitHub apps break.
- **[Large pages.]** The 9 MB pages load slowly on any host.
  → Out of scope. The earlier lazy-maths change already reduced the render cost.

## Migration Plan

1. The owner does the account steps in Cloudflare and GitHub (tasks 1.x). Agents prepare the exact settings and verify
   them.
2. Land the workflow, Function and post-render changes on `restructure-site`, then merge to `main`. The first run
   deploys to Cloudflare.
3. Verify (task 5). If anything fails, the Posit deployment is still online. Rollback is reverting the workflow commit
   on `main`, which republishes to Posit while its secrets still exist.
4. Retire Posit (task 6), with the owner's confirmation.

## Open Questions

- The session length, 24 hours, can be changed later in the Access app without other changes.
