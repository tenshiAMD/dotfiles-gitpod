#!/usr/bin/env bash

sudo ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
sudo ln -s ~/.dotfiles/.curlrc ~/.curlrc
sudo ln -s ~/.dotfiles/.wgetrc ~/.wgetrc

# Overwrite gitpod's existing config
sudo rm ~/.gitconfig && sudo ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
