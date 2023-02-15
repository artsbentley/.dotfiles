#!/bin/zsh

# Install Brew
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

brew tap homebrew/cask-fonts
brew tap epk/epk
brew tap koekeishiya/formulae
brew tap FelixKratz/formulae


#brew formulae
echo "Installing Brew Formulae..."
#neovim dependencies
brew install ninja libtool automake cmake pkg-config gettext curl
brew install neovim
# github cli
brew install gh
brew install starship
brew install alfred
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install yabai
brew install skhd
brew install sketchybar
brew install sf-symbols
brew install llvm
brew install boost
brew install mas
brew install tree
brew install wget
brew install jq
brew install lulu
brew install lf
brew install tmux
# directory traversing sugar
brew install exa
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install lazygit
# dependency for telescope live_grep:
brew install ripgrep
brew install lazydocker
brew install zoxide
brew install fzf
brew install alacritty


#brew install svim --gives vim commands to mac input fields

# Brew Casks
echo "Installing Brew Casks..."

brew install --cask spotify
brew install --cask vlc

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
#example:
#mas install 1451685025 #Wireguard

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.dock autohide -bool true
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain _HIHideMenuBar -bool true
defaults write NSGlobalDomain AppleHighlightColor -string "0.65098 0.85490 0.58431"
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Installing Fonts
echo "Installing fonts..."
brew install --cask font-sf-mono-nerd-font
git clone https://github.com/shaunsingh/SFMono-Nerd-Font-Ligaturized /tmp/SFMono_Nerd_Font
mv /tmp/SFMono_Nerd_Font/* $HOME/Library/Fonts
rm -rf /tmp/SFMono_Nerd_Font/

curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf


# Python Packages
echo "Installing Python Packages..."
#pip install ....


# Start Services
echo "Starting Services (grant permissions)..."
brew services start skhd
brew services start yabai
brew services start sketchybar
#brew services start svim




echo "Installation complete...."
