source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases

eval "$(starship init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
