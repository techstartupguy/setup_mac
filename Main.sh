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
sudo cp ./dotfiles/.bash_profile ~/.
sudo cp ./dotfiles/.gitignore_global ~/.
sudo cp ./dotfiles/.nanorc ~/.
# Go to home directory
cd || exit
ln -sf ~/ ~/Desktop/ # Create shortcut to home in Desktop
# Setup Mac Defaults
defaults read > ~/defaults.txt # Save current defaults in home folder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark" # Set dark mode
defaults write com.apple.menuextra.battery ShowPercent -string "YES" # Show battery percentage
defaults write com.apple.dock tilesize -int 40 # Set dock size to 40
defaults write com.apple.dock wvous-bl-corner -int 5 # Start screensaver on bottom left hot-corner
defaults write com.apple.dock wvous-bl-modifier -int 0 # Start screensaver on bottom left hot-corner
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # Search current folder
defaults write com.apple.finder FXRemoveOldTrashItems -bool true # Remove trash after 30 days
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true # Show external hard drives on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true  # Show hard drives on desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true  # Show removable media on desktop
defaults write com.apple.screencapture show-thumbnail -bool false # Don't show thumbnail
defaults write com.apple.screencapture location ~/Downloads/ # Save Screenshots in downloads
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
brew upgrade --cask
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

# Install Sublime text
echo -e "\033[1;31m Install Sublime text \033[0m"
say "Install Sublime text"
which -a subl && subl --version
brew cask install sublime-text && brew cask info sublime-text
which -a subl && subl --version

# Install Android Studio
echo -e "\033[1;31m Install Android Studio \033[0m"
say "Install Android Studio"
brew cask install android-studio && brew cask info android-studio

# Install VS Code
echo -e "\033[1;31m Install VS Code \033[0m"
say "Install VS Code"
which -a code && code --version
brew cask install visual-studio-code && brew cask info visual-studio-code
which -a code && code --version
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension eamodio.gitlens
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension editorconfig.editorconfig
code --install-extension dart-code.dart-code
code --install-extension dart-code.flutter
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension msjsdiag.vscode-react-native
code --install-extension coenraads.bracket-pair-colorizer-2
cp ~/setup_mac/settings.json ~/Library/Application\ Support/Code/User/settings.json


# Install Nano
echo -e "\033[1;31m Install Nano \033[0m"
say "Install Nano"
which -a nano && nano --version
brew install nano && brew info nano
which -a nano && nano --version

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
which -a node && node --version
which -a npm && npm --version
brew install node && brew info node
brew install node@14 && brew info node@14
brew install node@12 && brew info node@12
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

# Install Java
echo -e "\033[1;31m Install Java \033[0m"
say "Install Java"
brew cask install adoptopenjdk/openjdk/adoptopenjdk8 && brew cask info adoptopenjdk8
which -a java && java -version

# Install Android
echo -e "\033[1;31m Install Android \033[0m"
say "Install Android"
which -a adb && adb --version
brew install bundletool && brew info bundletool
brew cask install android-platform-tools && brew cask info android-platform-tools
brew cask install android-sdk && brew cask info android-sdk
mkdir -p .android && touch ~/.android/repositories.cfg
which -a adb && adb --version

# Install Flutter
echo -e "\033[1;31m Install Flutter \033[0m"
say "Install Flutter"
which -a flutter && flutter --version
brew install flschweiger/flutter/flutter && brew info flutter
flutter upgrade --force
which -a flutter && flutter --version
flutter doctor -v

# Install Duti
echo -e "\033[1;31m Install Duti \033[0m"
say "Install Duti"
which -a duti && duti -V
brew install duti && brew info duti
which -a duti && duti -V
# Default Video Player: org.videolan.vlc
duti -s org.videolan.vlc .M2V all
duti -s org.videolan.vlc .M3U all
duti -s org.videolan.vlc .MPEG1 all
duti -s org.videolan.vlc .MPEG2 all
duti -s org.videolan.vlc .PLS all
duti -s org.videolan.vlc .BUP all
duti -s org.videolan.vlc .A52 all
duti -s org.videolan.vlc .DV all
duti -s org.videolan.vlc .MOV all
duti -s org.videolan.vlc .MPEG4 all
duti -s org.videolan.vlc .SPX all
duti -s org.videolan.vlc .TS all
duti -s org.videolan.vlc .BIN all
duti -s org.videolan.vlc .IFO all
duti -s org.videolan.vlc .PART all
duti -s org.videolan.vlc .3G2 all
duti -s org.videolan.vlc .AVI all
duti -s org.videolan.vlc .MPEG all
duti -s org.videolan.vlc .MPG all
duti -s org.videolan.vlc .M4A all
duti -s org.videolan.vlc .WAV all
duti -s org.videolan.vlc .3GP all
duti -s org.videolan.vlc .MP2 all
duti -s org.videolan.vlc .MP3 all
duti -s org.videolan.vlc .MP4 all
duti -s org.videolan.vlc .M4P all
# Default Text Editor: com.microsoft.VSCode | com.sublimetext.3
duti -s com.microsoft.VSCode .SH all
duti -s com.microsoft.VSCode .MD all
duti -s com.microsoft.VSCode .TXT all
duti -s com.microsoft.VSCode .YAML all
duti -s com.microsoft.VSCode .JSON all
duti -s com.microsoft.VSCode .CSV all


# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
