#!/usr/bin/env bash
cd "$(dirname "$0")" || exit #Cd to project dir
SECONDS=0

# Install dotfiles
echo -e "\033[1;31m Install dotfiles \033[0m"
say "Install dotfiles"
cp ./dotfiles/.bash_profile ~/.
cp ./dotfiles/.gitignore_global ~/.
# Go to home directory
cd || exit
# Set default shell to bash
chsh -s /bin/bash
# Setup git
git config --global core.editor "nano"
git config --global user.name "Gaurav"
git config --global user.email "gg.spark@gmail.com"
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
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade
brew cask upgrade
which -a brew && brew --version

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
which -a node && node --version
which -a npm && npm --version
brew install node && brew info node
which -a node && node --version
which -a npm && npm --version

# Install Android
echo -e "\033[1;31m Install Android \033[0m"
say "Install Android"
which -a adb && adb --version
brew install bundletool && brew info bundletool
brew cask install android-platform-tools && brew cask info android-platform-tools
brew cask install android-sdk && brew cask info android-sdk
brew cask install android-studio && brew cask info android-studio
which -a adb && adb --version

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
which -a gcloud && gcloud --version

# Install Heroku
echo -e "\033[1;31m Install Heroku \033[0m"
say "Install Heroku"
which -a heroku && heroku --version
brew tap heroku/brew && brew install heroku && brew info heroku
which -a heroku && heroku --version

# Install Flutter
echo -e "\033[1;31m Install Flutter \033[0m"
say "Install Flutter"
which -a flutter && flutter --version
brew tap flschweiger/flutter && brew cask install flutter && brew cask info flutter
flutter upgrade --force
which -a flutter && flutter --version
flutter doctor -v

# Install VLC media player
echo -e "\033[1;31m Install VLC media player \033[0m"
say "Install VLC media player"
which -a vlc && vlc --version
brew cask install vlc && brew cask info vlc
which -a vlc && vlc --version

# Install Open Office
echo -e "\033[1;31m Install Open Office \033[0m"
say "Install Open Office"
brew cask install openoffice && brew cask info openoffice

# Install Google Drive
echo -e "\033[1;31m Install Google Drive \033[0m"
say "Install Google Drive"
brew cask install google-backup-and-sync && brew cask info google-backup-and-sync

# Install Tor Browser
echo -e "\033[1;31m Install Tor Browser \033[0m"
say "Install Tor Browser"
brew cask install tor-browser && brew cask info tor-browser

# Install Fliqlo Screensaver
echo -e "\033[1;31m Install Fliqlo Screensaver \033[0m"
say "Install Fliqlo Screensaver"
brew cask install fliqlo && brew cask info fliqlo

# Install Sublime text
echo -e "\033[1;31m Install Sublime text \033[0m"
say "Install Sublime text"
brew cask install sublime-text && brew cask info sublime-text

# Install Intellij Idea
echo -e "\033[1;31m Install Intellij Idea \033[0m"
say "Install Intellij Idea"
brew cask install intellij-idea-ce && brew cask info intellij-idea-ce

# Install Google Chrome
echo -e "\033[1;31m Install Google Chrome \033[0m"
say "Install Google Chrome"
brew cask install google-chrome && brew cask info google-chrome

# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
