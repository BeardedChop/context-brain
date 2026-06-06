# ARCHITECTURE

## Overview
Small web app with clean separation between UI, business logic, and data access.

## Main parts
- `app/` or `src/` — routes and page composition
- `components/` — reusable UI
- `lib/` — shared helpers and domain logic
- `docs/` — project brain for future sessions

## Rules
- avoid putting business logic directly in page components
- promote repeated UI into components only after the pattern is real
- keep data loading easy to trace
