let s:script_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
autocmd BufWritePost *.init.vim echo system('cd ''' . s:script_dir . '''; stow -t ~/.config/nvim -v config.nvim')
autocmd BufWritePost package.minpac.init.vim call minpac#update()
