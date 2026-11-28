# Tasks

## 1. Owner steps in Cloudflare, Google and GitHub (H2, H4, H6)

Agents write step-by-step instructions with the exact values. The owner carries them out, because they involve
payment, OAuth clients and secrets.

- [x] 1.1 Buy `proofandcode.dev` with Cloudflare Registrar. Verify: the zone shows as Active in the Cloudflare dashboard.
- [ ] 1.2 Create the Zero Trust organisation, choosing its team name and the Free plan. Verify: Zero Trust → Settings
  shows the team domain `<team>.cloudflareaccess.com`.
- [ ] 1.3 Create the Google OAuth client and the GitHub OAuth app, each with the callback
  `https://<team>.cloudflareaccess.com/cdn-cgi/access/callback`. Add both as login methods in Zero Trust. Verify: the
  "Test" button of each login method succeeds.
- [ ] 1.4 Create the API token with Account / Cloudflare Pages: Edit and Account / Workers R2 Storage: Edit. Store it
  and the account ID as the repository secrets `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID`, using `gh secret
  set` with the value piped in, never typed into chat. Verify: `gh secret list` shows both names.
- [ ] 1.5 Create the Zero Trust list `tutorial-readers` with the owner's address first, then the invited readers.
  Verify: the list exists. Its contents are not copied anywhere.

## 2. Pages project and domain (H1, H2)

- [ ] 2.1 Create the Pages project as a Direct Upload project, with production branch `main`. Verify: `wrangler pages
  project list`, run with the token, shows it.
- [ ] 2.2 Add `proofandcode.dev` and `www.proofandcode.dev` as custom domains of the project. Add the `www` → bare-domain 301 Redirect
  Rule and turn on Always Use HTTPS. Verify: after the first deploy, `curl -sI http://www.proofandcode.dev/` returns a 301 to
  `https://proofandcode.dev/`.

## 3. Search index on R2 (H5)

- [ ] 3.1 Create the private R2 bucket `tutorials-search`, and bind it to the Pages project as `SEARCH`, in project
  settings or `wrangler.toml`. Verify: the binding is listed in the project's settings, and the bucket has no public
  access.
- [ ] 3.2 Write `functions/search.json.js`. It streams `search/current.json` from `SEARCH` with `Content-Type:
  application/json` and `Cache-Control: private, max-age=300`, and returns 404 if the object is missing. Verify: after
  deploy, a signed-in request to `/search.json` returns the index, and a search for a term deep in Differential
  geometry finds its section.
- [ ] 3.3 Add the workflow steps after the render:
  - upload `_site/search.json` to `search/<sha>.json` and `search/current.json` with `wrangler r2 object put`;
  - remove `_site/search.json` before the deploy.

  Verify: the deployment's file list has no `search.json`, and no file in it exceeds 25 MiB. Check with `find _site -size
  +25M` in the workflow, which fails the run if a file is too large.

## 4. Workflow and Access (H1, H3, H4)

- [ ] 4.1 Change `.github/workflows/publish.yml`:
  - render as now;
  - add the R2 steps of 3.3;
  - deploy with `cloudflare/wrangler-action@v3` (`pages deploy _site --project-name=<project> --branch=main`);
  - skip the deploy when the token secret is missing;
  - remove the Posit step and its env.

  Update the header comment and `README.md`. Verify: the workflow run on `main` succeeds, and its log shows the deploy
  URL.
- [ ] 4.2 Create the self-hosted Access application, set as follows:
  - destinations: `proofandcode.dev`, `www.proofandcode.dev`, `<project>.pages.dev`, `*.<project>.pages.dev`;
  - login methods: Google, GitHub and one-time PIN;
  - session duration: 24 h;
  - one Allow policy on the list `tutorial-readers`.

  Verify: the application's overview lists all four destinations.
- [ ] 4.3 Customise the login and access-denied pages: the site name, the logo, theme colours, and a line on how to
  request access. Verify: a screenshot of the login page, taken by the owner, shows the branding and the three methods.

## 5. Verification

- [ ] 5.1 In a private browser window with no session, open each of these and confirm each shows the login screen and
  no content:
  - `https://proofandcode.dev/`;
  - a chapter URL;
  - `https://proofandcode.dev/search.json`;
  - `https://<project>.pages.dev/`;
  - the latest preview URL.

  Record the results in this change's `verification.md`.
- [ ] 5.2 Sign in once with each method (Google, GitHub, PIN) using an allow-listed address. Confirm the page loads, the
  maths renders, figures load, and search works. Then sign in with a Google address that is not on the list and confirm
  it is refused. Record the results in `verification.md`.

## 6. Retire Posit Connect Cloud (H7)

- [ ] 6.1 Remove the Posit entry from `_publish.yml`, deleting the file if it is then empty. Verify: the repository
  contains no `posit-connect-cloud` reference outside archived changes.
- [ ] 6.2 Ask the owner to delete the Posit secrets (`POSIT_CONNECT_CLOUD_*`) and to confirm deleting the Posit content.
  Delete it only after that confirmation. Verify: `gh secret list` shows no Posit secret, and the old share link no
  longer serves the site.
- [ ] 6.3 Update the memory note of the published-site URL to `https://proofandcode.dev/`. Verify: the note names the new URL.

## Workflow follow-up

- Archive this change after task 6 with `openspec archive site-hosting-cloudflare-access`.
