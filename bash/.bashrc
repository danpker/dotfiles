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

export NOTION_HOME="$HOME/.notion"
[ -s "$NOTION_HOME/load.sh" ] && \. "$NOTION_HOME/load.sh"

export PATH="${NOTION_HOME}/bin:$PATH"