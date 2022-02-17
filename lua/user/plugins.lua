function setup_plugins()
    vim.cmd [[
    call plug#begin()
        Plug 'tpope/vim-sensible'
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-lua/telescope.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'voldikss/vim-floaterm'
        Plug 'akinsho/toggleterm.nvim'
        Plug 'preservim/nerdtree'
        Plug 'airblade/vim-gitgutter'
        Plug 'vim-airline/vim-airline'
        Plug 'easymotion/vim-easymotion'

        Plug 'github/copilot.vim'
        Plug 'vim-airline/vim-airline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'saadparwaiz1/cmp_luasnip'
        Plug 'godlygeek/tabular'
        Plug 'preservim/vim-markdown', { 'for': 'markdown' }
        
        Plug 'L3MON4D3/LuaSnip'
        Plug 'rafamadriz/friendly-snippets'

        Plug 'mhinz/vim-startify'
        Plug 'morhetz/gruvbox'
        Plug 'autoload/onedark.vim'
        Plug 'joshdick/onedark.vim'

        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer' 

    call plug#end()
    ]]

    vim.cmd [[ let g:airline_theme='onedark' ]]

	require("toggleterm").setup{
	    direction = 'float',
	    persist_size = false,
	    float_opts = {
		border = 'curved'
	    }
	}
end

pcall(setup_plugins)


