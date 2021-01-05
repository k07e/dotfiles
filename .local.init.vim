let s:script_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! LinkAllInitVim()
  let l:shell_name = fnamemodify(&shell, ':t')
  if l:shell_name == 'fish'
    let l:init_cmd = 'cd ''' . s:script_dir . ''''
    let l:filter_cmd = 'grep -v -e ''^pack$'''
    call system(l:init_cmd . '; diff (ls -1 config.nvim | ' . l:filter_cmd . ' | psub) (ls -1 ~/.config/nvim | ' . l:filter_cmd . ' | psub)')
    if v:shell_error != 0
      echo system(l:init_cmd . '; stow -t ~/.config/nvim -v config.nvim')
    endif
  endif
endfunction

aug local_reload_initvim
  au!
  au BufRead *.init.vim nnoremap <buffer> <leader>l :call LinkAllInitVim()<CR>
  au BufRead package.minpac.init.vim nnoremap <buffer> <leader>u :call minpac#update()<CR>
aug END
