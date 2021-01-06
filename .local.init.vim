let s:script_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! LinkAllInitVim()
  let l:shell_name = fnamemodify(&shell, ':t')
  let l:init_expr = 'cd ''' . s:script_dir . ''''
  let l:filter_expr = 'grep -v -e ''^pack$'''
  let l:run_if_error_expr = l:init_expr . '; stow -t ~/.config/nvim -v config.nvim'

  if l:shell_name == 'fish'
    let l:bool_expr = l:init_expr . '; diff (ls -1 config.nvim | ' . l:filter_expr . ' | psub) (ls -1 ~/.config/nvim | ' . l:filter_expr . ' | psub)'
  elseif l:shell_name == 'zsh'
    let l:bool_expr = l:init_expr . '; diff <(ls -1 config.nvim | ' . l:filter_expr . ') <(ls -1 ~/.config/nvim | ' . l:filter_expr . ')'
  else
    echoerr 'Unsupported shell: ' . l:shell_name
    return
  endif

  call system(l:bool_expr)

  if v:shell_error != 0
    echo system(l:run_if_error_expr)
  endif
endfunction

aug local_reload_initvim
  au!
  au BufEnter *.init.vim nnoremap <buffer> <leader>l :call LinkAllInitVim()<CR>
  au BufEnter package.minpac.init.vim nnoremap <buffer> <leader>u :call minpac#update()<CR>
aug END
