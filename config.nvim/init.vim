" Alias `so` does `source`
so ~/.config/nvim/package.minpac.init.vim
so ~/.config/nvim/package.vim-which-key.init.vim
so ~/.config/nvim/keymap.vim-which-key.init.vim
so ~/.config/nvim/package.vim-auto-save.init.vim
so ~/.config/nvim/package.auto-pairs.init.vim
so ~/.config/nvim/package.editorconfig-vim.init.vim
so ~/.config/nvim/package.vim-gitgutter.init.vim
so ~/.config/nvim/package.nerdtree.init.vim |
  \ if has('nvim-0.5.0')
    so ~/.config/nvim/package.nerdtree-git-plugin.init.vim
  endif
so ~/.config/nvim/package.vim-commentary.init.vim
so ~/.config/nvim/package.vim-eunuch.init.vim
so ~/.config/nvim/package.vim-fugitive.init.vim |
  \ so ~/.config/nvim/package.vim-flog.init.vim
so ~/.config/nvim/package.vim-surround.init.vim
so ~/.config/nvim/package.vim-airline.init.vim
so ~/.config/nvim/package.vim-localrc.init.vim
so ~/.config/nvim/package.vim-polyglot.init.vim
so ~/.config/nvim/package.vimdoc-ja.init.vim
so ~/.config/nvim/package.vim-one.init.vim
so ~/.config/nvim/package.vim-code-dark.init.vim
so ~/.config/nvim/package.vim.init.vim
so ~/.config/nvim/package.vim-devicons.init.vim
so ~/.config/nvim/package.vim-lsp.init.vim
so ~/.config/nvim/package.vim-lsp-settings.init.vim
so ~/.config/nvim/package.asyncomplete.vim.init.vim
so ~/.config/nvim/package.asyncomplete-lsp.vim.init.vim
if has('python3')
  so ~/.config/nvim/package.tabnine-vim.init.vim
endif
if executable('code-minimap')
  so ~/.config/nvim/package.minimap.vim.init.vim
endif
so ~/.config/nvim/package.todo.txt-vim.init.vim
so ~/.config/nvim/package.winresizer.init.vim
so ~/.config/nvim/package.LeaderF.init.vim
so ~/.config/nvim/package.vim-easy-align.init.vim
so ~/.config/nvim/keymap.vim-easy-align.init.vim
so ~/.config/nvim/package.vim-quickrun.init.vim
so ~/.config/nvim/package.vim-startify.init.vim
so ~/.config/nvim/package.vim-indent-guides.preinit.vim
so ~/.config/nvim/package.vim-indent-guides.init.vim
so ~/.config/nvim/filetype.json5.init.vim
so ~/.config/nvim/basic.init.vim
so ~/.config/nvim/package.vim-which-key.postinit.vim
so ~/.config/nvim/postinit.vim

if filereadable(expand('~/.config/nvim/local.init.vim'))
  so ~/.config/nvim/local.init.vim
endif
