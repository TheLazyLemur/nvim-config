RELOAD = function (...)
    return require("plenary.reload").reload_module(...)
end

R = function (name)
    RELOAD(name)
    return require(name)
end

RELOAD_CONFIG = function ()
    R("user.options")
    R("user.keymaps")
    R("user.plugins")
    R("user.colorscheme")
    R("user.telescope")
    R("user.nerdtree")
    R("user.toggleterm")
    R("user.treesitter")
    R("user.completion")
    R("user.lsp_installer")
    require("notify").notify("Neovim reloaded", "info")
end

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.telescope"
require "user.nerdtree"
require "user.toggleterm"
require "user.treesitter"
require "user.completion"
require "user.lsp_installer"

require("notify").notify("Neovim loaded", "info")
