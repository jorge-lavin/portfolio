# Blog

Static blog for Jorge Lavín's backend engineering notes.

## Run locally

```sh
docker compose up --build
```

Open <http://localhost:8080>.

The portfolio is served at `/`; the blog page is available directly at
<http://localhost:8080/blog.html>. Cloudflare selects the correct page by
hostname in production.

Build deployable assets locally with:

```sh
./scripts/build-static.sh
```

## Deployment

Forgejo Actions builds and deploys `index.html` and `blog.html` as Cloudflare
Worker static assets on every push to `main`. Repository secrets required:

- `CLOUDFLARE_API_TOKEN` — Account → Workers Scripts → Edit and Zone → Workers
  Routes → Edit for `lavinj.dev`
- `CLOUDFLARE_ACCOUNT_ID` — Cloudflare account ID

The Worker is configured with `lavinj.dev` and `blog.lavinj.dev` as Cloudflare
Custom Domains. The first deploy may require the domain to be active in the
same Cloudflare account. If Wrangler cannot create either domain, add it once
in Workers & Pages → the Worker → Settings → Domains & Routes → Add → Custom
Domain, then deploy again.

After deployment, check:

```sh
curl -I https://blog.lavinj.dev
curl -I https://lavinj.dev
```

## Before publishing more posts

- Add each post as an entry in `blog.html`, linking its date and slug to an
  article anchor.
- Keep unfinished work marked as in progress.
