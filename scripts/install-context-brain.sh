#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="${1:-}"
FORCE="${FORCE:-0}"

if [[ -z "$TARGET_DIR" ]]; then
  echo "Usage: bash scripts/install-context-brain.sh /path/to/project"
  echo
  echo "Set FORCE=1 to overwrite existing context files."
  exit 1
fi

mkdir -p "$TARGET_DIR/docs" "$TARGET_DIR/context" "$TARGET_DIR/prompts" "$TARGET_DIR/scripts" "$TARGET_DIR/.context"

copy_file() {
  local source="$1"
  local target="$2"

  if [[ -f "$target" && "$FORCE" != "1" ]]; then
    echo "Skip existing: $target"
    return
  fi

  cp "$source" "$target"
  echo "Installed: $target"
}

copy_file "$SOURCE_DIR/CLAUDE.md" "$TARGET_DIR/CLAUDE.md"
copy_file "$SOURCE_DIR/docs/CONTEXT.md" "$TARGET_DIR/docs/CONTEXT.md"
copy_file "$SOURCE_DIR/docs/ARCHITECTURE.md" "$TARGET_DIR/docs/ARCHITECTURE.md"
copy_file "$SOURCE_DIR/docs/DECISIONS.md" "$TARGET_DIR/docs/DECISIONS.md"
copy_file "$SOURCE_DIR/context/session-start.md" "$TARGET_DIR/context/session-start.md"
copy_file "$SOURCE_DIR/context/session-end.md" "$TARGET_DIR/context/session-end.md"
copy_file "$SOURCE_DIR/context/context-hygiene.md" "$TARGET_DIR/context/context-hygiene.md"
copy_file "$SOURCE_DIR/prompts/session-start.md" "$TARGET_DIR/prompts/session-start.md"
copy_file "$SOURCE_DIR/prompts/session-end.md" "$TARGET_DIR/prompts/session-end.md"
copy_file "$SOURCE_DIR/scripts/context-pack.sh" "$TARGET_DIR/scripts/context-pack.sh"

chmod +x "$TARGET_DIR/scripts/context-pack.sh"

if ! grep -qxF ".context/" "$TARGET_DIR/.gitignore" 2>/dev/null; then
  printf "\n.context/\n" >> "$TARGET_DIR/.gitignore"
  echo "Updated: $TARGET_DIR/.gitignore"
fi

echo
echo "Done. Next:"
echo "1. Fill in docs/CONTEXT.md, docs/ARCHITECTURE.md, and docs/DECISIONS.md"
echo "2. Run: bash scripts/context-pack.sh"
echo "3. Paste .context/packed-context.md into your AI coding tool"
