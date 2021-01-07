packadd vim-auto-save
let auto_save = 0
function! AutoSaveToggle()
  let g:auto_save = g:auto_save * -1 + 1
endfunction

function! UpdateDescription_ta()
  let g:which_key_map.t.a = 'g:auto_save to ' . g:auto_save
endfunction

nnoremap <silent> <leader>ta :call AutoSaveToggle() \| call UpdateDescription_ta()<CR>
let g:which_key_map.t.a = 'Toggle auto_save to ' . g:auto_save
