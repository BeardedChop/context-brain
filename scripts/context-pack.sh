#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/.context"
OUT_FILE="$OUT_DIR/packed-context.md"
MAX_TREE_LINES="${MAX_TREE_LINES:-120}"

mkdir -p "$OUT_DIR"

append_file() {
  local label="$1"
  local path="$2"

  if [[ -f "$path" ]]; then
    {
      printf '\n\n## FILE: %s\n\n' "$label"
      cat "$path"
      printf '\n'
    } >> "$OUT_FILE"
  fi
}

append_command() {
  local label="$1"
  shift

  {
    printf '\n\n## %s\n\n' "$label"
    "$@" || true
    printf '\n'
  } >> "$OUT_FILE"
}

append_file_map() {
  {
    printf '\n\n## FILE MAP\n\n'
    (
      cd "$ROOT_DIR"
      find . -maxdepth 3 -type f \
        ! -path './.git/*' \
        ! -path './.context/*' \
        ! -path './node_modules/*' \
        ! -path './dist/*' \
        ! -path './build/*' \
        ! -name 'package-lock.json' \
        ! -name 'pnpm-lock.yaml' \
        ! -name 'yarn.lock' \
        | sort \
        | sed 's#^./##' \
        | head -n "$MAX_TREE_LINES"
    )
    printf '\n'
  } >> "$OUT_FILE"
}

: > "$OUT_FILE"

echo "# Packed Context" >> "$OUT_FILE"
echo >> "$OUT_FILE"
echo "Generated: $(date -Iseconds)" >> "$OUT_FILE"
echo >> "$OUT_FILE"
echo "Use this file to quickly reset an AI coding session." >> "$OUT_FILE"
echo >> "$OUT_FILE"
echo "Ask the assistant to summarize the project, current priority, constraints, open decisions, and smallest safe next step before editing code." >> "$OUT_FILE"

append_file "README.md" "$ROOT_DIR/README.md"
append_file "QUICKSTART.md" "$ROOT_DIR/QUICKSTART.md"
append_file "BEFORE_AFTER.md" "$ROOT_DIR/BEFORE_AFTER.md"
append_file "COMPATIBILITY.md" "$ROOT_DIR/COMPATIBILITY.md"
append_file "CLAUDE.md" "$ROOT_DIR/CLAUDE.md"
append_file "docs/CONTEXT.md" "$ROOT_DIR/docs/CONTEXT.md"
append_file "docs/ARCHITECTURE.md" "$ROOT_DIR/docs/ARCHITECTURE.md"
append_file "docs/DECISIONS.md" "$ROOT_DIR/docs/DECISIONS.md"
append_file "context/context-hygiene.md" "$ROOT_DIR/context/context-hygiene.md"
append_file "context/session-start.md" "$ROOT_DIR/context/session-start.md"
append_file "context/session-end.md" "$ROOT_DIR/context/session-end.md"
append_file "prompts/session-start.md" "$ROOT_DIR/prompts/session-start.md"
append_file "prompts/session-end.md" "$ROOT_DIR/prompts/session-end.md"

append_file_map

if git -C "$ROOT_DIR" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  append_command "GIT STATUS" git -C "$ROOT_DIR" status --short
  append_command "RECENT COMMITS" git -C "$ROOT_DIR" log --oneline -5
fi

append_file "package.json" "$ROOT_DIR/package.json"
append_file "pyproject.toml" "$ROOT_DIR/pyproject.toml"
append_file "requirements.txt" "$ROOT_DIR/requirements.txt"

echo "Wrote $OUT_FILE"
