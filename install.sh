#!/usr/bin/env bash

sudo ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
sudo ln -s ~/.dotfiles/.curlrc ~/.curlrc
sudo ln -s ~/.dotfiles/.wgetrc ~/.wgetrc

# Overwrite gitpod's existing config
sudo rm ~/.gitconfig && sudo ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Setup essentials for development
echo -e '\n[[ -s "$HOME/.dotfiles/.bash_prompt" ]] && source "$HOME/.dotfiles/.bash_prompt"' >> ~/.bashrc

sudo cp -Rn ~/.dotfiles/.vscode $GITPOD_REPO_ROOT/.vscode
sudo cp -n ~/.dotfiles/.editorconfig $GITPOD_REPO_ROOT
sudo cp -n ~/.dotfiles/.gitignore $GITPOD_REPO_ROOT
