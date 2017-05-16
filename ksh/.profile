PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM

alias ls='colorls -AFGh'

bind -m ='clear'^J

export LC_CTYPE='en_US.UTF-8'

ulimit -S -d $(ulimit -H -d)
ulimit -S -n $(ulimit -H -n)
ulimit -S -p $(ulimit -H -p)
ulimit -S -s $(ulimit -H -s)

PS1='$(tput bold)$(pwd | sed s:${HOME}:~:) \$$(tput sgr0) '
