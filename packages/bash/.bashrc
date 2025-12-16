# Homebrew setup (same as zsh)
if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f "/usr/local/bin/brew" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# PATH setup (same as zsh)
PATH="$HOME/.local/bin":$PATH
PATH="$HOME/Documents/dotfiles/bin":$PATH
export PATH

eval "$(starship init bash)"

source ~/Documents/dotfiles/bash/config
source ~/Documents/dotfiles/bash/env
source ~/Documents/dotfiles/bash/aliases

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
