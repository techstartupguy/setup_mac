#!/usr/bin/env bash
cd "$(dirname "$0")" || exit #Cd to project dir
SECONDS=0

# Enter password to continue
echo -e "\033[1;31m Enter password to start \033[0m"
say "Enter password to start"
sudo -v # Take sudo permission to not ask in future
# Set default shell to zsh
sudo chsh -s /bin/zsh #For Root
chsh -s /bin/zsh #For user

# Install dotfiles
echo -e "\033[1;31m Install dotfiles \033[0m"
say "Install dotfiles"
sudo cp ./dotfiles/.bash_profile ~/.
sudo cp ./dotfiles/.gitignore_global ~/.
sudo cp ./dotfiles/.nanorc ~/.
sudo cp ./dotfiles/.zshrc ~/.

# Install Mac Defaults
echo -e "\033[1;31m Install Mac Defaults \033[0m"
say "Install Mac Defaults"
sudo softwareupdate --schedule off # Disable software updates
# Setup energy settings
sudo pmset -a disksleep 20 # Time in minutes before hard disks are spun down and put to sleep
sudo pmset -a gpuswitch 2 # Automatically switch between graphics mode for better battery life
sudo pmset -a halfdim 1 # Display sleep will use an intermediate half-brightness
sudo pmset -a lidwake 1 # Wake the machine when the laptop lid is opened
sudo pmset -a proximitywake 0 # Wake from sleep based on proximity of devices using same iCloud id
sudo pmset -c sleep 15 # Charging: system sleep timer
sudo pmset -b sleep 10 # Battery: system sleep timer
sudo pmset -c displaysleep 10 # Charging: display sleep timer
sudo pmset -b displaysleep 5 # Battery: display sleep timer
sudo pmset -c womp 1 # Charging: Wake for network access
sudo pmset -b lessbright 1 # Battery: slightly turn down display brightness when switching to this power source
# Setup defaults
defaults read > ~/defaults.txt # Save current defaults in home folder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark" # Set dark mode
defaults write com.apple.menuextra.battery ShowPercent -string "YES" # Show battery percentage
defaults write com.apple.dock show-recents -bool false # Disable recent apps in dock
defaults write com.apple.dock tilesize -int 40 # Set dock size to 40
defaults write com.apple.dock wvous-bl-corner -int 5 # Start screensaver on bottom left hot-corner
defaults write com.apple.dock wvous-bl-modifier -int 0 # Start screensaver on bottom left hot-corner
defaults write com.apple.dock ResetLaunchPad -bool true # Set launcher in default view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" # Set list view as default view
defaults write com.apple.finder ShowPathbar -bool true # Show path bar at bottom of finder
defaults write com.apple.finder SidebarWidth -int 150 # Set side bar width of finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # Search current folder
defaults write com.apple.finder FXRemoveOldTrashItems -bool true # Remove trash after 30 days
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true # Show external hard drives on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true  # Show hard drives on desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true  # Show removable media on desktop
defaults write com.apple.screencapture show-thumbnail -bool false # Don't show thumbnail
defaults write com.apple.screencapture location ~/Downloads/ # Save Screenshots in downloads
# Set one dark as default terminal theme
[ $(defaults read com.apple.Terminal "Default Window Settings") = "OneDark" ] || open OneDark.terminal &&
defaults write com.apple.Terminal "Default Window Settings" -string "OneDark" &&
defaults write com.apple.Terminal "Startup Window Settings" -string "OneDark"
# Setup git
git config --global core.editor "nano"
git config --global user.name "$(whoami)"
git config --global user.email "$(whoami)@no-reply.com"
git config --global core.excludesfile ~/.gitignore_global

# Go to home directory
cd || exit
ln -sf ~/ ~/Desktop/ # Create shortcut to home in Desktop

# Install Oh My Zsh
echo -e "\033[1;31m Install Oh My Zsh \033[0m"
say "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
brew install zsh-autosuggestions && brew info zsh-autosuggestions

