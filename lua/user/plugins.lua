local fn = vim.fn

vim.cmd [[
call plug#begin()
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/telescope.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'preservim/nerdtree'
    Plug 'airblade/vim-gitgutter'

    Plug 'fatih/vim-go'
    Plug 'neovim/nvim-lspconfig'
    Plug 'github/copilot.vim'
    Plug  'rust-lang/rust.vim'
    Plug 'prabirshrestha/asyncomplete.vim'

    Plug 'OmniSharp/omnisharp-vim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    
    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
]]

vim.cmd [[
    let g:OmniSharp_server_use_net6 = 1
]]

vim.cmd [[ colorscheme gruvbox ]]

local ls = require("luasnip")
local types = require("luasnip.util.types")

ls.config.set_config {
    history = true,
    updateevents= "TextChanged,TextChangedI",
    enable_autosnippets = true,
}
