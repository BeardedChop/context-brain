# Quickstart

Get the value in under five minutes.

## 1. Pick a path

For a new project:

```bash
cp -R templates/web my-app
cd my-app
```

For an existing project:

```bash
bash scripts/install-context-brain.sh /path/to/your-project
cd /path/to/your-project
```

## 2. Fill in the brain

Open these files and keep them short:

```text
docs/CONTEXT.md
docs/ARCHITECTURE.md
docs/DECISIONS.md
```

Write only what a future AI session needs to make the next good decision.

## 3. Pack the context

```bash
bash scripts/context-pack.sh
```

This creates:

```text
.context/packed-context.md
```

## 4. Paste into your AI tool

Paste `.context/packed-context.md`, then use:

```text
Read this packed context first.

Before writing code, summarize:
1. what this project is
2. the current priority
3. the important constraints
4. the decisions that should not be undone
5. the smallest safe next step
```

## 5. End cleanly

Before closing the session, use `prompts/session-end.md`.

Update:

```text
docs/CONTEXT.md
docs/DECISIONS.md
```

Then run:

```bash
bash scripts/context-pack.sh
```

Next session starts sharper.
