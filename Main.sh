#!/bin/bash
# Simple setup.sh for configuring Macintosh Workstation

clear
echo "******************************************************************************"
echo -e "Installing Dotfiles"
echo "******************************************************************************"
sleep 5

#!/bin/bash
cd "$(dirname "$0")"
#install dotfiles as well
cp ./dotfiles/.bash_profile ~/.
cp ./dotfiles/.gitignore_global ~/.

cd ~/

clear
echo "******************************************************************************"
echo -e "Installing Open Source softwares"
echo "******************************************************************************"
sleep 5


echo -e "Installing X-Code"
xcode-select --install

echo -e "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

clear
echo "******************************************************************************"
echo -e "Pulling GIT repositories"
echo "******************************************************************************"
sleep 5

#Setup git
git config --global core.editor "nano"
git config --global user.name "Gaurav"
git config --global user.email "gg.spark@gmail.com"
git config --global core.excludesfile ~/.gitignore_global

### Pull sources
cd $HOME
# git clone 
