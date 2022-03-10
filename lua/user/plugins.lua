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
        Plug 'McAuleyPenney/tidy.nvim'
        Plug 'edluffy/specs.nvim'
        Plug 'rcarriga/nvim-notify'
        Plug 'ryanoasis/vim-devicons'
        Plug 'DrTom/fsharp-vim'

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
        Plug 'vim-syntastic/syntastic'
        Plug 'rmagatti/goto-preview'
        Plug 'kosayoda/nvim-lightbulb'
        Plug 'weilbith/nvim-code-action-menu'

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

require('specs').setup{
    show_jumps  = true,
    min_jump = 30,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects
        blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 100,
        winhl = "PMenu",
        fader = require('specs').linear_fader,
        resizer = require('specs').shrink_resizer
    },
    ignore_filetypes = {},
    ignore_buftypes = {
        nofile = true,
    },
}

vim.cmd [[
    function! s:gitModified()
        return map(['~/.config/nvim', '~/.zshrc', '~/.bash_files'], "{'line': v:val, 'path': v:val}")
    endfunction

    let g:startify_custom_header =
    \ startify#pad(split(system('figlet -w 100 DVim'), '\n'))
        let g:startify_lists = [
              \ { 'type': function('s:gitModified'),  'header': ['  base files']},
              \ { 'type': 'files',     'header': ['   Recent']            },
              \ { 'type': 'dir',       'header': ['   Recent '. getcwd()] },
              \ { 'type': 'sessions',  'header': ['   Sessions']       },
              \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
              \ { 'type': 'commands',  'header': ['   Commands']       },
              \ ]
]]


vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
require'nvim-lightbulb'.setup {
    ignore = {},
    sign = {
        enabled = true,
        priority = 10,
    },
    float = {
        enabled = false,
        text = "💡",
        win_opts = {},
    },
    virtual_text = {
        enabled = false,
        text = "💡",
        hl_mode = "replace",
    },
    status_text = {
        enabled = false,
        text = "💡",
        text_unavailable = ""
    }
}
