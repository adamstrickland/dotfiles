runtime! autoload/plug.vim

" package management
call plug#begin('~/.vim/bundle')

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Rykka/lastbuf.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'duff/vim-bufonly'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'elmcast/elm-vim', { 'for': 'elm' }
Plug 'ervandew/supertab'
Plug 'fatih/molokai'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'garyburd/go-explorer', { 'for': 'go' }
Plug 'godlygeek/tabular'
Plug 'goldfeld/vim-seek'
Plug 'hashivim/vim-terraform'
Plug 'jgdavey/tslime.vim'
Plug 'jgdavey/vim-blockle'
Plug 'jgdavey/vim-turbux'
Plug 'jgdavey/vim-weefactor'
Plug 'jtratner/vim-flavored-markdown'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'leshill/vim-json'
Plug 'majutsushi/tagbar'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mileszs/ack.vim'
Plug 'milkypostman/vim-togglelist'
" Plug 'mtth/scratch'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'prettier/vim-prettier'
Plug 'rking/ag.vim'
Plug 'rondale-sc/vim-spacejam'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'suan/vim-instant-markdown'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/IndexedSearch'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/bufkill.vim'
Plug 'vim-scripts/loremipsum'
Plug 'w0rp/ale'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-session'

call plug#end()

