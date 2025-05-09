# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# run if macos
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Amazon Q pre block. Keep at the top of this file.
    # Amazon Q pre block. Keep at the top of this file.
  [[ -f "${HOME}/.local/share/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zshrc.pre.zsh"
fi
DEBUG=false
export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/zshrc"

if [[ "$OSTYPE" == "darwin"* ]]; then
  # Amazon Q post block. Keep at the bottom of this file.
  [[ -f "${HOME}/.local/share/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zshrc.post.zsh"

  # Amazon Q post block. Keep at the bottom of this file.
  fi

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
