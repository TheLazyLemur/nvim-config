function setup_plugins()
    vim.cmd [[
    call plug#begin()
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-lua/popup.nvim'
        Plug 'tpope/vim-sensible'
        Plug 'akinsho/toggleterm.nvim'
        Plug 'nvim-lua/telescope.nvim'
        Plug 'dbakker/vim-paragraph-motion'
        Plug 'airblade/vim-gitgutter'
        Plug 'easymotion/vim-easymotion'
        Plug 'preservim/nerdtree'
        Plug 'vim-airline/vim-airline'
        Plug 'mattn/emmet-vim'

        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer' 
        Plug 'hrsh7th/nvim-cmp'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/cmp-path'
        Plug 'L3MON4D3/LuaSnip'
        Plug 'L3MON4D3/LuaSnip'
        Plug 'saadparwaiz1/cmp_luasnip'
        Plug 'github/copilot.vim'

        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'mhinz/vim-startify'
    call plug#end()
    ]]

    vim.cmd [[ let g:airline_theme='dracula' ]]

    require("toggleterm").setup{
        direction = 'float',
        persist_size = false,
        float_opts = {
            border = 'curved'
        }
    }
end

pcall(setup_plugins)

