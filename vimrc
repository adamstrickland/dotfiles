runtime! autoload/pathogen.vim

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

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

" Add comma as leader
:nmap , \

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" vim tab navigation
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<CR>

" disable arrow navigation keys
inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
noremap   <Up>    <NOP>
noremap   <Down>  <NOP>
noremap   <Left>  <NOP>
noremap   <Right> <NOP>

" show line numbers
set number

" Save with leader + w
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

map <Leader>vv :vsp<cr><C-p>
imap jj <esc>

" format JSON with jq
nnoremap <Leader>j :%!cat % <bar> jq '.'<CR>

" map <f5> :w \| :call system("tmux resize -t1 -y20 && tmux send -t1 !! c-j")<cr>
" imap <f5> <esc> <f5>
" map <f6> :w \| :call system("tmux resize -t0 -Z")<cr>
" imap <f6> <esc> <f6>
" map <f7> :w \| :call system("tmux resize -t1 -y40")<cr>
" imap <f7> <esc> <f7>
nmap tc :w<cr>:call RunCurrentSpecFile()<CR>
nmap tl :w<cr>:call RunLastSpec()<CR>
nmap ta :w<cr>:call RunAllSpecs()<CR>
nmap <f5> ta
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" ignore ruby warnings in Syntastic
let g:syntastic_ruby_mri_args="-T1 -c"

" syntax highlighting for .ejs and .hamlc
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hamlc set filetype=html
let g:jsx_ext_required = 0

" Better search behavior
set hlsearch
set incsearch
set ignorecase
set smartcase

" Unhighlight search results
map <Leader><space> :nohl<cr>

" Don't scroll off the edge of the page
set scrolloff=5

" This uses Ack.vim to search for the word under the cursor
nnoremap <leader><bs> :Ag! '\b<c-r><c-w>\b'<cr>
nnoremap <leader>a :Ag

" NERDTree configuration
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" let g:NERDTreeAutoDeleteBuffer = 1
" let g:NERDTreeMinimalUI = 1
" let g:NERDTreeIgnore=['\~$', 'tmp', '\.git', '\.bundle', '.DS_Store', 'tags', '.swp']
let g:NERDTreeShowHidden=1
" let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrows = 0
map <Leader>n :NERDTreeToggle<CR>
map <Leader>fnt :NERDTreeFind<CR>
" au VimEnter * NERDTree

" BufExplorer
noremap <leader>bb :BufExplorer<CR>

" split windows
nnoremap <C-w>- :spl<cr>
nnoremap <C-w><bar> :vsp<cr>

" vim-session settings
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

" Don't save hidden and unloaded buffers in sessions
set sessionoptions-=buffers

" Rspec and Cucumber container compatibility
let g:turbux_command_rspec="RAILS_ENV=test bin/fig run worker bundle exec rspec"
let g:turbux_command_cucumber="RAILS_ENV=test bin/fig run worker bundle exec cucumber"

set softtabstop=2 shiftwidth=2 expandtab

colorscheme Tomorrow-Night-Eighties

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

if getcwd() != $HOME && getcwd() != $DOTFILES_DIR && getcwd() != expand("$HOME/src/dotfiles")
  if filereadable(expand('.vimrc'))
    source .vimrc
  endif
endif

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

" toggle quickfix with <Leader> c
let g:toggle_list_no_mappings=1
nmap <script> <silent> <Leader>c :call ToggleQuickfixList()<CR>

" close windows with leader + q
nnoremap <Leader>q :q<CR>

" force close with leader + Q
nnoremap <Leader>Q :q!<CR>

" ctrlp.vim config
if get(g:, 'loaded_ctrlp', 1)
  let g:ctrlp_match_window_reversed = 0
  let g:ctrlp_working_path_mode = 'a'
  let g:ctrlp_max_height = 20
  let g:ctrlp_match_window_bottom = 0
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_custom_ignore = '\v(\.DS_Store|\.sass-cache|\.scssc|tmp|\.bundle|\.git|node_modules|vendor|bower_components|deps|_build)$'
endif

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" Move vim backups to common dir
set backupdir=.backup/,~/.backup/,/tmp//

" Make swapfiles in a common dir
set directory=.swp/,~/.swp/,/tmp//

" airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" toggle buffer explorer
" map <Leader>bb :BufExplorer<cr>

" " vertical split
" noremap <Leader>v :vsp<cr>
" map <Leader><Bar> <Leader>v

" " horizontal split
" noremap <Leader>h :split<cr>
" map <Leader>- <Leader>h

set pastetoggle=<F2>

" filetype off
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'elixir-lang/vim-elixir'
" call vundle#end()
" filetype plugin indent on

" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" set filetype for yml
au BufNewFile,BufReadPost *.yml set filetype=yaml

" set filetype for .survey files
au BufNewFile,BufRead *.survey set filetype=ruby

colorscheme dracula

command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
set undodir=.undone/,~/.undo/,/tmp//

nmap zB V%zf

" vim-notes
let g:notes_directories = ['~/Dropbox/Shared Notes']
let g:notes_suffix = '.md'
let g:notes_conceal_code = 0
let g:notes_conceal_italic = 0
let g:notes_conceal_bold = 0
let g:notes_conceal_url = 0
nmap <leader>en :NoteFromSelectedText<CR>
nmap <leader>sn :SplitNoteFromSelectedText<CR>
nmap <leader>N :Note<CR>
nmap <leader>rn :RecentNotes
imap <C-]> <C-o>:SearchNotes<CR>
nmap <C-]> :SearchNotes<CR>

let g:scratch_insert_autohide = 0

" ALE
let g:ale_linters_explicit = 1
let g:ale_linters = {}
