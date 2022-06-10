
" syn region coPath          start=/\v^[A-Za-z\/\.\*]/ end=/\v(\s)@=/
syn region coPath          start=/\v^[^\[#]/         end=/\v(\s)@=/
syn match  coEmail         /\v[A-Za-z0-9_\.\-]+\@[A-Za-z0-9_\.\-]+\.[A-Za-z0-9_\.\-]+/
syn region coOwner         start=/\v\s(\s*#)@!/      end=/$/        keepend contains=coComment,coEmail
syn region coHeading       start=/\v\[/              end=/\v\]/
syn match  coComment       /\v#.*$/

highlight link coHeading Special
highlight link coPath    Identifier
highlight link coEmail   Function
highlight link coOwner   Keyword
highlight link coComment Comment

setlocal commentstring=#\ %s
