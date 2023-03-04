# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# Setting Neovim as the default
export EDITOR="lvim"
export VISUAL="lvim"

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

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# PATH... clean this up!
export PATH=~/.local/bin:$PATH
export PATH="$PYENV_ROOT/bin:$PATH"

export DISABLE_AUTO_TITLE='true' #requested by tmuxp
export PYENV_ROOT="$HOME/.pyenv"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"

#Brew I guess? review this
export BREW_PREFIX='/usr/local/opt'
# export LDFLAGS="-L${BREW_PREFIX}/readline/lib -L${BREW_PREFIX}/openssl/lib"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
