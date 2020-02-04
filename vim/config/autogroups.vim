augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

" auto start nerdtree
" au VimEnter * NERDTree

" syntax highlighting for .ejs and .hamlc
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hamlc set filetype=html

" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" set filetype for yml
au BufNewFile,BufReadPost *.yml set filetype=yaml

" set filetype for .survey files
au BufNewFile,BufRead *.survey set filetype=ruby

