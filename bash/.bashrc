# Add some color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=nvim
alias ls='ls -GFh'

# Colors
black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
magenta="\[$(tput setaf 5)\]"
cyan="\[$(tput setaf 6)\]"
white="\[$(tput setaf 7)\]"

# Title bar - "user@host: ~"
title="\u@\h: \w"
titlebar="\[\033]0;"$title"\007\]"

# MacOS stuff
export PATH="/usr/local/sbin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# Clear attributes
clear_attributes="\[$(tput sgr0)\]"

# Custom bash prompt - "➜  ~ (master) "
export PS1="${titlebar}${orange}➜ ${blue}\W ${clear_attributes}"

export HISTFILESIZE=25000

if [ -x $(brew --version) ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# delete branches that are merged into master & develop
clean_merged() {
    git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d
}

# Remove specififed file type
function purge {
    echo "Purging .$1 files"
    num_cleared=$(find . -name "*.$1" | wc -l)
    echo "Deleting $num_cleared files"
    find . -name "*.$1" -delete
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'
export DOTNET_CLI_TELEMETRY_OPTOUT=1
