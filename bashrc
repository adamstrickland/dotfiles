# ~/.bashrc
# vim:set ft=sh sw=2 sts=2:

[ ! -f "$HOME/.functions" ] || . "$HOME/.functions"
source "$HOME/.aliases"

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"
PSQL_EDITOR='vim -c"setf sql"'
CLICOLOR=1
LSCOLORS=gxgxcxdxbxegedabagacad

export VISUAL EDITOR LESS RI PSQL_EDITOR CLICOLOR LSCOLORS

if [ -t 1 ]; then
bind 'set bind-tty-special-chars off'
bind '"\ep": history-search-backward'
bind '"\en": history-search-forward'
bind '"\C-w": backward-kill-word'
bind '"\C-q": "%-\n"'
fi

export HISTIGNORE="%*"

[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || export PS1="┌─[\[\033[35;40m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(git_prompt_info ' (%s)')]\n└─╼ "

if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"
[ ! -f "$HOME/.bashrc.global" ] || . "$HOME/.bashrc.global"

alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgq='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# source ~/dotfiles/zsh/aliases
# source ~/dotfiles/zsh/completion
# source ~/dotfiles/bash/paths

# Add the following to your ~/.bashrc or ~/.zshrc
#
# Alternatively, copy/symlink this file and source in your shell.  See `hitch --setup-path`.

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
