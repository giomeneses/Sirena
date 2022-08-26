#!/bin/bash

##########
## nvim ##
##########

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

########
## i3 ##
########

# Deletes current config, BEWARE
rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"
