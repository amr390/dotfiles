# Fedora-specific configurations

# Fedora-specific aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'

# Package management (DNF)
alias dnf-update='sudo dnf update'
alias dnf-search='dnf search'
alias dnf-install='sudo dnf install'
alias dnf-remove='sudo dnf remove'

# Fedora-specific exports
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Fedora-specific PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
