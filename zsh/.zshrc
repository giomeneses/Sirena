
# Sourcing all my mispellings, and shortcuts
source "$XDG_CONFIG_HOME/zsh/aliases"

################
## Parameters ##
################

# Use plugins path to autoload functions
fpath=($ZDOTDIR/plugins $fpath)

# Ignore odd number quotes
KEYBOARD_HACK="'"

#############
## Options ##
#############

# vim completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history

# zsh completion
autoload -U compinit; compinit

# Pimping my prompt
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Moving around in style:
# push the current directory visited on to the stack
setopt AUTO_PUSHD
# Ignore dupe directories
setopt PUSHD_IGNORE_DUPS
#do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# vim keybindings
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode && cursor_mode

#############
## Plugins ##
#############


if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# auto complete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/plugins/completion.zsh

source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/plugins/zsh-z.plugin.zsh
source ~/dotfiles/zsh/plugins/colored-man-pages.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto start X11 and X11vnc
if [ "$(tty)" = "/dev/tty1" ]; then
   pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# Initializing starship
eval "$(starship init zsh)"
