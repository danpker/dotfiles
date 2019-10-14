if [ -f ~/.environment ]; then
    source ~/.environment
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

if [ -x "$(command -v brew)" ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
