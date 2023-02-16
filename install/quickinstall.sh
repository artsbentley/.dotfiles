
# Install Brew
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USERNAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

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
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
brew install lazygit
# dependency for telescope live_grep:
brew install ripgrep
brew install lazydocker
brew install zoxide
brew install fzf
brew install alacritty


#brew install svim --gives vim commands to mac input fields
