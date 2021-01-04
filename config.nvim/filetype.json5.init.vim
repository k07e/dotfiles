function! RestartLspServer()
  call lsp#disable()
  aug restart_lsp_server
    au!
    au VimEnter * call lsp#enable()
  aug END
  aug restart_lsp_server
    au!
  aug END
endfunction

aug ft_json5
  au!
  au FileType json5 call RestartLspServer()
aug END
