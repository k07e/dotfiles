function! RestartLspServerFunc()
  call lsp#enable()
  aug restart_lsp_server
    au!
  aug END
endfunction

function! RestartLspServer()
  call lsp#disable()
  aug restart_lsp_server
    au!
    au BufNewFile,BufRead * call RestartLspServerFunc()
  aug END
endfunction

aug ft_json5
  au!
  au FileType json5 call RestartLspServer()
aug END
