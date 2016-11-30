source "/Users/wojtek/.bashrc"

# export CC=clang
# export CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl`"

export LC_ALL="en_US.UTF-8"
#export LC_CTYPE="utf-8"
export LC_CTYPE="en_US.UTF-8"
export EDITOR=vim

PATH=$PATH:/usr/local/sbin
export PATH="$PATH:$HOME/bin"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(direnv hook bash)"
