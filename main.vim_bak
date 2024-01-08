set nocompatible

" init colorSchema
syntax on

" init coc
set number
set relativenumber
set signcolumn=number
set expandtab
set hidden
set shortmess+=c
set autoindent
set smarttab
set spell " spell syntax checking
nnoremap <leader>ft :Neotree <CR>
" telescope config
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"common setting
" Switch between different windows by their direction`
" noremap <C-h> :tabprevious<CR>
" noremap <C-l> :tabnext<CR>
noremap <C-h> :BufferLineCyclePre<CR>
noremap <C-l> :BufferLineCycleNext<CR>
noremap <leader>bp :BufferLinePick<CR>
noremap <leader>bk :BufferLinePickClose<CR>
noremap <leader>bc :BufferLinePickClose<CR>
noremap <Tab> :wincmd w<CR>

vnoremap \y "*y

colorscheme nightfox
