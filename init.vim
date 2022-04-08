set termguicolors

lua require('plugins')
lua require('common_setting')
let mapleader = "\<Space>"
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
