# CLAUDE.md

## Role
You are helping inside a small solo-dev project built with AI.
Protect clarity, structure, and maintainability.

## Priorities
1. Keep architecture simple
2. Prevent drift
3. Prefer small files over giant files
4. Reuse existing patterns before inventing new ones
5. Explain tradeoffs briefly when they matter

## Session rules
- read `docs/CONTEXT.md` first
- read `docs/ARCHITECTURE.md` before changing structure
- read `docs/DECISIONS.md` before undoing or replacing existing patterns
- update docs when a structural decision changes
- do not create duplicate abstractions just because the prompt is vague

## Guardrails
- if a file is getting too large, split it
- if a change is architectural, write it down
- if the request is ambiguous, choose the simpler pattern
- if you are about to add complexity, justify it in one sentence first
- if you are unsure, preserve existing structure over cleverness

## Definition of done
- code works
- docs still match reality
- no obvious drift introduced
- the next session can understand what changed quickly
