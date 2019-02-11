
export PS1='${debian_chroot:+($debian_chroot)}[\e[0;93m$(whoami)@\e[0;95m$(hostname -s):\e[0;91m`pwd`]\n\e[0;96m\$>'
export LS_COLORS=$LS_COLORS:'di=0;35:';


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/shadow

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

source ~/.local/bin/virtualenvwrapper.sh

