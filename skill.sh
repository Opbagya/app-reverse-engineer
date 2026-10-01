#!/bin/bash
# App Reverse Engineer Skill Installer
# Compatible with Google Antigravity, Gemini CLI, Claude Code, Cursor, Windsurf

set -e

SKILL_NAME="app-reverse-engineer"
INSTALL_DIR="$HOME/.gemini/config/skills/$SKILL_NAME"

echo "📦 Installing $SKILL_NAME skill..."

mkdir -p "$INSTALL_DIR"
curl -sSL "https://raw.githubusercontent.com/Opbagya/app-reverse-engineer/main/skills/app-reverse-engineer/SKILL.md" -o "$INSTALL_DIR/SKILL.md"

# Also symlink to ~/.gemini/skills/ if it exists
if [ -d "$HOME/.gemini/skills" ]; then
  ln -sf "$INSTALL_DIR" "$HOME/.gemini/skills/$SKILL_NAME"
fi

echo "✅ Successfully installed $SKILL_NAME!"
echo "💡 Usage in Antigravity or Gemini CLI: 'Use app-reverse-engineer on [App Name] to build [Your Idea]'"
