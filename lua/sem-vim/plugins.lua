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
    'windwp/nvim-autopairs',
    'akinsho/toggleterm.nvim',
    'nvim-lua/telescope.nvim',
    'airblade/vim-gitgutter',
    'easymotion/vim-easymotion',
    'preservim/nerdtree',
    'vim-airline/vim-airline',
    'ryanoasis/vim-devicons',
    'vimwiki/vimwiki',
    'mkitt/tabline.vim',
    'rmagatti/goto-preview',
    'kosayoda/nvim-lightbulb',
    'mhinz/vim-startify',
    'folke/which-key.nvim',
    {'dracula/vim', { ['as'] = 'dracula' }},

    {'nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'} },
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
    'rafamadriz/friendly-snippets',
    'github/copilot.vim',
    'ldelossa/litee.nvim',

    'martinda/Jenkinsfile-vim-syntax',
    'mattn/emmet-vim',
}

local ran, errorMsg = pcall( install_plugins, plugs )
if not ran then
    error("Function errored on run " .. "\n" .. errorMsg)
end

require 'nvim-autopairs'.setup{}
require 'which-key'.setup{}
require('litee.lib').setup({
    tree = {
        icon_set = "codicons"
    },
    panel = {
        orientation = "left",
        panel_size  = 30
    }
})

