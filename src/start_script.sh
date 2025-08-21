#!/usr/bin/env bash
set -euo pipefail

BRANCH="master"

# Check if directory exists and remove it or update it
if [ -d "qwen-image-edit-bot" ]; then
  echo "📂 Directory already exists. Removing it first..."
  rm -rf qwen-image-edit-bot
fi

echo "📥 Cloning branch '$BRANCH' of qwen-image-edit-bot…"
git clone --branch "$BRANCH" https://github.com/Hearmeman24/qwen-image-edit-bot.git

echo "📂 Moving start.sh into place…"
mv qwen-image-edit-bot/src/start.sh /

echo "▶️ Running start.sh"
bash /start.sh