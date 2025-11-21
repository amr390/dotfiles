#!/bin/bash
set -e

echo "Setting up dotfiles..."

# Check for stow
if ! command -v stow &> /dev/null; then
    echo "GNU Stow not found. Install it:"
    echo "  Linux: sudo apt install stow"
    echo "  macOS: brew install stow"
    exit 1
fi

# Run install
"$(dirname "$0")/install.sh"

echo ""
echo "✓ Setup complete"
