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

#########
## zsh ##
#########

mkdir -p "$HOME/.config/zsh"

ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/plugins"
ln -sf "$HOME/dotfiles/zsh/plugins" "$HOME/.config/zsh"
