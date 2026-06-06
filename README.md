# context-brain

Start every AI coding session with the context your assistant needs, instead of re-explaining your project from scratch.

`context-brain` is a tiny repo-memory starter kit for Claude Code, Codex, Cursor, Gemini, and other AI coding tools.

It helps beginner vibe coders answer four questions before the AI starts guessing:

- what is this project?
- how is it structured?
- what decisions already matter?
- what is the next safe change?

## The Problem

AI coding sessions drift when the repo has no shared memory.

That usually looks like:

- the assistant rebuilds something you already chose
- every session starts with 20 minutes of explanation
- files get bigger because the AI does not know where things belong
- architecture changes accidentally
- you burn tokens on context instead of progress
- you forget why a decision was made two days later

You can ask AI to make docs for you. The problem is knowing which docs matter, how small to keep them, and how to keep them useful after the first session.

That is what this gives you.

## What You Get

| Thing | Why it matters |
|------|----------------|
| `QUICKSTART.md` | The shortest path from download to useful AI session |
| `BEFORE_AFTER.md` | Shows the practical difference between vague prompting and packed context |
| `SECURITY.md` | Explains local-first privacy and what not to paste into AI tools |
| `WINDOWS.md` | Notes for WSL, Git Bash, and Windows users |
| `docs/CONTEXT.md` | The current project goal, state, priority, constraints, and open questions |
| `docs/ARCHITECTURE.md` | The map that stops AI from inventing a new structure every session |
| `docs/DECISIONS.md` | A short log of decisions so old choices do not get undone by accident |
| `context/session-start.md` | The ritual for beginning a focused AI coding session |
| `context/session-end.md` | The ritual for ending cleanly so the next session is easier |
| `context/context-hygiene.md` | What to keep, drop, and refresh |
| `scripts/context-pack.sh` | Packs the useful project brain into `.context/packed-context.md` |
| `prompts/session-start.md` | Copy/paste prompt for starting a better AI session |
| `prompts/session-end.md` | Copy/paste prompt for closing the loop |
| `templates/` | Web, API, and CLI starter brain layouts |
| `examples/` | Bad/good session examples and a sample packed context |

## Start Here

- New here? Read `QUICKSTART.md`.
- Want the proof? Read `BEFORE_AFTER.md`.
- Worried about privacy? Read `SECURITY.md`.
- On Windows? Read `WINDOWS.md`.

## 60-Second Demo

Run the packer:

```bash
bash scripts/context-pack.sh
```

It creates:

```bash
.context/packed-context.md
```

Then paste this into your AI tool:

```text
Read this packed context first. Then summarize:
1. what this project is
2. the current priority
3. the constraints
4. the smallest safe next step

Do not write code until you confirm the plan.
```

That is the whole point: faster reset, fewer guesses, cleaner sessions.

## Quick Start For A New Project

Pick a starter:

```bash
cp -R templates/web my-app
cd my-app
```

Copy the packer:

```bash
mkdir -p scripts .context prompts
cp ../scripts/context-pack.sh scripts/context-pack.sh
cp ../prompts/session-start.md prompts/session-start.md
cp ../prompts/session-end.md prompts/session-end.md
chmod +x scripts/context-pack.sh
```

Fill in:

```bash
docs/CONTEXT.md
docs/ARCHITECTURE.md
docs/DECISIONS.md
```

Pack the brain:

```bash
bash scripts/context-pack.sh
```

Paste `.context/packed-context.md` into your AI coding tool before a build session.

## Quick Start For An Existing Project

Use the installer:

```bash
bash scripts/install-context-brain.sh /path/to/your-project
```

It will skip existing files by default.

To overwrite existing context files:

```bash
FORCE=1 bash scripts/install-context-brain.sh /path/to/your-project
```

Or copy these into your repo manually:

```text
CLAUDE.md
docs/CONTEXT.md
docs/ARCHITECTURE.md
docs/DECISIONS.md
context/session-start.md
context/session-end.md
context/context-hygiene.md
scripts/context-pack.sh
prompts/session-start.md
prompts/session-end.md
```

Fill in the docs honestly. Keep them short.

Then run:

```bash
bash scripts/context-pack.sh
```

If the packed file is huge, your context is too noisy. Cut it down.

## Before And After

### Before

```text
can you add auth to this app? here's a bunch of files. also don't break the dashboard.
```

The AI guesses:

- where auth belongs
- what stack you use
- what matters
- what should not change

### After

```text
Read .context/packed-context.md first.

Goal: add email auth.
Constraint: keep dashboard routes unchanged.
Decision log says we use Supabase, not Clerk.
Give me the smallest safe implementation plan before editing.
```

The AI starts with context, constraints, and history.

That is the difference.

## Folder Map

```text
context/
  session-start.md
  session-end.md
  context-hygiene.md
docs/
  ARCHITECTURE.md
  CONTEXT.md
  DECISIONS.md
prompts/
  session-start.md
  session-end.md
scripts/
  context-pack.sh
templates/
  web/
  api/
  cli/
CLAUDE.md
README.md
```

## What This Is Not

This is not:

- a framework
- an agent swarm
- a full project management system
- a replacement for thinking
- a giant documentation ritual

This is just enough structure to make your AI coding sessions less chaotic.

## Who This Is For

Use this if:

- you are learning by building
- your AI tools keep forgetting the project
- you jump between Claude, Codex, Cursor, Gemini, or other tools
- your repo gets messy after a few sessions
- you want structure without becoming a corporate process person

Skip it if:

- your project already has strong docs and clean architecture
- you hate maintaining even tiny notes
- you want a magic tool that thinks for you

## Roadmap

- Windows-friendly wrapper
- stronger example projects
- stack-specific editions for Next.js, Python, and React Native
- token/noise checklist
- optional premium kits

## The Tiny Promise

Clone it. Fill in the brain. Run the packer. Paste the context.

Your AI coding session starts with the project goal, architecture, decisions, constraints, and next action before it touches code.

That is the whole win.

MIT. do whatever you want with these.

made by @BChopLXXXII

built for vibe coders who just want their AI to feel less... corporate.

ship it. 🚀

if this helped, ⭐ the repo — it helps others find it.
