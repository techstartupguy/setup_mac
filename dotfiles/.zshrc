source $HOME/.bash_profile
export ZSH="$HOME/.oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true" # disable bi-weekly auto-update checks.
DISABLE_UNTRACKED_FILES_DIRTY="true" # disable marking untracked files under VCS as dirty
HIST_STAMPS="yyyy-mm-dd"
plugins=(git) # Example format: plugins=(rails git textmate ruby lighthouse)
# ENABLE_CORRECTION="true" # enable command auto-correction.
# COMPLETION_WAITING_DOTS="true" # display red dots whilst waiting for completion.
source $ZSH/oh-my-zsh.sh
# Set your aliases
alias ll='ls -alrth'