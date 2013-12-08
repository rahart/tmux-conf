#!/usr/local/bin/bash
tmux new-session -d -s STP
tmux rename-window 'JUMP'
tmux new-window -t STP:1 -n 'Single'

tmux new-window -t STP:2 -n 'FourPaneSplit'
tmux split-window -h
tmux split-window -v
tmux select-pane -L
tmux split-window -v
tmux select-pane -U

tmux new-window -t STP:3 -n 'StackedSplit'
tmux split-window -v
tmux select-pane -U

tmux new-window -t STP:4 -n 'SideXSideSplit'
tmux split-window -h
tmux select-pane -U

tmux select-window -t STP:1
tmux -2 attach-session -t STP

