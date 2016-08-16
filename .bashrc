export PS1="\[\033[1;32m\]\u@\h:\w\$\[\033[0m\] "
alias vi=vim
if [[ ! $TERM =~ screen ]]; then
    exec tmux -2
fi
