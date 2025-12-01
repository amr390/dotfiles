# macOS-specific configurations

# Homebrew
if [[ -f "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -f "/usr/local/bin/brew" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# macOS-specific aliases
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# macOS-specific exports
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# macOS-specific functions
function finder() {
    open -a Finder "${1:-.}"
}

function trash() {
    command mv "$@" ~/.Trash
}

# macOS clipboard integration
alias pbcopy='pbcopy'
alias pbpaste='pbpaste'

# macOS-specific PATH additions
PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
# PATH=$HOME/.local/share/virtualenv/virtualenvs/neovim/bin:$PATH
PATH=$GOPATH/bin:$PATH # go
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# macOS Terminal.app integration
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
    # Enable Terminal.app's working directory tracking
    update_terminal_cwd() {
        printf '\e]7;%s\a' "file://$HOSTNAME${PWD// /%20}"
    }
    autoload add-zsh-hook
    add-zsh-hook chpwd update_terminal_cwd
    update_terminal_cwd
fi



