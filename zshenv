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

export BREW_PATH=/usr/local/opt

export FZF_PATH=$BREW_PATH/fzf # changed from $(brew --prefix fzf) since that call is very slow
export ASDF_PATH=$HOME/.asdf
# export ASDF_DIR=$ASDF_PATH

export PATH=$HOME/bin:$HOME/.bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

