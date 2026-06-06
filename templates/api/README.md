# API Template

Use this when the project is mainly backend logic, endpoints, workers, or automations.

## First session

1. Fill in `docs/CONTEXT.md` with the API goal.
2. Fill in `docs/ARCHITECTURE.md` with routes, services, and persistence.
3. Add any already-made choices to `docs/DECISIONS.md`.
4. Run `bash scripts/context-pack.sh` after copying the packer into `scripts/`.
5. Paste `.context/packed-context.md` into your AI coding tool before asking for code.

Suggested folders:
- `src/`
- `routes/`
- `services/`
- `db/`
- `docs/`
- `context/`
- `scripts/`

## Good first task

Ship one endpoint or job end to end before adding more resources.
