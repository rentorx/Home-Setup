
alias TAIWAN='ssh rentorx@taiwan'
alias CAROLINA='ssh rentorx@carolina'


alias vpn='~/shadow/Home-Setup/runtmux.sh xvpn ~/shadow/vpnbackend'
alias cars='~/shadow/Home-Setup/runtmux.sh carservice ~/shadow/cars-service'


export LS_COLORS=$LS_COLORS:'di=0;35:';
export PS1='${debian_chroot:+($debian_chroot)}[\e[0;93m$(whoami)@\e[0;95m$(hostname -s):\e[0;91m`pwd`]\n\e[0;96m\$>'
export XPYENV='DEVELOPMENT'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/shadow
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=~/.local/bin/virtualenv
#export PATH=/usr/local/bin:/home/$USER/bin:$PATH
source ~/.local/bin/virtualenvwrapper.sh

