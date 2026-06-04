# Setup fzf
# ---------

# Determine the fzf base directory based on OS and installation method
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS with Homebrew
  if command -v brew >/dev/null 2>&1; then
    FZF_BASE=$(brew --prefix fzf)
  fi
else
  # Linux
  if [[ -d "/usr/share/fzf" ]]; then
    # Fedora, Arch
    FZF_BASE="/usr/share/fzf"
  elif [[ -d "/usr/share/doc/fzf/examples" ]]; then
    # Debian, Ubuntu
    FZF_BASE="/usr/share/doc/fzf/examples"
  fi
fi

# Fallback to home directory if installed via git
if [[ -z "$FZF_BASE" && -d "$HOME/.fzf" ]]; then
  FZF_BASE="$HOME/.fzf"
fi

if [[ -n "$FZF_BASE" ]]; then
  # Add fzf bin to PATH if it's not already there (common for git install)
  if [[ -d "$FZF_BASE/bin" && ! "$PATH" == *"$FZF_BASE/bin"* ]]; then
    export PATH="${PATH:+${PATH}:}$FZF_BASE/bin"
  fi

  # Auto-completion
  # ---------------
  if [[ $- == *i* ]]; then
    if [[ -f "$FZF_BASE/shell/completion.zsh" ]]; then
      source "$FZF_BASE/shell/completion.zsh" 2> /dev/null
    elif [[ -f "$FZF_BASE/completion.zsh" ]]; then
      source "$FZF_BASE/completion.zsh" 2> /dev/null
    fi
  fi

  # Key bindings
  # ------------
  if [[ -f "$FZF_BASE/shell/key-bindings.zsh" ]]; then
    source "$FZF_BASE/shell/key-bindings.zsh"
  elif [[ -f "$FZF_BASE/key-bindings.zsh" ]]; then
    source "$FZF_BASE/key-bindings.zsh"
  fi
fi
