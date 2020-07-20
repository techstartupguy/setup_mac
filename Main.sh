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
which -a xcode-select; xcode-select --version
xcode-select --install
which -a xcode-select; xcode-select --version

# Install Homebrew
echo -e "\033[1;31m Install Homebrew \033[0m"
say "Install Homebrew"
which -a brew; brew --version
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew upgrade
brew cask upgrade
which -a brew; brew --version

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
which -a node; node --version
which -a npm; npm --version
brew install node
which -a node; node --version
which -a npm; npm --version

# Install Android
echo -e "\033[1;31m Install Android \033[0m"
say "Install Android"
which -a adb; adb --version
brew install bundletool
brew cask install android-platform-tools
brew cask install android-sdk
brew cask install android-studio
which -a adb; adb --version

# Install Firebase
echo -e "\033[1;31m Install Firebase \033[0m"
say "Install Firebase"
which -a firebase; firebase --version
brew install firebase-cli
which -a firebase; firebase --version

# Install Gcloud
echo -e "\033[1;31m Install Gcloud \033[0m"
say "Install Gcloud"
which -a gcloud; gcloud --version
brew cask install google-cloud-sdk
which -a gcloud; gcloud --version

# Install Heroku
echo -e "\033[1;31m Install Heroku \033[0m"
say "Install Heroku"
which -a heroku; heroku --version
brew tap heroku/brew && brew install heroku
which -a heroku; heroku --version

# Install Flutter
echo -e "\033[1;31m Install Flutter \033[0m"
say "Install Flutter"
which -a flutter; flutter --version
brew cask install flutter
flutter upgrade
which -a flutter; flutter --version
echo -e "\033[1;31m Accept Licenses \033[0m"
say "Accept Licenses"
sudo xcodebuild -license
flutter doctor --android-licenses
flutter doctor -v


# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
