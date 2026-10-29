# Arch Linux-specific configurations
[[ -f ~/.local/share/omarchy/default/bash/aliases ]] && source ~/.local/share/omarchy/default/bash/aliases
[[ -f ~/.local/share/omarchy/default/bash/functions ]] && source ~/.local/share/omarchy/default/bash/functions
[[ -f ~/.local/share/omarchy/default/bash/envs ]] && source ~/.local/share/omarchy/default/bash/envs

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
if (( $+commands[yay] )); then
    alias yays='yay -Ss'
    alias yayi='yay -S'
    alias yayu='yay -Syu'
fi

alias rcdq="rclone mount drive.dq: ~/Documents/net/gd_quijote/ --daemon"
alias rcam="rclone mount drive.dq: ~/Documents/net/gd_a.mas.rodriguez/ --daemon"
alias rcma="rclone mount drive.dq: ~/Documents/net/gd_anma/ --daemon"

# Arch-specific exports
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Arch-specific PATH — user-local bin only; system paths are already present
export PATH="$HOME/.local/bin:$PATH"

function override_logo() {
    local src="$HOME/Pictures/themes/icons/activities.svg"
    if [[ -f "$src" ]]; then
        cp -f "$src" ~/.local/share/gnome-shell/extensions/logomenu@aryan_k/Resources/void-logo.svg
        cp -f "$src" ~/.local/share/gnome-shell/extensions/logomenu@aryan_k/Resources/void-logo-symbolic.svg
        cp -f "$src" ~/.local/share/gnome-shell/extensions/logomenu@aryan_k/Resources/hicolor/16x16/actions/void-logo.svg
        cp -f "$src" ~/.local/share/gnome-shell/extensions/logomenu@aryan_k/Resources/hicolor/16x16/actions/void-logo-symbolic.svg
    fi
    alias cp='cp -i'
}

# Keychain: source cached env first (fast), only run keychain if the cache is
# missing or the agent is dead.
if [[ -z "$SSH_AUTH_SOCK" ]] && (( $+commands[keychain] )); then
    _kc_host=$(hostname)
    _kc_file="$HOME/.keychain/${_kc_host}-sh"
    if [[ -f "$_kc_file" ]] && source "$_kc_file" 2>/dev/null && [[ -n "$SSH_AUTH_SOCK" ]]; then
        : # cache is valid, agent is running
    else
        eval $(keychain --eval --quiet --no-ask ~/.ssh/id_desktop_amasr ~/.ssh/id_desktop_manning)
    fi
    unset _kc_host _kc_file
fi

