# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"
[[ -f "${HOME}/.config/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/.config/kiro-cli/shell/zshrc.pre.zsh"
# Set ZDOTDIR to point to our config directory
export ZDOTDIR="$HOME/.config/zsh"

# Source the main configuration
source "$ZDOTDIR/zshrc"

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
[[ -f "${HOME}/.config/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/.config/kiro-cli/shell/zshrc.post.zsh"
