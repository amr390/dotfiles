source ~/dotfiles/bash/env
source ~/dotfiles/bash/config
source ~/dotfiles/bash/aliases

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/amr/.sdkman"
[[ -s "/home/amr/.sdkman/bin/sdkman-init.sh" ]] && source "/home/amr/.sdkman/bin/sdkman-init.sh"
