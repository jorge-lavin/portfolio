# Portfolio Contributor Guide

## Scope

Keep portfolio landing page small, fast, and readable. No framework or backend
unless explicitly requested.

## Files

- `index.html`: portfolio page source and Tailwind markup.
- `blog/index.html`: blog page source and Tailwind markup.
- `scripts/build-static.sh`: creates deployable `dist/` and injects commit SHA.
- `.forgejo/workflows/deploy.yml`: deploys `dist/` to Cloudflare Worker.
- `dist/`: generated; never commit.

## Rules

- Keep terminal-style design simple; avoid decorative sections and copy bloat.
- Mark unfinished projects as in progress. Do not invent demos, metrics, or links.
- Never commit API tokens, account IDs, or other secrets.
- Keep Cloudflare project name and deployment secrets in workflow/config only as
  needed; secrets belong in Forgejo Actions.
- Use Conventional Commits (`feat:`, `fix:`, `ci:`, `docs:`, `chore:`).

## Verify

```sh
./scripts/build-static.sh
```

Use Docker for local serving/build checks. Do not edit generated `dist/` files
directly.
