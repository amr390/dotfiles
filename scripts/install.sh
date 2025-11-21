#!/bin/bash
set -e
cd "$(dirname "$0")/../packages"

echo "Installing dotfiles..."
echo ""
echo "If conflicts occur, backup your existing configs first:"
echo "  mkdir -p ~/dotfiles-backup"
echo "  mv ~/.zshrc ~/.bashrc ~/.config/nvim ~/dotfiles-backup/"
echo ""

# Remove problematic symlinks
[ -L ../bin/pyenv ] && rm ../bin/pyenv

for pkg in zsh bash vim nvim tmux git misc; do
    if [ -d "$pkg" ]; then
        if stow -n -t ~ "$pkg" 2>&1 | grep -q "conflict"; then
            echo "⚠ $pkg - conflicts detected, skipping"
        else
            stow -t ~ "$pkg"
            echo "✓ $pkg"
        fi
    fi
done

echo ""
echo "Done! Use --adopt flag manually if you want to merge existing configs."
