#!/bin/bash
set -e
cd "$(dirname "$0")/.."

echo "Reorganizing dotfiles structure..."

# Create new structure
mkdir -p packages/{zsh,bash,vim,nvim,tmux,git,misc}
mkdir -p scripts config archive

# Move stow packages if they exist
[ -d stow ] && mv stow/* packages/ && rmdir stow

# ZSH
mkdir -p packages/zsh/.config/zsh
cp -r zsh/* packages/zsh/.config/zsh/ 2>/dev/null || true
[ -f packages/zsh/.config/zsh/.zshrc ] && mv packages/zsh/.config/zsh/.zshrc packages/zsh/
[ -f packages/zsh/.config/zsh/.zprofile ] && mv packages/zsh/.config/zsh/.zprofile packages/zsh/

# Bash
[ -f bashrc ] && cp bashrc packages/bash/.bashrc
[ -f bash_profile ] && cp bash_profile packages/bash/.bash_profile
mkdir -p packages/bash/.config/bash
cp -r bash/* packages/bash/.config/bash/ 2>/dev/null || true

# Vim
[ -d vim ] && cp -r vim packages/vim/.vim
[ -f vim/vimrc ] && cp vim/vimrc packages/vim/.vimrc

# Neovim
mkdir -p packages/nvim/.config/nvim
[ -d lazyvim ] && cp -r lazyvim/* packages/nvim/.config/nvim/

# Tmux
[ -f tmux.conf ] && cp tmux.conf packages/tmux/.tmux.conf

# Git
[ -f git-prompt.sh ] && cp git-prompt.sh packages/git/.git-prompt.sh

# Misc
[ -f screenrc ] && cp screenrc packages/misc/.screenrc
[ -f eslintrc ] && cp eslintrc packages/misc/.eslintrc
[ -f flake8 ] && cp flake8 packages/misc/.flake8
[ -f prettierrc.json ] && cp prettierrc.json packages/misc/.prettierrc.json

# Move scripts
mv install.sh uninstall.sh stow-setup.sh scripts/ 2>/dev/null || true

# Move config files
mv packages.txt config/ 2>/dev/null || true

# Archive old stuff
mv raw_nvim templates archive/ 2>/dev/null || true

# Clean up root-level config files (they're now in packages/)
rm -f bashrc bash_profile tmux.conf screenrc eslintrc flake8 prettierrc.json git-prompt.sh 2>/dev/null || true

echo "✓ Reorganization complete"
echo ""
echo "New structure:"
echo "  packages/  - Stow packages"
echo "  bin/       - User scripts"
echo "  scripts/   - Setup scripts"
echo "  config/    - System configs"
echo "  archive/   - Old configs"
