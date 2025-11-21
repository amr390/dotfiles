# Arch Linux-specific configurations

# Arch-specific aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
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

# Arch-specific exports
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Arch-specific PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
