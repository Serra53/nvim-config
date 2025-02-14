
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,}
    use({
        "neanias/everforest-nvim",
        -- Optional; default configuration will be used if setup isn't called.
        config = function()
        require("everforest").setup()
        end,}
    )

	use("nvim-treesitter/playground")
  	use("theprimeagen/harpoon")
	use("mbbill/undotree")
    use("tpope/vim-fugitive")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {"saadparwaiz1/cmp_luasnip"},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            --snippets
            {'L3MON4D3/LuaSnip'},
            {"rafamadriz/friendly-snippets"},

            --mason
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},
        }
    }
    use("scalameta/nvim-metals")
    use {
        'nvim-tree/nvim-web-devicons',
        'lewis6991/gitsigns.nvim',
        'romgrk/barbar.nvim'
    }
    use("jose-elias-alvarez/null-ls.nvim")
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use("eddyekofo94/gruvbox-flat.nvim")
    use("sainnhe/gruvbox-material")
    use {"nvim-neotest/neotest",
        requires = {
          "nvim-lua/plenary.nvim",
          "antoinemadec/FixCursorHold.nvim",
          "nvim-treesitter/nvim-treesitter",
          "nvim-neotest/neotest-go",
          "nvim-neotest/neotest-python",
          "nvim-neotest/neotest-vim-test",
          "nvim-neotest/neotest-plenary",

        }
    }

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "nvim-neotest/nvim-nio" }
    use { 'VonHeikemen/fine-cmdline.nvim',
      requires = {
        {'MunifTanjim/nui.nvim'}
      }
    }
    use {"nvimtools/none-ls.nvim" }
    use {"sphamba/smear-cursor.nvim"}




end)


