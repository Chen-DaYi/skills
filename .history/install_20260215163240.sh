#!/usr/bin/env bash
set -euo pipefail

CURRENT_DIR="$PWD"
ALMA_SKILLS="$HOME/.config/alma/skills"
OPENCODE_SKILLS="$HOME/.config/opencode/skills"
CLAUDE_SKILLS="$HOME/.claude/skills"
CODEX_SKILLS="$HOME/.codex/skills"
GEMINI_SKILLS="$HOME/.gemini/skills"


# 1. Create symlinks if not exist
for SKILLS_DIR in "$ALMA_SKILLS" "$OPENCODE_SKILLS" "$CLAUDE_SKILLS" "$CODEX_SKILLS" "$GEMINI_SKILLS"; do
    if [[ -L "$SKILLS_DIR" ]]; then
        echo "Symlink $SKILLS_DIR already exists, skipping..."
    else
        mkdir -p "$(dirname "$SKILLS_DIR")"
        ln -sf "$CURRENT_DIR/skills" "$SKILLS_DIR"
        echo "Created symlink: $SKILLS_DIR"
    fi
done
echo "All symlinks created successfully."