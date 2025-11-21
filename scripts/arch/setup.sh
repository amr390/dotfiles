#!/bin/bash
set -e

# Check if running on Arch
if [[ ! -f /etc/arch-release ]]; then
    echo "This script is for Arch Linux only"
    exit 1
fi

CONFIG_DIR="$(dirname "$0")/../../config/arch"

echo "=== Arch Linux Package Management ==="
echo ""

# Remove unwanted packages
if [[ -f "$CONFIG_DIR/packages-remove.txt" ]]; then
    echo "Removing unwanted packages..."
    grep -v '^#' "$CONFIG_DIR/packages-remove.txt" | grep -v '^$' | while read -r pkg; do
        if pacman -Qi "$pkg" &>/dev/null; then
            echo "  Removing: $pkg"
            sudo pacman -Rns --noconfirm "$pkg" || echo "  ⚠ Failed to remove $pkg"
        else
            echo "  ✓ $pkg (not installed)"
        fi
    done
    echo ""
fi

# Install wanted packages
if [[ -f "$CONFIG_DIR/packages.txt" ]]; then
    echo "Installing packages..."
    grep -v '^#' "$CONFIG_DIR/packages.txt" | grep -v '^$' | while read -r pkg; do
        if pacman -Qi "$pkg" &>/dev/null; then
            echo "  ✓ $pkg (already installed)"
        else
            echo "  Installing: $pkg"
            sudo pacman -S --noconfirm "$pkg" || echo "  ⚠ Failed to install $pkg"
        fi
    done
    echo ""
fi

echo "✓ Done!"
