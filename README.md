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

### Universal Installation (Auto-detects OS)
```bash
./scripts/install.sh
```

### OS-Specific Scripts (Optional)
```bash
./scripts/install-macos.sh     # macOS only
./scripts/install-debian.sh    # Debian/Ubuntu only  
./scripts/install-arch.sh      # Arch Linux only
```

See [MACOS_SETUP.md](MACOS_SETUP.md) for detailed macOS instructions.

### General Setup
```bash
# First time setup
./scripts/setup.sh

# Or manually
./scripts/install.sh

# Uninstall
./scripts/uninstall.sh
```

## Handling Conflicts

If you have existing configs, choose one:

**Option 1: Adopt existing configs**
```bash
./scripts/adopt.sh
```
This merges your current configs into packages/ and creates symlinks.

**Option 2: Manual merge (recommended for multi-system)**
```bash
# Backup existing
mkdir -p ~/dotfiles-backup
mv ~/.zshrc ~/.bashrc ~/.config/nvim ~/dotfiles-backup/

# Install
./scripts/install.sh

# Manually merge machine-specific settings from backup
```

**Option 3: Per-package adopt**
```bash
cd packages
stow --adopt -t ~ zsh  # Just zsh
git diff               # Review changes
```

## Multi-System Setup

For different configs across systems (macOS, Debian, Arch), use OS-specific files:

```bash
# In your .zshrc
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.config/zsh/macos.zsh
elif [[ -f /etc/debian_version ]]; then
    source ~/.config/zsh/debian.zsh
elif [[ -f /etc/arch-release ]]; then
    source ~/.config/zsh/arch.zsh
fi
```

See `MULTI_SYSTEM.md` for details.

## Install Specific Packages

```bash
cd packages
stow -t ~ zsh tmux  # Only zsh and tmux
```

## Requirements

- GNU Stow: `brew install stow` (macOS) or `sudo apt install stow` (Linux)


