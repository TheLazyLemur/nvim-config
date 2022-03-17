local function setup_plugins()
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
        Plug 'McAuleyPenney/tidy.nvim'
        Plug 'rcarriga/nvim-notify'
        Plug 'ryanoasis/vim-devicons'
        Plug 'vimwiki/vimwiki'
        Plug 'mkitt/tabline.vim'

        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'neovim/nvim-lspconfig'
        Plug 'williamboman/nvim-lsp-installer'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/cmp-path'
        Plug 'L3MON4D3/LuaSnip'
        Plug 'saadparwaiz1/cmp_luasnip'
        Plug 'hrsh7th/cmp-vsnip'
        Plug 'hrsh7th/vim-vsnip'
        Plug 'github/copilot.vim'

        Plug 'vim-syntastic/syntastic'
        Plug 'rmagatti/goto-preview'
        Plug 'martinda/Jenkinsfile-vim-syntax'
        Plug 'kosayoda/nvim-lightbulb'
        Plug 'weilbith/nvim-code-action-menu'
        Plug 'rafamadriz/friendly-snippets'

        Plug 'dracula/vim', { 'as': 'dracula' }
        Plug 'mhinz/vim-startify'
    call plug#end()
    ]]
end

setup_plugins()
