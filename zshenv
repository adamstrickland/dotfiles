export SKIP_GLOBAL_COMPINIT=1
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
export HOMEBREW_NO_AUTO_UPDATE=1

export HOST_SCHEME=http://127.0.0.1

export GOPATH=/Users/adamstrickland/go
export NVM_DIR="$HOME/.nvm"
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

# export PATH=/usr/local/opt/postgresql@9.4/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"
export EDITOR=vim

export BREW_PATH=/usr/local/opt
export MYSQL_CLIENT_PATH=$BREW_PATH/mysql-client
export ELASTICSEARCH_PACKAGE=elasticsearch@5.6
# export ELASTICSEARCH_PATH=$(brew --prefix $ELASTICSEARCH_PACKAGE 2>/dev/null)
export ELASTICSEARCH_PATH=$BREW_PATH/$ELASTICSEARCH_PACKAGE
export NODE_PACKAGE=node@8
export NODE_PATH=$BREW_PATH/$NODE_PACKAGE
# export NODE_PATH=$(brew --prefix $NODE_PACKAGE 2>/dev/null)

POSTGRESQLPATH="/usr/local/opt/postgresql@9.6/bin"
POSTGRESQLLDFLAGS="/usr/local/opt/postgresql@9.6/lib"
POSTGRESQLCPPFLAGS="/usr/local/opt/postgresql@9.6/include"
if [[ -d "$POSTGRESQLPATH" ]]; then
  export PATH="$POSTGRESQLPATH:$PATH"
fi
if [[ -d "$POSTGRESQLLDFLAGS" ]]; then
  export LDFLAGS="-L$POSTGRESQLLDFLAGS $LDFLAGS"
fi
if [[ -d "$POSTGRESQLCPPFLAGS" ]]; then
  export CPPFLAGS="-I$POSTGRESQLCPPFLAGS $CPPFLAGS"
fi

export POSTGRESQL_PACKAGE=postgresql@9.6
export POSTGRESQL_PATH=$BREW_PATH/$POSTGRESQL_PACKAGE
# export POSTGRESQL_PATH=$(brew --prefix $POSTGRESQL_PACKAGE 2>/dev/null)
export FZF_PATH=$(brew --prefix fzf 2>/dev/null)
export RVM_PATH=$HOME/.rvm
export ASDF_PATH=$HOME/.asdf
export ASDF_DIR=$ASDF_PATH

export NVM_PATH=$NVM_DIR

export PACKAGE_PATHS=$MYSQL_CLIENT_PATH/bin:$ELASTICSEARCH_PATH/bin:$NODE_PATH/bin:$POSTGRESQL_PATH/bin:$RVM_PATH/bin:$NVM_PATH

export PATH=$HOME/bin:$PACKAGE_PATHS:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH:$HOME/.rvm/bin"
# export PATH="/usr/local/opt/node@8/bin:$PATH"


# export PATH=/usr/local/opt/mysql-client/bin:$PATH
# export PATH=/usr/local/opt/elasticsearch@5.6/bin:/Users/adamstrickland/.rvm/gems/ruby-2.5.1@fashionthing/bin:/Users/adamstrickland/.rvm/gems/ruby-2.5.1@global/bin:/Users/adamstrickland/.rvm/rubies/ruby-2.5.1/bin:/Users/adamstrickland/.rvm/bin:/usr/local/opt/node@8/bin:/usr/local/opt/postgresql@9.4/bin:/Users/adamstrickland/.nvm/versions/node/v8.11.3/bin:/usr/local/opt/mysql-client/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/mysql-client/bin:/usr/local/opt/fzf/bin

source ~/.zshenv.local
