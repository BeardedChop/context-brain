# Windows Notes

ContextBrain is Bash-first right now.

On Windows, use one of these:

- WSL
- Git Bash
- a terminal that can run `.sh` scripts

## Recommended

Use WSL:

```bash
bash scripts/context-pack.sh
```

## Git Bash

Git Bash should also work:

```bash
bash scripts/context-pack.sh
```

## Coming Later

A Windows-friendly wrapper is planned so you can run the packer without thinking about Bash.

For now, the important part is simple:

1. Fill in the docs
2. Run the packer
3. Paste `.context/packed-context.md` into your AI coding tool
