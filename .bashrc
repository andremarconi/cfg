# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

PS1="\e[0;32m\W \$ \e[0m"

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
