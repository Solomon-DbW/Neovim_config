-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'  -- Plugin manager itself

	-- Telescope for fuzzy finding and file searching
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }  -- Dependency for telescope
	}

	-- Monokai color scheme
	use({
		'tanvirtin/monokai.nvim',
		config = function()
			vim.cmd('colorscheme monokai')  -- Apply the Monokai color scheme
		end
	})	

	-- Treesitter for enhanced syntax highlighting and code analysis
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'windwp/nvim-autopairs'  -- Auto closing brackets & quotes
	use 'nvim-treesitter/playground'  -- Treesitter playground for inspecting syntax trees
	use 'ThePrimeagen/harpoon'  -- Quick navigation between files
	use 'mbbill/undotree'  -- Visualize undo history
	use 'tpope/vim-fugitive'  -- Git commands and functionality
	use 'preservim/nerdtree'  -- File explorer tree
	use 'http://github.com/tpope/vim-surround' -- Surrounding ysiw
	use 'tpope/vim-commentary' -- gcc to comment a line
	use 'preservim/tagbar'
	use 'nvim-tree/nvim-web-devicons'

	use 'neovim/nvim-lspconfig'  -- Configurations for Neovim's LSP
	use 'hrsh7th/nvim-cmp'  -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp'  -- LSP source for nvim-cmp
	use 'hrsh7th/cmp-buffer'  -- Buffer completions for nvim-cmp
	use 'hrsh7th/cmp-path'  -- Path completions for nvim-cmp
	use 'hrsh7th/cmp-cmdline'  -- Command-line completions for nvim-cmp

	use 'hrsh7th/vim-vsnip'  -- Snippet engine
	use 'hrsh7th/cmp-vsnip'  -- Snippet completions for nvim-cmp
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'dense-analysis/ale'


end)

