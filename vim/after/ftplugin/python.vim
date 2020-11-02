" python-shell
noremap ,ss :call StartPyShell()<CR>
noremap ,sk :call StopPyShell()<CR>

" code execution
nnoremap ,l  :call PyShellSendLine()<CR>
noremap <silent> <C-n> :call RunTmuxPythonCell(0)<CR>
noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>
