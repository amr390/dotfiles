#!/bin/bash
set -e
cd "$(dirname "$0")/../packages"

# Remove problematic symlinks
[ -L ../bin/pyenv ] && rm ../bin/pyenv

echo "Installing dotfiles with stow..."
echo ""

for pkg in zsh bash vim nvim tmux git misc; do
    if [ -d "$pkg" ]; then
        # Try normal stow first, if conflicts use --adopt
        if ! stow -t ~ "$pkg" 2>/dev/null; then
            stow --adopt -t ~ "$pkg" 2>/dev/null || true
        fi
        echo "✓ $pkg"
    fi
done

echo ""
echo "Done! Your existing configs were adopted into packages/"
echo "Review changes: cd packages && git diff"
