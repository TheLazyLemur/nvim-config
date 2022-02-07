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

    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    
    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'
call plug#end()
]]

vim.cmd [[ colorscheme gruvbox ]]

