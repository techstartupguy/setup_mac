PS1="\[\033[1;36m\][\u@:\w\[\033[0;32m\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[1;36m\]]$\[\033[0m\]"

#Configure your path
export EDITOR=nano
PATH=$PATH

#Configure you aliases
alias ll='ls -alrth'
