# Portfolio

Static first draft of Jorge Lavín's backend engineering portfolio.

## Run locally

```sh
docker compose up --build
```

Open <http://localhost:8080>.

## Deployment

Forgejo Actions deploys `index.html` as Cloudflare Worker static assets on every
push to `main`. Repository secrets required:

- `CLOUDFLARE_API_TOKEN` — Account → Workers Scripts → Edit
- `CLOUDFLARE_ACCOUNT_ID` — Cloudflare account ID

## Before publishing

- Add direct public links for selected projects.
- Add preferred email and LinkedIn URL.
- Replace or revise project claims after choosing which repositories to publish.
- Add one screenshot or live demo for the strongest project.
