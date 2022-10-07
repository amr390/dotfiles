#!/bin/bash

# Set session name
SESSION="fastapi"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
WORKDIR=~/Projects/sandbox/ioCtl

# Only create a tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]; then
	# start new session with our name
	tmux new-session -d -s $SESSION

	# Name first Pane and start ssh
	tmux rename-window -t 1 'Console'
	tmux send-keys -t 'Console' "cd $WORKDIR/server/ioctl && poetry shell && uvicorn app.main:app --reload" 'C-m'
	tmux split-window -h
	tmux send-keys -t 'Console' "cd $WORKDIR/frontendr && npm run dev" 'C-m'

	# Create and setup pane for NVIM
	tmux new-window -t $SESSION:2 -n 'IDE'
	tmux send-keys -t 'IDE' "cd $WORKDIR && nvim" 'C-m'
fi

# Attach session, on Main Window
tmux attach-session -t $SESSION:2
