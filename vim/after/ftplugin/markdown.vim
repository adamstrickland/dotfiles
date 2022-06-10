set tw=80

setlocal commentstring=[//]:\ #\ (%s)

syn region mkComment start=/\v\[\/\/\]:\s#\s\(/ end=/\v\)$/

highlight link mkComment Comment
