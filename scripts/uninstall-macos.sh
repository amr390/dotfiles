#!/bin/bash

# macOS-specific dotfiles uninstallation script

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKAGES_DIR="$DOTFILES_DIR/packages"

echo "Uninstalling dotfiles for macOS..."

# Change to packages directory
cd "$PACKAGES_DIR"

# List of packages to uninstall (reverse order)
packages=(
    "nvim"
    "bash"
    "vim"
    "bin"
    "misc"
    "git"
    "tmux"
    "zsh"
)

# Uninstall each package
for package in "${packages[@]}"; do
    if [[ -d "$package" ]]; then
        echo "Uninstalling $package..."
        stow -D -v "$package"
    else
        echo "Warning: Package $package not found, skipping..."
    fi
done

echo "✅ Dotfiles uninstallation complete!"
