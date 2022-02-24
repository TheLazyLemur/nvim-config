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
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-sensible'
    Plug 'vim-airline/vim-airline'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'williamboman/nvim-lsp-installer' 
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'mattn/emmet-vim'
    Plug 'github/copilot.vim'
    Plug 'godlygeek/tabular'

    Plug 'autoload/onedark.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'mhinz/vim-startify'
    Plug 'morhetz/gruvbox'
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

