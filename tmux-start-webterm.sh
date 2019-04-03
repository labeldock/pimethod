#!/usr/bin/env bash
TMUXSNAME="allnpm"

tmux has-session -t $TMUXSNAME
if [ $? != 0 ]
then
  tmux new-session -s $TMUXSNAME -n "TEST" -d
  tmux split-window -v -t $TMUXSNAME:0.0
  tmux split-window -h -t $TMUXSNAME:0.0
  tmux split-window -h -t $TMUXSNAME:0.2
  
  tmux send-keys -t $TMUXSNAME:0.0 'npm run vueui' C-m
  tmux send-keys -t $TMUXSNAME:0.1 'npm run termui' C-m
  tmux send-keys -t $TMUXSNAME:0.2 'htop' C-m
  tmux send-keys -t $TMUXSNAME:0.3 'echo "Press C-b d"'
  tmux select-window -t $TMUXSNAME:0.3
  
fi
tmux attach -t $TMUXSNAME
