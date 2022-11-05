source $HOME/.bash_profile
export ZSH="$HOME/.oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="agnoster"
DISABLE_AUTO_UPDATE="true" # disable bi-weekly auto-update checks.
DISABLE_UNTRACKED_FILES_DIRTY="true" # disable marking untracked files under VCS as dirty
HIST_STAMPS="yyyy-mm-dd"
plugins=(git) # Example format: plugins=(rails git textmate ruby lighthouse)
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Set your aliases
alias ll='ls -alrth'