let mapleader = "\<Space>"
let maplocalleader = ','
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
let g:which_key_map = {}
let g:which_key_map.t = { 'name': '+Toggle' }
