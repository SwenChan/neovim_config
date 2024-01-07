require("lsp.config")

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ruff_lsp" },
})

