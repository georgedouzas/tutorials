# Owner steps: Cloudflare, Google and GitHub setup

These are the steps of tasks 1.1–1.5, and the two account-level steps of tasks 2–3, that need your accounts, payment or
secrets. Do them in order. Where a value is shown as `<team>`, use the Zero Trust team name you pick in step 2. A
suggestion is `proofandcode`, which gives `proofandcode.cloudflareaccess.com`.

Never paste a secret into chat or into a file in the repository. Secrets go only into the Cloudflare dashboard, the
Google or GitHub console, or `gh secret set`.

## 1. Buy the domain (task 1.1)

1. Sign in at <https://dash.cloudflare.com>, creating an account if needed.
2. Go to **Domain Registration → Register Domains**, search for `proofandcode.dev`, and buy it. You can also buy
   `proofandcode.com` if you want it held for later.
3. Wait until **Websites** shows `proofandcode.dev` as **Active**. Cloudflare creates the DNS zone for you, and no
   nameserver change is needed.

`.dev` domains are HTTPS-only in every browser. That matches the plan.

## 2. Create the Zero Trust organisation (task 1.2)

1. In the dashboard, open **Zero Trust**.
2. Choose a team name, for example `proofandcode`, and pick the **Free** plan. It covers up to 50 users. Cloudflare
   asks for a payment method even on the Free plan.
3. Check **Zero Trust → Settings → Custom Pages** (or **Settings → General**). The team domain should read
   `<team>.cloudflareaccess.com`.

## 3. Login methods (task 1.3)

All three are added under **Zero Trust → Settings → Authentication → Login methods → Add new**.

### One-time PIN
Choose **One-time PIN**. There is nothing else to configure.

### Google
1. Go to <https://console.cloud.google.com>, create a project (for example "proofandcode-login"), and open **APIs &
   Services**.
2. Set up the **OAuth consent screen**: user type **External**, app name "Proof and Code", your support email.
   **Publish** the app, so that any Google account can use it and not only test users.
3. Go to **Credentials → Create credentials → OAuth client ID → Web application**:
   - Authorised JavaScript origins: `https://<team>.cloudflareaccess.com`
   - Authorised redirect URI: `https://<team>.cloudflareaccess.com/cdn-cgi/access/callback`
4. Copy the client ID and the client secret straight into Zero Trust: **Add new → Google**, then paste both and save.
5. Click **Test**. It should show your Google identity.

### GitHub
1. Go to <https://github.com/settings/developers> and choose **OAuth Apps → New OAuth App**:
   - Application name: "Proof and Code"
   - Homepage URL: `https://<team>.cloudflareaccess.com`
   - Authorisation callback URL: `https://<team>.cloudflareaccess.com/cdn-cgi/access/callback`
2. Register it, copy the **Client ID**, and click **Generate a new client secret**.
3. In Zero Trust choose **Add new → GitHub**, paste both values and save. Then click **Test**.

## 4. The reader allow-list (task 1.5)

1. Go to **Zero Trust → My Team → Lists → Create manual list**:
   - Name: `tutorial-readers`
   - Type: **Emails**
2. Put **your own address first**, then the readers you invite, and save.

You maintain this list in Cloudflare from now on. It is never copied into the repository.

## 5. API token and account ID for GitHub Actions (task 1.4)

1. Go to **My Profile → API Tokens → Create Token → Create Custom Token**:
   - Name: `tutorials-publish`
   - Permissions: **Account → Cloudflare Pages → Edit**, and **Account → Workers R2 Storage → Edit**
   - Account Resources: **Include → your account**
2. Create it and copy the token. It is shown only once.
3. In a terminal in the repository, run:
   ```
   gh secret set CLOUDFLARE_API_TOKEN
   ```
   Paste the token at the hidden prompt.
4. Copy your **Account ID** from the right-hand column of any dashboard overview page, then run:
   ```
   gh secret set CLOUDFLARE_ACCOUNT_ID
   ```
   and paste it at the prompt.
5. Check with `gh secret list`, which shows only the names.

## 6. R2 (task 3.1, account part)

1. Go to **R2 Object Storage** and enable it. The free tier is 10 GB, and enabling it asks for the payment method
   again.
2. Create a bucket named `tutorials-search`, with location **Automatic** and **no public access**.

## What happens next (done by me after you finish)

- The workflow creates the Pages project `proofandcode` if it is missing, deploys the site, and uploads the search index
  to R2.
- I bind the bucket to the project, add `proofandcode.dev` and `www.proofandcode.dev` as custom domains, and add the
  `www` redirect.
- I create the Access application with the three login methods and the `tutorial-readers` policy, and brand the login
  page.

Some of these dashboard steps may need you to click, if the token's permissions don't allow them. I'll say exactly
which.

Then we verify every address together. Posit Connect Cloud is retired only after that, and only with your
confirmation.
