#!/bin/sh

session=$1
path=$2

# create a new tmux session
tmux has-session -t $session

if [ $? -eq 0 ]; then
  tmux ls
  tmux attach-session -t $session
else
  # set up tmux
  tmux start-server
  tmux new-session -d -s $session
  # Pane 1 and split
  tmux selectp -t 1
  tmux splitw -h -p 35

  # Pane 2 and split
  tmux selectp -t 2
  tmux splitw -v -p 75

  tmux send-keys -t $session:1.0 "cd $path" C-m
  tmux send-keys -t $session:1.1 "cd $path" C-m
  tmux send-keys -t $session:1.2 "cd $path" C-m
  tmux attach-session -t $session

fi
