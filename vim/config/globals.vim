syntax on

filetype plugin indent on

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

" show line numbers
set number

" Better search behavior
set hlsearch
set incsearch
set ignorecase
set smartcase

" Don't scroll off the edge of the page
set scrolloff=5

" Don't save hidden and unloaded buffers in sessions
set sessionoptions-=buffers

set softtabstop=2 shiftwidth=2 expandtab

" Move vim backups to common dir
set backupdir=.backup/,~/.backup/,/tmp//

" Make swapfiles in a common dir
set directory=.swp/,~/.swp/,/tmp//

set pastetoggle=<F2>
set undodir=.undone/,~/.undo/,/tmp//

" Add comma as leader
:nmap , \

" colorscheme Tomorrow-Night-Eighties
" colorscheme dracula



""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
""""""""""""""""""""""""""""""""""""""""""""

" Nerdtree
let g:NERDTreeShowHidden=1
" let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrows = 0

" vim-session settings
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

" Rspec and Cucumber container compatibility
let g:turbux_command_rspec="RAILS_ENV=test bin/fig run worker bundle exec rspec"
let g:turbux_command_cucumber="RAILS_ENV=test bin/fig run worker bundle exec cucumber"

" toggle quickfix with <Leader> c
let g:toggle_list_no_mappings=1

" ctrlp.vim config
if get(g:, 'loaded_ctrlp', 1)
  let g:ctrlp_match_window_reversed = 0
  let g:ctrlp_working_path_mode = 'a'
  let g:ctrlp_max_height = 20
  let g:ctrlp_match_window_bottom = 0
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_custom_ignore = '\v(\.DS_Store|\.sass-cache|\.scssc|tmp|\.bundle|\.git|node_modules|vendor|bower_components|deps|_build)$'
endif

" airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" vim-notes
let g:notes_directories = ['~/Dropbox/Shared Notes']
let g:notes_suffix = '.md'
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_bold = 0
let g:notes_conceal_url = 0

let g:scratch_insert_autohide = 0

" ALE
let g:ale_linters_explicit = 1
let g:ale_linters = {}

let g:jsx_ext_required = 0
