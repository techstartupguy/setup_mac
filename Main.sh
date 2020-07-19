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

# Install XCode
echo -e "\033[1;31m Install XCode \033[0m"
say "Install XCode"
xcode-select --install

# Install Homebrew
echo -e "\033[1;31m Install Homebrew \033[0m"
say "Install Homebrew"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
brew install node

# Install Java

# Install Android

# Install Flutter

# Install Firebase

# Install Gcloud






# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
