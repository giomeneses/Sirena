
# Sourcing all my mispellings, and shortcuts
source "$XDG_CONFIG_HOME/zsh/aliases"

#############
## Options ##
#############

# zsh completion
autoload -U compinit; compinit

# auto complete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

# Use external path to autoload functions
fpath=($ZDOTDIR/external $fpath)

# Pimping my prompt
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Moving around in style:
# push the current directory visited on to the stack
setopt AUTO_PUSHD
# Ignore dupe directories
setopt PUSHD_IGNORE_DUPS
#do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

# vi keybindings
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode && cursor_mode


# Auto start X11 and X11vnc
if [ "$(tty)" = "/dev/tty1" ]; then
  pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
  pgrep x11vnc || exec x11vnc -bg -forever -usepw -display :0 -xrandr
fi
