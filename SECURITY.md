# Security And Privacy

ContextBrain is local-first.

The scripts in this repo do not upload, publish, or send your files anywhere. `scripts/context-pack.sh` writes a local file:

```text
.context/packed-context.md
```

You decide what to paste into an AI tool.

## Do Not Pack Secrets

Do not put secrets in these files:

- `docs/CONTEXT.md`
- `docs/ARCHITECTURE.md`
- `docs/DECISIONS.md`
- `context/*.md`
- `prompts/*.md`

Do not paste secrets into AI tools.

Secrets include:

- API keys
- access tokens
- passwords
- private customer data
- private business data
- raw logs with sensitive details

## Ignored By Default

The starter `.gitignore` files ignore:

- `.context/`
- `.env`
- dependency folders
- build output

Still, check before sharing or publishing.

## Before Posting A Packed Context

Read `.context/packed-context.md` before pasting it anywhere.

If it contains anything private, remove it from the source docs and regenerate the packed context.

## Reporting Issues

If you find a privacy or security issue in the starter kit, open a GitHub issue or contact the repo owner.
