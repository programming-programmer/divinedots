vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Look at packer, managing itself and whatnot
	use('wbthomason/packer.nvim')

	-- TREESITTER --
	use('nvim-treesitter/nvim-treesitter')

	-- FILE NAV --
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'} }
	}
	use('ThePrimeagen/harpoon')

	-- DEV --
	use('folke/trouble.nvim')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

	-- Debugging
	use {
		'rcarriga/nvim-dap-ui',
		requires = {
			{'mfussenegger/nvim-dap'}
		}
	}
	use('theHamsta/nvim-dap-virtual-text')

	-- Java
	use('mfussenegger/nvim-jdtls')

    -- THEME --
    use("dasupradyumna/midnight.nvim")

    -- NOTETAKING --
    use('nvim-orgmode/orgmode')

    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers",
        requires = {
            {"nvim-lua/plenary.nvim"},
        }
    }

    -- LATEX
    use('lervag/vimtex')
end)
