# ARCHITECTURE

## Overview
Command-line tool with straightforward commands, shared helpers, and predictable output.

## Main parts
- `commands/` — individual command handlers
- `lib/` — shared logic
- `src/` — entry wiring
- `docs/` — project brain for future sessions

## Rules
- commands stay focused
- shared logic goes into `lib/` only when reused
- output format should stay consistent across commands
