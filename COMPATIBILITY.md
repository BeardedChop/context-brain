# Compatibility

ContextBrain is tool-agnostic.

It works with any AI coding tool or agent that can do at least one of these:

- read files from your repo
- accept pasted markdown context
- follow a session-start prompt
- use project instructions like `CLAUDE.md` or `AGENTS.md`

## OpenClaw

Yes, ContextBrain can work with OpenClaw.

Recommended use:

1. Keep ContextBrain files inside the project workspace.
2. Run `bash scripts/context-pack.sh`.
3. Give the agent `.context/packed-context.md` at the start of a build session.
4. Tell the agent to summarize the project, constraints, decisions, and next step before editing.

For OpenClaw-style multi-agent work, ContextBrain is useful as the local project brain that every agent can read before acting.

## Hermes Agent

ContextBrain should work with Hermes Agent if Hermes can read local project files or receive pasted markdown context.

Recommended use:

1. Add ContextBrain to the repo.
2. Generate `.context/packed-context.md`.
3. Start Hermes with the packed context or point it at the context files.
4. Require a plan before file edits.

The key is not special integration. The key is giving Hermes the same stable project brain every session.

## Claude Code

Claude Code can use `CLAUDE.md` directly.

Use ContextBrain for the wider project memory:

- `docs/CONTEXT.md`
- `docs/ARCHITECTURE.md`
- `docs/DECISIONS.md`
- `.context/packed-context.md`

## Codex

Codex-style agents can use the packed context as the first message or as a local file reference.

Use the session-start prompt before code edits.

## Cursor

Cursor can use the docs and packed context as project reference material.

Paste the packed context into a new chat when the assistant starts drifting or lacks project history.

## Gemini

Gemini can use the packed context as a project brief.

Paste `.context/packed-context.md`, then ask it to summarize the architecture and smallest safe next step before coding.

## Rule

If a tool can read markdown, ContextBrain can help it.

If a tool cannot read files, paste the packed context.
