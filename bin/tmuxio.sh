#!/bin/bash

# Set session name
SESSION="nxt"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
WORKDIR=~/Projects/sandbox/full-stack-fastapi-posrgresql-reactjs/frontendr/

# Only create a tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]; then
	# start new session with our name
	tmux new-session -d -s $SESSION

	# Name first Pane and start ssh
	tmux rename-window -t 1 'Console'
	tmux send-keys -t 'Console' "cd $WORKDIR && npm run dev" 'C-m'
	tmux split-window -h
	tmux send-keys -t 'Console' "cd $WORKDIR"

	# Create and setup pane for NVIM
	tmux new-window -t $SESSION:2 -n 'IDE'
	tmux send-keys -t 'IDE' "cd $WORKDIR && nvim" 'C-m'
fi

# Attach session, on Main Window
tmux attach-session -t $SESSION:2
