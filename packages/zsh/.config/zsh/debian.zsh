# Debian/Ubuntu-specific configurations


# Debian-specific aliases
if command -v eza >/dev/null 2>&1; then
  # eza: icons require a Nerd Font in the terminal
  alias ls='eza --icons=auto --group-directories-first'
  alias la='eza -a --icons=auto --group-directories-first'
  alias l='eza -F --icons=auto --group-directories-first'
  alias ll='eza -l --icons=auto --group-directories-first --sort=size'
else
  alias ls='ls --color=auto'
  alias la='ls -A'
  alias l='ls -CF'

fi

alias grep='grep --color=auto'

# Package management
alias apt-update='sudo apt update && sudo apt upgrade'
alias apt-search='apt search'
alias apt-install='sudo apt install'

# Debian-specific exports
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Debian-specific PATH — user-local bin only; system paths are already present
export PATH="$HOME/.local/bin:$PATH"
