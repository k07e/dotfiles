" Run `call minpac#update` if this file was updated
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', { 'type': 'opt' })
call minpac#add('907th/vim-auto-save', { 'type': 'opt' })
call minpac#add('jiangmiao/auto-pairs', { 'type': 'opt' })
call minpac#add('editorconfig/editorconfig-vim', { 'type': 'opt' })
call minpac#add('airblade/vim-gitgutter', { 'type': 'opt' })
call minpac#add('preservim/nerdtree', { 'type': 'opt' }) |
  \ if has('nvim-0.5.0')
    call minpac#add('Xuyuanp/nerdtree-git-plugin', { 'type': 'opt' })
  endif
call minpac#add('tpope/vim-commentary', { 'type': 'opt' })
call minpac#add('tpope/vim-eunuch', { 'type': 'opt' })
call minpac#add('tpope/vim-fugitive', { 'type': 'opt' }) |
  \ call minpac#add('rbong/vim-flog', { 'type': 'opt' })
call minpac#add('vim-airline/vim-airline', { 'type': 'opt' })
call minpac#add('thinca/vim-localrc', { 'type': 'opt' })
call minpac#add('sheerun/vim-polyglot', { 'type': 'opt' })
call minpac#add('vim-jp/vimdoc-ja', { 'type': 'opt' })
call minpac#add('rakr/vim-one', { 'type': 'opt' })
call minpac#add('liuchengxu/vim-which-key', { 'type': 'opt' })
call minpac#add('prabirshrestha/vim-lsp', { 'type': 'opt' })
call minpac#add('mattn/vim-lsp-settings', { 'type': 'opt' })
call minpac#add('prabirshrestha/asyncomplete.vim', { 'type': 'opt' })
call minpac#add('prabirshrestha/asyncomplete-lsp.vim', { 'type': 'opt' })
if has('python3')
  call minpac#add('codota/tabnine-vim', { 'type': 'opt' })
endif
call minpac#add('dbeniamine/todo.txt-vim', { 'type': 'opt' })
call minpac#add('simeji/winresizer', { 'type': 'opt' })
