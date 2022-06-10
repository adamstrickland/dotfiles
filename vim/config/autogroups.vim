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

au BufNewFile,BufRead *.nvim set filetype=vim

au FileType plantuml let g:plantuml_previewer#plantuml_jar_path = get(
    \  matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'),
    \  1,
    \  0)

au BufNewFile,BufRead CODEOWNERS set filetype=codeowners
au BufNewFile,BufRead codeowners\.vim set filetype=vim
