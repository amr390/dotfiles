#!/bin/bash

# macOS-specific dotfiles installation script

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKAGES_DIR="$DOTFILES_DIR/packages"

echo "Installing dotfiles for macOS..."

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo "GNU Stow is not installed. Installing via Homebrew..."
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is not installed. Please install Homebrew first:"
        echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
        exit 1
    fi
    brew install stow
fi

# Remove any conflicting old symlinks
echo "Cleaning up old configurations..."
[[ -L ~/.tmux.conf ]] && [[ "$(readlink ~/.tmux.conf)" == ".dotfiles/tmux.conf" ]] && rm ~/.tmux.conf
[[ -L ~/.config/zsh ]] && [[ "$(readlink ~/.config/zsh)" == "../.dotfiles/zsh" ]] && rm ~/.config/zsh

# Change to packages directory
cd "$PACKAGES_DIR"

# List of packages to install
packages=(
    "tmux" 
    "git"
    "misc"
    "bin"
    "vim"
    "nvim"
    "zsh"
    "bash"
)

# Install each package
for package in "${packages[@]}"; do
    if [[ -d "$package" ]]; then
        echo "Installing $package..."
        stow -v "$package"
    else
        echo "Warning: Package $package not found, skipping..."
    fi
done

# Fix config directory links if needed
if [[ ! -L ~/.config/zsh ]]; then
    echo "Fixing zsh config link..."
    ln -sf ../.dotfiles/packages/zsh/.config/zsh ~/.config/zsh
fi

if [[ ! -L ~/.config/bash ]]; then
    echo "Fixing bash config link..."
    ln -sf ../.dotfiles/packages/bash/.config/bash ~/.config/bash
fi

if [[ ! -L ~/.config/nvim ]]; then
    echo "Fixing nvim config link..."
    ln -sf ../.dotfiles/packages/nvim/.config/nvim ~/.config/nvim
fi

# Fix zshrc link if needed
if [[ ! -L ~/.zshrc ]]; then
    echo "Fixing zshrc link..."
    ln -sf .dotfiles/packages/zsh/.zshrc ~/.zshrc
fi

echo "✅ Dotfiles installation complete!"
echo ""
echo "Next steps:"
echo "1. Restart your terminal or run: exec zsh"
echo "2. Install any missing dependencies (fzf, nvim, tmux, etc.)"
echo "3. Customize ~/.config/zsh/macos.zsh for machine-specific settings"
echo ""
echo "The first time you start zsh, it will download plugins automatically."
