RELOAD = function (...)
    return require("plenary.reload").reload_module(...)
end

R = function (name)
    RELOAD(name)
    return require(name)
end

RELOAD_CONFIG = function ()
    R("sem-vim.options")
    R("sem-vim.keymaps")
    R("sem-vim.plugins")
    R("sem-vim.colorscheme")
    R("sem-vim.startify")
    R("sem-vim.telescope")
    R("sem-vim.nerdtree")
    R("sem-vim.toggleterm")
    R("sem-vim.treesitter")
    R("sem-vim.completion")
    R("sem-vim.lightbulb")
    R("sem-vim.lsp_installer")
    require("notify").notify("Neovim reloaded", "info")
end

require "sem-vim.options"
require "sem-vim.keymaps"
require "sem-vim.plugins"
require "sem-vim.colorscheme"
require "sem-vim.startify"
require "sem-vim.telescope"
require "sem-vim.nerdtree"
require "sem-vim.toggleterm"
require "sem-vim.treesitter"
require "sem-vim.completion"
require "sem-vim.lightbulb"
require "sem-vim.lsp_installer"

require("notify").notify("Neovim loaded", "info")
