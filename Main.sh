#!/usr/bin/env bash
cd "$(dirname "$0")" || exit #Cd to project dir
SECONDS=0

# Enter password to continue
echo -e "\033[1;31m Enter password to start \033[0m"
say "Enter password to start"
sudo -v # Take sudo permission to not ask in future
# Set default shell to bash
sudo chsh -s /bin/bash #For Root
chsh -s /bin/bash #For user

# Install dotfiles
echo -e "\033[1;31m Install dotfiles \033[0m"
say "Install dotfiles"
cp ./dotfiles/.bash_profile ~/.
cp ./dotfiles/.gitignore_global ~/.
# Go to home directory
cd || exit
ln -sf ~/ ~/Desktop/ #Create shortcut to home in Desktop
# Setup git
git config --global core.editor "nano"
git config --global user.name "$(whoami)"
git config --global user.email "$(whoami)@no-reply.com"
git config --global core.excludesfile ~/.gitignore_global

# Install XCode CLI Tools
echo -e "\033[1;31m Install XCode CLI Tools \033[0m"
say "Install XCode CLI Tools"
which -a xcode-select && xcode-select --version
xcode-select --install
which -a xcode-select && xcode-select --version

# Install Homebrew
echo -e "\033[1;31m Install Homebrew \033[0m"
say "Install Homebrew"
which -a brew && brew --version
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" </dev/null
brew upgrade
brew cask upgrade
which -a brew && brew --version

# Install Google Chrome
echo -e "\033[1;31m Install Google Chrome \033[0m"
say "Install Google Chrome"
brew cask install google-chrome && brew cask info google-chrome

# Install Google Drive
echo -e "\033[1;31m Install Google Drive \033[0m"
say "Install Google Drive"
brew cask install google-backup-and-sync && brew cask info google-backup-and-sync
ln -sf ~/Google\ Drive/ ~/Desktop/

# Install Tor Browser
echo -e "\033[1;31m Install Tor Browser \033[0m"
say "Install Tor Browser"
brew cask install tor-browser && brew cask info tor-browser

# Install Fliqlo Screensaver
echo -e "\033[1;31m Install Fliqlo Screensaver \033[0m"
say "Install Fliqlo Screensaver"
brew cask install fliqlo && brew cask info fliqlo

# Install Slack
echo -e "\033[1;31m Install Slack \033[0m"
say "Install Slack"
brew cask install slack && brew cask info slack

# Install VLC media player
echo -e "\033[1;31m Install VLC media player \033[0m"
say "Install VLC media player"
which -a vlc && vlc --version
brew cask install vlc && brew cask info vlc
which -a vlc && vlc --version

# Install Sublime text
echo -e "\033[1;31m Install Sublime text \033[0m"
say "Install Sublime text"
which -a subl && subl --version
brew cask install sublime-text && brew cask info sublime-text
which -a subl && subl --version

# Install Libre Office
echo -e "\033[1;31m Install Libre Office \033[0m"
say "Install Libre Office"
which -a soffice && soffice --version
brew cask install libreoffice && brew cask info libreoffice
which -a soffice && soffice --version

# Install VNC Viewer
echo -e "\033[1;31m Install VNC Viewer \033[0m"
say "Install VNC Viewer"
brew cask install vnc-viewer && brew cask info vnc-viewer

# Install Intellij Idea
echo -e "\033[1;31m Install Intellij Idea \033[0m"
say "Install Intellij Idea"
brew cask install intellij-idea-ce && brew cask info intellij-idea-ce

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
which -a node && node --version
which -a npm && npm --version
brew install node && brew info node
which -a node && node --version
which -a npm && npm --version

# Install Firebase
echo -e "\033[1;31m Install Firebase \033[0m"
say "Install Firebase"
which -a firebase && firebase --version
brew install firebase-cli && brew info firebase-cli
which -a firebase && firebase --version

# Install Gcloud
echo -e "\033[1;31m Install Gcloud \033[0m"
say "Install Gcloud"
which -a gcloud && gcloud --version
brew cask install google-cloud-sdk && brew cask info google-cloud-sdk
gcloud components update -q
which -a gcloud && gcloud --version

# Install Heroku
echo -e "\033[1;31m Install Heroku \033[0m"
say "Install Heroku"
which -a heroku && heroku --version
brew tap heroku/brew && brew install heroku && brew info heroku
which -a heroku && heroku --version

# Install Java
echo -e "\033[1;31m Install Java \033[0m"
say "Install Java"
brew cask install java && brew cask info java
which -a java && java --version

# Install Android
echo -e "\033[1;31m Install Android \033[0m"
say "Install Android"
which -a adb && adb --version
brew install bundletool && brew info bundletool
brew cask install android-platform-tools && brew cask info android-platform-tools
brew cask install android-sdk && brew cask info android-sdk
brew cask install android-studio && brew cask info android-studio
mkdir -p .android && touch ~/.android/repositories.cfg
which -a adb && adb --version

# Install Flutter
echo -e "\033[1;31m Install Flutter \033[0m"
say "Install Flutter"
which -a flutter && flutter --version
brew tap flschweiger/flutter && brew install flutter && brew info flutter
flutter upgrade --force
which -a flutter && flutter --version
flutter doctor -v


# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
