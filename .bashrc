export PS1="\[\033[1;32m\]\u@\h:\w\$\[\033[0m\] "
alias vi=vim
alias vs='vim --servername s'
if [[ ! $TERM =~ screen ]]; then
    exec tmux -2
fi
