# CLI Template

Use this when the project is a command-line tool, local automation, or developer utility.

## First session

1. Fill in `docs/CONTEXT.md` with the CLI goal.
2. Fill in `docs/ARCHITECTURE.md` with commands, helpers, and output rules.
3. Add any already-made choices to `docs/DECISIONS.md`.
4. Run `bash scripts/context-pack.sh` after copying the packer into `scripts/`.
5. Paste `.context/packed-context.md` into your AI coding tool before asking for code.

Suggested folders:
- `src/`
- `commands/`
- `lib/`
- `docs/`
- `context/`
- `scripts/`

## Good first task

Ship one command with clear input, output, and error behavior.
