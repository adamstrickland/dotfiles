" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

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

" Save with leader + w
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

map <Leader>vv :vsp<cr><C-p>
imap jj <esc>

" format JSON with jq
nnoremap <Leader>j :%!cat % <bar> jq '.'<CR>

" Unhighlight search results
map <Leader><space> :nohl<cr>

" This uses Ack.vim to search for the word under the cursor
nnoremap <leader><bs> :Ag! '\b<c-r><c-w>\b'<cr>
nnoremap <leader>a :Ag

" Nerdtree
map <Leader>nn :NERDTreeToggle<CR>
map <leader>ng :NERDTreeFocus<CR>
map <Leader>nf :NERDTreeFind<CR>
map <Leader>nr :let g:NERDTreeWinSize=31<CR>:NERDTreeClose<CR>:NERDTreeToggle<CR>AA

" BufExplorer
noremap <leader>bb :BufExplorer<CR>

" split windows
nnoremap <C-w>- :spl<cr>
nnoremap <C-w><bar> :vsp<cr>

vmap <silent> <expr> p <sid>Repl()

nmap <script> <silent> <Leader>c :call ToggleQuickfixList()<CR>

" close windows with leader + q
nnoremap <Leader>q :q<CR>

" force close with leader + Q
nnoremap <Leader>Q :q!<CR>

nmap tc :w<cr>:call RunCurrentSpecFile()<CR>
nmap tl :w<cr>:call RunLastSpec()<CR>
nmap ta :w<cr>:call RunAllSpecs()<CR>
nmap <f5> ta

nmap zB V%zf

" notes
nmap <leader>en :NoteFromSelectedText<CR>
nmap <leader>sn :SplitNoteFromSelectedText<CR>
nmap <leader>N :Note<CR>
nmap <leader>rn :RecentNotes
imap <C-]> <C-o>:SearchNotes<CR>
nmap <C-]> :SearchNotes<CR>
