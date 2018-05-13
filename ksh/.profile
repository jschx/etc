PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:/usr/local/plan9/bin:$HOME/.cargo/bin
MANPATH=:/usr/local/plan9/man
export PATH HOME TERM MANPATH

alias ls='colorls -AFGh'
alias rm='rm -P'

bind -m ='clear'^J

export EDITOR='/usr/bin/ex'
export HISTFILE="${HOME}/.sh_history"
export VISUAL='/usr/bin/vi'
export LC_CTYPE='en_US.UTF-8'

set -o emacs

PS1='$(tput bold)$(pwd | sed s:${HOME}:~:) \$$(tput sgr0) '
