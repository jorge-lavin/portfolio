# Portfolio and blog

Static portfolio and blog for Jorge Lavín.

## Run locally

```sh
docker compose up --build
```

Open <http://localhost:8080> for portfolio or <http://localhost:8080/blog> for
blog.

Build deployable assets locally with:

```sh
./scripts/build-static.sh
```

## Deployment

Forgejo Actions deploys the portfolio and `/blog` static assets as one
Cloudflare Worker on every push to `main`. The Worker uses `lavinj.xyz` as its
custom domain. Repository secrets required:

- `CLOUDFLARE_API_TOKEN` — Account → Workers Scripts → Edit and Zone → Workers
  Routes → Edit for `lavinj.xyz`
- `CLOUDFLARE_ACCOUNT_ID` — Cloudflare account ID

The old `blog.lavinj.xyz` hostname is not configured; blog lives at
<https://lavinj.xyz/blog>.

## Before publishing more posts

- Add each post under `blog/index.html`.
- Keep unfinished work marked as in progress.
