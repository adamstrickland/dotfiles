export EDITOR=vim

# export HISTCONTROL=erasedups

export HISTSIZE=10000

# export HISTIGNORE="%*"

export HOMEBREW_NO_AUTO_UPDATE=1

export HOST_SCHEME=http://127.0.0.1

# export LESS="FRX"

export LS_COLORS="ex=01;31:ln=00;92"

export SKIP_GLOBAL_COMPINIT=1

# export VISUAL=vim

export XDG_CONFIG_HOME=$HOME/.config
export XDG_LOCAL_HOME=$HOME/.local
export XDG_DATA_HOME=$XDG_LOCAL_HOME/.local/share

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
