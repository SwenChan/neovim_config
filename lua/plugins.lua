local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  -- stdlib for lua
  { "nvim-lua/plenary.nvim" },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        -- Animation style (see below for details)
        stages = "fade_in_slide_out",
        -- Function called when a new window is opened, use for changing win settings/config
        on_open = nil,
        -- Default timeout for notifications
        timeout = 5000,
        -- For stages that change opacity this is treated as the highlight behind the window
        -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
        background_colour = "Normal",
        -- Icons for the different levels
        icons = {
          ERROR = "",
          WARN = "",
          INFO = "",
          DEBUG = "",
          TRACE = "✎",
        },
      })
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("plugin_config.telescope")
    end,
  },

  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("plugin_config.nightfox")
    end,
  },

  {
    "goolord/alpha-nvim",
    config = function()
      require("plugin_config.alpha")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    version = "v3.*",
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require("plugin_config.bufferline")
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugin_config.indent-blankline")
    end,
  },

  { "neoclide/coc.nvim", branch = "master", build = "pnpm install" },

  { "fatih/vim-go", branch = "master", build = ":GoUpdateBinaries", ft = "go" },

  {
    "natecraddock/workspaces.nvim",
    config = function()
      require("plugin_config.workspaces")
    end,
  },

  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      local navic = require("nvim-navic")

      require("lspconfig").gopls.setup({
        on_attach = function(client, bufnr)
          navic.attach(client, bufnr)
        end,
      })
    end,
  },

  {
    -- 'fgheng/winbar.nvim',
    "mauricekraus/winbar.nvim",
    branch = "fix/#5",
    dependencies = "SmiteshP/nvim-navic",
    config = function()
      require("plugin_config.winbar")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({})
    end,
  },
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "mhartington/formatter.nvim",
    config = function()
      require("plugin_config.formatter")
    end,
  },
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  { "saadparwaiz1/cmp_luasnip", lazy = true },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("plugin_config.cmp_config")
    end,
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "cmp-nvim-lsp",
      "cmp_luasnip",
      "cmp-buffer",
      "cmp-path",
      "cmp-cmdline",
    },
  },
}, {

  ui = {
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})
