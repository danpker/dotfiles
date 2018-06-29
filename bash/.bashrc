if [ -f ~/.environment ]; then
    source ~/.environment
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

if [ -f ~/n ]; then
    source ~/n
fi

if [ -x "$(command -v brew)" ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
fi
