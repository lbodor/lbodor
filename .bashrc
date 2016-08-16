if [[ ! $TERM =~ screen ]]; then
    exec tmux -2
fi