# Install XCode CLI Tools
echo -e "\033[1;31m Install XCode CLI Tools \033[0m"
say "Install XCode CLI Tools"
which -a xcode-select && xcode-select --version
xcode-select --install
xcode-select --print-path
which -a xcode-select && xcode-select --version

# Install Homebrew
echo -e "\033[1;31m Install Homebrew \033[0m"
say "Install Homebrew"
which -a brew && brew --version
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" </dev/null
brew upgrade
brew upgrade --cask
brew tap | grep caskroom/versions && brew untap caskroom/versions
brew tap | grep homebrew/cask-versions && brew untap homebrew/cask-versions
which -a brew && brew --version

# Install Google Chrome
echo -e "\033[1;31m Install Google Chrome \033[0m"
say "Install Google Chrome"
brew install --cask google-chrome && brew info --cask google-chrome

# Install Google Drive
echo -e "\033[1;31m Install Google Drive \033[0m"
say "Install Google Drive"
brew install --cask google-drive && brew info --cask google-drive

# Install Tor Browser
echo -e "\033[1;31m Install Tor Browser \033[0m"
say "Install Tor Browser"
brew install --cask tor-browser && brew info --cask tor-browser

# Install Fliqlo Screensaver
echo -e "\033[1;31m Install Fliqlo Screensaver \033[0m"
say "Install Fliqlo Screensaver"
brew install --cask fliqlo && brew info --cask fliqlo

# Install Slack
echo -e "\033[1;31m Install Slack \033[0m"
say "Install Slack"
brew install --cask slack && brew info --cask slack

# Install VLC media player
echo -e "\033[1;31m Install VLC media player \033[0m"
say "Install VLC media player"
which -a vlc && vlc --version
brew install --cask vlc && brew info --cask vlc
which -a vlc && vlc --version

# Install Libre Office
echo -e "\033[1;31m Install Libre Office \033[0m"
say "Install Libre Office"
which -a soffice && soffice --version
brew install --cask libreoffice && brew info --cask libreoffice
which -a soffice && soffice --version

# Install VNC Viewer
echo -e "\033[1;31m Install VNC Viewer \033[0m"
say "Install VNC Viewer"
brew install --cask vnc-viewer && brew info --cask vnc-viewer

# Install Sublime text
echo -e "\033[1;31m Install Sublime text \033[0m"
say "Install Sublime text"
which -a subl && subl --version
brew install --cask sublime-text && brew info --cask sublime-text
which -a subl && subl --version

# Install Android Studio
echo -e "\033[1;31m Install Android Studio \033[0m"
say "Install Android Studio"
brew install --cask android-studio && brew info --cask android-studio

# Install VS Code
echo -e "\033[1;31m Install VS Code \033[0m"
say "Install VS Code"
which -a code && code --version
brew install --cask visual-studio-code && brew info --cask visual-studio-code
which -a code && code --version
code --install-extension ms-python.python
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension zhuangtongfa.material-theme
code --install-extension editorconfig.editorconfig
code --install-extension dart-code.dart-code
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dart-code.flutter
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension naumovs.color-highlight
code --install-extension msjsdiag.vscode-react-native
code --install-extension mechatroner.rainbow-csv
cp ~/setup_mac/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Install VirtualBox
echo -e "\033[1;31m Install VirtualBox \033[0m"
say "Install VirtualBox"
which -a VBoxManage && VBoxManage --version
brew install --cask virtualbox && brew info --cask virtualbox
which -a VBoxManage && VBoxManage --version

#Install Docker
echo -e "\033[1;31m Install Docker \033[0m"
say "Install Docker"
which -a docker && docker --version
which -a docker-compose && docker-compose --version
which -a docker-machine && docker-machine --version
brew install --cask docker && brew info --cask docker
brew install docker-machine && brew info docker-machine
which -a docker && docker --version
which -a docker-compose && docker-compose --version
which -a docker-machine && docker-machine --version

# Install Fonts
echo -e "\033[1;31m Install Fonts \033[0m"
say "Install Fonts"
brew install --cask homebrew/cask-fonts/font-hack-nerd-font && brew info --cask font-hack-nerd-font

