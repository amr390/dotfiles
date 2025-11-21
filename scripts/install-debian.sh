#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKAGES_DIR="$DOTFILES_DIR/packages"

echo "Installing dotfiles for Debian/Ubuntu..."

# Install stow if not present
if ! command -v stow &> /dev/null; then
    echo "Installing GNU Stow..."
    sudo apt update && sudo apt install -y stow
fi

cd "$PACKAGES_DIR"

packages=("tmux" "git" "misc" "bin" "vim" "nvim" "zsh" "bash")

for package in "${packages[@]}"; do
    if [[ -d "$package" ]]; then
        echo "Installing $package..."
        stow -v "$package"
    fi
done

# Fix config links
[[ ! -L ~/.config/zsh ]] && ln -sf ../.dotfiles/packages/zsh/.config/zsh ~/.config/zsh
[[ ! -L ~/.config/bash ]] && ln -sf ../.dotfiles/packages/bash/.config/bash ~/.config/bash
[[ ! -L ~/.config/nvim ]] && ln -sf ../.dotfiles/packages/nvim/.config/nvim ~/.config/nvim
[[ ! -L ~/.zshrc ]] && ln -sf .dotfiles/packages/zsh/.zshrc ~/.zshrc

echo "✅ Dotfiles installation complete!"
echo "Run: exec zsh"
