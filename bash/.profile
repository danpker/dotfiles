if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# MacOS stuff
export PATH="/usr/local/sbin:$PATH"
export PATH="${HOME}/.cargo/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# Python pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Homebrew
if [ -f /user/local/etc/bash_completion ]; then
    # USe brew version of open ssl headers
    # OPENSSL_PREFIX="$(brew --prefix openssl)"
    # Hard coding this because it's slow
    OPENSSL_PREFIX="/usr/local/opt/openssl@1.1"
    export OPENSSL_INCLUDE_DIR="${OPENSSL_PREFIX}/include"
    export OPENSSL_LIB_DIR="${OPENSSL_PREFIX}/lib"
fi

# Rust
if [ -x "$(command -v rustc)" ]; then
    export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
  source $HOME/.rvm/scripts/rvm;
fi

# GCP
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/danielparker/google-cloud-sdk/path.bash.inc' ]; then . '/Users/danielparker/google-cloud-sdk/path.bash.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/danielparker/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/danielparker/google-cloud-sdk/completion.bash.inc'; fi
