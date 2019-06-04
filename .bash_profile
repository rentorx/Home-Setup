

#[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$

export PS1='${debian_chroot:+($debian_chroot)}[\e[0;93m$(whoami)@\e[0;95m$(hostname -s):\e[0;91m`pwd`]\n\e[0;96m\$>'
export LS_COLORS=$LS_COLORS:'di=0;35:';

alias LA='ssh rentorx@losangeles'
alias TAIWAN='ssh rentorx@taiwan'
alias CAROLINA='ssh rentorx@carolina'

export XPYENV='DEVELOPMENT'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/shadow
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.7
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export PATH=/usr/local/bin:/home/rentorx/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh

alias vpn='. ~/bash/runtmux.sh xvpn /home/rentorx/shadow/vpnbackend'
alias cars='. ~/bash/runtmux.sh carservice /home/rentorx/shadow/carsbackend'
