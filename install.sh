#!/bin/bash

##########
## nvim ##
##########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

########
## i3 ##
########

# Deletes current config, BEWARE
rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

###########
## fonts ##
###########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
## git ##
#########

ln -sf "$DOTFILES/git/.gitconfig" "$HOME"

#########
## zsh ##
#########
# Manually specifying items to include so I dont leak secrets

mkdir -p "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh"

rm -rf "$XDG_CONFIG_HOME/zsh/plugins"
ln -sf "$DOTFILES/zsh/plugins" "$XDG_CONFIG_HOME/zsh"
