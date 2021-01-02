" When file was changed, reload source
" Alias `aug` and `au` does `augroup` and `autocmd`
aug reload_initvim
  au!
  au BufWritePost init.vim source $MYVIMRC
  au BufWritePost *.init.vim source %
aug END

" Alias `so` does `source`
so ~/.config/nvim/package.minpac.init.vim
so ~/.config/nvim/package.vim-auto-save.init.vim
so ~/.config/nvim/package.auto-pairs.init.vim
so ~/.config/nvim/package.editorconfig-vim.init.vim
so ~/.config/nvim/package.vim-gitgutter.init.vim
so ~/.config/nvim/package.nerdtree.init.vim
so ~/.config/nvim/package.vim-eunuch.init.vim
so ~/.config/nvim/package.vim-fugitive.init.vim
so ~/.config/nvim/package.vim-airline.init.vim
so ~/.config/nvim/package.vim-localrc.init.vim
so ~/.config/nvim/package.vim-polyglot.init.vim
so ~/.config/nvim/package.vimdoc-ja.init.vim
so ~/.config/nvim/package.vim-one.init.vim
so ~/.config/nvim/basic.init.vim
