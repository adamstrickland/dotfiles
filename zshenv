export SKIP_GLOBAL_COMPINIT=1
export HOMEBREW_NO_AUTO_UPDATE=1
export OPENSSL_CFLAGS=-Wno-error=implicit-function-declaration

export HOST_SCHEME=http://127.0.0.1

export GEMRC=~/.gemrc.local

export HISTSIZE=10000
# export HISTCONTROL=erasedups
export LS_COLORS="ex=01;31:ln=00;92"
# export HISTIGNORE="%*"

# export VISUAL=vim
# export EDITOR="$VISUAL"
# export LESS="FRX"
# export RI="--format ansi -T"
# export PSQL_EDITOR='vim -c"setf sql"'

export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"
export EDITOR=vim

export BREW_PREFIX=/usr/local
export BREW_PATH=$BREW_PREFIX/opt

export ASDF_PATH=$HOME/.asdf
# export ASDF_DIR=$ASDF_PATH

export PATH_HOME_BIN=$HOME/bin:$HOME/.bin:$HOME/.local/bin
export PATH_MACHINE_BIN=/usr/bin:/bin:/usr/sbin:/sbin
export PATH_BREW_BIN=/usr/local/bin:/usr/local/sbin

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

export FZF_PATH=$BREW_PATH/fzf # changed from $(brew --prefix fzf) since that call is very slow

export PATH=$PATH_HOME_BIN:$PATH_BREW_BIN:$PATH_MACHINE_BIN:$PATH
