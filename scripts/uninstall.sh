#!/bin/bash
set -e
cd "$(dirname "$0")/stow"

for pkg in zsh bash vim nvim tmux git bin misc; do
    [ -d "$pkg" ] && stow -D -t ~ "$pkg" && echo "✗ $pkg"
done
