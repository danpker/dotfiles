if [ -f ~/.environment ]; then
    source ~/.environment
fi

if [ -f ~/.functions ]; then
    source ~/.functions
fi

# if [ -f /usr/local/etc/bash_completion ]; then
#     source /usr/local/etc/bash_completion
# fi

if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
fi
