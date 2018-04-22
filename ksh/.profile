PATH=$HOME/bin:$HOME/.cargo/bin:/usr/ports/infrastructure/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM

alias ffup='doas env PKG_PATH=https://packages.rhaalovely.net/snapshots/$(arch -s)/ pkg_add -u firefox'
alias ls='colorls -AFGh'
alias rm='rm -P'

bind -m ='clear'^J

export EDITOR='/usr/bin/ex'
export HISTFILE="${HOME}/.sh_history"
export VISUAL='/usr/bin/vi'
export LC_CTYPE='en_US.UTF-8'

set -o emacs

ulimit -S -d $(ulimit -H -d)
ulimit -S -n $(ulimit -H -n)
ulimit -S -p $(ulimit -H -p)
ulimit -S -s $(ulimit -H -s)

PS1='$(tput bold)$(pwd | sed s:${HOME}:~:) \$$(tput sgr0) '
