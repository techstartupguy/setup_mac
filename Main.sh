#!/bin/bash
# Simple setup.sh for configuring Macintosh Workstation

clear
echo "******************************************************************************"
echo -e "\e[1;92mInstalling Dotfiles screenrc, bash_profile, bashrc, bashrc_custom, emacs.d\e[0m"
echo "******************************************************************************"
sleep 5

#install dotfiles as well
cp ./dotfiles/.bash_profile ~/.


clear
echo "******************************************************************************"
echo -e "\e[1;92mInstalling Open Source softwares \e[0m"
echo "******************************************************************************"
sleep 5


echo -e "Installing X-Code"
xcode-select --install

echo -e "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

clear
echo "******************************************************************************"
echo -e "\e[1;92mPulling GIT repositories\e[0m"
echo "******************************************************************************"
sleep 5

#Setup git
git config --global core.editor "nano"
git config --global user.name "Gaurav"
git config --global user.email "gg.spark@gmail.com"

### Pull sources
cd $HOME
# git clone 