# Install Nano
echo -e "\033[1;31m Install Nano \033[0m"
say "Install Nano"
which -a nano && nano --version
brew install nano && brew info nano
which -a nano && nano --version

# Install JQ
echo -e "\033[1;31m Install JQ \033[0m"
say "Install JQ"
which -a jq && jq --version
brew install jq && brew info jq
which -a jq && jq --version

# Install Java
echo -e "\033[1;31m Install Java \033[0m"
say "Install Java"
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8 && brew info --cask adoptopenjdk8
brew install --cask adoptopenjdk/openjdk/adoptopenjdk11 && brew info --cask adoptopenjdk11
which -a java && java -version

# Install Node
echo -e "\033[1;31m Install Node \033[0m"
say "Install Node"
which -a node && node --version
which -a npm && npm --version
brew install node && brew info node
npm install -g yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 'lts/*'
nvm alias default 'lts/*'
nvm reinstall-packages 'lts/*'
nvm install-latest-npm
nvm ls
which -a node && node --version
which -a npm && npm --version

# Install Python
echo -e "\033[1;31m Install Python \033[0m"
say "Install Python"
which -a python3 && python3 --version
which -a pip3 && pip3 --version
brew install python3 && brew info python3
pip3 install pylint
pip3 install virtualenv
which -a python3 && python3 --version
which -a pip3 && pip3 --version

# Install Cocoapods
echo -e "\033[1;31m Install Cocoapods \033[0m"
say "Install Cocoapods"
which -a pod && pod --version
brew install cocoapods && brew info cocoapods
which -a pod && pod --version

# Install Gcloud
echo -e "\033[1;31m Install Gcloud \033[0m"
say "Install Gcloud"
which -a gcloud && gcloud --version
brew install --cask google-cloud-sdk && brew info --cask google-cloud-sdk
gcloud components update -q
which -a gcloud && gcloud --version

# Install Firebase
echo -e "\033[1;31m Install Firebase \033[0m"
say "Install Firebase"
which -a firebase && firebase --version
brew install firebase-cli && brew info firebase-cli
which -a firebase && firebase --version

# Install AWS
echo -e "\033[1;31m Install AWS \033[0m"
say "Install AWS"
which -a aws && aws --version
brew install awscli && brew info awscli
which -a aws && aws --version

# Install Amplify
echo -e "\033[1;31m Install Amplify \033[0m"
say "Install Amplify"
which -a amplify && amplify --version
npm install -g @aws-amplify/cli
amplify configure --usage-data-off
which -a amplify && amplify --version

# Install Android
echo -e "\033[1;31m Install Android \033[0m"
say "Install Android"
which -a adb && adb --version
brew install bundletool && brew info bundletool
brew install --cask android-platform-tools && brew info --cask android-platform-tools
brew install --cask android-sdk && brew info --cask android-sdk
mkdir -p .android && touch ~/.android/repositories.cfg
which -a adb && adb --version

# Install Flutter
echo -e "\033[1;31m Install Flutter \033[0m"
say "Install Flutter"
which -a flutter && flutter --version
brew install --cask flutter && brew info --cask flutter
flutter upgrade --force
which -a flutter && flutter --version
flutter config --no-analytics
flutter doctor -v

# Install React Native
echo -e "\033[1;31m Install React Native \033[0m"
say "Install React Native"
which -a watchman && watchman --version
brew install watchman && brew info watchman
which -a watchman && watchman --version

# Install Scrcpy
echo -e "\033[1;31m Install Scrcpy \033[0m"
say "Install Scrcpy"
which -a scrcpy && scrcpy --version
brew install scrcpy && brew info scrcpy
which -a scrcpy && scrcpy --version

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
duti -s com.microsoft.VSCode .PY all


# Complete
echo -e "\033[1;31m \nTime Elapsed: $((SECONDS / 3600)) Hrs, $(((SECONDS / 60) % 60)) Mins, $((SECONDS % 60)) Sec \033[0m"
echo -e "\033[1;31m \nCompleted \033[0m"
say "Completed"
