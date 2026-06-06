# ARCHITECTURE

## Overview
Backend-first project with clear boundaries between transport, business logic, and persistence.

## Main parts
- `routes/` — HTTP or job entry points
- `services/` — core logic
- `db/` — database or persistence layer
- `docs/` — project brain for future sessions

## Rules
- route handlers should mostly parse, validate, call service, return
- services should own business rules
- db helpers should stay boring and isolated
