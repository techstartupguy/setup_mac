#!/bin/bash
# Simple setup.sh for configuring Macintosh Workstation

clear
echo "******************************************************************************"
echo -e "\e[1;92mInstalling Dotfiles screenrc, bash_profile, bashrc, bashrc_custom, emacs.d\e[0m"
echo "******************************************************************************"
sleep 5

#install dotfiles as well
cp ./dotfiles/.bash_profile ~/.
