# run if macos
if [[ "$OSTYPE" == "darwin"* ]] && [[ "$1" == "q" ]]; then
  # Amazon Q pre block. Keep at the top of this file.
  [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
fi

if [[ "$OSTYPE" != "darwin"* ]] && [[ "$1" == "q" ]]; then
  # Amazon Q pre block. Keep at the top of this file.
    # Amazon Q pre block. Keep at the top of this file.
  [[ -f "${HOME}/.local/share/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zshrc.pre.zsh"
fi
DEBUG=false
export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/zshrc"

if [[ "$OSTYPE" == "darwin"* ]] && [[ "$1" == "q" ]]; then
    # Amazon Q post block. Keep at the bottom of this file.
  [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
fi
if [[ "$OSTYPE" != "darwin"* ]] && [[ "$1" == "q" ]]; then
  # Amazon Q post block. Keep at the bottom of this file.
  [[ -f "${HOME}/.local/share/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zshrc.post.zsh"
fi


