#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PACKAGES_DIR="$DOTFILES_DIR/packages"

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ -f /etc/debian_version ]]; then
    OS="debian"
elif [[ -f /etc/arch-release ]]; then
    OS="arch"
else
    OS="unknown"
fi

echo "Installing dotfiles for $OS..."

# Install stow if not present
if ! command -v stow &> /dev/null; then
    echo "Installing GNU Stow..."
    case $OS in
        macos)
            if ! command -v brew &> /dev/null; then
                echo "Homebrew required. Install: /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
                exit 1
            fi
            brew install stow
            ;;
        debian)
            sudo apt update && sudo apt install -y stow
            ;;
        arch)
            sudo pacman -S --noconfirm stow
            ;;
        *)
            echo "Unknown OS. Please install stow manually."
            exit 1
            ;;
    esac
fi

# Clean up old conflicting symlinks
[[ -L ~/.tmux.conf && "$(readlink ~/.tmux.conf)" == ".dotfiles/tmux.conf" ]] && rm ~/.tmux.conf
[[ -L ~/.config/zsh && "$(readlink ~/.config/zsh)" == "../.dotfiles/zsh" ]] && rm ~/.config/zsh

cd "$PACKAGES_DIR"

packages=("tmux" "git" "misc" "bin" "vim" "nvim" "zsh" "bash" "ghostty")

for package in "${packages[@]}"; do
    if [[ -d "$package" ]]; then
        echo "Installing $package..."
        stow -v "$package"
    fi
done

stow -v -t ~ tmux

# Fix config links
[[ ! -L ~/.config/zsh ]] && ln -sf $PACKAGES_DIR/zsh/.config/zsh ~/.config/zsh
[[ ! -L ~/.config/bash ]] && ln -sf $PACKAGES_DIR/bash/.config/bash ~/.config/bash
[[ ! -L ~/.config/nvim ]] && ln -sf $PACKAGES_DIR/nvim/.config/nvim ~/.config/nvim
[[ ! -L ~/.zshrc ]] && ln -sf $PACKAGES_DIR/zsh/.zshrc ~/.zshrc

# Setup OS-specific Ghostty config
if [[ -d ~/.config/ghostty ]]; then
    "$DOTFILES_DIR/scripts/ghostty-setup.sh"
fi

echo "✅ Dotfiles installation complete for $OS!"
echo "Run: exec zsh"
