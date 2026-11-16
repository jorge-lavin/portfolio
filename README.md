# Portfolio

Static portfolio for Jorge Lavín.

## Run locally

```sh
docker compose up --build
```

Open <http://localhost:8080> for the portfolio.

Build deployable assets locally with:

```sh
./scripts/build-static.sh
```

## Deployment

Forgejo Actions deploys the portfolio as a Cloudflare Worker on every push to
`main`. The Worker uses `lavinj.dev` as its custom domain. Repository secrets
required:

- `CLOUDFLARE_API_TOKEN` — Account → Workers Scripts → Edit and Zone → Workers
  Routes → Edit for `lavinj.dev`
- `CLOUDFLARE_ACCOUNT_ID` — Cloudflare account ID
