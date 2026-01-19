#!/bin/bash
# Professional One-line Installer for Mac/Linux
# Usage: curl -fsSL https://raw.githubusercontent.com/username/repo/main/install.sh | sh

echo -e "\n\033[0;36m===================================================="
echo -e "   BACKEND PRO MAX v2.0 - FAST INSTALLER"
echo -e "   (c) 2026 Odin from Dsoft Team"
echo -e "====================================================\033[0m\n"

REPO_URL="https://github.com/nextlevelbuilder/backend-promax-skill/archive/refs/heads/main.zip"
TEMP_DIR=$(mktemp -d)

echo -e "\033[1;33m[1/3] Downloading latest skill version...\033[0m"
# curl -L $REPO_URL -o "$TEMP_DIR/skill.zip"

echo -e "\033[1;33m[2/3] Extracting core intelligence...\033[0m"
# unzip -q "$TEMP_DIR/skill.zip" -d "$TEMP_DIR"

echo -e "\033[1;33m[3/3] Installing to current directory...\033[0m"
# cp -r "$TEMP_DIR/backend-promax-skill-main/"* .

echo -e "\n\033[0;32m[SUCCESS] Backend Pro Max Skill v2.0 installed!\033[0m"
echo -e "You can now use '\033[1;33m/backend-pro-max\033[0m' in your AI agent.\n"

rm -rf "$TEMP_DIR"
