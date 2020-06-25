#!/bin/bash
echo Login to Appstore first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'


# Installs Homebrew, Git, Node.js, etc.

# Ask for the administrator password upfront
sudo -v

# Install XCode CLI tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with macOS are outdated)
brew install coreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# More recent versions of some macOS tools
brew install grep

# Git
brew install git

# Node & npm
brew install nvm
brew install yarn


# NPM settings
npm config set loglevel warn


# Install fonts
brew tap homebrew/cask-fonts
brew cask install font-cascadia

# Python
brew install pyenv

# AWS
brew install awscli

# GO
brew install go

# Other
brew install jq
brew install the_silver_searcher

# Casks
brew cask install iterm2
brew cask install insomnia
brew cask install the-unarchiver
brew cask install visual-studio-code
brew cask install spotify
brew cask install alfred
brew cask install skype
brew cask install github



# Verify installation
command -v git
command -v node
command -v npm
command -v yarn


# Remove outdated versions from the cellar
brew cleanup



# MAS

brew install mas


# Install from MAS

mas install 443987910 # 1Password
mas install 1147396723 # WhatsApp Desktop
mas install 803453959 # Slack
mas install 441258766 # Magnet
