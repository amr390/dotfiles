#!/bin/bash

# Set session name
SESSION="Sat"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create a tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]; then
  ACTIVATE_SAT="eve && workon sat"
	# start new session with our name
	tmux new-session -d -s $SESSION

	# Name first Pane and start ssh
	tmux rename-window -t 1 'Console'
	tmux send-keys -t 'Console' "sat && $ACTIVATE_SAT && sat-run-p" 'C-m'
	tmux split-window -h
	tmux send-keys -t 'Console' 'sat && cd sat8485/static && npm run start' 'C-m'

	# Create and setup pane for Hugo server
	tmux new-window -t $SESSION:2 -n 'IDE'
	tmux send-keys -t 'IDE' "sat && $ACTIVATE_SAT && sat && nvim" 'C-m'
fi

# Attach session, on Main Window
tmux attach-session -t $SESSION:2
