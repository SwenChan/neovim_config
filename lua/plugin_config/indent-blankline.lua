require("ibl").setup({
  exclude = {
    filetypes = { "alpha", "packer", "lspinfo", "checkhealth", "help", "gitcommit", "man" },
    buftypes = { "terminal", "quickfix", "nofile", "prompt" },
  },
  indent = {
    char = "│",
    tab_char = "⋅",
  },
  whitespace = {
    highlight = highlight,
    remove_blankline_trail = false,
  },
  scope = { enabled = true },
})
