" python-shell
noremap ,ss :call StartPyShell()<CR>
noremap ,sk :call StopPyShell()<CR>

" code execution
nnoremap ,l  :call PyShellSendLine()<CR>
noremap <silent> <C-n> :call RunTmuxPythonCell(0)<CR>
unmap <C-b>
noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>

let g:syntastic_mode_map = { "passive_filetypes": ["python"] }
