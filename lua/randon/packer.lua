-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }

	}

    -- THEME --
    use { "catppuccin/nvim", as = "catppuccin" }

	-- TREESITTER
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- HARPOON
	use ('nvim-lua/plenary.nvim')
	use ('ThePrimeagen/harpoon')

	-- UNDO TREE
	use ('mbbill/undotree')

    -- LSP ZERO
    use ({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }

})

    -- SYMBOLS OUTLINE
    use ('simrat39/symbols-outline.nvim')

    -- VS TASKS
    use {
      'EthanJWright/vs-tasks.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim'
      }
    }

    -- TODO TREE
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                {
                    keywords = {
                        FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }},
                        TODO = { icon = " ", color = "info" },
                        HACK = { icon = " ", color = "warning" },
                        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" }},
                        PERF = { icon = "󰓅", color = "info" , alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" }},
                        NOTE = { icon = "󰎚", color = "hint", alt = { "INFO" }},
                        TEST = { icon = "󰙨", color = "test", alt = { "TESTING", "PASSED", "FAILED" }},
                        GOODJOB = { icon = "", color = "hint" }
                    }
                }
            }
        end
    }
end)

