" If this file was changed, lets typing command: call minpac#update()

" When file was changed, reload source
autocmd! BufWritePost init.vim source $MYVIMRC
autocmd! BufWritePost *.init.vim source %

" Alias `so` does `source`
so ~/.config/nvim/package.minpac.init.vim
so ~/.config/nvim/package.vim-gitgutter.init.vim
so ~/.config/nvim/package.nerdtree.init.vim
so ~/.config/nvim/package.vim-fugitive.init.vim
so ~/.config/nvim/package.vimdoc-ja.init.vim

set number
