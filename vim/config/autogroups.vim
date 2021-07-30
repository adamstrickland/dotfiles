augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

" auto start nerdtree
" au VimEnter * NERDTree

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hamlc set filetype=html

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

au BufNewFile,BufReadPost *.yml set filetype=yaml

au BufNewFile,BufRead *.xml.erb set filetype=xml

au BufNewFile,BufRead *.lkml,*.lookml set filetype=lkml

au BufNewFile,BufRead .envrc* set filetype=bash
