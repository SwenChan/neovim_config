set termguicolors
let g:neovide_fullscreen=v:true
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "wireframe"
let g:neovide_input_use_logo=v:true
let g:neovide_floating_blur_amount_x = 0.2
let g:neovide_floating_blur_amount_y = 0.2
inoremap <D-v> <c-r>+
set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h14

lua require('plugins')
lua require('common_setting')
let mapleader = "\<Space>"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
