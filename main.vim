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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <leader>ft :CocCommand explorer<CR>
nnoremap <leader>fl :CocList explPresets<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                        \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


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
