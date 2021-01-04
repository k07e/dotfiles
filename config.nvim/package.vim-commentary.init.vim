packadd vim-commentary
aug commentary_add_support
  au!
  au FileType json5 setlocal commentstring=//\ %s
aug END
