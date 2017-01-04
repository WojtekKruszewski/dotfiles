export PS1="\u@\h \e[30;1m\w\e[0m"
# export PS1="$PS1\$(git-radar --bash --fetch)"
export PS1="$PS1\n\$ "

# https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > ~/.config/$TERM.ti
tic ~/.config/$TERM.ti
# export TERMINFO="$HOME/.config/xterm-256color.ti"

# alias ^L=clear

# PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
# [ -f ~/.config/fzf.bash ] && source ~/.config/fzf.bash
# [ -f ~/.config/tmux_fzfpane.sh ] && source ~/.config/tmux_fzfpane.sh
# if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

# http://munkymorgy.blogspot.com/2008/07/screen-ctrl-s-bug.html
stty stop undef  # unmap ctrl-s
stty start undef # unmap ctrl-q

# http://stackoverflow.com/questions/18647277/tmux-is-blocking-ctrl-s-in-osx-ml
# bind -r '\C-s'
# stty -ixon
# stty stop undef

function term {
  export ITERM_PROFILE=$1
  echo "Switching to $ITERM_PROFILE"
  echo -e "\033]50;SetProfile=$ITERM_PROFILE\x7"
} 


