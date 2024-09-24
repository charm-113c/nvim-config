return require('packer').startup(function(use)
	-- Configurations
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	-- nvimtree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- for file icons
		},
	}
	-- DAP for debugging
	use 'mfussenegger/nvim-dap'
	-- DAP UI
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	-- Telescope/Fuzzy search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Optimize telescope with following
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Lualine for bottom bar
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Autopair for brackets and such
	use {
    		"windwp/nvim-autopairs",
    		event = "InsertEnter",
    		config = function()
        		require("nvim-autopairs").setup {}
    		end
	}

	-- Catpuccino theme
	use { "catppuccin/nvim", as = "catppuccin"}
	
	-- Add leap capabilities
	use { "ggandor/leap.nvim" }

	-- Comment support
	use {
			'numToStr/Comment.nvim',
			config = function()
					require('Comment').setup()
			end
	}
	
	-- Startup view
	use {
	  "startup-nvim/startup.nvim",
	  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
	  config = function()
		require("startup").setup({theme = "my_theme"}) 
	  end
	}

	-- Tabline
	-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use	'romgrk/barbar.nvim'
	 
	-- Indentation line
	use {
		"nvimdev/indentmini.nvim",
		config = function()
			require("indentmini").setup()
		end
	}

	-- Code outline
	use	"hedyhli/outline.nvim"

	-- Show warning/error over multiple lines
	use({
	  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	  config = function()
		require("lsp_lines").setup()
	  end,
	})

	-- Todo list plugin 
	use {
		"folke/todo-comments.nvim",
		config = function ()
			require("todo-comments").setup()
		end,
	}

end)


