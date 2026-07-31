#!/usr/bin/env bash
# Symlinks cursor/ and opencode/ configs into place.
# Claude Code plugins install separately via `/plugin marketplace add` + `/plugin install`.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

link() {
  local src="$1" dest="$2"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Skipping $dest — already exists and is not a symlink." >&2
    return
  fi
  mkdir -p "$(dirname "$dest")"
  ln -sfn "$src" "$dest"
  echo "Linked $dest -> $src"
}

link "$REPO_DIR/cursor/rules" "$HOME/.cursor/rules"
link "$REPO_DIR/opencode/agents" "$HOME/.config/opencode/agents"

echo "Done. Merge $REPO_DIR/cursor/mcp/mcp.json into ~/.cursor/mcp.json by hand."
