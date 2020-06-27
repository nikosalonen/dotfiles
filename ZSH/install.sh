#!/bin/bash

#Install zsh
brew install zsh


#Install antigen
mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
mv antigenrc ~/.antigen/.antigenrc
mv zshrc ~/.zshrc

#Install oh-my-zsh
