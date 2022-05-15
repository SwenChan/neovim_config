set termguicolors

let g:neovide_fullscreen=v:true
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "wireframe"
let g:neovide_input_use_logo = 1
set guifont=JetBrainsMonoMedium\ Nerd\ Font\ Mono:h14
lua require('plugins')
lua require('common_setting')
let mapleader = "\<Space>"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
