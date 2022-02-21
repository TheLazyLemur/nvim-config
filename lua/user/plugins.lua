function setup_plugins()
    vim.cmd [[
    call plug#begin()
    Plug 'airblade/vim-gitgutter'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'dbakker/vim-paragraph-motion'
    Plug 'easymotion/vim-easymotion'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-sensible'
    Plug 'vim-airline/vim-airline'

    Plug 'L3MON4D3/LuaSnip'
    Plug 'github/copilot.vim'
    Plug 'godlygeek/tabular'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    Plug 'preservim/vim-markdown', { 'for': 'markdown' }
    Plug 'rafamadriz/friendly-snippets'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'mattn/emmet-vim'
    Plug 'pangloss/vim-javascript'

    Plug 'autoload/onedark.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'

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

