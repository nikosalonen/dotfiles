#!/bin/bash

# Installs Homebrew, Git, git-extras, git-friendly, hub, Node.js, etc.

# Ask for the administrator password upfront
sudo -v

# Install XCode CLI tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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


# Casks
brew cask install vscode



# Verify installation
command -v git
command -v node
command -v npm
command -v yarn

# Remove outdated versions from the cellar
brew cleanup



# MAS

brew install mas
mas signin niko@nikosalonen.com

# Install from MAS

mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver