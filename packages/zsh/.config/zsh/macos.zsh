# macOS-specific configurations

# Homebrew - must be first to set PATH correctly
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

# Add Go to PATH if GOPATH is set
[[ -n "$GOPATH" ]] && PATH=$GOPATH/bin:$PATH

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




# macOS Terminal.app integration
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
    update_terminal_cwd() {
        printf '\e]7;%s\a' "file://$HOSTNAME${PWD// /%20}"
    }
    autoload add-zsh-hook
    add-zsh-hook chpwd update_terminal_cwd
    update_terminal_cwd
fi
