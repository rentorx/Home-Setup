
#### Home-Setup
General LINUX/PYTHON/TMUX/VIM Setup Environment

### System requirements ###

* Python >=3.7.0

- sudo apt-get update
-`sudo apt install python3.7`
-`sudo apt install python3-pip`

### Virtual ENV ###

* Install virtual env `pip install virtualenv virtualenvwrapper` && `pip3 install virtualenv virtualenvwrapper` please read virtalenvwrapper documentation to fully setup virtual env wrapper.

* Create a virtual environment `mkvirtualenv ${env_name} --python=$(which python3.7)`

* By default the virtual env should be active, for now on when you need to activate the virtual env run `workon ${env_name}`.

### VIM PYTHON EDITOR ###
.vimrc Contains usefull configuration extensions that make vim behave more like a “modern” IDE. The very first thing you need is a good extension manager.

web reference
https://realpython.com/vim-and-python-a-match-made-in-heaven/

### TMUX ###
Pretty and Usable - Tmux config to customize and split windows

### nginx  ###

* nginx example for vpnbackend project

    ```
    sudo cp /etc/nginx/sites-available/xvpnbackend  /etc/nginx/sites-available/xvpnbackend
    sudo ln -s /etc/nginx/sites-available/xvpnbackend /etc/nginx/sites-enabled/
    
    sudo nginx -t               #check config file#
    sudo systemctl restart nginx```
    
    

### Celery & Redis  ###

 Celery task queue to distribute work across threads or machines.
 Redis service message broker to send and receive messages.
* Redis 

-sudo apt update
-sudo apt install redis-server

sudo vi /etc/redis/redis.conf
/etc/redis/redis.conf
. . .
 If you run Redis from upstart or systemd, Redis can interact with your
 supervision tree. Options:
   supervised no      - no supervision interaction
   supervised upstart - signal upstart by putting Redis into SIGSTOP mode
   supervised systemd - signal systemd by writing READY=1 to $NOTIFY_SOCKET
   supervised auto    - detect upstart or systemd method based on
                        UPSTART_JOB or NOTIFY_SOCKET environment variables
 Note: these supervision methods only signal "process is ready."
       They do not enable continuous liveness pings back to your supervisor.
supervised systemd
. . .

-sudo systemctl restart redis.service

celery -A celery_stuff.celery worker -l DEBUG -E

https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04





