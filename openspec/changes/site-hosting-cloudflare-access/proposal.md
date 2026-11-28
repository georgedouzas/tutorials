# Proposal

## Why

The site is published to Posit Connect Cloud at a long share link. Connect Cloud cannot put its own branded login
screen in front of the site or sign readers in through an outside identity provider. Its SSO covers only members of a
Posit organization, on its top plan. The owner wants three things:
- the tutorials on their own domain;
- readers signing in on a login screen, with Google, GitHub or a one-time email code;
- only invited readers let in.

The site is fully static, so it can move to any static host. `quarto render` writes plain HTML, and code blocks are
checked locally, not run during the build. Cloudflare Pages with Cloudflare Access gives a custom domain, a login screen
and an email allow-list, free for up to 50 users.

## What Changes

- **Hosting.** The rendered `_site/` is published to Cloudflare Pages instead of Posit Connect Cloud. GitHub Actions
  still renders the site on pushes to `main`. Its publish step becomes `wrangler pages deploy`, using a Cloudflare API
  token and account ID stored as repository secrets.
- **Domain.** The owner buys a domain through Cloudflare Registrar, so its DNS is on Cloudflare from the start. The
  site is served at that domain and at `www`, which redirects to it.
- **Login.** Every address of the site sits behind one Cloudflare Access application:
  - the custom domain;
  - the `pages.dev` production address;
  - every preview address.

  The login screen offers Google, GitHub and a one-time email PIN, and carries the site's name and logo.
- **Who gets in.** Only addresses on an allow-list kept in Cloudflare Zero Trust are let in. The list is never written
  to the repository. Sessions last a set time, and every sign-in is logged.
- **Search.** The site's search index, `search.json`, is 65 MB, which is larger than the 25 MiB file limit of
  Cloudflare Pages. It is moved to Cloudflare R2 and served at the same path by a Pages Function, so full-text search
  keeps working, behind the same login.
- **BREAKING: retire Posit Connect Cloud.**
  - After the switch is verified, the Posit content is deleted, with the owner's confirmation.
  - The Posit entry in `_publish.yml` and the Posit secrets are removed.
  - The old share link stops working.

## Capabilities

### New Capabilities
- `site-hosting`: where and how the site is published and who can read it. Covers:
  - the host and the publish workflow;
  - the custom domain and HTTPS;
  - the login screen and its sign-in methods;
  - the allow-list;
  - protection of every address the host serves;
  - handling of files larger than the host's limit.

### Modified Capabilities
None. No existing spec covers hosting or publishing.

## Impact

- **Files:**
  - `.github/workflows/publish.yml`: the publish step and the secrets it reads;
  - `_publish.yml`: the Posit entry is removed;
  - `README.md`: the publishing section;
  - new `functions/search.json.js` and `wrangler.toml` (or the Pages project settings) for the R2 binding;
  - a post-render step that keeps `search.json` out of the Pages upload.
- **Accounts and secrets, created by the owner:**
  - the Cloudflare account and the domain purchase;
  - the Zero Trust organisation (team name);
  - a Google OAuth client and a GitHub OAuth app for the login methods;
  - repository secrets `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID`;
  - the R2 bucket.

  No credential is ever written to the repository or shown in chat.
- **Cost:** a domain registration at cost. Pages, Access (up to 50 users), R2 (up to 10 GB) and Functions are within
  Cloudflare's free tiers for this site.
- **Memory:** the published-site URL that is reported after each publish changes to the new domain.
