set nofoldenable

syn region _jsonKey start=/\v"(..*":)@=/ end=/"\ze:/

highlight link _jsonKey Function
