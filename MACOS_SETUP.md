# macOS Dotfiles Setup

This guide explains how to set up your dotfiles on macOS systems using GNU Stow.

## Quick Setup

For a fresh macOS system:

```bash
# Clone your dotfiles
git clone <your-repo-url> ~/.dotfiles
cd ~/.dotfiles

# Run the macOS installation script
./scripts/install-macos.sh
```

## What Gets Installed

The script installs these packages:
- **zsh**: Shell configuration with macOS-specific settings
- **tmux**: Terminal multiplexer configuration  
- **git**: Git prompt and configuration
- **misc**: Various config files (.flake8, .eslintrc, etc.)
- **bin**: User scripts and executables
- **vim**: Vim configuration and plugins
- **bash**: Bash configuration (fallback)

## macOS-Specific Features

The zsh configuration includes macOS-specific settings in `~/.config/zsh/macos.zsh`:

- Homebrew integration (both Intel and Apple Silicon)
- macOS-specific aliases (`ls -G`, `finder`, `trash`)
- Clipboard integration (`pbcopy`, `pbpaste`)
- Terminal.app working directory tracking
- macOS color settings

## Manual Installation

If you prefer to install packages individually:

```bash
cd ~/.dotfiles/packages

# Install specific packages
stow zsh tmux git misc bin vim bash

# Fix any config directory links if needed
ln -sf ../.dotfiles/packages/zsh/.config/zsh ~/.config/zsh
ln -sf ../.dotfiles/packages/bash/.config/bash ~/.config/bash
```

## Troubleshooting

### Conflicts with Existing Files

If you have existing config files, you can:

1. **Backup and remove them:**
   ```bash
   mkdir ~/dotfiles-backup
   mv ~/.zshrc ~/.tmux.conf ~/.vimrc ~/dotfiles-backup/
   ./scripts/install-macos.sh
   ```

2. **Use the adopt script:**
   ```bash
   ./scripts/adopt.sh
   ```

### Missing Dependencies

Install common dependencies:
```bash
# Using Homebrew
brew install fzf neovim tmux stow

# For zsh plugins (installed automatically on first run)
# No manual action needed
```

### Stow Conflicts

If stow reports conflicts:
```bash
# Remove old symlinks
rm ~/.config/zsh  # if it points to old location

# Reinstall
cd ~/.dotfiles/packages
stow -R zsh
```

## Customization

### Machine-Specific Settings

Add machine-specific configurations to `~/.config/zsh/macos.zsh`:

```bash
# Example: Work-specific settings
if [[ "$USER" == "work-username" ]]; then
    export WORK_ENV=true
    alias work-vpn="sudo openconnect work.vpn.com"
fi

# Example: Personal vs work Git config
if [[ "$PWD" =~ "/work/" ]]; then
    git config user.email "work@company.com"
else
    git config user.email "personal@email.com"
fi
```

### Adding New Packages

1. Create a new directory in `packages/`
2. Structure it like your home directory
3. Add files you want to symlink
4. Run `stow package-name`

## Uninstalling

To remove all dotfiles:
```bash
./scripts/uninstall-macos.sh
```

Or remove specific packages:
```bash
cd ~/.dotfiles/packages
stow -D zsh tmux  # Remove zsh and tmux
```
