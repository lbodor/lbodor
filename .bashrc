export EDITOR=nvim
prompt_command () {
    if [ "${IN_NIX_SHELL}" ]; then
        PS1='nix-shell $(basename $(dirname "$PWD"))/$(basename "$PWD")$ '
    else
        PS1='$(basename $(dirname "$PWD"))/$(basename "$PWD")$ '
    fi
}
PROMPT_COMMAND=prompt_command
alias ls='ls --color=auto'
alias vi=nvim
alias vg='nvim -c Gstatus .'
alias tmux='tmux -2'
