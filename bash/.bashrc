source ~/.environment
source ~/.functions

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"

alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"
alias docker-stop-all="docker stop $(docker ps -q)"
