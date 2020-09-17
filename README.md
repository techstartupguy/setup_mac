# Setup Mac

This is a repository containing script for Mac settings 


## Step1: Upgrade to the latest Mac OS version

## Step2: Run the script from terminal

#### Save the folder in home directory and run

```sh
cd $HOME
git clone https://github.com/ggspark/setup_mac 
bash ./setup_mac/Main.sh
```

#### Software installed by script
* Mac Setup
* XCode CLI Tools
* Homebrew
* Google Chrome
* Google Drive
* Tor Browser
* Fliqlo Screensaver
* Slack
* VLC media player
* Libre Office
* Real VNC Viewer
* Sublime text
* Android-Studio
* VS Code

* Node & npm
* Firebase CLI
* GCloud CLI
* Heroku Toolbelt
* Java
* Android
* Flutter
* Duti


## Step3: Manually install the softwares

Signin to App Store with Apple Id

#### Software to be installed manually
* XCode
* iMovies
* Keynote

## Step4: Configure Mac Settings
* Dock - Set size, Set useful apps, Remove Recent apps
* Screenshot - Disable show floating thumbnail
* Calendar - Add google calendar
* System Preferences

## Step5: VSCode settings
* Install plugins
```
code --install-extension Dart-Code.dart-code
code --install-extension Dart-Code.flutter
code --install-extension dbaeumer.vscode-eslint
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension EQuimper.react-native-react-redux
code --install-extension esbenp.prettier-vscode
code --install-extension msjsdiag.vscode-react-native
code --install-extension PKief.material-icon-theme
code --install-extension VisualStudioExptTeam.vscodeintellicode

```
* Add schema.json to VSCode settings.json like 
```
    "yaml.schemas": {
        "/Users/gaurav/setup_mac/schema.json": [
            "Accounts/*.yaml"
        ]
    }
```
