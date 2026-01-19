#!/bin/bash
# Backend Pro Max Skill - Mac/Linux Installer
# Usage: curl -fsSL https://raw.githubusercontent.com/dsoftodin22999/backend-promax-skill/main/install.sh | sh

set -e

echo -e "\n\033[0;36m===================================================="
echo -e "   BACKEND PRO MAX v2.0 - INSTALLER"
echo -e "   Backend Intelligence for AI Coding Agents"
echo -e "====================================================\033[0m\n"

# GitHub Repository Configuration
REPO_URL="https://github.com/dsoftodin22999/backend-promax-skill/archive/refs/heads/main.zip"
TEMP_DIR=$(mktemp -d)
TARGET_DIR=$(pwd)

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

echo -e "\033[1;33m[1/4] Downloading from GitHub...\033[0m"
curl -L "$REPO_URL" -o "$TEMP_DIR/skill.zip" --silent --show-error

echo -e "\033[1;33m[2/4] Extracting files...\033[0m"
unzip -q "$TEMP_DIR/skill.zip" -d "$TEMP_DIR"

EXTRACTED_DIR="$TEMP_DIR/backend-promax-skill-main"

echo -e "\033[1;33m[3/4] Installing to: $TARGET_DIR\033[0m"

ITEMS_TO_COPY=".claude .cursor .windsurf .trae .agent .github .kiro .codex .qoder .roo .gemini .shared .cursorrules"

for item in $ITEMS_TO_COPY; do
    if [ -e "$EXTRACTED_DIR/$item" ]; then
        cp -r "$EXTRACTED_DIR/$item" "$TARGET_DIR/"
        echo "  [OK] $item"
    fi
done

echo -e "\033[1;33m[4/4] Finalizing installation...\033[0m"

echo -e "\n\033[0;32m[SUCCESS] Backend Pro Max Skill v2.0 installed!\033[0m"
echo -e "\033[0;36m----------------------------------------------------\033[0m"
echo -e "NEXT STEPS:"
echo -e "1. Open your project in Cursor, Claude Code, or Windsurf."
echo -e "2. Use the '/backend-pro-max' command to generate system design."
echo -e "3. View the generated architecture in 'BACKEND_MASTER.md'."
echo -e "\033[0;36m----------------------------------------------------\033[0m\n"
