# Arch Linux-specific configurations
source ~/.local/share/omarchy/default/bash/aliases
source ~/.local/share/omarchy/default/bash/functions
source ~/.local/share/omarchy/default/bash/envs

# Arch-specific aliases
alias la='ll -A'
alias l='ls -CF'
alias grep='grep --color=auto'

# Package management
alias pac='sudo pacman'
alias pacs='pacman -Ss'
alias paci='sudo pacman -S'
alias pacr='sudo pacman -R'
alias pacu='sudo pacman -Syu'

# AUR helper (if using yay)
if command -v yay &> /dev/null; then
    alias yays='yay -Ss'
    alias yayi='yay -S'
    alias yayu='yay -Syu'
fi

alias rcdq="rclone mount drive.dq: ~/Documents/net/gd_quijote/ --daemon"
alias rcam="rclone mount drive.dq: ~/Documents/net/gd_a.mas.rodriguez/ --daemon"
alias rcma="rclone mount drive.dq: ~/Documents/net/gd_anma/ --daemon"

eval $(keychain --eval --quiet ~/.ssh/id_desktop_amasr ~/.ssh/id_desktop_manning)

# Arch-specific exports
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Arch-specific PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
