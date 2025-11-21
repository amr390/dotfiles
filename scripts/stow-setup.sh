#!/bin/bash
set -e
cd "$(dirname "$0")"

mkdir -p stow/{zsh,bash,vim,nvim,tmux,git,bin,misc}

# ZSH
mkdir -p stow/zsh/.config/zsh
cp -r zsh/* stow/zsh/.config/zsh/ 2>/dev/null || true
[ -f stow/zsh/.config/zsh/.zshrc ] && mv stow/zsh/.config/zsh/.zshrc stow/zsh/
[ -f stow/zsh/.config/zsh/.zprofile ] && mv stow/zsh/.config/zsh/.zprofile stow/zsh/

# Bash
[ -f bashrc ] && cp bashrc stow/bash/.bashrc
[ -f bash_profile ] && cp bash_profile stow/bash/.bash_profile
mkdir -p stow/bash/.config/bash
cp -r bash/* stow/bash/.config/bash/ 2>/dev/null || true

# Vim
[ -d vim ] && cp -r vim stow/vim/.vim
[ -f vim/vimrc ] && cp vim/vimrc stow/vim/.vimrc

# Neovim
mkdir -p stow/nvim/.config/nvim
[ -d lazyvim ] && cp -r lazyvim/* stow/nvim/.config/nvim/

# Tmux
[ -f tmux.conf ] && cp tmux.conf stow/tmux/.tmux.conf

# Git
[ -f git-prompt.sh ] && cp git-prompt.sh stow/git/.git-prompt.sh

# Bin
mkdir -p stow/bin/.local/bin
[ -d bin ] && cp -r bin/* stow/bin/.local/bin/ 2>/dev/null || true
[ -d scripts ] && cp -r scripts/* stow/bin/.local/bin/ 2>/dev/null || true

# Misc
[ -f screenrc ] && cp screenrc stow/misc/.screenrc
[ -f eslintrc ] && cp eslintrc stow/misc/.eslintrc
[ -f flake8 ] && cp flake8 stow/misc/.flake8
[ -f prettierrc.json ] && cp prettierrc.json stow/misc/.prettierrc.json

echo "✓ Stow directories created"
echo "Install: cd stow && stow -t ~ zsh bash vim nvim tmux git bin misc"
