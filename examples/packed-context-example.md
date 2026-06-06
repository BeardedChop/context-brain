# Packed Context Example

This is a shortened example of what `.context/packed-context.md` is supposed to feel like.

```markdown
# Packed Context

Generated: 2026-06-06T00:00:00-04:00

Use this file to quickly reset an AI coding session.

## FILE: docs/CONTEXT.md

# CONTEXT

## Project goal
Build a tiny dashboard for tracking Gumroad sales and GitHub repo metrics.

## Current state
Landing page exists. Dashboard shell exists. Data is still mocked.

## Current priority
Connect the GitHub public API first.

## Constraints
- no private API keys yet
- keep components small
- do not add auth until metrics work

## FILE: docs/ARCHITECTURE.md

# ARCHITECTURE

## Main parts
- `app/` — pages and routes
- `components/` — UI pieces
- `lib/github.ts` — public GitHub API helper

## FILE: docs/DECISIONS.md

# DECISIONS

- Decision: Use public GitHub API without auth for v1.
- Why: Avoid secrets and reduce setup friction.
```

The real generated file can include README, prompts, file map, git status, recent commits, and package metadata.
