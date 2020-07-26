PS1="\[\033[1;36m\][\u@:\w\[\033[0;32m\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[1;36m\]]$\[\033[0m\]"

#Configure your path
export EDITOR=nano
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
PATH=~/.pub-cache/bin:~/Library/Android/sdk/emulator:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools:~/Library/Android/sdk/tools/bin:$PATH

#Configure you aliases
alias ll='ls -alrth'
