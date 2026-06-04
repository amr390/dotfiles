# AGENTS.md

This file provides guidance to AI agents (Claude Code, Gemini CLI, etc.) when working with code in this repository.

## What This Repo Is

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/). Each subdirectory of `packages/` is a stow package whose contents get symlinked into `$HOME` when installed.

## Common Commands

```bash
# First-time install (detects OS, installs stow if needed, links all packages)
./scripts/install.sh

# Uninstall all symlinks
./scripts/uninstall.sh

# Adopt existing ~/.config files into packages/ (overwrites packages/)
./scripts/adopt.sh

# Install / remove a single package
cd packages && stow -t ~ zsh          # install
cd packages && stow -D -t ~ zsh       # remove
cd packages && stow --adopt -t ~ zsh  # pull existing file into repo

# Update zsh plugins (git pull each plugin in .config/zsh/plugins/)
zsh-update-plugins
```

## Architecture

### Stow package layout

Each package under `packages/` mirrors the target directory tree starting from `$HOME`. For example:
- `packages/zsh/.zshrc` → `~/.zshrc`
- `packages/zsh/.config/zsh/zshrc` → `~/.config/zsh/zshrc`
- `packages/nvim/.config/nvim/` → `~/.config/nvim/`

`install.sh` runs `stow -v <package>` from inside `packages/` for each package (tmux, git, misc, bin, vim, nvim, zsh, bash, ghostty).

### Zsh config loading chain

```
~/.zshrc  (packages/zsh/.zshrc)
  └─ sets ZDOTDIR=$HOME/.config/zsh
  └─ sources $ZDOTDIR/zshrc  (packages/zsh/.config/zsh/zshrc)
       ├─ sources zsh-functions  (defines zsh_add_file, zsh_add_plugin)
       ├─ sources zsh-aliases, zsh-exports, zsh-vim-mode, zsh-prompt
       ├─ OS detection → sources macos.zsh / debian.zsh / arch.zsh
       └─ loads plugins via zsh_add_plugin (clones from GitHub on first run)
```

Plugins are stored in `packages/zsh/.config/zsh/plugins/` and cloned automatically by `zsh_add_plugin` if missing.

### Neovim

LazyVim-based. Entry point is `packages/nvim/.config/nvim/init.lua` which bootstraps `config/lazy`. Plugin spec lives under `lua/`.

### Tmux

TPM (Tmux Plugin Manager) with prefix `C-a`. Key bindings: `|`/`-` to split, `hjkl` for pane navigation, `Left`/`Right` arrows for window switching. Copy mode uses vi keys.

### Multi-system support

OS-specific zsh files live alongside the main zshrc:
- `packages/zsh/.config/zsh/macos.zsh`
- `packages/zsh/.config/zsh/debian.zsh`
- `packages/zsh/.config/zsh/arch.zsh`

The main `zshrc` sources the appropriate one based on `$OSTYPE` / `/etc/*-release` detection.

### Arch Linux package management

Package lists live in `config/arch/`. Use `scripts/arch/setup.sh` (pacman) and `scripts/arch/aur-setup.sh` (AUR) to sync installed packages against those lists.
