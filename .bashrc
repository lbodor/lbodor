export EDITOR=vim
export PS1="\[\033[1;32m\]\u@\h:\w\$\[\033[0m\] "
alias vi=vim
alias vs='vim --servername s'
alias vg='vim -c Gstatus .'
if [[ ! $TERM =~ screen ]]; then
    exec tmux -2
fi
