#!/usr/bin/bash

function usage {
    echo "expecting env value, (local|docker|alls)"
}

if [ $# -eq 1 ] ; then
	env=$1
else
	usage
	exit 1
fi

function local {
    cp -v .bash_profile ~ 
    cp -v .tmux.conf ~
    cp -v .vimrc ~
    . ~/.bash_profile

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cd ~/.vim/bundle
    git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/colors/

    #to update the local database of software to
    sudo apt-get update 

    #installing pip3 and virtualenv
    sudo apt install python3-pip
    pip3 install virtualenv virtualenvwrapper
    mkvirtualenv carservice --python=$(which python3)    
}

function docker_install {
    #removing old Docker software before proceeding
    sudo apt-get remove docker docker-engine docker.io

    #Ubuntu Using Default Repositories
    #sudo apt install docker.io
    #sudo systemctl start docker
    #sudo systemctl enable docker

    #Install Docker from Official Repository
    #to access the Docker repositories over HTTPS
    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

    #To ensure that the software you’re installing is authentic enter:
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add –

    #To install the Docker repository
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable" 
    #Update the repositories  added:
    sudo apt-get update

    #To install the latest version of docker Docker CE (Community Edition) 
    sudo apt-get install docker-ce

    #Install Specific Version of Docker
    #sudo apt-get install docker-ce=<VERSION>
}

function postgresql_install {

    sudo apt-get install wget ca-certificates
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
    sudo apt update
    sudo apt-get install postgresql postgresql-contrib
}

function docker_compose {

    sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}

case $env in
    'db')
        postgresql_install
        ;;
    'docker')
        docker_install
        ;;
    'compose')
        docker_compose
        ;;
    'local')
        local
        ;;
    'all')
        local
        postgresql_install
        docker_install
        docker_compose
        ;;
    *)
        usage
        exit 1
    ;;
esac

