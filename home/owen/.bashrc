
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. "$HOME/.cargo/env"

[[ $PS1 &&
  ! ${BASH_COMPLETION_VERSINFO:-} &&
  -f /usr/share/bash-completion/bash_completion ]] &&
    . /usr/share/bash-completion/bash_completion

eval "$(starship init bash)"

source -- "$HOME/.local/share/blesh/ble.sh"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
