# Add some color
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# MacOS stuff
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH="/usr/local/sbin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="$PATH:$(yarn global bin)"

# delete branches that are merged into master & develop
clean_merged() {
    git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d
}

