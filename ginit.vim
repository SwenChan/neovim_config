set termguicolors

let g:neovide_fullscreen=v:false
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "wireframe"
let g:neovide_input_use_logo=v:true
let g:neovide_floating_blur_amount_x = 0.2
let g:neovide_floating_blur_amount_y = 0.2
inoremap <D-v> <c-r>+
set guifont=JetBrainsMonoMedium\ Nerd\ Font\ Mono:h14
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/init.vim'
