function! DefineKeymapForInitVim()
  nnoremap <buffer> <leader>lx :source $MYVIMRC<CR>
  let g:which_key_map.l.x = 'Load'
endfunction

function! DefineKeymapForGlobInitVim()
  nnoremap <buffer> <leader>lx :source %<CR>
  let g:which_key_map.l.x = 'Load'
endfunction

" Useful keymaps for init.vim or *.init.vim
" Alias `aug` and `au` does `augroup` and `autocmd`
aug reload_initvim
  au!
  au BufEnter init.vim call DefineKeymapForInitVim()
  au BufEnter *.init.vim,*.postinit.vim call DefineKeymapForGlobInitVim()
aug END
