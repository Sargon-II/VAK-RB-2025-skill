#!/usr/bin/env bash
set -e

REPO_URL="https://raw.githubusercontent.com/Sargon-II/VAK-RB-2025-skill/main/vak-rb-citations"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd || true)"
LOCAL_SOURCE="$SCRIPT_DIR/vak-rb-citations"
FILES=("SKILL.md" "RULES.md" "vak_rb_2025_examples.json")

echo "=== Установка скилла ВАК РБ 2025 (vak-rb-citations) ==="

install_to() {
  local dest="$1"
  local name="$2"
  mkdir -p "$dest"
  
  if [ -d "$LOCAL_SOURCE" ] && [ -f "$LOCAL_SOURCE/SKILL.md" ]; then
    cp -r "$LOCAL_SOURCE/"* "$dest/"
  else
    for f in "${FILES[@]}"; do
      curl -fsSL "$REPO_URL/$f" -o "$dest/$f"
    done
  fi
  echo "[OK] Установлено для $name: $dest"
}

# Claude Code
install_to "$HOME/.claude/skills/vak-rb-citations" "Claude Code"

# Antigravity / Gemini
install_to "$HOME/.gemini/config/skills/vak-rb-citations" "Antigravity"

# Universal Agents
install_to "$HOME/.agents/skills/vak-rb-citations" "Universal Agents (.agents)"

# Cursor
install_to "$HOME/.cursor/skills/vak-rb-citations" "Cursor"

echo ""
echo "Готово! Скилл успешно установлен."
