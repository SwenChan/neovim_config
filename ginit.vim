set termguicolors

let g:neovide_fullscreen=v:true
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "wireframe"
set guifont=JetBrainsMonoMedium Nerd Font Mono:h12
lua require('plugins')
lua require('common_setting')
let mapleader = "\<Space>"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'