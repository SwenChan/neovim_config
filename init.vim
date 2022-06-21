set termguicolors

let g:neovide_fullscreen=v:true
let g:neovide_input_use_logo=v:true

""" clipboard
inoremap <D-v> <c-r>+

lua require('plugins')
lua require('common_setting')
let mapleader = "\<Space>"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
