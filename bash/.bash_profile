if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# export VOLTA_HOME="$HOME/.volta"
# [ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

# export PATH="$VOLTA_HOME/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
