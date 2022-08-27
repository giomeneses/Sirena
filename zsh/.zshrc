
# Sourcing all my mispellings, and shortcuts
source "$XDG_CONFIG_HOME/zsh/aliases"

#############
## Plugins ##
#############

source ~/dotfiles/zsh/plugins/zsh-z.plugin.zsh
source ~/dotfiles/zsh/functions.zsh

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

#############
## Options ##
#############

# vim completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-up-line-or-history
bindkey -M menuselect 'k' vi-forward-char
bindkey -M menuselect 'l' vi-down-line-or-history

# zsh completion
autoload -U compinit; compinit

# auto complete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/plugins/completion.zsh

# Use plugins path to autoload functions
fpath=($ZDOTDIR/plugins $fpath)

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


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto start X11 and X11vnc
# if [ "$(tty)" = "/dev/tty1" ]; then
  # pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
  # pgrep x11vnc || exec x11vnc -bg -forever -usepw -display :0 -xrandr
# fi
