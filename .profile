# source ~/src/nvm/nvm.sh
# nvm use v0.8.18

alias ^L=clear

# export GITAWAREPROMPT=~/.config/git-aware-prompt
# source $GITAWAREPROMPT/main.sh
# source ~/.config/git-aware-promptmain.sh
# export PS1="\u@\h \e[30;1m\w\e[0m \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "

export PS1="\u@\h \e[30;1m\w\e[0m"
export PS1="$PS1\$(git-radar --bash --fetch)"
export PS1="$PS1\n\$ "

PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# export CC=clang
export CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl`"

export LC_ALL="en_US.UTF-8"
#export LC_CTYPE="utf-8"
export LC_CTYPE="en_US.UTF-8"
export EDITOR=vim

PATH=$PATH:/usr/local/sbin
# eval "$(rbenv init -)";
# export PATH="./bin:$PATH"

eval "$(direnv hook bash)"

# http://munkymorgy.blogspot.com/2008/07/screen-ctrl-s-bug.html
stty stop undef  # unmap ctrl-s
stty start undef # unmap ctrl-q

# http://stackoverflow.com/questions/18647277/tmux-is-blocking-ctrl-s-in-osx-ml
bind -r '\C-s'
stty -ixon
stty stop undef

# function binstubs(){
#   export PATH=./bin:$PATH
# }

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# source /Users/wojtek/.iterm2_shell_integration.bash

source "/Users/wojtek/.bashrc"
