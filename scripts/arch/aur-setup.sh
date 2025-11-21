#!/bin/bash
set -e

# Check if running on Arch
if [[ ! -f /etc/arch-release ]]; then
    echo "This script is for Arch Linux only"
    exit 1
fi

# Check for yay (AUR helper)
if ! command -v yay &>/dev/null; then
    echo "Installing yay (AUR helper)..."
    sudo pacman -S --needed --noconfirm git base-devel
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
    rm -rf /tmp/yay
fi

CONFIG_DIR="$(dirname "$0")/../../config/arch"

echo "=== AUR Package Management ==="
echo ""

# Remove AUR packages
if [[ -f "$CONFIG_DIR/aur-packages-remove.txt" ]]; then
    echo "Removing AUR packages..."
    grep -v '^#' "$CONFIG_DIR/aur-packages-remove.txt" | grep -v '^$' | while read -r pkg; do
        if yay -Qi "$pkg" &>/dev/null; then
            echo "  Removing: $pkg"
            yay -Rns --noconfirm "$pkg" || echo "  ⚠ Failed to remove $pkg"
        else
            echo "  ✓ $pkg (not installed)"
        fi
    done
    echo ""
fi

# Install AUR packages
if [[ -f "$CONFIG_DIR/aur-packages.txt" ]]; then
    echo "Installing AUR packages..."
    grep -v '^#' "$CONFIG_DIR/aur-packages.txt" | grep -v '^$' | while read -r pkg; do
        if yay -Qi "$pkg" &>/dev/null; then
            echo "  ✓ $pkg (already installed)"
        else
            echo "  Installing: $pkg"
            yay -S --noconfirm "$pkg" || echo "  ⚠ Failed to install $pkg"
        fi
    done
    echo ""
fi

echo "✓ Done!"
