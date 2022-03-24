vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>rr", "<cmd>lua RELOAD_CONFIG()<cr>")

-- :help options
vim.opt.backup = false
vim.opt.syntax = "enable"
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
vim.opt.completeopt = {"menu","menuone,noselect"}
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.showmode = false
vim.opt.showtabline = 4
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.timeoutlen = 1000
vim.opt.undofile = true
vim.opt.updatetime = 16
vim.opt.writebackup = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.shortmess:append "c"

function FIX_S_LINE()
    vim.opt.laststatus = 3
    vim.cmd [[ highlight WinSeparator guibg=None ]]
end

vim.cmd [[
    set whichwrap+=<,>,[,],h,l
    set iskeyword+=-
    filetype plugin indent on

    function DelayedSetVariables(timer)
        lua FIX_S_LINE()
    endfunction
    let timer=timer_start(500,'DelayedSetVariables')
]]
