local function install_plugins(plugins_to_install)
    local Plug = vim.fn['plug#']
    vim.call('plug#begin')
    for _, plugin in ipairs(plugins_to_install) do
        if plugin[2] then
            Plug(plugin[1], plugin[2])
        else
            Plug(plugin)
        end
    end
    vim.call('plug#end')
end

local plugs = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'tpope/vim-sensible',
    'akinsho/toggleterm.nvim',
    'nvim-lua/telescope.nvim',
    'dbakker/vim-paragraph-motion',
    'airblade/vim-gitgutter',
    'easymotion/vim-easymotion',
    'preservim/nerdtree',
    'vim-airline/vim-airline',
    'mattn/emmet-vim',
    'McAuleyPenney/tidy.nvim',
    'rcarriga/nvim-notify',
    'ryanoasis/vim-devicons',
    'vimwiki/vimwiki',
    'mkitt/tabline.vim',

    {'nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}},
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    'github/copilot.vim',

    'vim-syntastic/syntastic',
    'rmagatti/goto-preview',
    'martinda/Jenkinsfile-vim-syntax',
    'kosayoda/nvim-lightbulb',
    'weilbith/nvim-code-action-menu',
    'rafamadriz/friendly-snippets',

    {'dracula/vim', { ['as'] = 'dracula' }},
    'mhinz/vim-startify',
}

local ran, errorMsg = pcall( install_plugins, plugs )
if not ran then
    error("Function errored on run " .. "\n" .. errorMsg)
end
