PS1="\[\033[0;34m\][\u@:\w\[\033[0;32m\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[0;34m\]]$\[\033[0m\]"
PATH=$PATH

alias ll='ls -alrth'
