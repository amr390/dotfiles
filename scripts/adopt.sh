#!/bin/bash
set -e
cd "$(dirname "$0")/../packages"

echo "This will OVERWRITE packages/ with your current configs"
read -p "Continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

for pkg in zsh bash vim nvim tmux git misc; do
    [ -d "$pkg" ] && stow --adopt -t ~ "$pkg" && echo "✓ $pkg adopted"
done

echo ""
echo "Done! Review changes: git diff"
