local mason = require("core.mason")
mason.setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ruff_lsp", "gopls", "tsserver", "pyright" },
})
