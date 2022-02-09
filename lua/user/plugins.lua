local fn = vim.fn

vim.cmd [[
call plug#begin()
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/telescope.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'preservim/nerdtree'

    Plug 'github/Copilot'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'saadparwaiz1/cmp_luasnip'
    
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'

    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'

    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer' 

call plug#end()
]]

vim.cmd [[ colorscheme gruvbox ]]
