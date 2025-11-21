# Dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

Originally cloned from [startup-class/dotfiles](https://github.com/startup-class/dotfiles.git).

## Structure

```
dotfiles/
├── packages/      # Stow packages (configs to symlink)
├── bin/           # User scripts and executables
├── scripts/       # Setup and maintenance scripts
├── config/        # System configs and package lists
└── archive/       # Old/unused configurations
```

## Quick Start

```bash
# Install all dotfiles
./scripts/setup.sh

# Or manually
./scripts/install.sh

# Uninstall
./scripts/uninstall.sh
```

## Install Specific Packages

```bash
cd packages
stow -t ~ zsh tmux  # Only zsh and tmux
```

## Requirements

- GNU Stow: `brew install stow` (macOS) or `sudo apt install stow` (Linux)


