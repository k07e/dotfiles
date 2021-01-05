packadd vim-commentary
aug commentary_adds_support
  au!
  au FileType json5 setlocal commentstring=//\ %s
aug END
