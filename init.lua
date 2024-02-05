vim.opt.termguicolors = true

require("plugins")
require("common_setting")
require("lsp.config")

vim.g.mapleader = " "

vim.cmd.syntax("on")
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "number"
vim.o.expandtab = true
vim.o.hidden = true
vim.opt.shortmess:append({ c = true })
vim.o.autoindent = true
vim.o.smarttab = true
vim.o.spell = true

-- telscope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)
vim.keymap.set("n", "<leader>fh", builtin.help_tags)

vim.keymap.set("v", "\\y", '"*y', { silent = true })

vim.cmd.colorscheme("nightfox")

-- neotree
vim.keymap.set("n", "<leader>ft", ":Neotree toggle right<CR>")
vim.keymap.set("n", "<leader>ftb", ":Neotree toggle bottom<CR>")

-- bufferline
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePre<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", { silent = true })
vim.keymap.set("n", "<leader>bk", ":BufferLinePickClose<CR>", { silent = true })
vim.keymap.set("n", "<Tab>", ":wincmd w<CR>", { silent = true })
