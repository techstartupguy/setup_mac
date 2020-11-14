PS1="\[\033[1;36m\][\u@:\w\[\033[0;32m\] \$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\[\033[1;36m\]]$\[\033[0m\]"

# Set environment variables
export EDITOR=nano
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set your path
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=~/.pub-cache/bin:$PATH
export PATH=/usr/local/opt/node@14/bin:$PATH
export PATH=/usr/local/opt/node@12/bin:$PATH

# Set your aliases
alias ll='ls -alrth'
