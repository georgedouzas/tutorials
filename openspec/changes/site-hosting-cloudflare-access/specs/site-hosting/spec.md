## ADDED Requirements

### Requirement: The site is published from main to Cloudflare Pages
A push to `main` SHALL render the whole site on GitHub's machines and publish the result to the site's Cloudflare
Pages project. A failed render SHALL stop the publish, so a broken build is never published.

#### Scenario: Pushing to main
- **WHEN** a commit is pushed to `main`
- **THEN** the workflow renders the site and deploys it to the Pages production environment, and the new version is
  served at the custom domain once the run succeeds

#### Scenario: A render fails
- **WHEN** `quarto render` exits with an error in the workflow
- **THEN** nothing is deployed and the previous version stays online

### Requirement: The site has its own domain over HTTPS
The site SHALL be served at the owner's domain over HTTPS. The `www` host SHALL redirect to the bare domain, and plain
HTTP SHALL redirect to HTTPS.

#### Scenario: Opening the domain
- **WHEN** a reader opens `http://www.proofandcode.dev/`
- **THEN** they are redirected to `https://proofandcode.dev/`

### Requirement: Every address of the site requires sign-in
Every address that serves the site SHALL require sign-in through the site's Cloudflare Access application. This covers
the custom domain, `www`, the `pages.dev` production address and every preview deployment. No page, asset or search
index SHALL be readable without a valid session.

#### Scenario: Opening a chapter without signing in
- **WHEN** a reader with no session opens a chapter URL on the custom domain
- **THEN** they see the login screen, not the chapter

#### Scenario: Bypassing the domain
- **WHEN** someone with no session opens the project's `pages.dev` address, a preview URL, or `search.json` directly
- **THEN** they see the login screen, not the content

### Requirement: The login screen offers Google, GitHub and a one-time email code
The login screen SHALL show the site's name and logo, and SHALL offer sign-in with Google, with GitHub, and with a
one-time PIN sent by email.

#### Scenario: Signing in with an email code
- **WHEN** an allowed reader enters their email address and the PIN they receive
- **THEN** they reach the page they first asked for

### Requirement: Only allow-listed readers get in
Access SHALL be granted only to email addresses on an allow-list kept in Cloudflare Zero Trust. The allow-list SHALL NOT
be stored in the repository. Sessions SHALL expire after a configured duration.

#### Scenario: A reader who is not on the list
- **WHEN** someone signs in successfully with Google using an address that is not on the allow-list
- **THEN** they are refused, and the site is not shown

#### Scenario: Checking the repository
- **WHEN** the repository is searched for the allow-listed addresses
- **THEN** none is found

### Requirement: Full-text search works on the hosted site
The site's search SHALL work on the hosted site with its full index, even when the index is larger than the host's
per-file limit. The index SHALL be served behind the same sign-in.

#### Scenario: Searching for a term deep in a chapter
- **WHEN** a signed-in reader searches for a term that appears only in the middle of a long chapter section
- **THEN** the search returns that section

### Requirement: The previous host is retired
After the new host is verified, the Posit Connect Cloud deployment SHALL be removed, together with its publish
configuration and its secrets. The workflow SHALL publish to one host only.

#### Scenario: Checking the publish configuration
- **WHEN** `_publish.yml` and the workflow are read after the switch
- **THEN** neither refers to Posit Connect Cloud
