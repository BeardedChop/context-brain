# ARCHITECTURE

## Overview
`context-brain` is a small markdown-first system for preserving useful project context across AI coding sessions.

## Main parts
- `docs/` — durable project brain: context, architecture, decisions
- `context/` — session rituals and context hygiene rules
- `prompts/` — copy/paste AI prompts for session start and session end
- `scripts/` — helper scripts for packing context and installing the kit into existing projects
- `templates/` — starter brain layouts for common project types
- `examples/` — bad/good session examples and sample packed context
- `QUICKSTART.md`, `BEFORE_AFTER.md`, `SECURITY.md`, `WINDOWS.md` — public-facing orientation docs

## File structure rules
- keep features grouped logically
- avoid giant utility dumping grounds
- prefer boring patterns over clever ones
- keep root files beginner-readable

## Data flow
1. User keeps `docs/` and `context/` updated during real work.
2. User runs `scripts/context-pack.sh`.
3. Script writes `.context/packed-context.md`.
4. User pastes packed context into an AI coding tool.
5. AI session starts with current goal, constraints, decisions, and next action.
