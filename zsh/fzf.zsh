# Setup fzf
# ---------
if [[ ! "$PATH" == */home/amr/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/amr/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/amr/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/amr/.fzf/shell/key-bindings.zsh"
