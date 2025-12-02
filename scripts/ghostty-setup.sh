#!/bin/bash
# Setup OS-specific Ghostty config

GHOSTTY_DIR="$HOME/.config/ghostty"

if [[ "$OSTYPE" == "darwin"* ]]; then
    ln -sf config.mac "$GHOSTTY_DIR/config.os"
    echo "Ghostty: Linked macOS config"
elif [[ -f /etc/arch-release ]]; then
    ln -sf config.arch "$GHOSTTY_DIR/config.os"
    echo "Ghostty: Linked Arch Linux config"
elif [[ -f /etc/debian_version ]]; then
    ln -sf config.arch "$GHOSTTY_DIR/config.os"
    echo "Ghostty: Linked Debian config (using Arch settings)"
else
    ln -sf config.arch "$GHOSTTY_DIR/config.os"
    echo "Ghostty: Linked generic Linux config"
fi
