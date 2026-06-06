# DECISIONS

## Template
- Date:
- Decision:
- Why:
- Tradeoffs:
- Follow-up:

---

## Decision log

_Add the newest decisions to the top._

---

- Date: 2026-06-06
- Decision: Add compatibility docs for OpenClaw, Hermes Agent, Claude Code, Codex, Cursor, and Gemini.
- Why: The kit's value is tool-agnostic context discipline, not one platform-specific integration.
- Tradeoffs: Compatibility is guidance, not deep native integration.
- Follow-up: Add agent-specific examples later if users ask for them.

---

- Date: 2026-06-06
- Decision: Add quickstart, before/after, examples, security, and Windows notes before GitHub push.
- Why: The repo needs obvious immediate value, proof of difference, and safety clarity for beginners.
- Tradeoffs: More docs, but each one has a clear public-facing job.
- Follow-up: Keep docs short and remove anything that starts feeling like homework.

---

- Date: 2026-06-06
- Decision: Add a safe installer script for existing projects.
- Why: The fastest value path is installing ContextBrain into an existing repo without manually copying ten files.
- Tradeoffs: Bash-first workflow is still weaker on Windows.
- Follow-up: Add a Windows-friendly wrapper later.

---

- Date: 2026-06-06
- Decision: Position ContextBrain as an AI session reset kit, not just a markdown template pack.
- Why: The immediate value is helping beginners start better sessions with less re-explaining and less drift.
- Tradeoffs: Narrower promise, but much clearer value.
- Follow-up: Improve packer output, prompts, and examples so the difference is visible right away.
