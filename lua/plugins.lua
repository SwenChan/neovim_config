-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup({
        function(use)
                -- Packer can manage itself
                use 'wbthomason/packer.nvim'
                use {
                        'nvim-treesitter/nvim-treesitter',
                        run = ':TSUpdate'
                }
                -- stdlib for lua
                use 'nvim-lua/plenary.nvim'

                use {
                        'rcarriga/nvim-notify',
                        config = function ()
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
                        end
                }

                use {
                        'nvim-telescope/telescope.nvim',
                        requires = { {'nvim-lua/plenary.nvim'} },
                        config = function ()
                                require("plugin_config.telescope")
                        end
                }


                use {
                        'EdenEast/nightfox.nvim',
                        config = function ()
                                require('plugin_config.nightfox')
                        end
                }

                use {
                        'goolord/alpha-nvim',
                        config = function ()
                                require('plugin_config.alpha')
                        end
                }

                use {
                        'akinsho/bufferline.nvim',
                        tag = 'v2.*',
                        requires = 'kyazdani42/nvim-web-devicons',
                        config = function ()
                                require('plugin_config.bufferline')
                        end
                }

                use {
                        'lukas-reineke/indent-blankline.nvim',
                        config = function ()
                                require('plugin_config.indent-blankline')
                        end
                }

                use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install'}

                use {'fatih/vim-go', branch = 'master', run = ':GoUpdateBinaries', ft = 'go'}

                use {
                        'natecraddock/workspaces.nvim',
                        config = function ()
                                require("plugin_config.workspaces")
                        end
                }

                use {
                        "SmiteshP/nvim-navic",
                        requires = "neovim/nvim-lspconfig",
                        config = function()
                                local navic = require("nvim-navic")

                                require("lspconfig").gopls.setup {
                                        on_attach = function(client, bufnr)
                                                navic.attach(client, bufnr)
                                        end
                                }
                        end
                }


                use {
                        -- 'fgheng/winbar.nvim',
                        'mauricekraus/winbar.nvim',
                        branch = 'fix/#5',
                        requires = 'SmiteshP/nvim-navic',
                        config = function ()
                                require('plugin_config.winbar')
                        end
                }
        end,
        config = {
                display = {
                        open_fn = function()
                                return require('packer.util').float({ border = 'single' })
                        end,
                }
        }
})
