# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files 
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Setting Neovim as the default
export EDITOR="nvim"
export VISUAL="nvim"

# commonly used locations 
export DOTFILES="$HOME/dotfiles"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events in history file
export SAVEHIST=10000

# Modify fzf to use ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hiden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
