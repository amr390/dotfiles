DEBUG=false
export ZDOTDIR=$HOME/.config/zsh
source "$HOME/.config/zsh/zshrc"

# straight logs to marketplace envs
alias tmwsq='ssh bastion -t "sudo ssh marketplacews-qa -t \"tail -f /opt/tomcat/logs/catalina.out\""'
alias tmws='ssh bastion -t "sudo ssh marketplacews-prod -t \"tail -f /opt/tomcat/logs/catalina.out\""'
alias tmktq='ssh bastion -t "sudo ssh marketplace-qa -t \"tail -f /opt/tomcat/logs/catalina.out\""'
alias tmkt='ssh bastion -t "sudo ssh marketplace-prod -t \"tail -f /opt/tomcat/logs/catalina.out\""'
alias tmadq='ssh bastion -t "sudo ssh marketplaceadmin-qa -t \"tail -f /opt/tomcat/logs/catalina.out\""'
alias tmad='ssh bastion -t "sudo ssh marketplaceadmin-prod -t \"tail -f /opt/tomcat/logs/catalina.out\""'

